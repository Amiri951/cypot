import os
import subprocess

def start_honeypot():
    subprocess.run(['glastopf-runner', 'start'])

def stop_honeypot():
    subprocess.run(['glastopf-runner', 'stop'])

def view_logs():
    subprocess.run(['tail', '-f', '/var/log/glastopf/glastopf.log'])

def main():
    while True:
        print("1. Démarrer le honeypot")
        print("2. Arrêter le honeypot")
        print("3. Voir les logs en temps réel")
        print("4. Quitter")

        choice = input("Choisissez une option (1/2/3/4): ")

        if choice == '1':
            start_honeypot()
        elif choice == '2':
            stop_honeypot()
        elif choice == '3':
            view_logs()
        elif choice == '4':
            break
        else:
            print("Option non valide. Veuillez réessayer.")

if __name__ == "__main__":
    main()
