FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r Requirements.txt
RUN python train.py
EXPOSE 5000
CMD ["python", "app.py"]
