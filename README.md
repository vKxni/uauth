# Phoenix x Argon2

A small practice project to learn how to use Argon2 in Phoenix.

---

### Routes 
Create User: 
```
http://localhost:4000/api/create
```

JSON Object
```json
{
    "first_name": "John",
    "last_name": "Doe"
}
``` 
Creates a random password with `crypto` and hashes it with Argon2.


Validate:
```
http://localhost:4000/api/validate
```

JSON Object
```json
{
    "first_name": "John",
    "password": "johns_password"
}
```
Returns a success message if the password is correct.
