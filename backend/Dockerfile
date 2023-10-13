FROM python:3.11-alpine AS builder

RUN pip install "poetry==1.6.1"
RUN mkdir /opt/backend
WORKDIR /opt/backend
COPY poetry.lock pyproject.toml /opt/backend
RUN poetry config virtualenvs.create false &&\
    poetry install --no-interaction --no-ansi --no-dev
    
COPY main.py /opt/backend/main.py

ENTRYPOINT ["poetry", "run", "uvicorn", "main:app", "--host", "0.0.0.0"]
