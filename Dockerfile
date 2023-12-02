FROM scratch

COPY bin/lib*.so.* /lib/x86_64-linux-gnu/

COPY bin/ld-linux-x86-64.so.2 /lib64/

COPY txt/*.txt /

COPY bin/ws /

CMD ["/ws"]
