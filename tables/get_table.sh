#!/bin/bash

result=`curl "http://zhjw.scu.edu.cn/loginAction.do" -H "Content-Type: application/x-www-form-urlencoded" --data "zjh=&mm=" --user-agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36" -i | head -n 10 | awk -F ": " '{if($1=="Set-Cookie") print $2}'`;
cookie="${result%;*}";
info=`curl "http://zhjw.scu.edu.cn/xkAction.do?actionType=6" --cookie $cookie`;
echo $info;