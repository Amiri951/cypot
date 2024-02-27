Script CYPOT - Crowie

#!/bin/bash

COWRIE_DIR="/home/debian/cowrie" # Chemin vers le répertoire d'installation de Cowrie (VERIFIER OU LE GIT CROWIE A ETAIT EXTRAIT)
LOG_FILE="$COWRIE_DIR/var/log/cowrie/cowrie.log" # Chemin vers le fichier de log de Cowrie

echo "             CYPOT"
echo "--------------------------------"
echo "1. Démarrer CYPOT"
echo "2. Arrêter CYPOT"
echo "3. Afficher les logs"
echo "4. Quitter"
echo "--------------------------------"
read -p "Choisissez une option : " choix

case $choix in
    1)
        echo "Démarrage de Cowrie..."
        cd $COWRIE_DIR && bin/cowrie start
        ;;
    2)
        echo "Arrêt de Cowrie..."
        cd $COWRIE_DIR && bin/cowrie stop
        ;;
    3)
        echo "Affichage des logs Cowrie..."
        tail -f $LOG_FILE
        ;;
    4)
        echo "Quitter"
        exit 0
        ;;
    *)
        echo "Option invalide."
        exit 1
        ;;
esac
