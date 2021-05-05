//
//  SideMenulabel.swift
//  MovieQuotes
//
//  Created by Yotaro Ito on 2021/05/05.
//

import UIKit

class SideMenuLabel: UILabel {
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        self.textColor = UIColor.yellow
        self.numberOfLines = 1
        self.sizeToFit()
        self.adjustsFontSizeToFitWidth = true
        self.textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
