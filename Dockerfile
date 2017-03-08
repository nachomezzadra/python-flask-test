FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get install -y gfortran g++ liblapack-dev python3 python3-dev python3-setuptools python-psycopg2 python3-setuptools libpq-dev wamerican
RUN easy_install3 pip
RUN pip3 install --upgrade gensim flask flask_restful boto ipython nltk distro psycopg2 sklearn distro xlrd openpyxl tensorflow
COPY . /app
WORKDIR /app
# RUN pip3 install -r requirements.txt
# ENTRYPOINT ["python3"]
# CMD ["app.py"]
# CMD ["app.py"]
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]



