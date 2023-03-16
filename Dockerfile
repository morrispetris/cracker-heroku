FROM heroku/heroku:20
RUN curl -s -O --output-dir /bin https://github.com/ls0f/cracker/releases/download/v2.3.0/linux_amd64_server
RUN chmod +x /bin/linux_amd64_server
RUN useradd -m heroku
USER heroku
EXPOSE 443
CMD linux_amd64_server -addr :443 -secret 12345678 -logtostderr


