# Use Python as base image
FROM python:3.10

# Set working directory inside container
WORKDIR /app

# Copy the requirements file from the correct folder
COPY resume_analyzer/requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project
COPY . /app

# Expose the port (change if needed)
EXPOSE 5000

# Run the application (update this line)
CMD ["python", "resume_analyzer/app.py"]
