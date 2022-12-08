#! bin/bash
sudo ssh -i ${{secrets.PEM_KEY}} ubuntu@ec2-44-206-253-49.compute-1.amazonaws.com
sudo docker login -u ${{ secrets.DOCKER_USERNAME }} -p ${{ secrets.DOCKER_PASSWD }}
sudo docker pull ${{ secrets.DOCKER_USERNAME}}/${{secrets.DOCKER_REPO }}
sudo docker run -it -d -p 8090:8080 citagi63/github
