FROM selenium/standalone-chrome:3.141.59

USER root
RUN apt-get update && apt-get upgrade -y python3 && apt-get install -y  software-properties-common python3-pip
RUN add-apt-repository -y ppa:jonathonf/ffmpeg-4
RUN apt -y install ffmpeg && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

ADD requirements.txt /tmp/requirements.txt
ADD setup.py /tmp/setup.py
ADD observervideoclient /tmp/observervideoclient
ADD observervideoclient.conf /etc/supervisor/conf.d/observervideoclient.conf
RUN cd /tmp && python3 setup.py install && rm -rf /tmp/observervideoclient /tmp/setup.py /tmp/requirements.txt

EXPOSE 9999