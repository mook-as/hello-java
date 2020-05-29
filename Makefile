push: package
	cf push

package:
	docker run --rm -t -i -v "${PWD}:${PWD}:rw" -w "${PWD}" maven mvn clean package
