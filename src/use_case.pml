@startuml

Administrator -u-> (Aktualizacja cennika\nopłat za przejazdy)
Administrator -d-> (Zarządzanie kontami\nużytkowników)

Użytkownik -u-> (Zarejestrowanie nowego\nurządzenia)
Użytkownik -u-> (Założenie konta)
Użytkownik -r-> (Doładowanie konta)
Użytkownik -d-> (Przejazd przez bramkę\nviaGate)
Użytkownik -d-> (Opłacenie faktury)
Użytkownik -l-> (Kontakt z działem\nobsługi klienta)

@enduml
