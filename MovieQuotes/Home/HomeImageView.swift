//
//  HomeImageView.swift
//  MovieQuotes
//
//  Created by Yotaro Ito on 2021/05/05.
//

import UIKit

class HomeImageView: UIImageView {
    
    init(contentMode: ContentMode, clipsToBounds: Bool, cornerRadius: CGFloat) {
        super.init(frame: .zero)
        self.contentMode = contentMode
        self.clipsToBounds = clipsToBounds
        self.layer.cornerRadius = cornerRadius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
