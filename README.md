# Postgres-Data-Model

This project is to showcase following skills:-
1. Setting up Data Model

![Alt text](./Images/Studends_DataModel.jpg "students table")

2. Setting up Data Warehouse Model

![Alt text](./Images/Studends_DataModel.jpg "a title")

Tools used:-
- Docker Container
- Jutpyter notebook
- Bash Script
- PostgreSQL

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
    1. Running the bash script 'docker_run.sh' in the Docker folder with following caommand will run all the containers and set them up for use:-
        > bash docker_run.sh 
        Or the following steps can be used to do it manually.

        > [!NOTE]
        > Some customization in file location might be required as per the user environment.

    1. Jupyter Notebook with Dockerfile
        * Files are saved at:-
        > ./Docker/JupyterNotebook_Docker
        * Following commands are to run the container:-
        ```docker
        docker run -dit --rm --name notebook --net my_bridge_network -p 8888:8888 -v /media/sf_Virtual_Box/Postgres-Data-Model/Notebooks:/src/notebooks udayrana116/everest:1.01
        ```
        > This from the command will run at my_bridge_network.

    2. Postgres_pgAdmin with docker-compose
        * Files are saved at:-
        > ./Docker/Postgres_pgAdmin
        * Following commands are to run the container:-
        ```docker
        docker-compose up -d
        ```
        > This will run automatically at their default container. So need to be 
        > disconnected and attached to my_bridge_network
        > Use following commands:-
        ```docker
        docker network ls 

        docker network disconnect <bridge_name> <conatiner_id>

        docker network connect my_bridge_network <conatiner_id>

        docker network inspect <bridge_name>
        ```
        Do this for both containers to have all running containers under one network.
    3. After this run following Notebooks:-

    > `./Notebooks/DataModel.ipynb`

    > `./Notebooks/Wealth_Account Data Model.ipynb`