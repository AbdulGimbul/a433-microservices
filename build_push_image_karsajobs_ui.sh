# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama <username-github>/karsajobs:latest
docker build -t ghcr.io/abdulgimbul/karsajobs-ui:latest .

# Login ke Docker Hub
echo %CR_PAT% | docker login ghcr.io -u abdulgimbul --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/abdulgimbul/karsajobs-ui:latest