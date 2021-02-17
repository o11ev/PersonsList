//
//  PersonDetailsViewController.swift
//  PersonsList
//
//  Created by o11ev on 18.02.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personDetails: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = personDetails.phone
        emailLabel.text = personDetails.email
    }
}
