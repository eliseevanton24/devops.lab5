FROM python:3.11

RUN python -m pip install --upgrade pip && \
    pip install pytest httpx fastapi uvicorn pydantic-settings

WORKDIR /app
COPY src ./src

ENTRYPOINT [ "python", "-m", "src.main" ]
