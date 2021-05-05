//
//  MyCollectionView.swift
//  DemoV11
//
//  Created by Yotaro Ito on 2021/03/10.
//
import UIKit
import Foundation

class HomeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "HomeCollectionViewCell"
    
    private let characterImageView = HomeImageView(contentMode: .scaleAspectFill, clipsToBounds: true, cornerRadius: 10.0)

    private let characterNameLabel = HomeLabel(textColor: UIColor.white, backgroundColor: UIColor.black.withAlphaComponent(0.3), numberOfLines: 0, font: UIFont.systemFont(ofSize: 25, weight: .heavy), clipsToBounds: true, cornerRadius: 10.0)
    
    public func configure(with model: Quotes){
        characterNameLabel.text = model.character
        characterImageView.image = UIImage(named: model.imageName)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(characterImageView)
        characterImageView.addSubview(characterNameLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        characterImageView.image = nil
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        configureLayout()
    }
    
    func configureLayout(){
        
        contentView.clipsToBounds = true
        contentView.layer.borderColor = UIColor.systemBlue.cgColor
        contentView.layer.masksToBounds = true
        contentView.layer.cornerRadius = 20.0
        
        characterImageView.anchor(top: contentView.topAnchor,
                                  bottom: contentView.bottomAnchor,
                                  left: contentView.leftAnchor,
                                  right: contentView.rightAnchor)
        
        characterNameLabel.anchor(bottom: characterImageView.bottomAnchor,
                                  left: characterImageView.leftAnchor,
                                  width: characterImageView.widthAnchor,
                                  height: characterImageView.heightAnchor,
                                  widthMultiplier: 0.65, heightMultiplier: 0.2, bottomPadding: 10, leftPadding: 5)
    }
}
