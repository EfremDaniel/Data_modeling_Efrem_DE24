Exercise 0

Exercise 1
You have this json data, convert it into three tables: Hospital, Department and Doctor.
Fill these tables with data. Do this manually and not programmatically.

```json
{
  "hospital": "Sjukhusstock",
  "address": "Drottninggatan 3, Stockholm",
  "departments": [
    {
      "name": "Kardiologi",
      "doctors": [
        { "id": 1, "name": "Dr. Abra Abrahamson" },
        { "id": 2, "name": "Dr. Erika Eriksson" }
      ]
    },
    {
      "name": "Neurologi",
      "doctors": [{ "id": 3, "name": "Dr. Sven Svensson" }]
    }
  ]
}
```
Solution:

- identify entities
- identify relationships and cardinalities
- create conceptual EDR
- create tables 


Initial naive conceptual ERD

<ing src = ".../assets/Initial.png" width=300>



# Exercse 0
## 1. Hospital task
### Solution

HospitalDepartment

| hospital_department_id | hospital_id | department_id |
| ---------------------- | ----------- | ------------- |
| 1                      | 1           | 1
| 2                      | 2           | 2

