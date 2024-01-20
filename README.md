# Postgres-Data-Model

This project is to showcase following skills:-
1. Setting up Data Model

![Alt text](./Images/Studends_DataModel.jpg "students table")

2. Setting up Data Warehouse Model

![Alt text](./Images/Studends_DataModel.jpg "a title")

Tools used:-
- Docker Container
- Jutpyter notebook

> [!NOTE]
> I performed this project using an Ubuntu Virtualbox.
> This link can be used to get started:-
> https://www.youtube.com/watch?v=rJ9ysibH768&t=2s&ab_channel=GEEKrar

Pre-requisite to use the files for project setup:-
- Docker installation:-
    https://www.youtube.com/watch?v=TDLKQWsrSyk&t=284s&ab_channel=Simplilearn
    
- docker is working but docker-compose getting Open file denied error on shared file in Virtual box
https://stackoverflow.com/questions/56834153/permission-denied-trying-docker-compose-build-in-virtualbox-shared-folder
* Install Docker-Compose:-
sudo apt install docker-compose

- Bridge Network to have different Containers communicate
    https://www.youtube.com/watch?v=JYQCWDSbIiE&ab_channel=WittCode

        ```docker
        docker network create --driver bridge my_bridge_network
        ```

Following is a breakdown for Data Model:-
- Run the following containers:-
    1. Jupyter Notebook
        * Files are saved at:-
        > ./Docker/JupyterNotebook_Docker
        * Following commands are to run:-
        ```docker
        require 'redcarpet'
        markdown = Redcarpet.new("Hello World!")
        puts markdown.to_html
        ```