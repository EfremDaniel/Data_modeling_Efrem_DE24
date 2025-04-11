
-- Lista alla studenter, deras skolor och vilken stad de studerar i:
SELECT 
    s.förnamn || ' ' || s.efternamn AS namn,
    sk.skolnamn,
    st.stad
FROM 
    "YrkesCo".student s
JOIN "YrkesCo".skola sk ON s.skol_id = sk.skol_id
JOIN "YrkesCo".adress a ON sk.adress_id = a.adress_id
JOIN "YrkesCo".stad st ON a.stad_id = st.stad_id;



-- Visa alla konsulter och vilken stad de är knutna till:
SELECT 
    p.förnamn || ' ' || p.efternamn AS konsult,
    kb.bolagsnamn,
    s.stad,
    k.timpris
FROM 
    "YrkesCo".konsult k
JOIN "YrkesCo".personal p ON k.personal_id = p.personal_id
JOIN "YrkesCo".konsultbolag kb ON k.org_nummer = kb.org_nummer
JOIN "YrkesCo".adress a ON kb.adress_id = a.adress_id
JOIN "YrkesCo".stad s ON a.stad_id = s.stad_id
ORDER BY s.stad, konsult;


-- Visa program och vilken specifik skola dem är tillgängliga 
SELECT 
    sk.skolnamn,
    p.programnamn
FROM 
    "YrkesCo".skolprogram sp
JOIN "YrkesCo".skola sk ON sp.skol_id = sk.skol_id
JOIN "YrkesCo".program p ON sp.program_id = p.program_id
ORDER BY sk.skolnamn, p.programnamn;


-- Alla anställda och deras roll samt vilket program de tillhör
select
	p.förnamn,
	p.efternamn,
	y.titel,
	kp.program_id
from
	"YrkesCo".personal p
join "YrkesCo".yrkesroll y on
	p.yrkes_id = y.yrkes_id
join "YrkesCo".fastanställning fa on
	p.personal_id = fa.personal_id
join "YrkesCo".kursprogram kp on
	kp.program_id = kp.program_id
ORDER BY



-- Visa medlemmar i ledningsgruppen för varje program

SELECT 
    p.programnamn,
    f.företag_namn,
    f.representant
FROM 
    "YrkesCo".ledningsföretag lf
JOIN 
    "YrkesCo".företag f ON lf.företag_org_nummer = f.företag_org_nummer
JOIN 
    "YrkesCo".ledningsgrupp lg ON lf.ledningsgrupp_id = lg.ledningsgrupp_id
JOIN 
    "YrkesCo".program p ON lg.program_id = p.program_id;




