# inko-devcontainer
There are several options for running Inko in a devcontainer
## Option 1: Run in Github Codespace
In the [Github repo](https://github.com/pcomans/inko-devcontainer) click on **Code** and then on **Create codespace on main**.

# Option 2: Run in DevPod
Install [Docker Desktop](https://www.docker.com/products/docker-desktop/).

Install [DevPod](https://devpod.sh/).

In DevPod, click on **Create Workspace**.

Under **Workplace Source** enter `https://github.com/pcomans/inko-devcontainer`.

On the bottom click **Create Workspace**.

## Option 3: Run in Docker through Visual Studio Code
Install [Docker Desktop](https://www.docker.com/products/docker-desktop/).

Install [Visual Studio Code](https://code.visualstudio.com/).

In VSCode, install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension.

Clone this repository: `git clone https://github.com/pcomans/inko-devcontainer`.

Open the `inko-devcontainer` folder in VSCode.

You should see a popup saying **Folder contains a Dev Container configuration file**.

Click on **Reopen in Container**.
