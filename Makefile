jib:
	./gradlew clean jib --image=hanslovsky/hello-jib

jibDockerBuild:
	./gradlew clean jibDockerBuild

docker:
	docker build -t hello-docker-jib .
