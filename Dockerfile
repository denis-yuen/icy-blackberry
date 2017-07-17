FROM r-base
ADD example.R example.R
ADD HelloWorld.ipynb HelloWorld.ipynb
RUN apt-get -m update && apt-get install -y python-pip
RUN pip install nbconvert 
RUN jupyter nbconvert --to script HelloWorld.ipynb
ADD start.sh start.sh
RUN chmod a+x start.sh
