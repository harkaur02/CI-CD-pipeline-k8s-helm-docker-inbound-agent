FROM jenkins/inbound-agent:latest 

# Add any necessary customizations here (install tools, add scripts, etc.)
# For example, installing curl, git, or other dependencies:
USER root

RUN apt-get update & apt-get install -y wget curl zip 

RUN apt-get install openjdk-17-jre -y

RUN apt install -y python3 python-is-python3 maven gradle nodejs npm && \
    rm -rf /var/lib/apt/lists/*

# Switch back to the jenkins user
USER jenkins
