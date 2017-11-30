FROM nginx:alpine

# configs files
COPY ./ /app

# port
EXPOSE 80

#
STOPSIGNAL SIGTERM

# start
CMD ["/app/start.sh"]