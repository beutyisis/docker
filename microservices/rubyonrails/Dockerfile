FROM ruby:2.3.4
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock


# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

#start the main process
CMD ["rails", "server", "-b", "0.0.0.0"]
