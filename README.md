<p align="center">
    <img width="180" src="docs\logo\logo-512.png" alt="logo">
</p>
<br/>

[![build](https://github.com/lastsunday/job-hunting-server/actions/workflows/build.yml/badge.svg)](https://github.com/lastsunday/job-hunting-server/actions/workflows/build.yml) [![release](https://github.com/lastsunday/job-hunting-server/actions/workflows/release.yaml/badge.svg)](https://github.com/lastsunday/job-hunting-server/actions/workflows/release.yaml)

# job-hunting-server 🛰️

> To Share Job Data

## How To Run

### 方式1 Docker

TODO

### 方式2 Bin

    1. 新建数据库
    2. 运行【job hunting数据库构建服务】
        > job-hunting-server-database-jh-xxx-*.jar
        ``` shell
            java -DDB_HOST=xxx -DDB_PORT=3306 -DDB_NAME=jh -DDB_USERNAME=xxx -DDB_PASSWORD=xxx -jar job-hunting-server-database-jh-xxx-*.jar
        ```
    3. 【job hunting后端服务】
        > job-hunting-server-service-jh.exe
        TODO
