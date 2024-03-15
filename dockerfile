FROM python:3.11-slim

ENV DISPLAY=host.docker.internal:0.0
COPY requirements.txt /

RUN apt-get update
RUN pip install -r requirements.txt
RUN apt-get install -y x11-apps

ENV DISPLAY=host.docker.internal:0.0

# Set up a non-root user to run the application
RUN useradd -m -s /bin/bash appuser
USER appuser

WORKDIR /

COPY *.png /
COPY pacman.py /

CMD ["python3", "-m", "pacman.py"]