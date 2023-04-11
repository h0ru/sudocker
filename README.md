# SUDOCKER
> ## Learn with sudocker
> <div align="center">
>  <h1> <img src="https://github.com/h0ru/sudocker/blob/main/sudocker.png" width="250px"></h1>
> </div>

> ## How to install?
> ### Wget:
> ```
> wget -q https://raw.githubusercontent.com/h0ru/sudocker/main/sudocker -O sudocker ; chmod +x sudocker
> ```
> ### Curl: 
> ```
> curl -q https://raw.githubusercontent.com/h0ru/sudocker/main/sudocker -o sudocker ; chmod +x sudocker
> ```
> ---

> ## Use sudocker as binary
> ### Move to /usr/local/bin  
> ```
> sudo mv ./sudocker /usr/local/bin
> ``` 
> ---

> ## Help
> ```
>    USAGE:
>   sudocker [OPTIONS]
>
>   OPTIONS:
>   -h, --help     Show this help message and exit
>    h             Show the Docker help and some basics commands
>    img           Show all the images
>    ps            Show all the container processes
>    ex            Execute a container. Use: sudocker ex <ID/NAME> <SHELL>
>    stp           Stop a container. Use: sudocker stop <ID/NAME>
>
> ``` 
> ---
