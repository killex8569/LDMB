#!/bin/bash

# écrire / print une phrase
echo "Hello World !"

# variable

nom="Alexandre"
age=21

echo "Nom : $nom, Âge : $age"

# intéraction avec l'utilisateur via le shell

read -p "Entrez votre prénom : " prenom
echo "Bonjour $prenom"

# condition et boucles

if [ "$age" -ge 18 ]; then
    echo "Majeur"
else
    echo "Mineur"
fi

# Numériques : -eq (égal), -ne (≠), -lt (<), -le (≤), -gt (>), -ge (≥)
# Chaînes : = (égal), != (différent), -z (vide), -n (non vide)
# Fichiers : -f (fichier), -d (dossier), -e (existe), -r (lisible), -w (écriture), -x (exécutable)

compteur=1
while [ $compteur -le 5 ]; do
    echo "Compteur : $compteur"
    ((compteur++))
done
