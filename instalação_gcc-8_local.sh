#########   gcc - 8    instalação

######### Download gcc-8 para arm64 e mover para /tmp

echo "Instalando o GCC-8"

echo "Instalando a partir de arquivos na mesma pasta de início"

mkdir gcc

cp -f *.deb gcc/

echo "Copiando a pasta para /tmp"

sudo cp -f -R gcc/ /tmp/

echo "Instalando em /tmp"

#sudo apt-get install libc6-dev  --fix-missing -y
sudo apt install /tmp/gcc/libc6-dev-arm64-cross_2.28-7cross1_all.deb


sudo apt install /tmp/gcc/gcc-8-base_8.4.0-1ubuntu1~18.04_arm64.deb 
#sudo apt install /tmp/gcc/libtsan0_8.4.0-1ubuntu1~18.04_arm64.deb

sudo apt install /tmp/gcc/libasan5_8.4.0-1ubuntu1~18.04_arm64.deb

sudo apt install /tmp/gcc/libisl19_0.20-2_arm64.deb 

sudo apt install /tmp/gcc/cpp-8_8.4.0-1ubuntu1~18.04_arm64.deb 

sudo apt install /tmp/gcc/libgcc-8-dev_8.4.0-1ubuntu1~18.04_arm64.deb

sudo apt install /tmp/gcc/libstdc++-8-dev_8.4.0-1ubuntu1~18.04_arm64.deb 
sudo apt install /tmp/gcc/gcc-8_8.4.0-1ubuntu1~18.04_arm64.deb 
sudo apt install /tmp/gcc/g++-8_8.4.0-1ubuntu1~18.04_arm64.deb 

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
