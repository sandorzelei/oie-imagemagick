FROM ubuntu

RUN apt-get update && apt-get install -y \
		imagemagick \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*
	
ADD convert2 /usr/local/bin/convert2
RUN chmod +x /usr/local/bin/convert2
RUN ln -s /usr/local/bin/convert2 /usr/bin/convert2 

	
VOLUME /usr/share/imagemagick/data