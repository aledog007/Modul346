# KN02

# Lab 4.1 - EC2

## Webseite mit Public IP
<img src="Bilder/Lab_4.1/WebseiteMitPublicIP.png">

## Webseite mit DNS
<img src="Bilder/Lab_4.1/WebsiteMitDNS.png">

## Liste der EC2-Instanzen
<img src="Bilder/Lab_4.1/Instanzen.png">

## Details der Web Server-Instanz 
<img src="Bilder/Lab_4.1/InstanzDetails.png">

## Liste der Inbound-Regeln
<img src="Bilder/Lab_4.1/FotoVonSecurity.png">

# Lab 4.2 - S3

## Liste der Buckets
<img src="Bilder/Lab_4.2/BucketListe.png">

## Browsers mit der geöffneten öffentlichen HTML-Seite
<img src="Bilder/Lab_4.2/WebseitemitBucket.png">

## Liste der Dateien im Bucket
<img src="Bilder/Lab_4.2/dateienImBucket.png">

## Eigenschaften von "Static website hosting"
<img src="Bilder/Lab_4.2/StaticWebseitenHosting.png">

## Bucket-Policy für den öffentlichen Zugriff

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::alessiobucket81/*"
        }
    ]
}
```

# Zugriff mit SSH-Key

##  Verwendung des ersten Schlüssels
<img src="Bilder/SSH_Aufgabe/SSHLoginErfolgreich1.png">

##  Verwendung des zweiten Schlüssels
<img src="Bilder/SSH_Aufgabe/SSHLoginNichtErfolgreich2.png">

##  Instanz-Detail der verwendeter Schlüssel
<img src="Bilder/SSH_Aufgabe/SSHKeyNummer1.png">