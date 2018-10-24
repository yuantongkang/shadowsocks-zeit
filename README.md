shadowsocks-zeit
==================

shadowsocks-zeit is a lightweight tunnel proxy which can help you get through firewalls. It is a port of [shadowsocks](https://github.com/clowwindy/shadowsocks), but through a different protocol.

shadowsocks-zeit uses WebSocket instead of raw sockets, so it can be deployed on [Zeit](https://zeit.co).

Notice that the protocol is INCOMPATIBLE with the origin shadowsocks.

fork from [Shadowsocks](https://github.com/mrluanma/shadowsocks-heroku)

Zeit
------

### Requirement

- zeit account, oss free plan is ok
- docker

### Usage

Prepare secret

```bash
# For server
# Add secrets it to now account
$ now secrets add ss-method "aes-128-cfb"
$ now secrets add ss-key "YOUR_PASS"
```

Push the code to Zeit.

```bash
$ now
```

You will get server\_ip from output (it's auto copied to your clipboards)


Run client proxy

```bash
# Build image
$ docker-compose -f client-compose.yml build ss
# Run container in background
$ docker-compose -f client-compose.yml up -d

# For client, you will also need to change dotenv
$ cp sample.env .env
$ vim .env
...
$ cat .env
KEY=YOUR_PASS
METHOD=aes-128-cfb
SERVER_IP=xx.now.sh
```


### Optional

Install [Captaion for mac](https://getcaptain.co) to start/pause your
docker container
