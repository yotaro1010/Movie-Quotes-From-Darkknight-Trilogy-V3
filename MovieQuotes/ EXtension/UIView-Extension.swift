//
//  UIView-Extension.swift
//  MovieQuotes
//
//  Created by Yotaro Ito on 2021/05/05.
//

import UIKit

extension UIView {
    func anchor(
        top: NSLayoutYAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        left: NSLayoutXAxisAnchor? = nil,
        right: NSLayoutXAxisAnchor? = nil,
        centerY: NSLayoutYAxisAnchor? = nil,
        centerX: NSLayoutXAxisAnchor? = nil,
        width: NSLayoutDimension? = nil,
        height: NSLayoutDimension? = nil,
        widthMultiplier: CGFloat = 0,
        heightMultiplier: CGFloat = 0,
        topPadding: CGFloat = 0,
        bottomPadding: CGFloat = 0,
        leftPadding: CGFloat = 0,
        rightPadding: CGFloat = 0){
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
//        デフォルト値をnilに　topがnilじゃないときに処理を実行
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: topPadding).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -bottomPadding).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: leftPadding).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -rightPadding).isActive = true
        }
        if let centerX = centerX {
            self.centerXAnchor.constraint(equalTo: centerX).isActive = true
        }
        if let centerY = centerY {
            self.centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
        if let width = width {
            self.widthAnchor.constraint(equalTo: width, multiplier: widthMultiplier).isActive = true
        }
        if let height = height {
            self.heightAnchor.constraint(equalTo: height, multiplier: heightMultiplier).isActive = true
        }
    }
}
