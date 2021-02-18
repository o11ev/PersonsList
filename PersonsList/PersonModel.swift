//
//  PersonModel.swift
//  PersonsList
//
//  Created by o11ev on 17.02.2021.
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

extension Person {
    static func getPersonsList() -> [Person] {
        let dataManager = DataManager()
        var personsList: [Person] = []
        
        let names = dataManager.listOfNames.shuffled()
        let surnames = dataManager.listOfSurnames.shuffled()
        let phones = dataManager.listOfPhones.shuffled()
        let emails = dataManager.listOfEmails.shuffled()
        
        let amountOfPersons = dataManager.listOfNames.count
        
        for index in 0..<amountOfPersons {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phone: phones[index],
                                email: emails[index])
            personsList.append(person)
        }
        return personsList
    }
}
