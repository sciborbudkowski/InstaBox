//
//  Models.swift
//  InstaBox
//
//  Created by Ścibor Budkowski on 12/11/2020.
//

import Foundation

public struct UserPost {
    let identifier: String
    let postType: UserPostType
    let thumbnailImage: URL
    let postURL: URL
    let caption: String?
    let likeCount: [PostLike]
    let comments: [PostComment]
    let createdDate: Date
    let taggedUsers: [User]
}

public enum UserPostType {
    case photo, video
}

public struct PostLike {
    let username: String
    let postIdentifier: String
}

public struct CommentLike {
    let username: String
    let commentIdentifier: String
}

public struct PostComment {
    let identifier: String
    let username: String
    let text: String
    let createdDate: Date
    let likes: [CommentLike]
}

public struct User {
    let username: String
    let bio: String
    let name: (first: String, last: String)
    let birthDate: Date
    let profilePhoto: URL
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
}

public struct UserCount {
    let followers: Int
    let following: Int
    let posts: Int
}

enum Gender {
    case male, female, other
}
