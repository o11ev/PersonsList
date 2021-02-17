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
        
        guard let viewControllers = self.viewControllers else { return }
        for viewController in viewControllers {
            guard let navigationController = viewController as? UINavigationController else { return }
            if let personsListVC = navigationController.topViewController as? PersonsListViewController {
                personsListVC.personsList = persons
            }
        }
    }
}
