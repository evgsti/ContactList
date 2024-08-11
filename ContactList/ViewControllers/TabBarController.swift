//
//  TabBarController.swift
//  ContactList
//
//  Created by Евгений on 11.08.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPersonsData()
    }
    
    // MARK: - Private Methods
    private func loadPersonsData() {
        if let firstNavController = self.viewControllers?[0] as? UINavigationController,
           let secondNavController = self.viewControllers?[1] as? UINavigationController {
            
            if let firstPersonListVC = firstNavController.topViewController as? FirstPersonsListViewController,
               let sectionPersonListVC = secondNavController.topViewController as? SecondPersonsListViewController {
                
                let allPersons = DataStore().generateAllPersons()
                
                firstPersonListVC.firstPersonsListData = allPersons
                sectionPersonListVC.secondPersonsListData = allPersons
            }
        }
    }
}
