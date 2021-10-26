Information/ Scripts related to container developmennt on windows laptop

# Using VSC with WSL2 and docker 
## Intro 
As docker is not natively supported on windows, we have to use tools/tricks to develop docker containers from your windows Laptop.
The Docker compnay propose Docker Desktop to provide seamless uage of docker commands from Windows. It works basically by launching a virtual env (VM/WSL) and then launch real commands remotely.

As Docker Desktop has been moved to a license model not usable for free by everybody, here is another way to build container images / run docker commands in your dev envvironment. 
For this we will use :
* WSL2 Ubuntu as the virtualization system that will execute the docker commands 
* [ VSC Remote ](https://code.visualstudio.com/docs/remote/remote-overview) : It is a version of Visual Studio Code with the UI running in your direct windows environment while the build and actions are executed remotely on the VSC server side. In our case we will use WSL2 as a VSC server 

## Install ubuntu/docker env 
* [Installing WSL2] (https://docs.microsoft.com/en-us/windows/wsl/install) : Just follow the duide 
* Install ubuntu `wsl.exe --install -d Ubuntu`
* Install docker for Ubuntu using  wsl/install-dockerwsl.sh 
* Make sure the docker daemon is running  `sudo service docker status` 

## Launch VSC Remote:
In the Ubuntu WSL terminal move to the directory you will use for dev, launch VSC remote using:

`user:~/Dev/$ code .`
