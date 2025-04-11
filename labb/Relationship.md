Relationships

Student och kursbetyg
    -> En Student kan ha noll eller flera Kursbetyg
    <- Ett Kursbetyg tillhör en och endast en Student

Student och Ledningsgrupp
    -> En student kan tillhöra en och endast en Ledningsgrupp
    <- En Ledningsgrupp kan bestå av en eller flera Studenter

Student och Fristående kurs
    -> En Student kan student noll eller flera Fristående kurser
    <- En Fristående kurs består av en eller flera studenter

Personuppgifter och Adress
    -> En personuppgift är kopplad till en och endast en adress
    <- En adress kan vara kopplad till noll eller flera Personuppgifter

Personuppgifter och Fastanställning
    - En fastanställning är kopplad till en och endast en personuppgift
    
Adress och Stad
    -> En adress finns i en och endast en stad (postnummer)
    <- En Stad har en eller flera adresser

Klass och beviljad omgång
    -> En klass hör till en beviljad omgång
    <- En beviljade omgång skapar en och flera klasser

Fristående kurs och kurs
    -> En Fristående kurs är en och endast en kurs 
    <- En Kurs kan vara noll eller en Fristående kurs

Program och Beviljade omgång
    -> Ett program består av en eller flera beviljade omgångar
    <- En Beviljad omgång hör till ett och endast ett program

Program och Kurs
    -> Ett program består av flera kurser
    <- En kurs kan finnas i noll eller flera program

Program Ledningsgrupp
    -> Ett program består av en eller flera en ledningsgrupp (Olika skolor)
    <- En ledningsgrupp består av ett och endast ett program

Ledningsgrupp och Företag
    -> En ledningsgrupp innehåller ett eller flera företag
    <- Ett Företag kan ingå i en eller flera ledningsgrupper

Ledningsgrupp och Protokoll
    -> En Ledningsgrupp har noll eller flera protokoll
    <- Ett Protokoll tillhör en och endast en ledningsgrupp

Ledningsgrupp och Skola
    -> En ledningsgrupp är kopplad till en och endast en skola
    <- En skola har en eller flera ledningsgrupper

Kurs och kursbetyg
    - En Kurs ger ett och endast ett kursbetyg