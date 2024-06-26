#########   gcc - 8    instalação

######### Download gcc-8 para arm64 e mover para /tmp

echo "Instalando o GCC-8"



#!/bin/bash

# Atualizar a lista de pacotes e atualizar o sistema
sudo apt update
sudo apt upgrade -y

# Instalar dependências necessárias para compilar o GCC
sudo apt install -y build-essential wget tar libgmp-dev libmpfr-dev libmpc-dev flex libisl-dev

# Criar um diretório para baixar e compilar o GCC
mkdir -p ~/gcc-8-build
cd ~/gcc-8-build

# Baixar o código-fonte do GCC 8.4.0
wget https://ftp.gnu.org/gnu/gcc/gcc-8.4.0/gcc-8.4.0.tar.gz
tar -xzf gcc-8.4.0.tar.gz
cd gcc-8.4.0

# Preparar o diretório de compilação
./contrib/download_prerequisites
mkdir build
cd build

# Configurar a compilação do GCC
../configure --enable-languages=c,c++ --disable-multilib

# Compilar e instalar o GCC
make -j$(nproc)
sudo make install

# Verificar a instalação
gcc-8 --version
g++-8 --version

echo "Instalação do GCC 8.4.0-1 concluída com sucesso."



#echo "alterando o compilador para a versão 8"

#sudo update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-8 40
#sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 40

######### oficial mudança de c++ atual para c++ 8
#sudo rm /usr/bin/cpp
#sudo ln -s /usr/bin/cpp-8 /usr/bin/cpp


#sudo rm /usr/bin/g++
#sudo ln -s /usr/bin/g++-8 /usr/bin/g++



## todo
# wget libc6-dev
# instalar do git
