//
//  NotificationLikeEventTableViewCell.swift
//  InstaBox
//
//  Created by Ścibor Budkowski on 12/11/2020.
//

import UIKit

protocol NotificationLikeEventTableViewCellDelegate: AnyObject {
    func didTapFollowUnfollowButton(model: String)
}

class NotificationLikeEventTableViewCell: UITableViewCell {

    static let identifier = "NotificationLikeEventTableViewCell"
    
    public weak var delegate: NotificationLikeEventTableViewCellDelegate?
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.numberOfLines = 0
        
        return label
    }()
    
    private let followButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.clipsToBounds = true
        contentView.addSubview(profileImageView)
        contentView.addSubview(label)
        contentView.addSubview(followButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with model: String) {
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        followButton.setTitle(nil, for: .normal)
        followButton.backgroundColor = nil
        followButton.layer.borderWidth = 0
        label.text = nil
        profileImageView.image = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}