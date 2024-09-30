# Rehosting

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

# Replatforming

## Hekuro
**Web-server:**
 
Hier haben wir die Performance M ausgewählt auch wenn diese deutlich teurer ist. Dafür haben wir aber genug Speicherplatz wie auch RAM. Lieber geben wir eher mehr Geld aus um unsere Anforderungen zu erreichen anstatt eine schwache Leistung zu haben.
 
### DB-Server:
 
Hier haben wir die Standard 2 Version ausgewählt um die nötige Leistung zu erreichen
 
### Allg. Infos:
 
Der Load Balancer wie auch die Backups sind automatisch hinzugefügt zu den Versionen, welche wir ausgewählt haben. Die Nachteile dazu sind aber, dass wir z.B. die Backups nicht modifizieren können und somit nicht selber bestimmen wann wir Backups erstellen möchten. Dafür ist es Benutzerfreundliche für Personen, die wenig Ahnung über das Thema haben, weil sie selber nichts konfigurieren müssen und es Heroku für sie es macht.
<br>
Container->dyno. Runs it on Linux: https://www.heroku.com/dynos

## Kosten am Schluss

![image](https://github.com/user-attachments/assets/c105720d-3d5a-4c16-b376-f4d4f08c52a0)



# Repurchasing

### Pricing Zoho CRM

![image](https://github.com/user-attachments/assets/f4c47778-9a4d-4ef1-b2dc-12d22a8f8d90)

### Pricing von SalesForce Sales Cloud

![image](https://github.com/user-attachments/assets/4a92af23-80de-4633-9391-657ff6efee97)

## Erklärung zur Auswahl

Zoho CRM ist einfacher zu bedienen und nicht für so komplexe Unternehmen geeignet. Saleforce hat eine steilere Lernkurve. Zoho ist zwar nicht so anpassungsfähig wie Salesforce jedoch viel kostengünstiger. Das integrieren ist auch einfacher. Für Mittelgrosse Unternehmen (wie man bei den gegebenen Anforderungen sah) wie dieses, ist es gut geeignet.


