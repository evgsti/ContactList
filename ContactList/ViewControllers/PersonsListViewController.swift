//
//  ViewController.swift
//  ContactList
//
//  Created by Евгений on 11.08.2024.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    // MARK: - Private Properties
    private var personsList = DataStore().generateAllPersons()
        
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = tableView.indexPathForSelectedRow
        let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.person = personsList[indexPath!.row]
    }
}

// MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
}
