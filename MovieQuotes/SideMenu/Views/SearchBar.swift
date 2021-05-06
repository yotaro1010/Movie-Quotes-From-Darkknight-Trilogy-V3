//
//  SearchBar.swift
//  MovieQuotes
//
//  Created by Yotaro Ito on 2021/05/06.
//

import UIKit
  
class SearchBar: UISearchBar{
    
    init(placeHolder: String, tintColor: UIColor, textColor: UIColor) {
        super.init(frame: .zero)
       
            self.placeholder = placeHolder
            self.tintColor = tintColor
            self.searchTextField.textColor = textColor
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

