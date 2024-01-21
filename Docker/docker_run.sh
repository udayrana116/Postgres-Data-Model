# Stop all running containers
sudo aa-remove-unknown 
docker kill $(docker ps -q)

# Create private network for the containers
docker network create --driver bridge my_bridge_network

# Got to Jupyter Dockerfile and run that conatiner
cd /media/sf_Virtual_Box/Postgres-Data-Model/Docker/JupiterNotebook_Docker

docker run -dit --rm --name notebook --net my_bridge_network -p 8888:8888 -v /media/sf_Virtual_Box/Postgres-Data-Model/Notebooks:/src/notebooks udayrana116/everest:1.01

# Got to Postgres-Data-Model and run that conatiner
cd /media/sf_Virtual_Box/Postgres-Data-Model/Docker/Postgres_pgAdmin

docker-compose up -d

# inspect the coantainers on which network theye are running
# docker network inspect <bridge_name>
# Disconnect from other network if not in my_bridge_network
# docker network disconnect <bridge_name> <conatiner_id>
# Then connect with my_bridge_network
# docker network connect my_bridge_network <conatiner_id>

# Check the logs on the JUpyter notebook container and open it in browser uisng the last link
docker logs notebook