# Define the Docker image and container name
IMAGE_NAME=digesto-hybrid-search:beta-0.13
CONTAINER_NAME=digesto-hybrid-search-container

clean: 
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)
	
# Define the command to run the Docker container
run: clean
	docker run -it --name $(CONTAINER_NAME) -v $(PWD)/collection:/app/collection -v $(PWD)/indexes:/app/indexes $(IMAGE_NAME)

# To stop the Docker container
stop:
	docker stop $(CONTAINER_NAME)