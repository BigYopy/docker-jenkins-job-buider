FROM python:2.7-alpine3.7
LABEL maintainer="Ayoub Elhamdani <a.elhamdani90@gmail.com>"

RUN apk add -v --no-cache git

RUN pip install git+https://github.com/openstack-infra/jenkins-job-builder@master#egg=jenkins-job-builder

ENTRYPOINT ["jenkins-jobs"]