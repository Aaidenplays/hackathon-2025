# Step 1: Use Python base image
FROM python:3.9

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the application files into the container
COPY requirements.txt ./
COPY . .
COPY app.py ./

# Step 4: Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the backend's port
EXPOSE 5000

# Step 6: Start the Python application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000", "--reload"]