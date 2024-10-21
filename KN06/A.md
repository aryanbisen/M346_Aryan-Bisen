## Reverse-Proxy
Reverse-Proxy ist ein Server, der Anfragen von Usern entgegennimmt und sie an einen anderen Server weiterleitet, der die eigentliche Arbeit erledigt (z. B. Website oder DB). Der Nutzer sieht nur den Reverse-Proxy, nicht den dahinter stehenden Server. Der Reverse-Proxy kann dazu helfen, die Last zu verteilen, die Sicherheit zu erhöhen oder den Zugang zu optimieren.

## Screenshot Swagger-URL
![image](https://github.com/user-attachments/assets/e6cde9aa-b2ee-451c-b9b7-5b3c0b2a0f80)

## Screenshot Product Endpoint
![image](https://github.com/user-attachments/assets/a2b66b0a-7d5e-4f60-b3c6-71f93ec1b323)

## Screenshot MongoDB-Collection
![image](https://github.com/user-attachments/assets/b155989b-dc0f-4cfe-8f7b-b297f225c8fe)


## Cloud-init: Welcher Teil macht hier überhaupt keinen Sinn

- sudo: ALL=(ALL) NOPASSWD:ALL :  Gewährt dem Benutzer Ubuntu alle Sudo Rechte ohne Passworteingabe.
- ssh_pwauth: true : Man sollte nur mit dem Key Zugriff haben.
- Zugangsdaten von MongoDB werden exposed. Z.B Username oder Password oder ClusterURL.
