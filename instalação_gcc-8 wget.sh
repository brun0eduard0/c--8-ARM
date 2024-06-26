#########   gcc - 8    instalação

######### Download gcc-8 para arm64 e mover para /tmp

echo "Instalando o GCC-8"

echo "Criando a pasta gcc"

mkdir gcc
cd gcc

#wget https://launchpadlibrarian.net/468527410/libubsan1_8.4.0-1ubuntu1~18.04_arm64.deb
#wget https://launchpadlibrarian.net/468527407/libtsan0_8.4.0-1ubuntu1~18.04_arm64.deb
#wget https://launchpadlibrarian.net/468527405/libstdc++6_8.4.0-1ubuntu1~18.04_arm64.deb
#wget https://launchpadlibrarian.net/468527396/libitm1_8.4.0-1ubuntu1~18.04_arm64.deb
#wget https://launchpadlibrarian.net/468527384/libgnat-8_8.4.0-1ubuntu1~18.04_arm64.deb
#wget https://launchpadlibrarian.net/468527379/libgccjit0_8.4.0-1ubuntu1~18.04_arm64.deb
#wget https://launchpadlibrarian.net/468527376/libgcc1_8.4.0-1ubuntu1~18.04_arm64.deb
#wget https://launchpadlibrarian.net/468527427/libcc1-0_8.4.0-1ubuntu1~18.04_arm64.deb
#wget https://launchpadlibrarian.net/468527372/libatomic1_8.4.0-1ubuntu1~18.04_arm64.deb
#wget https://launchpadlibrarian.net/468527414/fixincludes_8.4.0-1ubuntu1~18.04_arm64.deb
#wget https://launchpadlibrarian.net/468527398/liblsan0_8.4.0-1ubuntu1~18.04_arm64.deb

echo "Baixando os arquivos do compilador de C e C++ versão-8"

wget -c https://launchpadlibrarian.net/468527340/gcc-8-base_8.4.0-1ubuntu1~18.04_arm64.deb
#wget -c http://ports.ubuntu.com/pool/universe/g/gcc-8/gcc-8-base_8.4.0-3ubuntu2_arm64.deb


wget -c https://launchpadlibrarian.net/468527370/libasan5_8.4.0-1ubuntu1~18.04_arm64.deb
wget -c http://ftp.de.debian.org/debian/pool/main/i/isl/libisl19_0.20-2_arm64.deb
wget -c https://launchpadlibrarian.net/468527412/cpp-8_8.4.0-1ubuntu1~18.04_arm64.deb

wget -c https://launchpadlibrarian.net/468527374/libgcc-8-dev_8.4.0-1ubuntu1~18.04_arm64.deb
#wget -c https://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-8/libgcc-8-dev_8.4.0-3ubuntu2_arm64.deb
#wget -c https://ports.ubuntu.com/pool/universe/g/gcc-8/libgcc-8-dev_8.4.0-3ubuntu2_arm64.deb

wget -c https://launchpadlibrarian.net/468527402/libstdc++-8-dev_8.4.0-1ubuntu1~18.04_arm64.deb
wget -c https://launchpadlibrarian.net/468527417/gcc-8_8.4.0-1ubuntu1~18.04_arm64.deb
wget -c https://launchpadlibrarian.net/468527415/g++-8_8.4.0-1ubuntu1~18.04_arm64.deb
wget -c http://ftp.br.debian.org/debian/pool/main/c/cross-toolchain-base/libc6-dev-arm64-cross_2.28-7cross1_all.deb

echo "Copiando para a pasta"

cd ..
sudo cp -f -R gcc/ /tmp/

echo "Instalando em /tmp"


sudo apt-get install libc6-dev  --fix-missing -y
sudo apt install /tmp/gcc/libc6-dev-arm64-cross_2.28-7cross1_all.deb


sudo apt install /tmp/gcc/gcc-8-base_8.4.0-1ubuntu1~18.04_arm64.deb
#sudo apt install /tmp/gcc/gcc-8-base_8.3.0-6_arm64.deb 
#sudo apt install /tmp/gcc/libtsan0_8.4.0-1ubuntu1~18.04_arm64.deb
#sudo apt install /tmp/gcc/libasan5_8.3.0-6_arm64.deb 
sudo apt install /tmp/gcc/libasan5_8.4.0-1ubuntu1~18.04_arm64.deb

sudo apt install /tmp/gcc/libisl19_0.20-2_arm64.deb 

sudo apt install /tmp/gcc/cpp-8_8.4.0-1ubuntu1~18.04_arm64.deb 
#sudo apt install /tmp/gcc/cpp-8_8.3.0-6_arm64.deb 

sudo apt install /tmp/gcc/libgcc-8-dev_8.4.0-1ubuntu1~18.04_arm64.deb
#sudo apt install /tmp/gcc/libgcc-8-dev_8.4.0-3ubuntu2_arm64.deb

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
