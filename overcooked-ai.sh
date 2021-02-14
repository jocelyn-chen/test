cd ~

rm -rf ~/anaconda3
rm -rf ~/human_aware_rl

cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh

bash Anaconda3-2020.11-Linux-x86_64.sh -b -p $HOME/anaconda3

cd ~

conda create -y -n harl_rllib python=3.7
source activate harl_rllib

git clone --single-branch --branch mesut_xpl --recursive https://github.com/HumanCompatibleAI/human_aware_rl.git
git clone --single-branch --branch mesut_xpl --recursive https://github.com/HumanCompatibleAI/overcooked_ai.git

cd human_aware_rl/

yes | ./install.sh

pip install tensorflow==2.0.2
pip install numpy==1.19.5
