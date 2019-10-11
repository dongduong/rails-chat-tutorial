FROM ruby:2.6.2-stretch

# Copy application code
COPY . /app
# Change to the application's directory
WORKDIR /app

# Set Rails environment to production
ENV RAILS_ENV production

# Install gems, nodejs and precompile the assets
RUN bundle install --deployment --without development test \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt install -y nodejs

CMD bundle exec rake assets:precompile
CMD bundle exec rails server
