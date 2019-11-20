@startuml

left to right direction

node __:ViaGate__ <<device>> as VG {
    component "Moduł komunikacyjny" as M1
    database "Pamięć tymczasowa" as M2
    M2 - M1
}

node __:ViaAuto__ <<device>> as VA {
    component "Moduł komunikacyjny" as M3
}

D1 -[hidden]- Cloud
D2 -[hidden]- Cloud
Cloud -[hidden]-- VG
VG -[hidden]- VA

cloud Cloud {
    node __:Container__ <<executionEnvironment>> as C1 {
        component "Moduł urządzeń" as Mu
        database "Baza danych" as BD1
        BD1 - Mu
    }

    node __:Container__ <<executionEnvironment>> as C2 {
        component "Moduł fakturowania" as Mf
        database "Baza danych" as BD2
        BD2 - Mf
    }

    node __:Container__ <<executionEnvironment>> as C3 {
        component "Moduł odczytów bramek" as Mob
        database "Baza danych" as BD3
        BD3 - Mob
    }

    node __:Container__ <<executionEnvironment>> as C4 {
        component "Moduł użytkowników" as Mus
        database "Baza danych" as BD4
        BD4 - Mus
    }

    C1 -[hidden]- C2
    C3 -[hidden]- C4
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
