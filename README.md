# dev-lamp

Ambiente de desenvolvimento semelhante a grande maioria das hospedagens com PHP + MySQL + PHPMyAdmin.

Na grande maioria dos casos as hospedagens mais populares seguem o mesmo padrão, para facilitar o desenvolvimento utilizando Docker, preparamos esse pequeno exemplo de docker-compose.

## Virtual Host

Para utilizar o mesmo Docker em vários projetos, basta utilizar o Virtual Host.
No diretório 'apache2\sites-available' edite o arquivo 000-default.conf e inclua os diretórios dos novos projetos.

### Windows

No Windows, deve ser alterado o arquivo de hosts, normalmente localizado em "C:\Windows\System32\drivers\etc\".

Acrescente os hosts virtuais como no exemplo, como padrão ao digitar a URL 'http://localhost' no Browser o mesmo será a apontado para o IP 127.0.01, que é o IP local da própria maquina.  


    #	127.0.0.1       localhost
    #	::1             localhost
    127.0.0.1           dev.one.localhost
	127.0.0.1           dev.two.localhost
	127.0.0.1           dev.three.localhost

Para editar o arquivo 'hosts' sera necessário permissões de administrador e a reinicialização da maquina.

## Trabalho

### Aplicações

Após adicionar as entradas no Virtual Host, basta acessar as URLs.

http://dev.one.localhost/

http://dev.two.localhost/

http://dev.three.localhost/

### PHP MyAdmin

Para acessar o PHP MyAdmin basta acessar a URL 'http://localhost:8080'.

### Bom trabalho

Espero ajudar alguém com esse simples repositório, sinta a vontade para contribuir. 
