ShellNotify
#

O ShellNotify é um Wrapper para exibir Notificações no Desktop, a partir de Scripts Shell.

O ShellNotify é compatível com os seguintes Ambiente:
-	Ubuntu (Unity)
-	KDE
-	OS X (Utilizando Growl ou a Central de Notificações, para a versão Mountain Lion ou mais atual).

OS X
##

Para que as Notificações via Shell possam ser exibidas no Desktop do OS X, é necessário utilizar o Growl ou a Central de Notificações, nativa a partir do Mountain Lion.

Instalando o Growl
###

Caso você possua uma versão mais antiga do OS X, pode optar por utilizar o Growl.

```
Para instalar o Growl, basta visitar a página de <a href="http://growl.info/downloads" title="Download do Growl"> Download</a> e escolher a versão que se adeque às suas necessidades.
```

Instalando o Terminal Notifier
###

Possuindo o OS X Mountain Lion ou mais recente, você pode optar por utilizar a própria Central de Notificações.

Você pode instalar o wrapper via [Homebrew](https://github.com/Homebrew/homebrew):
```
$ brew install terminal-notifier
```

Ou, caso deseje utilizar o mesmo também via 
[Ruby](https://github.com/alloy/terminal-notifier/tree/master/Ruby), efetue a instalação via RubyGems:
```
$ [sudo] gem install terminal-notifier
```

Exemplo de Uso:
##

Para utilizar o ShellNotify, basta incluir o "shellnotify.sh" em seu script e efetuar a chamada da função shellnotify(), passando 2 argumentos.
Os argumentos (parâmetros) são Título e Mensagem, respectivamente.

Na pasta "exemplo", encontra-se o "testa.sh", que exemplifica a forma de uso.