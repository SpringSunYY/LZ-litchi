package com.lz.framework.ip.core.template;

import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.lz.framework.common.util.http.HttpUtils;
import com.lz.framework.ip.core.Area;
import com.lz.framework.ip.core.config.IpProperties;
import com.lz.framework.ip.core.utils.AreaUtils;
import lombok.extern.slf4j.Slf4j;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * HTTP API模式IP提供者（模板方法模式实现）
 * 飞不进你梦中有一点感受
 * @author YY
 */
@Slf4j
public class IpJsonTemplate extends IpTemplate {

    public IpJsonTemplate(IpProperties ipProperties) {
        this.ipProperties = ipProperties;
        init();
    }

    @Override
    protected String getRegionData(String ip) {
        try {
            HashMap<String, Object> queryParams = new HashMap<>();
            queryParams.put("ip", ip);
            queryParams.put("json", "true");
            String url = HttpUtils.append(ipProperties.getIp().getIpUrl(), queryParams, null, false);

            HashMap<String, String> headers = new HashMap<>();
            headers.put("accept", "*/*");
            headers.put("connection", "Keep-Alive");
            headers.put("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64)");

            String rspStr = HttpUtils.get(url, headers);
            if (StrUtil.isEmpty(rspStr)) {
                log.error("获取地理位置异常 {}", ip);
                return null;
            }
            return extractJson(rspStr);
        } catch (Exception e) {
            log.error("获取地理位置异常 {}", ip, e);
            return null;
        }
    }

    @Override
    protected Area doQuery(String ip) {
        String jsonStr = getRegionData(ip);
        if (jsonStr == null) {
            return null;
        }
        if (!StrUtil.startWith(jsonStr, '{')) {
            log.warn("IP查询接口返回非JSON响应: {}", StrUtil.subPre(jsonStr, 200));
            return null;
        }
        JSONObject obj = JSON.parseObject(jsonStr);
        String code = extractValidCode(obj);
        if (code == null) {
            log.warn("IP={} 查询返回的code全为0或空", ip);
            return null;
        }
        Area area = AreaUtils.getArea(code);
        if (area != null) {
            return area;
        }
        // 回退逻辑：用名称匹配
        String areaName = buildAreaName(obj.getString("pro"), obj.getString("city"), obj.getString("region"));
        if (StrUtil.isNotBlank(areaName)) {
            area = AreaUtils.parseArea(areaName);
            if (area != null) {
                return area;
            }
        }
        // 最终回退：直接用API返回的地址信息构建Area
        String addr = obj.getString("addr");
        if (StrUtil.isNotBlank(addr)) {
            return new Area(null, addr.trim(), 0, null, new ArrayList<>());
        }
        return null;
    }

    private String extractValidCode(JSONObject obj) {
        String regionCode = obj.getString("regionCode");
        String cityCode = obj.getString("cityCode");
        String proCode = obj.getString("proCode");
        if (StrUtil.isNotBlank(regionCode) && !"0".equals(regionCode)) {
            return regionCode;
        }
        if (StrUtil.isNotBlank(cityCode) && !"0".equals(cityCode)) {
            return cityCode;
        }
        if (StrUtil.isNotBlank(proCode) && !"0".equals(proCode)) {
            return proCode;
        }
        return null;
    }

    private String buildAreaName(String pro, String city, String region) {
        StringBuilder sb = new StringBuilder();
        if (StrUtil.isNotBlank(pro)) {
            sb.append(pro);
        }
        if (StrUtil.isNotBlank(city) && !"0".equals(city)) {
            if (!sb.isEmpty()) sb.append("|");
            sb.append(city);
        }
        if (StrUtil.isNotBlank(region) && !"0".equals(region)) {
            if (!sb.isEmpty()) sb.append("|");
            sb.append(region);
        }
        return sb.toString();
    }

    private String extractJson(String raw) {
        if (StrUtil.isBlank(raw)) {
            return raw;
        }
        int leftParenPos = raw.indexOf("({");
        if (leftParenPos >= 0) {
            int jsonStart = leftParenPos + 1;
            int depth = 0;
            for (int i = jsonStart; i < raw.length(); i++) {
                char c = raw.charAt(i);
                if (c == '{') depth++;
                else if (c == '}') {
                    depth--;
                    if (depth == 0) {
                        return raw.substring(jsonStart, i + 1);
                    }
                }
            }
        }
        int start = raw.indexOf('{');
        int end = raw.lastIndexOf('}');
        if (start >= 0 && end > start) {
            return raw.substring(start, end + 1);
        }
        return raw;
    }
}
