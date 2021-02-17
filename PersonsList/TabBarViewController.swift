//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by o11ev on 17.02.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var persons = Person.getPersonsList()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let firstController = segue.destination as! UINavigationController
        let personsListVC = firstController.topViewController as! PersonsListViewController
        personsListVC.personsList = persons

    }
}
