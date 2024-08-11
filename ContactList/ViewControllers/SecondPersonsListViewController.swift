//
//  SecondPersonsListViewController.swift
//  ContactList
//
//  Created by Евгений on 11.08.2024.
//

import UIKit

final class SecondPersonsListViewController: UITableViewController {
    
    // MARK: - Public Properties
    var secondPersonsListData: [Person] = []
}
    
// MARK: - UITableViewDataSource
extension SecondPersonsListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        secondPersonsListData.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        secondPersonsListData[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondPersonCell", for: indexPath)
        let person = secondPersonsListData[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = person.phone
        } else {
            content.image = UIImage(systemName: "tray")
            content.text = person.email
        }
        
        cell.contentConfiguration = content
        cell.selectionStyle = .none
        
        return cell
    }
}
