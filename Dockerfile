FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        ca-certificates \
        texlive-latex-base \
        texlive-latex-recommended \
        texlive-latex-extra \
        fonts-font-awesome \
        lmodern \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["bash"]
