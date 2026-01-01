FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
				wget \
        ca-certificates \
        texlive-latex-base \
        texlive-latex-recommended \
        texlive-latex-extra \
        lmodern

RUN wget https://mirrors.ctan.org/fonts/fontawesome5.zip \ 
    unzip fontawesome5.zip \
    mkdir -p ~/texmf/tex/latex/fontawesome5 \
    cp -r fontawesome5/* ~/texmf/tex/latex/fontawesome5 \
    mktexlsr ~/texmf \
    updmap-sys --enable Map=fontawesome5.map 

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["bash"]
