#########   gcc - 8    instalação

######### Download gcc-8 para arm64 e mover para /tmp

echo "Instalando o GCC-8"

echo "Criando a pasta gcc"

git clone https://github.com/brun0eduard0/cpp-8-ARM.git cpp-repo
cd cpp-repo

echo "Copiando para a pasta"

cd ..
sudo cp -f -R cpp-repo/ /tmp/

echo "Instalando em /tmp"


#sudo apt-get install libc6-dev  --fix-missing -y
sudo apt install /tmp/cpp-repo/libc6-dev-arm64-cross_2.28-7cross1_all.deb


sudo apt install /tmp/cpp-repo/gcc-8-base_8.4.0-1ubuntu1~18.04_arm64.deb
#sudo apt install /tmp/gcc/gcc-8-base_8.3.0-6_arm64.deb 
#sudo apt install /tmp/gcc/libtsan0_8.4.0-1ubuntu1~18.04_arm64.deb
#sudo apt install /tmp/gcc/libasan5_8.3.0-6_arm64.deb 
sudo apt install /tmp/cpp-repo/libasan5_8.4.0-1ubuntu1~18.04_arm64.deb

sudo apt install /tmp/cpp-repo/libisl19_0.20-2_arm64.deb 

sudo apt install /tmp/cpp-repo/cpp-8_8.4.0-1ubuntu1~18.04_arm64.deb 
#sudo apt install /tmp/gcc/cpp-8_8.3.0-6_arm64.deb 

sudo apt install /tmp/cpp-repo/libgcc-8-dev_8.4.0-1ubuntu1~18.04_arm64.deb
#sudo apt install /tmp/gcc/libgcc-8-dev_8.4.0-3ubuntu2_arm64.deb

sudo apt install /tmp/cpp-repo/libstdc++-8-dev_8.4.0-1ubuntu1~18.04_arm64.deb 
sudo apt install /tmp/cpp-repo/gcc-8_8.4.0-1ubuntu1~18.04_arm64.deb 
sudo apt install /tmp/cpp-repo/g++-8_8.4.0-1ubuntu1~18.04_arm64.deb 


echo "alterando o compilador para a versão 8"

sudo update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-8 40
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 40

######### oficial mudança de c++ atual para c++ 8
sudo rm /usr/bin/cpp
sudo ln -s /usr/bin/cpp-8 /usr/bin/cpp


sudo rm /usr/bin/g++
sudo ln -s /usr/bin/g++-8 /usr/bin/g++



## todo
# wget libc6-dev
# instalar do git
