printf "File to run: "
read rf

sudo apt install nasm build-essential > /dev/null

nasm -f elf $rf -o sejkrghdt.o
ld -m elf_i386 -o sejkrghdt sejkrghdt.o

./sejkrghdt

sudo rm sejkrghdt.o && sudo rm sejkrghdt