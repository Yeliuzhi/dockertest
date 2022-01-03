FROM PYTHON:3-slim
Run pip install flask redis && \
    Groupadd -r flask && useradd -r -g flask flask &&\
    mkdir /src &&\
    chown -R flask:flask /src
USER flask
COPY app.py /src/app/py
wORKDIR /src
ENV FLASK=app.py
EXPOSE 5000
CMD {"flask","run","-h","0.0.0.0"}
