//
//  Person.swift
//  ContactList
//
//  Created by Евгений on 11.08.2024.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

class DataStore {
    var names = [
        "John",
        "Sharon",
        "Aaron",
        "Steven",
        "Nicola",
        "Ted",
        "Bruce",
        "Carl",
        "Allan"
    ]
    var surnames = [
        "Murphy",
        "Jankin",
        "Williams",
        "Black",
        "Robertson",
        "Butler",
        "Isaacson",
        "Smith",
        "Pennyworth"
    ]
    var phones = [
        "123456789",
        "987654321",
        "456789123",
        "789123456",
        "234567891",
        "321654987",
        "654987321",
        "147258369",
        "369258147"
    ]
    var emails = [
        "example1@email.com",
        "user2@gmail.com",
        "test3@yahoo.com",
        "sample4@outlook.com",
        "info5@mail.ru",
        "contact6@gmail.com",
        "support7@yahoo.com",
        "admin8@email.com",
        "hello9@outlook.com"
    ]
    
    func generateUniquePerson() -> Person? {
        guard !names.isEmpty, !surnames.isEmpty, !phones.isEmpty, !emails.isEmpty else { return nil }
        
        let name = names.removeFirst()
        let surname = surnames.removeFirst()
        let phone = phones.removeFirst()
        let email = emails.removeFirst()
        
        return Person(name: name, surname: surname, phone: phone, email: email)
    }

    func generateAllPersons() -> [Person] {
        var persons = [Person]()
        
        for _ in 1...names.count {
            let person = Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                phone: phones.randomElement() ?? "",
                email: emails.randomElement() ?? ""
            )
            persons.append(person)
        }
        return persons
    }
}
