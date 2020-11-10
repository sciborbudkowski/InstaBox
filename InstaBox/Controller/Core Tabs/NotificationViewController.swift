//
//  NotificationViewController.swift
//  InstaBox
//
//  Created by Ścibor Budkowski on 09/11/2020.
//

import UIKit

class NotificationViewController: UIViewController {

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: Constants.notificationsCellIdentifier)
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Notifications"
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension NotificationViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.notificationsCellIdentifier, for: indexPath)
        
        return cell
    }
}
