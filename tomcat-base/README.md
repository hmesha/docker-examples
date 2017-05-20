# Documentation - WIP
## Build Docker Image
```docker build -t vimalparakhiya/tomcat-base tomcat-base/```

## Run Docker Image
```docker run  --cap-add SYS_ADMIN -p 8081:8080  -id  -v /sys/fs/cgroup:/sys/fs/cgroup:ro vimalparakhiya/tomcat-base```

It exposes tomcat service running with container on port 8080 to host port 8081

Access Tomcat Admin console at: ``http://localhost:8081``

Admin Console Credentials: ``admin/admin``

## Deploy Spring Web Application
Docker container copies `war` files available at 
mount point `/usr/apps` and so you can mount host directory 
containing `war` files to this mount point while starting the container as shown below.

`docker run  --cap-add SYS_ADMIN -p 8081:8080  -id  -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /host-dir/conatining/war-files:/usr/apps:ro  vimalparakhiya/tomcat-base`


