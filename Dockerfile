FROM php:5.6.40-apache
RUN apt-get update && apt-get install -y \
  git \
  && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html
RUN git clone https://github.com/dickychenghk/PSGConverter.git
 

#RUN git clone https://github.com/dickychenghk/PSGConverter.git \
#  && echo "<?php phpinfo(); ?>" >> phpinfo.php 
#sudo docker build --no-cache -t psgconverter .
#sudo docker run -d --restart unless-stopped  -p 9999:80 --memory="128m" --memory-swap="384m" --cpus="0.5" --cpu-shares="512" psgconverter
#http://localhost:9999/PSGConverter/Demo.html
#http://localhost:9999/PSGConverter/Converter.html
