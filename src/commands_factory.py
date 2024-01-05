import os

DOCKER_COMPOSE="docker compose"
DOCKER="docker"

class CommandsFactory:

    def run(self, command):
        option = command['option']
        args = " ".join(command['args'])
        if option == 'start':
            print(f'running docker compose up -d {args}')
            os.system(f'{DOCKER_COMPOSE} up -d {args}')
        elif option == 'stop':
            print(f'running docker compose stop {args}')
            os.system(f'{DOCKER_COMPOSE} stop {args}')
        elif option == 'list':
            print(f'running docker ps')
            os.system(f'{DOCKER} ps')
        elif option == 'logs':
            print(f'running docker compose logs -f -t --tail={args}')
            os.system(f'{DOCKER_COMPOSE} logs -f -t --tail={args}')
        else:
            raise ValueError('Command not found!')


