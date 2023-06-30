# Podman Node.js 18

To create your image

    podman build -t nodejs-18 .

then run it

    podman run -d -p 8080:80 nodejs-18
