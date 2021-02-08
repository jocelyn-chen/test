cd ~

rm -rf ~/anaconda3
rm -rf ~/human_aware_rl

cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh

bash Anaconda3-2020.11-Linux-x86_64.sh -b -p $HOME/anaconda3

conda init bash
source ~/.bashrc
cd ~

conda create -y -n harl_rllib python=3.7
conda activate harl_rllib

git clone --single-branch --branch mesut_xpl --recursive https://github.com/HumanCompatibleAI/human_aware_rl.git

cd human_aware_rl/

yes | ./install.sh

pip install tensorflow==2.0.2
pip install numpy==1.19.5
