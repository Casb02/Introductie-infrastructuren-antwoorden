# Introductie-infrastructuren

## Antwoorden

---

### Voor je start:

- Maak 2 Ubuntu machines aan met Ubunutu Server geinstaleerd.
- Zorg er voor dat je beide machines goed hebt opgezet en de wachtwoorden weet
- Geef beide VM's een naam, Noem ze bijvoorbeeld `ubuntu-server-web` en `ubuntu-server-db`
---

#### Virtuele machine 1 - Apache2 webserver

voer op `ubuntu-server-web` de volgende commandos uit:

    $ wget https://raw.githubusercontent.com/Casb02/Introductie-infrastructuren-antwoorden/main/osticketwebserver-complete.sh

    $ chmod +x osticketwebserver-complete.sh
    
    $ sudo ./osticketwebserver-complete.sh

Om je web paneel te testen kun je webserver-check.sh uitvoeren.

    $ wget https://raw.githubusercontent.com/Casb02/Introductie-infrastructuren-antwoorden/main/webserver-check.sh

    $ chmod +x webserver-check.sh
    
    $ sudo ./webserver-check.sh

Deze moet aangeven dat je zowel de apache2 server hebt lopen als de bestanden juist zijn verplaatst.

---

#### Virtuele machine 2 - MySQL database server

voer op `ubuntu-server-db` de volgende commandos uit:

    $ wget https://raw.githubusercontent.com/Casb02/Introductie-infrastructuren-antwoorden/main/osticketdatabase-complete.sh

    $ chmod +x osticketdatabase-complete.sh
    
    $ sudo ./osticketdatabase-complete.sh

Om je database te testen kun je database-check.sh uitvoeren.

    $ wget https://raw.githubusercontent.com/Casb02/Introductie-infrastructuren-antwoorden/main/db-server-check.sh

    $ chmod +x db-server-check.sh
    
    $ sudo ./db-server-check.sh

Belangrijk om te weten is de gegevens van je database gebruiker.
Deze zijn:

| Database naam | Gebruikersnaam | Wachtwoord |
| :-----------: | :-------------: | :--------: |
| osticket | admin | osticket |

---

### Aan de slag!

Om je webserver verder op te zetten volg de stappen in een webbrowser in een windows vm of op je hoofdmachine:
- [webserver ip] /osTicket/upload/setup/install.php

vervang [webserver ip] door de ip van je webserver deze kan je ophalen met het command `ip address`