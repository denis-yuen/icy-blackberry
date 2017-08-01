FROM r-base
LABEL maintainer="denis.yuen@oicr.on.ca"
COPY example.R example.R
COPY HelloWorld.ipynb HelloWorld.ipynb
RUN apt-get -m update && apt-get install -y python-pip tree vim
RUN pip install nbconvert 
RUN jupyter nbconvert --to script HelloWorld.ipynb
COPY start.sh start.sh
RUN chmod a+x start.sh
