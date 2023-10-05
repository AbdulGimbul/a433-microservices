# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama <username-github>/order-service
docker build -t ghcr.io/abdulgimbul/order-service:latest .

# Login ke Docker Hub
echo %CR_PAT% | docker login ghcr.io -u abdulgimbul --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/abdulgimbul/order-service:latest