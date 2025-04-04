#!/bin/bash

#il faut prendre les arguments (en nombre n  et noms)

#Si n=0 afficher " Il manque...."

if [ -n $# ]

then
    #sinon faire n fois la boucle pour les n noms
    for user in $@
    do
    #Verifier que le nom n'existe pas 
        if id "$user" &> /dev/null
        then
            echo "L'utilisateur $user existe déja"
        else
            sudo adduser "$user"
                #verifier que le compte est crée
                if [ cat /etc/password | grep "$user" ]
                then
                    echo "L'utilisateur $word est crée"
                #si non message d'erreur
                else
                    echo "Erreur à la création de l'utilisateur $user"

                fi
        fi
                    
else
    echo "Il manque les noms d'utilisateurs en argument - fin de sript"

fi

exit 0
