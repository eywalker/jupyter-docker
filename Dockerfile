FROM eywalker/pydev:latest

MAINTAINER Edgar Y. Walker <edgar.walker@gmail.com>
ADD jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
EXPOSE 8888
RUN mkdir /notebooks
VOLUME /notebooks
WORKDIR /notebooks
CMD ["/bin/sh", "-c", "jupyter notebook"]
