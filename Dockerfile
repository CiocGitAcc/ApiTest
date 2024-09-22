# Use the official R image from Docker Hub
FROM r-base

# Install system dependencies and R packages
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libsodium-dev \
    && R -e "install.packages('plumber', repos='http://cran.us.r-project.org')"

# Copy your API script to the Docker image
COPY ./API.R /usr/local/src/API.R

# Expose the port plumber will run on
EXPOSE 8080

# Run the plumber API
CMD ["R", "-e", "pr <- plumber::plumb('/API.R'); pr$run(host='0.0.0.0', port=8080)"]
