# jekyll-gulp-docker
A Docker image for generating a static website with Jekyll and have asset compilation completed by Gulp.


# Development

To create a Docker image from a Dockerfile, simply run the following command:
```docker build -t keepaliveit/jekyll-gulp-docker .```

To version a build of the Docker image, run the following command:
```docker build -t keepaliveit/jekyll-gulp-docker:1.0.2 -t keepaliveit/jekyll-gulp-docker:latest .```


Due to requiring the parent content in Docker, the following command will need to be run from the root of the project.
```docker build -t joel/gulp ./jekyll-gulp-docker -f jekyll-gulp-docker/Dockerfile```

To run a Container instance of the Image created, run the following command:
```docker run -it --rm -v $(pwd):/srv -w="/srv/src/resource" -p 3000:3000 joel/gulp npm run serve:rebuild```