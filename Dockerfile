FROM alpine
ADD run.sh /run.sh
ADD repo.txt /repo.txt
ENTRYPOINT ['/bin/sh', '/run.sh']
