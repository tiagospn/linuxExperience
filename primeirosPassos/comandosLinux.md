### Alguns comandos utilizados durante as aulas.</p>

**Observações:**

Os comandos devem ser confirmados com a tecla "Enter" ao final dos comandos.</p>
Os comandos devem ser obedecidos às suas formas maiúsculas e/ou minúsculas (case sensitive).


* Desligar o servidor: `sudo shutdown 0` Enter

### Rede
* Listar os IPs da máquina Linux: `ip a`

### SSH
* Instalar o servidor SSH no Linux: `sudo apt-get install openssh-server`
* Acessar uma máquina Linux através de outra máquina Linux via SSH: `ssh nome_usuario@ip_servidor`
* Acessar uma máquina virtual em nuvem via SSH:
  * `sudo chmod 600 arquivo_certificado.pem`
  * `ssh -i nome_certificado.pem nome_usuario@ip_servidor`

### Navegação
* Acessar o diretório raiz: `cd /`
* Acessar um diretório de nome "temp": `cd temp`
* Listar o conteúdo do diretório que você se encontra: `ls`
* Listar o conteúdo do diretório estando fora dele: `ls /nome_do_diretorio`
* Listar o conteúdo do diretoório de forma gradual: `ls | more`
* Listar e filtrar o nome do arquivo ou diretório: `ls "nome_do_arquivo"`
* Exibir o caminho do diretório onde você se encontra: `pwd`
* Voltar um nível no diretório: `cd ..`
* Limpar graficamente a tela: `clear`

### Manipulando arquivos e diretórios
* Criar um arquivo em branco: `sudo touch nome_do_arquivo.xxx` Onde "xxx" é a extensão do arquivo.
* Criar diretórios: `sudo mkdir nome_da_pasta`

### Localizando arquivos
* Listar arquivos ou diretórios iniciados por uma letra ou conjunto de caracteres específicos: `ls sy*` retornará todos os arquivos iniciados pelos caracteres "sy"
* Buscar por arquivos a partir do diretório onde você se encontra: `find -name nome_do_arquivo` ou `find -name parte_do_nome_do_arquivo*`
