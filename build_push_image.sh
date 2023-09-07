# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 ghcr.io/abdulgimbul/item-app:v1

# Login ke Docker Hub
echo %CR_PAT% | docker login ghcr.io -u abdulgimbul --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/abdulgimbul/item-app:v1