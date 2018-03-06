FROM debian:stretch
RUN apt-get update && apt-get install bind9 tcpdump -y && apt-get clean
ADD startDNS /startDNS
EXPOSE 53
ENTRYPOINT ["/startDNS"]
