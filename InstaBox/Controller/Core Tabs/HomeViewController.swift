//
//  ViewController.swift
//  InstaBox
//
//  Created by Ścibor Budkowski on 09/11/2020.
//

import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        handleNotAuthenticated()
        
//        do {
//            try Auth.auth().signOut()
//        } catch {
//            print("failed to sign out")
//        }
    }
    
    private func handleNotAuthenticated() {
        if Auth.auth().currentUser == nil {
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }
}
