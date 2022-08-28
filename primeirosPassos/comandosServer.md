## 🐧 Comandos e configurações utilizadas durante as aulas: "Servidores Linux".


### 🔄 Servidor de arquivos (SAMBA)
* Instalando o SAMBA: `apt install samba`
* Serviço SAMBA: `/etc/smbd`
* Arquivo de configuração: `etc/samba/smb.conf`

* Adicionar ao final do arquivo os paramêtros do copartilhamento:
```
[nomedoCOmpartilhamento]
path = /caminho/completo/do/diretorio

writable = yes (Permissão para gravação)
guest ok = yes (Qualquer usuário pode acessar)
guest only = yes (Todos os usuários são convidados)
```
  
### 🌐 Servidor WEB (Apache)
* Instalando o Apache: `apt install apache2`
* Local dos arquivos de configuração: `/var/www/html`
* Você pode verificar se o apache está rodando acessando a ip do seu servidor através de um navegador em um computador na mesma rede. Uma págna padrão ser exibida.


### 🔡 Servidor de banco de dados (MySQL)
* Instalando o MySQL: `apt install mysql-server-8.0`
* Acessar o BD: `sudo mysql`
  * Exibir DBs: `show databases;`
  * Criar uma DB: `create database nomeDB;`
  * Selecionar uma DB: `use nomeDB;`
  * Criando uma tabela: `create table nomeTabela (ID int, Nome varchar(50), Sobrenome varchar(50));`
  * Exbir as tabelas de uma DB: `show tables;`
  * Inserindo dados em uma tabela: `insert into pessoas (ID, Nome, Sobrenome) VALUES (1, 'Jose', 'Souza');`
  * Sair do MySQL: `exit`
