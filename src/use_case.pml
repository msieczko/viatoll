@startuml

usecase (Założenie konta) as UC1
usecase (Zarejestrowanie nowego\nurządzenia) as UC2
usecase (Doładowanie konta) as UC3
usecase (Przejazd przez\nbramkę ViaGate) as UC5
usecase (Opłacenie faktury) as UC4
usecase (Kontakt z działem\nobsługi klienta) as UC6
usecase (Aktualizacja cennika\nopłat za przejazdy) as UC7
usecase (Zarządzanie kontami\nużytkowników) as UC8
usecase (Zarządzanie fakturowaniem) as UC9
usecase (Wyświetlanie statystyk\nodczytów bramek) as UC10
usecase (Zarządzanie zarejestrowanymi\nurządzeniami) as UC11


Administrator -u-> UC7
Administrator -u-> UC8
Administrator -r-> UC9
Administrator -l-> UC10
Administrator -d-> UC11

Użytkownik -u-> UC1
Użytkownik -u-> UC2
Użytkownik -r-> UC3
Użytkownik -d-> UC4
Użytkownik -d-> UC5
Użytkownik -l-> UC6

UC1 <. UC2 : <<extend>>
UC7 .> UC9 : <<extend>>

@enduml
