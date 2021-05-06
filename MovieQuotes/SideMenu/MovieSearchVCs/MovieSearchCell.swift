//
//  MovieTableViewCell.swift
//  DemoV7
//
//  Created by Yotaro Ito on 2021/03/05.
//

import UIKit
import Nuke

class MovieSearchCell: UITableViewCell {

    static let identifier = "MovieSearchCell"
    
    private let baseView: UIView = {
        let uiview = UIView()
        uiview.translatesAutoresizingMaskIntoConstraints = false
        uiview.layer.borderWidth = 1.5
        uiview.layer.borderColor = UIColor.systemBlue.cgColor
        uiview.backgroundColor = UIColor.black
        return uiview
    }()
    
    private let moviePoster = MovieImageView()
    
    private let movieTitle = Label(textColor: UIColor.white, font: UIFont.systemFont(ofSize: 20, weight: .heavy), borderWidth: 0, borderColor: UIColor.clear.cgColor, cornerRadius: 0)
        
    private let movieLanguage = Label(textColor: UIColor.systemBlue, font: UIFont.systemFont(ofSize: 14, weight: .semibold), borderWidth: 1.0, borderColor: UIColor.systemBlue.cgColor, cornerRadius: 10)
    
    private let movieYear = Label(textColor: UIColor.systemBlue, font: UIFont.systemFont(ofSize: 15, weight: .semibold), borderWidth: 1.0, borderColor: UIColor.systemBlue.cgColor, cornerRadius: 10)
    
    private let movieRate = Label(textColor: UIColor.black, font: UIFont.systemFont(ofSize: 17, weight: .bold), borderWidth: 1.0, borderColor: UIColor.systemYellow.cgColor, cornerRadius: 10)
    
    private let movieOverView = Label(textColor: UIColor.white, font: UIFont.systemFont(ofSize: 17, weight: .regular), borderWidth: 0.0, borderColor: UIColor.clear.cgColor, cornerRadius: 0)
    
    
    var listOfMoviesForTV: Movie? {
        didSet {
            guard let posterString = listOfMoviesForTV?.posterImage else {return}
            let finalUrl =  "https://image.tmdb.org/t/p/w500" + posterString
            
            if let url = URL(string: finalUrl) {
                Nuke.loadImage(with: url, into: moviePoster)
            } else {
                moviePoster.image = UIImage(systemName: "xmark")
            }
            
            movieTitle.text = listOfMoviesForTV?.title
            
            guard let year = listOfMoviesForTV?.year else {return}
            movieYear.text = "Release: \(year)"
            
            guard let language = listOfMoviesForTV?.language else {return}
            movieLanguage.text = "Language: \(language)"
            
            movieOverView.text = listOfMoviesForTV?.overView
            
            guard let rate = listOfMoviesForTV?.rate else {return}
            movieRate.text = "User Score: \(rate)/10"
            movieRate.backgroundColor = UIColor.yellow
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configureCellLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  private func configureCellLayout(){
        
        let rightMovieStackView = UIStackView(arrangedSubviews: [movieTitle,movieLanguage, movieYear, movieRate])
        rightMovieStackView.axis = .vertical
        rightMovieStackView.distribution = .fill
        rightMovieStackView.spacing = 5
        
        let baseStackView = UIStackView(arrangedSubviews: [moviePoster, rightMovieStackView])
        baseStackView.axis = .horizontal
        baseStackView.distribution = .fill
        baseStackView.spacing = 5
        
        contentView.addSubview(baseView)
        baseView.addSubview(movieOverView)
        baseView.addSubview(baseStackView)
        
        baseView.anchor(top: contentView.topAnchor, bottom: contentView.bottomAnchor, left: contentView.leftAnchor, right: contentView.rightAnchor, topPadding: 5, bottomPadding: 5, leftPadding: 5, rightPadding: 5)
        
        moviePoster.anchor(width: baseStackView.widthAnchor, widthMultiplier: 0.55)
        baseStackView.anchor(top: baseView.topAnchor, left: baseView.leftAnchor, right: baseView.rightAnchor, height: baseView.heightAnchor, heightMultiplier: 0.6, topPadding: 5, leftPadding: 5, rightPadding: 5)
        
        movieTitle.anchor(height: moviePoster.heightAnchor, heightMultiplier: 0.35)
        movieYear.anchor(height: movieLanguage.heightAnchor, heightMultiplier: 1.0)
        movieRate.anchor(height: moviePoster.heightAnchor, heightMultiplier: 0.3)
        movieOverView.anchor(top: baseStackView.bottomAnchor, bottom: baseView.bottomAnchor, width: baseStackView.widthAnchor, widthMultiplier: 1.0, topPadding: 5, bottomPadding: 5)
    }
}
