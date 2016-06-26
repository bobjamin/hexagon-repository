FROM alpine
ADD run.sh /run.sh
CMD ['/bin/sh', '/run.sh']
