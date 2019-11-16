@startuml

Administrator -u-> (Aktualizacja cennika\nopłat za przejazdy)
Administrator -d-> (Zarządzanie kontami\nużytkowników)

Użytkownik -u-> (Założenie konta)
Użytkownik -r-> (Zarejestrowanie nowego\nurządzenia)
Użytkownik -d-> (Doładowanie konta\n/opłacenie faktury)
Użytkownik -d-> (Korzystanie z dróg objętych\nsystemem viaTOLL – przejazd\nprzez bramkę viaGate)
Użytkownik -l-> (Kontakt z działem\nobsługi klienta)

@enduml
