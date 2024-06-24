FROM public.ecr.aws/docker/library/alpine:3.20.1

ENV HOME="/app" \
    PLUGIN_HOME="/app"

RUN mkdir -p $HOME ; \
    chmod -R 777 $HOME ; \
    apk add --no-cache ca-certificates git openssh curl git-lfs

COPY dist/plugin-git /bin/plugin-git

WORKDIR $HOME

ENTRYPOINT ["/bin/plugin-git"]
