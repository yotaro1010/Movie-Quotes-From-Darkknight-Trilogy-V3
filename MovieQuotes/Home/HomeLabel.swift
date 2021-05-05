//
//  HomeLabel.swift
//  MovieQuotes
//
//  Created by Yotaro Ito on 2021/05/05.
//

import UIKit

class HomeLabel: UILabel {
    
    init(textColor: UIColor, backgroundColor: UIColor, numberOfLines: Int, font: UIFont, clipsToBounds: Bool, cornerRadius: CGFloat) {
        super.init(frame: .zero)
        
        self.sizeToFit()
        self.adjustsFontSizeToFitWidth = true
        self.clipsToBounds = clipsToBounds
        self.textAlignment = .left
        self.layer.cornerRadius = cornerRadius
        
        self.numberOfLines = numberOfLines
        self.font = font
        self.textColor = textColor
        self.backgroundColor = backgroundColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


