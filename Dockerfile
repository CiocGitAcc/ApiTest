# Use the official R image from Docker Hub
FROM r-base

# Install necessary R packages
RUN R -e "install.packages('plumber', repos='http://cran.us.r-project.org')"

# Copy your API script to the Docker image
COPY ./api.R /usr/local/src/API.R

# Expose the port plumber will run on
EXPOSE 8080

# Run the plumber API
CMD ["R", "-e", "pr <- plumber::plumb('/usr/local/src/api.R'); pr$run(host='0.0.0.0', port=8080)"]
