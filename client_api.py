
# Docker client library. To install:
# pip3 install docker
import docker


# Example usage of docker client api in python
def create_container():
    
    # Get docker client from environment variables
    client = docker.from_env()

    # Run container with command
    client.containers.run('alpine', ['echo', 'Hello', 'World!'])



def example():
    client = docker.from_env()

    # List containers
    client.containers.list()

    client.containers.run('alpine', ['echo', 'Hello', 'World!'], detach = True)

    container = client.containers.run('alpine', 'echo Hello World!', detach = True)
    print(container.id)

    container.stop()
    print(container.logs())

    # Get images
    for image in client.images.list():
        print(image.id)

    client.images.pull('alpine')

    
    # Example editing and committing a container
    container = client.container.run('alpine', ['touch', '/helloworld'], detach = True)
    container.wait()
    image = container.commit('helloworld')
    print(image.id)



if __name__ == '__main__':
    create_container()
    example()


