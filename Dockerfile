#base image
FROM ubuntu:latest

#install packages
RUN apt-get update && apt-get install -y \
    package1 \
    package2

#environment variables
ENV APP_HOME /app
WORKDIR $APP_HOME

#instructions to copy application code or files into the container and define the entry point command or script
COPY . .

# Define the entry point command or script
CMD ["./my_script.sh"]