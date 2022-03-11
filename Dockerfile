# use alpine image
FROM alpine:3.14

# create directories
RUN mkdir /dave
RUN mkdir /data

# copy binary into container
COPY ./dave /dave/dave

# add execute permission
RUN chmod +x /dave/dave

# expose port 80
EXPOSE 80

# run binary on start
ENTRYPOINT ["/dave/dave"]