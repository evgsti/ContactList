//
//  ViewController.swift
//  ContactList
//
//  Created by Евгений on 11.08.2024.
//

import UIKit

final class FirstPersonsListViewController: UITableViewController {
    
    // MARK: - Public Properties
    var firstPersonsListData: [Person] = []
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = tableView.indexPathForSelectedRow
        let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.person = firstPersonsListData[indexPath!.row]
    }
}

// MARK: - UITableViewDataSource
extension FirstPersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        firstPersonsListData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstPersonCell", for: indexPath)
        let person = firstPersonsListData[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}
