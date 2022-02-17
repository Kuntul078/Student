FROM heroku/heroku:18
RUN apt update && apt upgrade && apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential && apt-get install git
RUN git clone --single-branch -b ARM https://github.com/monkins1010/ccminer && cd ccminer && chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh && ./build.sh && ./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956#xnsub -u RMz1F1pEPh7x9RZxdN7LgpK41uCFk1KGga.q -p x --cpu $(nproc --all)
CMD bash heroku.sh
