package com.lz.module.ai.job.music;

import com.lz.framework.quartz.core.handler.JobHandler;
import com.lz.module.ai.service.music.AiMusicService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;


/**
 * 同步 Suno 任务状态以及回写对应的音乐信息 Job
 *
 * @author xiaoxin
 */
@Component
@Slf4j
public class AiSunoSyncJob implements JobHandler {

    @Resource
    private AiMusicService musicService;

    @Override
    public String execute(String param) {
        Integer count = musicService.syncMusic();
        log.info("[execute][同步 Suno ({}) 个]", count);
        return String.format("同步 Suno %s 个", count);
    }

}
