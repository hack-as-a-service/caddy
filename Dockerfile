FROM caddy:2.4.6-builder AS builder

RUN xcaddy build \
    --with github.com/hack-as-a-service/caddy_dnsimple@2679f8e06eb0a59fa6d8e2c45de7431991f0b35f

FROM caddy:2.4.6

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
