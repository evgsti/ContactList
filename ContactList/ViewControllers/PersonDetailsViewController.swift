//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Евгений on 11.08.2024.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = person.fullName
        
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
