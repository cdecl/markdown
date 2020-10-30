FROM python:3.7-alpine

RUN apk add --update gcc git tzdata openldap-dev musl-dev && \
	cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && echo "Asia/Seoul" > /etc/timezone
    
# centos 7
# RUN yum install python3 python3-devel openldap-devel gcc git tzdata -y \
#    && cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime

WORKDIR /app
ADD . ./

RUN pip3 install -r requirements.txt 
RUN date "+%Y-%m-%d %H:%M:%S" > /BUILD-DATE.txt

EXPOSE 80
CMD ["gunicorn", "-b", ":80", "-w", "2", "--threads=2", "app:app"]
