@startuml
title <size:18>Przejazd przez bramkę wjazdową na autostradę\n
skinparam sequenceBoxBorderColor #White

box ViaAuto #AliceBlue
    participant ":Moduł komunikacyjny" as ViaAuto
end box

box ViaGate #LavenderBlush
    participant ":Moduł komunikacyjny" as ViaGate
end box

box "System główny" #FloralWhite
    participant ":Moduł urządzeń" as MDevice
    participant ":Moduł użytkowników" as MUser
    participant ":Moduł odczytów bramek" as MOdczyt
end box


ViaAuto <- ViaGate : Odczyt urządzenia
ViaAuto --> ViaGate

ViaGate -> MDevice : Sprawdź czy urządzenie\njest zarejestrowane
activate MDevice
return //urządzenie istnieje//

ViaGate -> MUser : Sprawdź konto
activate MUser
return //typ konta//

alt konto z przedpłatą
    ViaGate -> MUser : Obniż saldo konta użytkownika
    activate MUser

    MUser -> MUser : Obniż saldo
    activate MUser
    deactivate MUser

    alt saldo ujemne
        ViaGate <- MUser : Wyświetl komunikat o niewystarczających środkach
        activate ViaGate

        ViaGate -> ViaGate : Wyświetl komunikat
        activate ViaGate
        deactivate ViaGate

        return
    end

    return
end

ViaGate -> MOdczyt : Zarejestruj odczyt
activate MOdczyt
return //zarejestrowano//

ViaGate -> ViaGate : Otwórz szlaban
activate ViaGate
ViaGate -> ViaGate : Zamknij szlaban
deactivate ViaGate

@enduml
