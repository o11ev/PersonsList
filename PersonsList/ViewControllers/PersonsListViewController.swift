//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by o11ev on 17.02.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personsList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person1", for: indexPath)
        
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personDetailsVC = segue.destination as! PersonDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personsList[indexPath.row]
        personDetailsVC.personDetails = person
    }
}
