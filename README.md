## Prerequisites

* [Docker](https://www.docker.com/)
* [.NET Core 2.0](https://www.microsoft.com/net/core)
* [Visual Studio Code](https://code.visualstudio.com/)
* [C# Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.csharp)
* [Docker Explorer](https://marketplace.visualstudio.com/items?itemName=formulahendry.docker-explorer) (Optional but strongly recommended)

## Debug in local

1. Open this project in VS Code
1. In 'Debug View', select '.NET Core Launch (console)'

    ![debug-in-local](/images/debug-in-local.png)
1. Press 'F5'

## Debug in Docker

1. Open this project in VS Code
1. In 'Debug View', select '.NET Core Remote Attach (Docker)'

    ![debug-in-docker](/images/debug-in-docker.png)
1. In terminal, cd to root folder and run following commands
1. `dotnet publish`
1. `docker build -f Dockerfile -t <docker_image_name_abc> .`
1. `docker run <docker_image_name_abc>`
1. In launch.json, change the `<container_name>` in `pipeArgs` with the container you just create
1. Press 'F5'
1. In the popup window, select the right process (`dotnet dotnetcore-try.dll`) to attach

    ![select-process](/images/select-process.png)
1. You could use `docker logs <container_name> -f --tail 10` to see the logs in container

    ![debug-in-docker-screenshot](/images/debug-in-docker-screenshot.png)

## For Remote Attach, install VSDBG (the .Net Core command line debugger) and ps in container if not installed
* `apt-get update`
* `apt-get install -y unzip procps`
* `curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v latest -l ~/vsdbg`