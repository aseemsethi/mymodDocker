# Start from the latest golang base image
FROM golang:latest

RUN echo 'Making Docker Image for mymodDocker'

# Add Maintainer Info
LABEL maintainer="Aseem Sethi <aseemsethi@yahoo.com>"

# Set the Current Working Directory inside the container
WORKDIR /go/src
RUN mkdir mymodDocker
RUN mkdir mymodDocker/src
WORKDIR /go/src/mymodDocker

# Copy go mod and sum files
ADD src /go/src/mymodDocker/src
ADD go.mod /go/src/mymodDocker

# Build the Go program
RUN go build -o hello ./...

# Expose port 8000 to the outside world
EXPOSE 8000

# Command to run the executable
CMD ["./hello"]
