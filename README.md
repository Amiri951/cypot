# cypot
Honey pot for debian web server (University project)


1. Mise en place des VM :

   a. Crée une machine qui servira à l'enregistrement des commandes dans le cas présent debian sera utilisé

2. Configuration du Honeypot (sur la VM Debian server) :

    a. entrée la commande suivante pour mettre a jour votre os : sudo apt update
    b. entrée la commande suivante pour lancer la mise a jour de votre os : sudo apt upgrade
    

3. Installation d'Audit :

   a. Nous allons utilisé audit pour l'enregistement des logs pour l'installer utilisé la commande sudo apt install auditd
   b. Nous allons maintenant configurer les règle à établir pour l'enregistrement des commandes rendez vous dans le fichier de configuration : sudo editor /etc/audit/rules.d/audit.rules
   c. Entrée les règles suivante dans le fichier : -a always,exit -F arch=b64 -S execve -k user_commands (Si votre système est en 32bits changer la commande arch=b64 par arch=b62)
   

