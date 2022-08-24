### 🐧 Alguns comandos utilizados durante as aulas.</p>

**Observações:**

Os comandos devem ser confirmados com a tecla "Enter" ao final dos comandos.</p>
Os comandos devem ser obedecidos às suas formas maiúsculas e/ou minúsculas (case sensitive).


### 🪓 Sobrevivência
* Obtendo ajuda sobre os comandos do terminal: `nomedocomando --help`
* Manual sobre os comandos: `man nomedocomando`
  * Dica: Você pode obter ajuda consultando a documentação distribuição Linux no site do desenvolvedor, no nosso caso é o https://help.ubuntu.com
* Desligar o servidor: `sudo shutdown 0` Enter
* Interrompendo um script ou comando: Ctrl + c
* Visualizar arquivo de texto: `cat nome_do_arquivo`
* Executar tarefas com permissão administrativas: Adicione o comando `sudo` antes do comando a ser executado. (Ex.: Criar uma pasta "teste" no diretório raiz: `sudo mkdir teste`
* Criar ou alterar uma senha para um usuário: `sudo passwd nome_usuario`
* Trocar entre usuários: `su nome_usuario`
* Visualizar o status de um serviço: `systemctl status nomedo_serviço`
* Histórico de comandos utilizados por usuário: `history`


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
* Listar o conteúdo do diretório atual: `ls`
* Listar de forma detalhada o conteúdo do diretório atual: `ls -lh`
* Listar o conteúdo do diretório atual e os arquivos ocultos: `ls -a`
* Listar o conteúdo do diretório estando fora dele: `ls /nome_do_diretorio`
* Listar o conteúdo do diretoório de forma gradual: `ls | more`
* Listar e filtrar o nome do arquivo ou diretório: `ls "nome_do_arquivo"`
* Exibir o caminho do diretório onde você se encontra: `pwd`
* Voltar um nível no diretório: `cd ..`
* Limpar graficamente a tela: `clear`


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
* Apagar um diretório com arquivos: `rm -rf nome_do_diretório`


### 🔍 Localizando arquivos
* Listar arquivos ou diretórios iniciados por uma letra ou conjunto de caracteres específicos: `ls sy*` retornará todos os arquivos iniciados pelos caracteres "sy"
* Buscar por arquivos a partir do diretório onde você se encontra: `find -name nome_do_arquivo` ou `find -name parte_do_nome_do_arquivo*`
