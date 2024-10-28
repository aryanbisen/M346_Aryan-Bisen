### Instanz stopen
Befehl: aws ec2 stop-instances --instance-ids i-0f0fb0e22cfc157df
![image](https://github.com/user-attachments/assets/69239582-31b5-408d-a0b2-6d5371ca8b15)

### Instanz starten
Befehl: aws ec2 start-instances --instance-ids i-0f0fb0e22cfc157df
![image](https://github.com/user-attachments/assets/87858b4f-e63f-42a8-af5b-23e05b84fbfa)

### Instanz erstellen
Befehl: aws ec2 run-instances --image-id ami-0866a3c8686eaeeba --count 1 --instance-type t2.micro --key-name Aryan-1 --security-group-ids sg-09bfc08a2ef882e93 --subnet-id subnet-09b019c964a4f3d21 --user-data file://C:\Users\Aryan\Downloads\cloud-init.yaml
![image](https://github.com/user-attachments/assets/fc7b73f2-26f3-4d27-b76f-7c25db8ba8f0)


#### telnet 54.91.201.200 3306

1. VPC erstellen
```
aws ec2 create-vpc --cidr-block 10.0.0.0/16 --tag-specifications ResourceType=vpc,Tags=[{Key=Name,Value=vpc-kn05}]
```

2. Subnetz erstellen
```
aws ec2 create-subnet --vpc-id vpc-081ec835f3EXAMPLE --cidr-block 10.0.1.0/24 --tag-specifications ResourceType=subnet,Tags=[{Key=Name,Value=subnet-kn05}]
```

3. Internet Gateway erstellen
```
aws ec2 create-internet-gateway --tag-specifications ResourceType=internet-gateway,Tags=[{Key=Name,Value=igw-kn05}]
```

4. Internet Gateway an VPC anhängen
```
aws ec2 attach-internet-gateway --vpc-id vpc-081ec835f3EXAMPLE --internet-gateway-id igw-0abcd1234EXAMPLE
```

5. Route Table erstellen
```
aws ec2 create-route-table --vpc-id vpc-081ec835f3EXAMPLE --tag-specifications ResourceType=route-table,Tags=[{Key=Name,Value=rt-kn05}]
```

6. Route zu Internet Gateway hinzufügen
```
aws ec2 create-route --route-table-id rtb-0abcd1234EXAMPLE --destination-cidr-block 0.0.0.0/0 --gateway-id igw-0abcd1234EXAMPLE
```

7. Route Table dem Subnetz zuordnen
```
aws ec2 associate-route-table --subnet-id subnet-0abcd1234EXAMPLE --route-table-id rtb-0abcd1234EXAMPLE
```

8. Sicherheitsgruppe erstellen
```
aws ec2 create-security-group --group-name sg-kn05 --description "Security Group for KN09" --vpc-id vpc-081ec835f3EXAMPLE
```

9. Regel für eingehenden Datenbankverkehr hinzufügen
```
aws ec2 authorize-security-group-ingress --group-id sg-0abcd1234EXAMPLE --protocol tcp --port 3306 --cidr 0.0.0.0/0
```

10. EC2-Instanz erstellen
```
aws ec2 run-instances --image-id ami-0c55b159cbfafe1f0 --count 1 --instance-type t2.micro
```

