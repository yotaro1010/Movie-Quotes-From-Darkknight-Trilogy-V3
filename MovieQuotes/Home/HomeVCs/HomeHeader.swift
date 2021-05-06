//
//  HomeHeaderCollectionReusableView.swift
//  DemoV13
//
//  Created by Yotaro Ito on 2021/03/13.
//

import UIKit

class HomeHeader: UICollectionReusableView {
  
    let headerLabel = HomeLabel(textColor:  UIColor.white, backgroundColor: .clear, numberOfLines: 1, font: UIFont.systemFont(ofSize: 30, weight: .heavy), clipsToBounds: false, cornerRadius: 0.0)
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerLabel)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        headerLabel.frame = self.bounds

    }
    
}



