import argparse
from commands_factory import CommandsFactory

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="List of docker comands")
    parser.add_argument('-s', '--start', nargs='*', help="Run command docker compose up -d", required=False)
    parser.add_argument('-t', '--stop', nargs="*", help="Run command docker compose stop", required=False)
    parser.add_argument('-o', '--logs', nargs="+", help="Run command docker compose logs -f -t --tail=", required=False)
    parser.add_argument('-l', '--list', nargs="*", help="Run command docker ps", required=False)
    args = parser.parse_args()
    emptyOptions = True
    command = None
    for arg in vars(args):
        if vars(args)[arg] != None:
            emptyOptions = False
            command = {'option': arg, 'args': vars(args)[arg]}

    if emptyOptions:
        raise Exception("Invalid Option!!!")

    factory = CommandsFactory()
    factory.run(command)