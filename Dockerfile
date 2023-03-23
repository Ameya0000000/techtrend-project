FROM python:3.8
LABEL maintainer="Ameya Diwan"

COPY ./techtrends /app
WORKDIR /app
RUN pip install -r requirements.txt

EXPOSE 3111

RUN python init_db.py

# command to run on container start
CMD [ "python", "app.py" ]

