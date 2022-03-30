#!/bin/bash
# Autor: Maicon Gabriel Schmitz <maiconschmitz@gmail.com>

# Obtem o nome do Sistema Operacional
OS=`uname | tr '[:upper:]' '[:lower:]'`

MACOS="darwin"
LINUX="linux"

# Parâmetro da mensagem
MESSAGE=""

# Envio de Notificação
function _sendNotification {

	case $OS in
		# Caso esteja no OS X / macOS
		$MACOS)
			# Verifica se o Terminal Notifier está disponível
			TERMINALNOTIFIER=`which terminal-notifier`
			if [ ! -z $TERMINALNOTIFIER ]
			then
				$TERMINALNOTIFIER -message "$MESSAGE"
			else
				# Verifica se o Growl Notify está disponível
				GROWL=`which growlnotify > /dev/null`
				if [ ! -z $GROWL ]
				then
					$GROWL -m "$MESSAGE"
				else
					echo "Não foi encontrada uma ferramenta para envio de notificação!"
					exit 1
				fi
			fi
			;;
		$LINUX)
			# Verifica se o Notify Send está disponível
			NOTIFYSEND=`which notify-send > /dev/null`
			if [ ! -z $NOTIFYSEND ]
			then
				$NOTIFYSEND "$MESSAGE"
			else
				# Verifica se Zenity está disponível
				ZENITY=`which zenity > /dev/null`
				if [ ! -z $ZENITY ]
				then
					$ZENITY --notification --text="$MESSAGE"
				else
					# Caso o Kdialog (KDE) esteja disponível
					KDIALOG=`which kdialog > /dev/null`
					if [ ! -z $KDIALOG ]
					then
						$KDIALOG --title "$MESSAGE"
					fi
				fi
			fi
			;;
		*)
			# Condição padrão
			echo "Sistema Operacional não suportado!"
			exit 1
			;;
	esac
}

# O parâmetro esperado é a mensagem, que pode ser passada entre ""
function sendNotification {
	MESSAGE=$1;
	_sendNotification $1
}
