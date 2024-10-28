### Instanz stopen
Befehl: aws ec2 stop-instances --instance-ids i-0f0fb0e22cfc157df
![image](https://github.com/user-attachments/assets/69239582-31b5-408d-a0b2-6d5371ca8b15)

### Instanz starten
Befehl: aws ec2 start-instances --instance-ids i-0f0fb0e22cfc157df
![image](https://github.com/user-attachments/assets/87858b4f-e63f-42a8-af5b-23e05b84fbfa)

### Instanz erstellen
Befehl: aws ec2 run-instances --image-id ami-0866a3c8686eaeeba --count 1 --instance-type t2.micro --key-name Aryan-1 --security-group-ids sg-09bfc08a2ef882e93 --subnet-id subnet-09b019c964a4f3d21 --user-data file://C:\Users\Aryan\Downloads\cloud-init.yaml
![image](https://github.com/user-attachments/assets/fc7b73f2-26f3-4d27-b76f-7c25db8ba8f0)
