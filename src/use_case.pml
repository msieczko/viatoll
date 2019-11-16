@startuml

usecase (Założenie konta) as UC1
usecase (Zarejestrowanie nowego\nurządzenia) as UC2
usecase (Doładowanie konta) as UC3
usecase (Przejazd przez bramkę\nviaGate) as UC5
usecase (Opłacenie faktury) as UC4
usecase (Kontakt z działem\nobsługi klienta) as UC6
usecase (Aktualizacja cennika\nopłat za przejazdy) as UC7
usecase (Zarządzanie kontami\nużytkowników) as UC8

Administrator -u-> UC7
Administrator -d-> UC8

Użytkownik -u-> UC1
Użytkownik -u-> UC2
Użytkownik -r-> UC3
Użytkownik -d-> UC4
Użytkownik -d-> UC5
Użytkownik -l-> UC6

UC1 <. UC2 : <<extend>>

@enduml
