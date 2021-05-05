//
//  PopUpButton.swift
//  MovieQuotes
//
//  Created by Yotaro Ito on 2021/05/05.
//

import UIKit

extension UIButton {
    
    func createQuoteButton() -> UIButton {
        self.setTitle("Play", for: .normal)
        self.tintColor = UIColor.white
        self.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        self.titleLabel?.numberOfLines = 0
        self.titleLabel?.adjustsFontSizeToFitWidth = true
        self.sizeToFit()
        self.titleLabel?.textAlignment = .center
        self.backgroundColor = UIColor.black
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
        return self
    }
    
    
    func createQuoteBackButton() -> UIButton {
        self.tintColor = UIColor.white
        self.setBackgroundImage(UIImage(systemName: "xmark.circle.fill"), for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    
    
    
    
}
