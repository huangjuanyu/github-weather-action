###
 # @Author: hjy
 # @Date: 2021-01-13 10:59:54
 # @LastEditTime: 2021-01-13 11:19:34
 # @LastEditors: hjy
 # @Description: 
 # @FilePath: /github-weather-action/weather.sh
### 
#!/bin/sh

set -eux

CITY=Shenzhen
LANGUAGE="zh-CN"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  wttr.in/$CITY?format=4\&$UNIT