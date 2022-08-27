## 🐧 Comandos utilizados durante as aulas: "Primeiros passos com o Linux".


**❗ Observações:**

Considerar as distribuições DEBIAN/UBUNTU.
Os comandos devem ser confirmados com a tecla "Enter" ao final da linha.</p>
Os comandos devem ser obedecidos às suas formas maiúsculas e/ou minúsculas (case sensitive).</p>
Alguns comandos precisam de elevação do usuário root.</p>
Alguns comandos podem não funcionar por não estarem instalados em seu sistema. Realize a instalação através do programa "apt".


### 🔥 Sobrevivência
* Desligar o servidor: `sudo shutdown 0`
* Obtendo ajuda sobre os comandos do terminal: `nomedocomando --help`
* Manual sobre os comandos: `man nomedocomando`
  * Dica: Você pode obter ajuda consultando a documentação distribuição Linux no site do desenvolvedor, no nosso caso é o https://help.ubuntu.com
* Interrompendo um script ou comando: Ctrl + c
* Visualizar arquivo de texto: `cat nome_do_arquivo`
* Visualizar o status de um serviço: `systemctl status nome_do_serviço`
* Histórico de comandos utilizados pelo usuário: `history`
* Tornar um script .sh executavel: `sudo chmod +x arquivo.sh
* Executar um arquivo .sh: `./arquivo.sh`
* Executar tarefas com permissão administrativas: Adicione o comando `sudo` antes do comando que será executado.
* Limpar graficamente a tela: `clear`
* Realizar download via https/http: `wget linkcompletoDOdownload`
* Descompactar arquivos .zip: `unzip arquivo.zip`

### 📰 Editores de texto
* vi (Editor mais complexo, não indicado para quem está começando) `vi arquivo`
  * Modo de edição: i
  * Sair do modo atual: Esc
  * Salvar e sair: :wq
* nano (Editor simples e eficiente, indicado para todos os usuários) `nano arquivo`
  * Sair: Ctrl + x  


### 💻 Rede
* Listar os IPs da máquina Linux: `ip a`


### 🔑 SSH
* Instalar o servidor SSH no Linux: `sudo apt-get install openssh-server`
* Acessar uma máquina Linux através de outra máquina Linux via SSH: `ssh nome_usuario@ip_servidor`
* Acessar uma máquina virtual em nuvem via SSH:
  * `sudo chmod 600 arquivo_certificado.pem`
  * `ssh -i nome_certificado.pem nome_usuario@ip_servidor`


### 🧭 Navegação
* Acessar o diretório raiz: `cd /`
* Acessar um diretório de nome "temp": `cd temp`
* Voltar um nível no diretório: `cd ..`
* Listar o conteúdo do diretório atual: `ls`
* Listar de forma detalhada o conteúdo do diretório atual: `ls -lh`
* Listar o conteúdo do diretório atual e os arquivos ocultos: `ls -a`
* Listar o conteúdo do diretório estando fora dele: `ls /nome_do_diretorio`
* Listar o conteúdo do diretoório de forma gradual: `ls | more`
* Listar e filtrar o nome do arquivo ou diretório: `ls "nome_do_arquivo"`
* Exibir o caminho do diretório onde você se encontra: `pwd`



### 🗄️ Manipulando arquivos e diretórios
* Criar um arquivo em branco: `sudo touch nome_do_arquivo.xxx` Onde "xxx" é a extensão do arquivo.
* Criar diretório: `sudo mkdir nome_da_pasta`
* Criar diretório com nomes espaçados: `mkdir 'Meus documentos'`
  * Dica: Quando acessar a pasta Meus documentos você terá que colocar as '' (Ex.: `cd 'Meus documentos'`)
* Criar um ou mais diretórios: `mkdir diretorio_1 diretorio_2 diretorio_n`
* Excluir um diretório vazio: `rmdir nome_do_diretório`
* Excluir um arquivo: `rm nome_do_arquivo`
* Excluir mais de um arquivo com a mesma extensão: `rm *.extensão`
* Excluir mais de um arquivo com o nome semelhante: `rm nome_do_ar*` (O sistema vai apagar todos os arquivos que se iniciam por "nome_do_ar")
* Excluir um diretório com arquivos: `rm -rf nome_do_diretório`


### 🔍 Localizando arquivos
* Listar arquivos ou diretórios iniciados por uma letra ou conjunto de caracteres específicos: `ls sy*` retornará todos os arquivos iniciados pelos caracteres "sy"
* Buscar por arquivos a partir do diretório onde você se encontra: `find -name nome_do_arquivo` ou `find -name parte_do_nome_do_arquivo*`


### 👱 Gerenciando usuários
* Listando os usuários existentes: `cat /etc/passwd`
* Criar usuário: `sudo useradd nomedeusuario -m -c "Nome completo do usuário" -s /bin/bash` (Prefira utilizar nomes curtos)
* Criar usuário temporário: `sudo useradd userconvidado -m -c "Convidado" -s /bin/bash -e dd/mm/aaaa` (Onde dd/mm/aaaa corresponde a data que o acesso irá expirar)
* Criar ou alterar uma senha para um usuário: `sudo passwd nome_usuario`
* Trocar entre usuários: `su nome_usuario`
* Excluir usuário: `sudo userdel -r -f nomedeusuario`
* Criar usuários em lote: (Script para criar vários usuários)
  * Arquivo: `nano criaUsuarios.sh`
  * Conteúdo do arquivo:
  ```
  #!bin/bash
  
  echo "Modelo de script que cria 3 usuarios com a senha padrão Senha123 onde a senha irá expirar no primeiro acesso"
  useradd user1 -c "Nome do usuário 1" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
  passwd user1 -e
  useradd user2 -c "Nome do usuário 2" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
  passwd user1 -e
  useradd usern -c "Nome do usuário n" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
  passwd user1 -e
  ```


### 🧑‍🤝‍🧑 Gerenciando Grupos
* Listando os grupos existentes: `cat /etc/group`
* Adicionar um usuário em mais de um grupo existente: `usermod -G grupo1,grupo2 nomeuser`
* Criando novos grupos: `groupadd nomedoGrupo`
* Removendo usuário de um grupo: `gpasswd -d nomeusuario nomegrupo`
* Alterando o dono de um diretórios: `sudo chown nomeusuario:grupo diretorio`
* Alterando a permissão de um diretório: `chmod ABC /diretorio` (Onde ABC irá assumir os valores dos atributos para cada usuário respectivamente A-DONO, B-GRUPO C-OUTROS)
  * Cada atributo tem um valor pré-definido. Utiliza-se os valores de forma isolada ou somando-os para combinar mais de uma permissão.
 
 Atributos   | Valor
------------ | -----
Ler (R)      |  4
Gravar (W)   |  2
Executar (X) |  1
Nenhum       |  0

  * Exemplo: `chmod 740 /fotos` - Nesse caso o dono da pasta terá acesso completo (4+2+1), usuários do grupo terão apenas permissão de leitura (4) e os demais não podem acessar a pasta (0).


### 📥 Gerenciamento de pacotes (Debian e Ubuntu)
* Gerenciador de pacotes: `apt`
* Listar os pacotes disponíveis: `apt list` 
* Listar os pacotes instalados: `apt list --installed`
* Verificar novas versões dos pacotes instalados: `apt list --upgradeable`
* Procurar por um pacote: `apt search termodebusca`
* Instalar um pacote: `apt install nomedopacote`
* Desinstalar um pacote: `apt remove nomedopacote`
* Editar o repositório de pacotes: `apt edit-sources`
* Atualizando o sistema operacional:
  * Listando as atualizações disponíveis: `apt update`
  * Instalando as atualizações disponíveis: `apt upgrade -y`


### 📥 Gerenciamento de pacotes (RedHat e Fedora)
* Gerenciador de pacotes: `yum` ou `dnf`
* Procurar por um pacote: `dnf search termodebusca`
* Instalar um pacote: `dnf install nomedopacote`
* Desinstalar um pacote: `dnf remove nomedopacote`
* Atualizando o sistema operacional: `dnf update -y`


### 💾 Gerenciamento de discos
