//
//  DataManager.swift
//  PersonsList
//
//  Created by o11ev on 17.02.2021.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
}

class DataManager {
    let listOfNames = ["Имя1", "Имя2", "Имя3"]
    let listOfSurnames = ["Фамилия1", "Фамилия2", "Фамилия3"]
    let listOfPhones = ["Телефон1", "Телефон2", "Телефон3"]
    let listOfEmails = ["Почта1", "Почта2", "Почта3"]
    
    var personsList: [Person] = []
    
    func generatePersonsList() -> [Person] {
        
        for _ in 1...listOfNames.count {
            
            let person = Person(name: listOfNames.randomElement() ?? "",
                                surname: listOfSurnames.randomElement() ?? "",
                                phone: listOfPhones.randomElement() ?? "",
                                email: listOfEmails.randomElement() ?? "")
            personsList.append(person)
        }
        
        return personsList
    }
    
}
