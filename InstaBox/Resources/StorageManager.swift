//
//  StorageManager.swift
//  InstaBox
//
//  Created by Ścibor Budkowski on 09/11/2020.
//

import FirebaseStorage

public struct UserPost {
    let postType: UserPostType
}

public enum UserPostType {
    case photo, video
}

public class StorageManager {
    
    static let instance = StorageManager()
    
    private let bucket = Storage.storage().reference()
    
    public enum IGStorageManagerError: Error {
        case failedToDownload
    }
    
    // MARK: - Public
    
    public func uploadUserPost(model: UserPost, completion: @escaping (Result<URL, Error>) -> Void) {
        
    }
    
    public func downloadImage(with reference: String, completion: @escaping (Result<URL, IGStorageManagerError>) -> Void) {
        bucket.child(reference).downloadURL { (url, error) in
            guard let url = url, error == nil else {
                completion(.failure(.failedToDownload))
                return
            }
            completion(.success(url))
        }
    }
}

