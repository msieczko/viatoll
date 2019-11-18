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

PA --( I1
PA --( I2
PA --( I6
PA --( I7
I1 -- M1
I2 -- M2
I6 -- M3
I7 -- M5
M1 -- I3
M2 -- I4
I3 )-- SK
I4 )-- SK
M4 -- I5
I5 )-- M3
M5 -- I8
I8 )-- SK
@enduml


