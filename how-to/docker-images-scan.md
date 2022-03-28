# **Docker - Image Scan**
[![Badge](https://img.shields.io/github/last-commit/jorgegabrielti/sre-rootsetup)](https://github.com/jorgegabrielti/docker-cheatsheet)

About
==========
How to scan Docker images.

[//]: # "[![Badge]()]()"

Table of contents
==========
<!--ts-->
   * [About](#about)
   * [Table of contents](#table-of-contents)
<!--te-->

[//]: # "(## Feature)"
[//]: # "(- [x] [Packages utils](src/conf/packages.txt))"

Requirements
==========
### **[Docker image scan]()**
First, we create a **Dockerfile**.
```bash
cat > Dockerfile << EOF
FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine
RUN apk --update add openjdk7-jre
RUN gcloud components install app-engine-java kubectl
EOF
```

Make a login with command:
```bash
docker scan --login
```

Then, we be use the following command to scan docker images:
```bash
docker scan --file Dockerfile gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine
```