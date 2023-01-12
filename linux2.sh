cd ~/Pictures

fotos=(*.jpg)
alles=${#fotos[@]}
nu=$(date -r "$fotos" +%s)
dag=$(date -d 'now-1 day' +%s)
week=$(date -d 'now- 7 days' +%s)
maand=$(date -d 'now- 30 days' +%s)

for f in alles;
do
        echo -e "Weet je zeker dat je je foto's wilt verplaatsen? (J om door te gaan)"
        read antwoord
        if [[ $antwoord != [Jj]* ]]  ; then
          echo "Oke, doei."
          exit
        fi

        if [[ -n $fotos ]]; then
                echo "File in directory."
                echo "Sorteren op week (Ww) of maand (Mm)?"
                read tijd

                if [[ $tijd == [Ww]* ]]; then
                        if (( nu <= dag )); then
                                mkdir $(date +%V)
                                cp $fotos $(date +%V)
                                echo "Foto's verplaatsen..."

                        else
                                echo "Geen .jpg ouder dan een week in de directory"
                        fi

                elif [[ $tijd == [Mm]* ]]; then
                        if (( nu <= maand )); then
                                mkdir $(date +%B)
                                cp $fotos $(date +%B)
                                echo "Foto's verplaatsen..."
                        else
                                echo "Geen .jpg ouder dan een maand in de directory"
                        fi
               fi


        else
                echo "Geen .jpg gevonden."
        fi

done