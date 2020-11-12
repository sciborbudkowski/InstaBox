//
//  ProfileTabsCollectionReusableView.swift
//  InstaBox
//
//  Created by Ścibor Budkowski on 12/11/2020.
//

import UIKit

class ProfileTabsCollectionReusableView: UICollectionReusableView {
    
    static let identifier = "ProfileTabsCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .orange
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
