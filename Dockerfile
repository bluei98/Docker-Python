#############################################################################
# docker build --tag forexliga/python:0.1 --tag forexliga/python:latest .
# docker run -it --rm forexliga/python:0.1 bash
#############################################################################
FROM ubuntu
MAINTAINER SungYong EOM <bluei@blueiblog.com>

# 레포지트 업데이트
RUN apt-get update -y

# 타임존 셋팅
RUN apt-get install -y tzdata
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# 기본 패키지 설치
RUN apt-get install -y gcc make telnet whois vim git gettext cron mysql-client iputils-ping net-tools wget curl net-tools

# 파이썬 설치
RUN apt-get install -y python3 python3-pip

# 라이브러리 설치
RUN pip3 install flask beautifulsoup4 Pillow requests pandas selenium
