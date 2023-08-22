FROM ubuntu:18.04
#FROM nginx:latest
#RUN touch /tmp/myfile
#RUN echo dummy > /tmp/myfile2
#RUN touch file4
#ENV myname Sadiya
#USER nobody
#ENV name="$myname G"
#COPY testingcopy  /tmp
#ADD demo.tar.gz /home
#ONBUILD RUN echo "TEST" > "/tmp/adam.txt"
#VOLUME ["/home/Docker/","/data"]
RUN apt-get -y update && apt-get -y install curl
RUN mkdir -p /dir1/dir2/dir3
WORKDIR /dir1/dir2/dir3
RUN touch file1 file2 
ENV myname nouser
