#!/bin/bash
# Autor: Maicon Gabriel Schmitz <maiconschmitz@gmail.com?

# Obtem o nome do Sistema Operacional
os=`uname`

# Parâmetros para exibição da mensagem
TITULO=""
MENSAGEM=""

# Envio de Notificação
function enviarNotificacao {

	# Caso esteja no OS X
	if [ $os = "Darwin" ]
	then

		# Caso o Terminal Notifier esteja disponível
		NOTIFIER=`which terminal-notifier`
		if [ ! -z $NOTIFIER ]
		then
			echo $TITULO $MENSAGEM
			$NOTIFIER -title "$TITULO" -message "$MENSAGEM"
		else
			echo "$NOTIFIER"
			# Caso o Growl Notify esteja disponível
			GROWL=`which growlnotify > /dev/null`
			if [ ! -z $GROWL ]
			then
				$GROWL "$TITULO" -m "$MENSAGEM"
			fi
		fi
	fi

	# Caso esteja no Linuc
	if [ $os = "linux" ]
	then
		# Caso o Notify Send (Ubuntu) esteja disponível
		NOTIFYSEND=`which notify-send > /dev/null`
		if [ ! -z $NOTIFIER ]
		then
			$NOTIFYSEND "$MENSAGEM"
		else
			# Caso o Kdialog (KDE) esteja disponível
			KDIALOG=`which kdialog > /dev/null`
			if [ ! -z $KDIALOG ]
			then
				$KDIALOG --title "$MENSAGEM"
			fi
		fi
	fi
}

# Os parâmetros esperados são: Título e Mensagem
function notifica {

	#if [ ! -z $2 ]
	#then

	TITULO=$1;
	MENSAGEM=$2;

	enviarNotificacao $1 $2

	#else
	#	echo "Você deve especificar os parâmetros de Título e Mensagem!"
	#fi
}