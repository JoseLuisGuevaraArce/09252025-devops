# BASE IMAGE
FROM python:3.12-slim

# SET OUR DIRECTORY OUR WORKSPACE
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV PORT=5000
EXPOSE 5000
CMD ["python", "app.py"]
