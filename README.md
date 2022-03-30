# ShellNotification

O ShellNotification é um wrapper que tem como finalidade exibir Notificações no Desktop à partir do terminal, seja via execução direta na linha de comandou ou através de Shell script.

O ShellNotification é compatível tanto com Linux quanto com Mac OS X/macOS.

Alguns ambientes em que ele foi testado:
- Ubuntu (Unity)
- KDE
- Mac OS X/macOS

Para o Mac OS X até a versão 10.7, é utilizando o **Growl**, enquanto que do Mac OS X Mountain Lion em diante, é utilizada a Central de Notificações.

## Linux

Para exibir as Notificações via Shell no Linux, são testadas/utilizadas três alternativas: **notify-send**, **zenity** e **kdialog**.

## Mac OS X/macOS

Para exibir as Notificações via Shell no Desktop do OS X/macOS, é necessário utilizar o Growl ou a Central de Notificações, a qual é nativa à partir do Mac OS X Mountain Lion.


### Instalando o Growl

Caso você possua uma versão OS X igual ou anterior à versão 10.7, pode optar por utilizar o Growl.

Para instalar o Growl, basta visitar a página de <a href="https://github.com/growl/growl/tree/master/Downloads" title="Download do Growl"> Download</a> e escolher a versão adequada.


### Instalando o Terminal Notifier

Possuindo o OS X Mountain Lion ou mais recente, você deve optar por utilizar a Central de Notificações.

Você pode instalar o Terminal Notifier via [Homebrew](https://formulae.brew.sh/formula/terminal-notifier) ou através do [Ruby Gems](https://github.com/alloy/terminal-notifier/tree/master/Ruby).

Instalação via **Homebrew**:
```
brew install terminal-notifier
```

Instalação via **Ruby Gems**:
```
sudo gem install terminal-notifier
```


## Exemplo de Uso:

Para utilizar o ShellNotification, basta incluir o "shellnotification.sh" em seu script e efetuar a chamada da função sendNotification(), passando como argumento a mensagem à ser exibida.

Na pasta "example", vocë encontra um exemplo de uso.