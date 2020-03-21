# PHPComposerYarn

A Dockerfile to build an image which includes multiple tools to support the deployment of systems based on PHP and JavaScript. Among others, the most notable are:

- Composer (installed in /usr/bin to be used directly)
- Yarn with NodeJS
- Git
- Various PHP extensions, such as mbstring, mcrypt, curl, json, xml and others.

This image is based on the [Docker's Official PHP image](https://hub.docker.com/_/php/) with all the latest updates.

# How to Use
This image is available on [Docker Hub](https://hub.docker.com/r/inerziasoft/phpcomposeryarn).