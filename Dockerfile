FROM centos/python-36-centos7

ENV PYTHONUNBUFFERED 1

USER root

RUN yum install -y \
  gcc \
  g++ \
  libxslt-dev \
  python3 \
  python3-dev


RUN pip install -U pip
RUN pip install virtualenv
RUN virtualenv venv_repro

RUN source venv_repro/bin/activate && pip install -U pip
RUN source venv_repro/bin/activate && pip install -U lxml pytest pip snapshottest

COPY . ./

CMD ["./repro.sh"]
