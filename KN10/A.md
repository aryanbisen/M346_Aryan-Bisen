# Rehosting
# Azure
## Web-Server:
Wir haben das “App Service” von Azure verwendet
Premium V3 gewählt, weil es mehr Speicher und RAM zur Verfügung stellt. Dank den Einsparungsmöglichkeiten ermöglicht es uns dieses Tarif für nur einen 10Fr. Zuschlag zu verwenden, was besser ist, denn das “Basic” Tarif beinhaltet zu wenig Speicher wie auch RAM.
Wir wählten V2 nicht, weil es dort keine Einsparungsmöglichkeiten gab und somit würde es auf hoher Kosten kommen.
## DB-Server:
Hier wählten wir Azure SQL-Datenbank
Hier haben wir bei den Einsparungsmöglichkeiten ebenfalls die 3 Jahre Reservation ausgewählt und zusätzlich die Azure-Hybridvorteile ausgewählt anstatt die Nutzungsbasierte Bezahlung, weil es in den Hybridvorteilen die notwendigsten Vorgaben enthalten sind und wir keine zusätzlichen brauchen, was nur noch mehr Geld kosten würde. Diese SQL-Lizenz hilft uns nämlich Daten in Azure zu migrieren und zu speichern.
## **Warum 3 Jahre Reservationen bei den Einsparungsmöglichkeiten gewählt wurde:**
Diese Auswahl erspart uns eine Menge an Geld und somit haben wir diese Server für die nächsten 3 Jahren für unsere Firma reserviert. Das heisst aber, dass wir unseren Ressourcenbedarf voraussehen und im Voraus bezahlen müssen.
Warum Traffic Manager und kein Load Balancer: Der Load Balancer und der Traffic Manager in Azure haben unterschiedliche Funktionen und arbeiten auf verschiedenen Ebenen, um den Netzwerkverkehr zu steuern. Aus diesem Grund haben wir den Traffic Manager gewählt, weil wir direkt keinen Load Balancer hinzufügen konnten.

## Kosten am Schluss
![image](https://github.com/user-attachments/assets/1daf0833-8ad7-4683-a030-c85b382d4701)

# AWS 
### Screenshot der Kostenrechnungen AWS:
![Screenshot 2024-09-30 091221](https://github.com/user-attachments/assets/b9298a06-ec78-4068-8de3-d053af619350)
 
### Erklärung zu der Auswahl:
Alle Anfordurungen erreicht.

**Webserver:** g4d.small ausgewählt.
g4d.small ist ein Instanz-Typ der zu den Anforedungen passt.
**DBServer:** g4d.medium. Der Kostengünstigste, den ich gefunden habe, der alle Kriterien erüllt.
Am teuersten waren die Täglichen Backups da es 100gb pro Tag durchgeht und das 7 mal in der Woche also mind. 28 mal im Monat.
Dafür sind die Wéchentlichen und MOnatlichen viel billiger, da die backups auch viel seltener geschehen.


# Replatforming

## Hekuro
**Web-server:**
 
### Performance-Instanz: ###
Wir haben uns bewusst für die Performance M entschieden, obwohl sie deutlich teurer ist. Damit stellen wir jedoch sicher, dass uns ausreichend Speicherplatz und RAM zur Verfügung stehen. Wir investieren lieber etwas mehr, um unsere Anforderungen vollständig zu erfüllen, anstatt eine unzureichende Leistung in Kauf zu nehmen.

### DB-Server: ###
Für den DB-Server haben wir die Standard 2 Version gewählt, um die benötigte Leistung sicherzustellen.

### Allgemeine Informationen: ###
Der Load Balancer sowie die Backups werden automatisch mit den von uns gewählten Versionen hinzugefügt. Ein Nachteil dabei ist, dass wir die Backups nicht anpassen können und somit keine Kontrolle darüber haben, wann sie erstellt werden. Auf der anderen Seite ist dies benutzerfreundlich für Personen mit wenig technischem Wissen, da keine manuelle Konfiguration erforderlich ist – Heroku übernimmt diese Aufgaben automatisch.
<br>
Container->dyno. Runs it on Linux: https://www.heroku.com/dynos

## Kosten am Schluss

![image](https://github.com/user-attachments/assets/c105720d-3d5a-4c16-b376-f4d4f08c52a0)



# Repurchasing

### Pricing Zoho CRM

![image](https://github.com/user-attachments/assets/f4c47778-9a4d-4ef1-b2dc-12d22a8f8d90)

### Pricing von SalesForce Sales Cloud

![image](https://github.com/user-attachments/assets/4a92af23-80de-4633-9391-657ff6efee97)
![image](https://github.com/user-attachments/assets/900846da-2425-4d8b-99d1-6f9198e0483a)


## Ich habe Zoho CRM gewählt - Erklärung zur Auswahl von Zoro

Zoho CRM ist einfacher zu bedienen und nicht für so komplexe Unternehmen geeignet. Saleforce hat eine steilere Lernkurve. Zoho ist zwar nicht so anpassungsfähig wie Salesforce jedoch viel kostengünstiger. Das integrieren ist auch einfacher. Für Mittelgrosse Unternehmen (wie man bei den gegebenen Anforderungen sah) wie dieses, ist es gut geeignet.
<br>
Ausserdem ist die Bedienung von SAAS einfacher, wenn man jedoch mehr Erfahrung mit den verschiedenen Service Modellen hat würde ich mich für IAAS entscheiden, weil man dort mehr Einfluss auf die Konfiguration und Anpassung der Infrastruktur hat.

## SaaS-Lösung vs IaaS und PaaS

Wenn man SaaS nimmt muss man weniger Wissen von "Behind the scenes" haben. SaaS ist empfehlenswert weil man dort eine eher günstige, benutzerfreundliche und leicht integrierbare Lösung für mittelgroße Unternehmen hat. SaaS braucht weniger Wartung und ist schneller einsatzbereit, was den Aufwand für IT-Ressourcen minimiert. Ausserdem ist die Bedienung von SaaS einfacher, wenn man jedoch mehr Erfahrung mit den verschiedenen Service Modellen hat würde ich mich für IAAS entscheiden, weil man dort mehr Einfluss auf die Konfiguration und Anpassung der Infrastruktur hat und es billiger ist. Jedoch muss man bedenken, dass man mehr Arbeit hat.

# B) Interpretation der Resultate
### Wie unterscheiden sich die Verschiedene Angebote?
Die Angebote unterschieden sich stark. Bei IaaS kann man sehr vieles Anpassen. Je weiter man in die Service modelle rein geht desto weniger Freiheit hat man und desto teurer werden sie, da sehr viel Arbeit durch den Anbieter übernhmen werden muss. Deshalb ist Salceforce zum Beispiel viel teurer. Jedoch kann es weniger teuer im Vergleich für die Firma sein, da man viele Mitarbeiter spart.

### Welches ist das billigste?
Die IAAS-Optionen.
 
Zoho CRM ist ein Spezialfall und ziemlich günstig für ein SAAS. Erklärung dazu: bei "Erklärung zur Auswahl von Zoro".

