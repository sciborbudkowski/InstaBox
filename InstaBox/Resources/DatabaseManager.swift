//
//  DatabaseManager.swift
//  InstaBox
//
//  Created by Ścibor Budkowski on 09/11/2020.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let instance = DatabaseManager()
    
    private let db = Database.database().reference()
    
    // MARK: - Public
    
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        db.child(email.safeDatabaseKey()).setValue(["username": username]) { error, _ in
            if error == nil {
                completion(true)
                return
            } else {
                completion(false)
                return
            }
        }
    }
}
