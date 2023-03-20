# Implementacija

## Surenka orų alertus - get_weather.rb 
1.	Naudoja httparty jungtis prie weather.gov API
2.	JSON gem‘as parsina responsą iš API
3.	Pg gem‘as rašo duomenis į Postgres duomenų bazę

## Išsiunčia notificatonius - send_notifications.rb
1.	Pg gem‘as skaito iš duomenų bazės ir įvykdo SQL gauti vairuotojus, kurie randasi pavojaus zonoje
2.	Mail gem‘as siunčia laiškus, dabar sukonfiginta per Gmail‘o SMTP

# Periodiškumo nustatymas
Abu taskai užschedulinti ant Windows serverio per Task Scheduler

# Duomenų bazė

## app.drivers_t
Lentelė vairuotojų informacijai saugoti (emailas siųsti notificationus ir jų lokacija) 

## app.weather_t
Lentelė visiems forecast alertams saugoti (severe alertai išparsinti iš API json atsakymo)

# Veikimo logika

## Duomenų surinkimas
Prasileidus *get_weather.rb* – rašoma į DB

## Pranešimų siuntimas
Prasileidus *send_notifications.rb* - ateina laiškas
 
