#Deriving the latest base image
FROM python:3.11.9

# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
WORKDIR /usr/app/src

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir requests_html lxml_html_clean

#to COPY the remote file at working directory in container
COPY main.py ./
# Now the structure looks like this '/usr/app/src/test.py'

#CMD instruction should be used to run the software
#contained by your image, along with any arguments.

CMD [ "python", "./main.py"]