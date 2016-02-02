Dockerfile for an Oracle Database Express Edition 11g Release 2 plus a few tools
============================

```
docker pull hminaya/docker-oracle-xe-plus
```

Run with 22 and 1521 ports opened:
```
docker run -d -p 49160:22 -p 49161:1521 hminaya/docker-oracle-xe-plus
```

Connect database with following setting:
```
hostname: localhost
port: 49161
sid: xe
username: system
password: oracle
```

Password for SYS
```
oracle
```

Login by SSH
```
ssh root@localhost -p 49160
password: admin
```