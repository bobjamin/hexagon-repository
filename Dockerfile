FROM alpine
ADD run.sh /run.sh
ADD repo.txt /repo.txt
CMD ['/bin/sh', '/run.sh']
