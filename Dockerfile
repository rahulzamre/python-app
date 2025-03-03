# Step 1: Use an official Python runtime as a base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the current directory content into the container at /app
ADD app /app

# Step 4: Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Make port 5000 available for the application
EXPOSE 5000

# Step 6: Run the application when the container starts
CMD ["python", "app.py"]
