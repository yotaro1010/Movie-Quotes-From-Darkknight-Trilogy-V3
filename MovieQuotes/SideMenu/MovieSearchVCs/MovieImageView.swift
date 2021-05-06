//
//  MovieImageView.swift
//  MovieQuotes
//
//  Created by Yotaro Ito on 2021/05/06.
//

import UIKit

class MovieImageView: UIImageView {
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.systemBlue.cgColor
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
