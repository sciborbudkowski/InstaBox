//
//  NotificationFollowEventTableViewCell.swift
//  InstaBox
//
//  Created by Ścibor Budkowski on 12/11/2020.
//

import UIKit
protocol NotificationFollowEventTableViewCellDelegate: AnyObject {
    func didTapFollowUnfollowButton(model: UserNotification)
}

class NotificationFollowEventTableViewCell: UITableViewCell {

    static let identifier = "NotificationFollowEventTableViewCell"
    
    public weak var delegate: NotificationFollowEventTableViewCellDelegate?
    
    private var model: UserNotification?
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .tertiarySystemBackground
        
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.numberOfLines = 0
        label.text = "@jim started following you."
        
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
        
        followButton.addTarget(self, action: #selector(didTapFollowButton), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with model: UserNotification) {
        self.model = model
        
        switch model.type {
        case .like(_):
            break
        case .follow:
            break
        }
        
        label.text = model.text
        profileImageView.sd_setImage(with: model.user.profilePhoto, completed: nil)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        followButton.setBackgroundImage(nil, for: .normal)
        label.text = nil
        profileImageView.image = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        profileImageView.frame = CGRect(x: 3, y: 3, width: contentView.height - 6, height: contentView.height - 6)
        profileImageView.layer.cornerRadius = profileImageView.height / 2
        
        let size = contentView.height - 4
        followButton.frame = CGRect(x: contentView.width - 5 - size, y: 2, width: size, height: size)
        
        label.frame = CGRect(x: profileImageView.right + 5,
                             y: 0,
                             width: contentView.width - size - profileImageView.width - 16,
                             height: contentView.height)
    }
    
    @objc private func didTapFollowButton() {
        guard let model = model else { return }
        delegate?.didTapFollowUnfollowButton(model: model)
    }
}
