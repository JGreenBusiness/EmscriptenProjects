

 FROM emscripten/emsdk:latest
 RUN apt update && apt install -y ninja-build

 CMD ["/bin/sh", "/app/build.sh"]