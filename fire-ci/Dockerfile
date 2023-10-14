FROM debian:stable-slim

SHELL ["/bin/bash", "-c"]

# Install necessary packages and Bash shell
RUN apt update
RUN apt install -y curl wget ca-certificates curl gnupg


# Add Docker's official GPG key:
RUN install -m 0755 -d /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
RUN chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
RUN echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null

# install docker
RUN apt update
RUN apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# cleanup
RUN apt clean

# Install riji
RUN wget -O /usr/local/bin/riji https://github.com/fire-lib/riji/releases/latest/download/riji
RUN chmod +x /usr/local/bin/riji

CMD ["/bin/bash"]