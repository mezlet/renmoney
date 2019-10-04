# Renmoney Data Normalization

## Installation
```
- clone the repository
-create db renmoney and run the sql query inside the .sql file
- create an env file following the env sample
- start the project by running php -S localhost:port -t public
```

## Get local government
### Request 
`GET /api/local-governments`

### Response
```
{
    "status": "success",
    "data": {
        "FCT": [
            "Abaji",
            "Abuja Municipal",
            "Bwari",
            "Gwagwalada",
            "Kuje",
            "Kwali"
        ],
        "Aba": [
            "Aba North",
            "Aba South",
            "Umuahia North",
            "Umuahia South"
        ],
        "Akwa Ibom": [
            "Calabar Municipality",
            "Eket",
            "Uyo"
        ],
        "Anambra": [
            "Awka North",
            "Awka South",
            "Nnewi",
            "Onitsha"
        ],
        "Delta": [
            "Abakaliki",
            "Asaba",
            "Oredo",
            "Ughelli",
            "Warri"
        ],
        "Ondo": [
            "Ado",
            "Akure North",
            "Akure South",
            "Ikare",
            "Ondo East",
            "Ondo West"
        ],
        "Enugu": [
            "Enugu East",
            "Enugu North",
            "Enugu South",
            "Nsukka"
        ],
        "Imo": [
            "Owerri Municipal",
            "Owerri North",
            "Owerri South"
        ],
        "Kwara": [
            "Ilorin East",
            "Ilorin West",
            "Offa"
        ],
        "Lagos": [
            "Agege",
            "Ajeromi-Ifelodun",
            "Alimosho",
            "Amuwo-Odofin",
            "Apapa",
            "Badagry",
            "Epe",
            "Eti-Osa",
            "Ibeju/Lekki",
            "Ifako-Ijaye",
            "Ikeja",
            "Ikorodu",
            "Kosofe",
            "Lagos Island",
            "Lagos Mainland",
            "Mushin",
            "Ojo",
            "Oshodi-Isolo",
            "Shomolu",
            "Surulere"
        ],
        "Ogun": [
            "Abeokuta North",
            "Abeokuta South",
            "Ado-Odo/Ota",
            "Egbado North",
            "Egbado South",
            "Ewekoro",
            "Ifo",
            "Ijebu East",
            "Ijebu North",
            "Ijebu North East",
            "Ijebu Ode",
            "Ikenne",
            "Imeko-Afon",
            "Ipokia",
            "Obafemi-Owode",
            "Odeda",
            "Odogbolu",
            "Ogun Waterside",
            "Remo North",
            "Shagamu"
        ],
        "Osun": [
            "Ede",
            "Ile-ife",
            "Ilesha",
            "Osogbo",
            "Owo"
        ],
        "Oyo": [
            "Ibadan Central",
            "Ibadan North",
            "Ibadan North West",
            "Ibadan South East",
            "Ibadan South West",
            "Lagelu Ogbomosho North",
            "Ogbmosho South",
            "Oyo East",
            "Oyo West"
        ],
        "Rivers": [
            "Eleme",
            "Port Harcourt"
        ]
    }
}
```
