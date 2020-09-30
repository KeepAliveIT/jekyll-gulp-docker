docker build -t keepaliveit/app .
docker run -p 4000:4000 -d keepaliveit/app
