//
//  MenuTableViewCell.swift
//  DemoV13
//
//  Created by Yotaro Ito on 2021/03/11.
//

import UIKit

class SideMenuCell: UITableViewCell {

    static let identifier = "SideMenuCell"
    
    let menuImageView = SideMenuImageView()
    let menuLabel = SideMenuLabel()

    private let separator = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(separator)
        contentView.addSubview(menuImageView)
        contentView.addSubview(menuLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        createLayout()
    }
    
    private func createLayout(){
        contentView.backgroundColor = UIColor.black
        separator.backgroundColor = UIColor.yellow
   
        menuLabel.anchor(top: contentView.topAnchor,
                         bottom: contentView.bottomAnchor,
                         right: contentView.rightAnchor,
                         width: contentView.widthAnchor, widthMultiplier: 0.8)

        menuImageView.anchor(top:contentView.topAnchor,
                             bottom: contentView.bottomAnchor,
                             left: contentView.leftAnchor,
                             right: menuLabel.leftAnchor)
        
        separator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separator.anchor(bottom: contentView.bottomAnchor, left: contentView.leftAnchor, right: contentView.rightAnchor)
    }
    
}


