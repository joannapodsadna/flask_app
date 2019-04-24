FROM python:3.6.2




# We copy just the requirements.txt first to leverage Docker cache

COPY . /usr/app

WORKDIR /usr/app

RUN pip install -r requirements.txt



ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

