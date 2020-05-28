FROM openresty/openresty:alpine-fat

RUN opm get bungle/lua-resty-session
RUN opm install pintsized/lua-resty-http
RUN apk update
RUN apk add --no-cache redis
RUN apk update

# push docker to gcr.io/sap-se-cx-sre-sdev/mike/openresty
