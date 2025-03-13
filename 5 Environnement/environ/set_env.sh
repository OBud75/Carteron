
#!/usr/bin/bash

OLD_ENVIRON=$ENVIRON

echo "Choisissez un environnement :"
echo "1) dev"
echo "2) prod"
echo "3) test"

read -p "Entrez votre choix (1, 2 ou 3) : " choice

case "$choice" in
    1)
        export ENVIRON="dev"
        ;;
    2)
        export ENVIRON="prod"
        ;;
    3)
        export ENVIRON="test"
        ;;
    *)
        echo "Choix invalide. Veuillez entrer 1, 2 ou 3."
        exit 1
        ;;
esac

if [[ "$OLD_ENVIRON" != "$ENVIRON" ]]; then
    echo "La variable ENVIRON a changé : '$OLD_ENVIRON' → '$ENVIRON'"
else
    echo "La variable ENVIRON était déjà définie à '$ENVIRON'"
fi

echo "Pour conserver cette variable, exécutez : export ENVIRON=$ENVIRON"

