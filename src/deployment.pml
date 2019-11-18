@startuml

left to right direction

node __:ViaGate__ <<device>> {
    component "Moduł komunikacyjny" as M1
    database "Pamięć tymczasowa" as M2
    M2 - M1
}

node __:ViaAuto__ <<device>> {
    component "Moduł komunikacyjny" as M3
}

node __:Serwer__ <<device>> {
    folder "System główny" as M4
    database "Baza danych" as M5
    M5 - M4
}

node "__:Komputer osobisty__" <<device>> as D1 {
    node "__:Przeglądarka internetowa__" <<executionEnvironment>> as E1 {
        component "Serwis kierowcy"
    }
}

node "__:Komputer osobisty__" <<device>> as D2 {
    node "__:Przeglądarka internetowa__" <<executionEnvironment>> as E2 {
        component "Panel administratora"
    }
}

@enduml
