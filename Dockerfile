# Step 1: Use an official Python runtime as a base image
FROM python:3.13-slim-bookworm


# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt first to leverage Docker cache
COPY app/requirements.txt /app/

RUN pip config --user set global.progress_bar off
# Step 4: Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


# Step 5: Copy the application code (everything from the app directory) into the container
COPY app /app/

# Step 6: Make port 5000 available for the application
EXPOSE 5000

# Step 7: Run the application when the container starts
CMD ["python", "app.py"]
