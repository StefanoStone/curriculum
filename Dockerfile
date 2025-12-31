FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y \
        git \
        texlive-latex-base \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-xcolor \
        texlive-fonts-extra \
        lmodern \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Default command
CMD ["bash"]
