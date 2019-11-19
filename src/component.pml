@startuml

left to right direction

[Panel administratora] as PA

package "System główny" {
    [Moduł urządzeń] as M1
    [Moduł fakturowania] as M2
    [Moduł odczytów bramek] as M3
    [Moduł użytkowników] as M5
    M2 .> M1 : <<uses>>
    M2 .> M3 : <<uses>>
    M2 .> M5 : <<uses>>
}

package ViaGate {
    [Moduł komunikacyjny] as M4
}

[Serwis kierowcy] as SK
interface "Zarządzanie\nurządzeniami" as I1
interface "Zarządzanie\nfakturami" as I2
interface "Rejestracja urządeń" as I3
interface "Pobieranie faktur,\n sprawdzanie stanu\nkonta" as I4
interface "Odczyty bramek" as I5
interface "Statystyki" as I6
interface "Zarządzanie\nużytkownikami" as I7
interface "Założenie konta" as I8

I1 )-- PA
I2 )-- PA
I6 )-- PA
I7 )-- PA
M1 -- I1
M2 -- I2
M3 -- I6
M5 -- I7
I3 -- M1
I4 -- M2
SK --( I3
SK --( I4
M4 -- I5
I5 )-- M3
I8 -- M5
SK --( I8

@enduml


