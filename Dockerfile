# Gunakan image Python sebagai base
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy file ke container
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Jalankan aplikasi Flask
CMD ["python", "app.py"]
