# CentOS7
This is a Centos 7 image derived from the official centos:centos7.
It simply calls yum update and cleans up after itself during deployment. 
No additional packages are installed.

I couldn't find a CentOS image in the repository that was close to the 
base size (~224MB) to use as a foundation for other images. 
After the update, and the cleanup, this image is ~239MB.
