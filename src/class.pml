@startuml

hide empty members
hide circle
skinparam linetype ortho

class Użytkownik {
    imię : String
    nazwisko : String
    PESEL : String
    adres korespondencyjny : String
    saldo konta : Number
}

class ViaGate {
    nr seryjny : String
    lokalizacja : String
    typ drogi : String
    typ bramki : String
}

class Przejazd {
    czas rozpoczęcia : Number
    czas zakończenia : Number
    długość trasy : Number
    opłata : Number
}

class Odcinek {
    długość : Number
    opłata : Number
}

class OdczytBramki {
    czas odczytu : Date
}

class ViaAuto {
    nr seryjny : String
    data rejestracji : Date
    typ pojazdu : String
}

class Faktura {
    kwota do zapłaty : Number
    data wystawienia : Date
    termin płatności : Date
    data płatności : Date
}

Faktura "1" o-d- "1..*" Przejazd : > podlicza
Faktura "*" -r- "1" Użytkownik : > zobowiązuje\ndo zapłaty
Użytkownik "1" o-r- "*" ViaAuto : > posiada
Przejazd *-r- "1..*" Odcinek : > składa się z
Odcinek "0..2" o-r- "2" OdczytBramki : > składa się z
OdczytBramki "*" -r- "1" ViaGate : > dotyczy
OdczytBramki "*" -u- "1" ViaAuto : > dotyczy

@enduml
