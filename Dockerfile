# Use an official Ruby runtime as a parent image
FROM ruby:2.7

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in Gemfile
RUN bundle install

# Make port 4000 available to the world outside this container
EXPOSE 4000

# Run jekyll when the container launches
CMD ["jekyll", "serve", "--host=0.0.0.0"]