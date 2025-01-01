# CMake project 1

Build Docker image:

```
docker build -t my_cmake_builder .
```

Build with CMake in Docker container:
```
docker run --rm -v "${pwd}:/app" my_cmake_builder bash -c "cmake -B ./build -S . && cmake --build ./build"
```
