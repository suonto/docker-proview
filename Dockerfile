FROM selenium/standalone-chrome-debug:3.0.1-germanium

RUN apt-get update -y \
 && apt-get install -y \
    g++ \
    curl \
    libmysql++3v5 \
    libdb5.3++ \
    libgstreamer-plugins-base0.10-0

WORKDIR /root

RUN ls -la

RUN curl -o pwr55_5.5.0-1_amd64.deb -L 'https://downloads.sourceforge.net/project/proview/proview/proview_5.5.0-1/ubuntu_16.04LTS/pwr55_5.5.0-1_amd64.deb?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fproview%2Ffiles%2Fproview%2Fproview_5.5.0-1%2Fubuntu_16.04LTS%2F&ts=1491825519&use_mirror=netcologne'
RUN curl -o pwrdemo55_5.5.0-1_amd64.deb -L 'https://downloads.sourceforge.net/project/proview/proview/proview_5.5.0-1/ubuntu_16.04LTS/pwrdemo55_5.5.0-1_amd64.deb?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fproview%2Ffiles%2Fproview%2Fproview_5.5.0-1%2Fubuntu_16.04LTS%2F&ts=1491825577&use_mirror=netcologne'

RUN dpkg -i pwr55_5.5.0-1_amd64.deb

COPY run.sh /home/pwrp/Desktop/run.sh

RUN chown pwrp:pwrp /home/pwrp/Desktop/run.sh
