@startuml
class Użytkownik {
    imię
    nazwisko
    PESEL
    adres korespondencyjny
    stan konta
}

class ViaGate {
    nr seryjny
    lokalizacja
    typ drogi
    typ bramki
}

class Przejazd {
    czas rozpoczęcia
    czas zakończenia
}

class OdczytBramki {
    czas odczytu
}

class ViaAuto {
    nr seryjny
    data rejestracji
    typ pojazdu
}

class Faktura {
    kwota
}

Użytkownik o--"*" ViaAuto : posiada
OdczytBramki o-- ViaGate : dotyczy
OdczytBramki "*"-- ViaAuto : dotyczy
Przejazd o--"*" OdczytBramki : składa się z
Faktura o--"*" Przejazd


@enduml
