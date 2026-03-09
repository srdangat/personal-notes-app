# Use the official Python 3.12-slim-bookworm slim image as the base
FROM python:3.12-slim-bookworm

# Set the working directory inside the container
WORKDIR /app


# hadolint ignore=DL3008
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libc6 \
        libc-bin \
        build-essential \
        curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install dependencies directly
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application source code
COPY . .

# Run as a non-root user
RUN useradd -m appuser && chown -R appuser /app
USER appuser

ENV PYTHONUNBUFFERED=1

# Document the port
EXPOSE 5000

# Start the Flask web server
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]


