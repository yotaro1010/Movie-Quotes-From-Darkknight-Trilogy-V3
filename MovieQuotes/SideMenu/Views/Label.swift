//
//  Label.swift
//  MovieQuotes
//
//  Created by Yotaro Ito on 2021/05/06.
//

import UIKit

class Label: UILabel {
    init(textColor: UIColor, font: UIFont, borderWidth: CGFloat, borderColor: CGColor, cornerRadius: CGFloat) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = textColor
        self.font = font
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
        self.layer.cornerRadius = cornerRadius
        self.sizeToFit()
        self.adjustsFontSizeToFitWidth = true
        self.clipsToBounds = true
        self.textAlignment = .center
        self.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
