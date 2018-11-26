FROM microsoft/dotnet

COPY install-oh-my-zsh.sh /root
RUN apt-get update \
    && apt-get install -y \
        vim \
        zsh \
        git \
    && zsh /root/install-oh-my-zsh.sh || true \
    && rm /root/install-oh-my-zsh.sh \
    && mkdir /opt/app


WORKDIR /opt/app
CMD ["zsh"]
