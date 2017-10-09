# opentftp

## build 

docker build -t opentftpv1 .

## start

docker run -d -it -p 6969:6969 -v $(pwd):/opt/app -w /opt/app --name opentftp opentftpv1
