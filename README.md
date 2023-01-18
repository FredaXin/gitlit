# Let's Git Lit! 

## What is it? 
*Git Lit* defines the public GitHub Action used in the GitHub template [*It's Lit*](https://github.com/FredaXin/itslit). 

## How does it work? 
*Git Lit* defines a [custom GitHub action](https://docs.github.com/en/actions/creating-actions/about-custom-actions#docker-container-actions) that runs in a Docker container. The GitHub action is used in a workflow that makes randomized number of daily git commits. 

The main components are: 
1. [`entrypoint.sh`](https://github.com/FredaXin/gitlit/blob/main/entrypoint.sh): The shell script that contains the action code.
2. [`Dockerfile`](https://github.com/FredaXin/gitlit/blob/main/Dockerfile): The Dockerfile that consists of instructions to build a Docker image and to execute `entrypoint.sh`.
3. [`action.yml`](https://github.com/FredaXin/gitlit/blob/main/action.yml): The action metadata file that defines the GitHub action. 

For more detailed information about how to create a custom Docker container action, see [GitHub's Docs](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action). 