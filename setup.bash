// Installing Google Chrome, VS Code, Docker, Kubernetes, Lens, MongoDB Compass, Beekeeper Studio, Postman and Node.JS

wget -qO- https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/google-chrome-keyring.gpg \
&& echo "deb [signed-by=/usr/share/keyrings/google-chrome-keyring.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list > /dev/null \
&& sudo apt-get update \
&& sudo apt-get install -y google-chrome-stable docker.io postman \
&& wget -qO- https://downloads.mongodb.com/compass/mongodb-compass_1.28.1_amd64.deb | sudo dpkg --install - \
&& sudo apt-get install -fy \
&& sudo apt-get update \
&& sudo apt-get install -y apt-transport-https ca-certificates curl \
&& curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - \
&& echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list \
&& sudo apt-get update \
&& sudo apt-get install -y kubectl \
&& wget --quiet -O - https://deb.beekeeperstudio.io/beekeeper.key | sudo apt-key add - \
&& echo "deb https://deb.beekeeperstudio.io stable main" | sudo tee /etc/apt/sources.list.d/beekeeper-studio.list \
&& sudo apt-get update \
&& sudo apt-get install -y beekeeper-studio \
&& sudo snap install kontena-lens --classic \
&& curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - \
&& sudo apt-get install -y nodejs \
&& sudo apt update \
&& sudo apt install -y software-properties-common apt-transport-https wget \
&& wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - \
&& sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" \
&& sudo apt update \
&& sudo apt install -y code
