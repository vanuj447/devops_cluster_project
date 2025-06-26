# Dockerfile
FROM ruby:3.1.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client

# Create working directory
WORKDIR /app

# Copy Gemfiles
COPY Gemfile* ./

# Install bundler and dependencies
RUN gem install bundler
RUN bundle install

# Copy the app code
COPY . .

# Precompile assets
RUN bundle exec rake assets:precompile

# Expose port
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
