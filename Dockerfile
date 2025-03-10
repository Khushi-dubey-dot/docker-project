# Use the official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy files
COPY . .

# Expose the port
EXPOSE 5001

# Run the application
CMD ["python", "app.py"]