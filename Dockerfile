FROM rust:latest as builder
WORKDIR /usr/src/mixnode
COPY nym .
RUN cargo build --release 

FROM debian:buster-slim
WORKDIR nym
COPY --from=builder /usr/src/mixnode/target/release/nym-mixnode .
RUN apt-get update && apt-get -y install pkg-config build-essential libssl-dev curl jq curl && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash user
RUN chown user:user nym-mixnode
USER user
#RUN ./nym-mixnode init --id docker-mixnode --host $(curl ifconfig.me) --wallet-address nymt18ueff8qkmu8caskwn9vjsap4qfh3qff74a44k2
#RUN sed -i '/listening_address/c\listening_address = \"0.0.0.0\"' /home/user/.nym/mixnodes/docker-mixnode/config/config.toml

CMD ["./nym-mixnode","run","--id","docker-mixnode"]

