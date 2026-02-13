
-- 获取北京最新空气质量
SELECT CITY, AQI, PM25, CO, TIME AS air_time
FROM (
    SELECT CITY, AQI, PM25, CO, TIME,
           ROW_NUMBER() OVER (ORDER BY UPDATED_TIME DESC) AS rn
    FROM DW_WEATHER_AIR
    WHERE CITY = '北京'
      AND DELETE_FLAG = '0'
)
WHERE rn = 1;

-- 查询深圳当天的天气实况
SELECT CITY, WX_CN AS weather, TEMP_C, RELHUM AS humidity, WND_CN AS wind_dir, "DATE" 
FROM DW_WEATHER_OBSERVE
WHERE CITY = '深圳'
  AND DELETE_FLAG = '0'
  AND TRUNC(DATE) = TRUNC(SYSDATE);

-- 列出广东省所有正在生效的红色及以上级别预警
SELECT CITY, ALARM_NAME, ALARM_LEVEL_NAME, START_TIME, END_TIME, CONTENT
FROM DW_WEATHER_ALARM
WHERE PROVINCE = '广东省'
  AND DELETE_FLAG = '0'
  AND ALARM_LEVEL_NAME IN ('红色', '橙色')
  AND SYSDATE BETWEEN TO_DATE(START_TIME, 'YYYY-MM-DD HH24:MI')
                  AND TO_DATE(END_TIME, 'YYYY-MM-DD HH24:MI:SS');
                  
-- 查询上海当天的天气预报与穿衣指数
SELECT 
    f.CITY,
    f.DATE AS forecast_date,
    f.DAY_WX_CN AS day_weather,
    f.DHT AS max_temp,
    i.INDEX_LEVEL AS dressing_level,
    i.INDEX_EXPLANATION AS dressing_advice
FROM DW_WEATHER_FORECAST f
JOIN DW_WEATHER_INDEX i
  ON f.CITY = i.CITY
 AND f.DATE = i.DATE
WHERE f.CITY = '上海'
  AND f.DELETE_FLAG = '0'
  AND i.DELETE_FLAG = '0'
  AND i.INDEX_CODE = '002'   -- 穿衣指数编码
  AND f.DATE = TO_CHAR(SYSDATE, 'YYYYMMDD');
