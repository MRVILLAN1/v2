FROM python:3.10.4-slim

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git curl wget bash neofetch ffmpeg software-properties-common

WORKDIR /app

COPY requirements.txt .
RUN pip3 install --no-cache-dir wheel
RUN pip3 install --no-cache-dir -U -r requirements.txt

COPY . .
EXPOSE 8000

CMD ["python3", "-m", "devgagan"]
