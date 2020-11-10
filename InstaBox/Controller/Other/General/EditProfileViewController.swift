//
//  EditProfileViewController.swift
//  InstaBox
//
//  Created by Ścibor Budkowski on 09/11/2020.
//

import UIKit

class EditProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSaveButton))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(didTapCancelButton))
    }
    
    @objc private func didTapSaveButton() {
        
    }
    
    @objc private func didTapCancelButton() {
        
    }
    
    @objc private func didTapChangeProfilePicture() {
        let actionShit = UIAlertController(title: "Profile Picture", message: "Change Profile Picture", preferredStyle: .actionSheet)
        actionShit.addAction(UIAlertAction(title: "Take Photo", style: .default, handler: { _ in
            
        }))
        actionShit.addAction(UIAlertAction(title: "Choose from Library", style: .default, handler: { _ in
            
        }))
        actionShit.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        actionShit.popoverPresentationController?.sourceView = view
        actionShit.popoverPresentationController?.sourceRect = view.bounds
        
        present(actionShit, animated: true)
    }
}
