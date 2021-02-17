//
//  PersonModel.swift
//  PersonsList
//
//  Created by o11ev on 17.02.2021.
//

struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonsList() -> [Person] {
        let dataManager = DataManager()
        var personsList: [Person] = []
        
        let names = dataManager.listOfNames.shuffled()
        let surnames = dataManager.listOfSurnames.shuffled()
        let phones = dataManager.listOfPhones.shuffled()
        let emails = dataManager.listOfEmails.shuffled()
        
        let amountOfPersons = dataManager.listOfNames.count - 1
        
        for number in 0...amountOfPersons {
            let person = Person(name: names[number],
                                surname: surnames[number],
                                phone: phones[number],
                                email: emails[number])
            personsList.append(person)
        }
        return personsList
    }
}
