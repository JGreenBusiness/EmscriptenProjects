 
 @echo off

 REM Build the docker image described by our docker file
 docker build . -t build_emscripten

 REM run the docker image, volume mount the current directory to
 REM /app in the container. This is when our build.sh script will run.
 docker run -v %CD%:/app build_emscripten