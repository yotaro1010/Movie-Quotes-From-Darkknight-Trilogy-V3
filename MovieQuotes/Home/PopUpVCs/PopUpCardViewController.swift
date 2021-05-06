//
//  Tes1View.swift
//  DemoV11
//
//  Created by Yotaro Ito on 2021/03/10.
//

import Foundation
import  AVFoundation
import UIKit

class PopUpCardViewController: UIViewController,AVAudioPlayerDelegate{

    public var position: Int  = 0
    public var quotes: [Quotes] = []
    
   private var audioPlayer: AVAudioPlayer?

    private let cardView:UIView = {
        let card = UIView()
        card.backgroundColor = UIColor.gray
        card.translatesAutoresizingMaskIntoConstraints = false
        return card
    }()

    private let quoteImageView = PopUpImageView()
    private let button = UIButton(type: .system).createQuoteButton()
    private let backButton = UIButton(type: .system).createQuoteBackButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(cardView)
        cardView.addSubview(quoteImageView)
        cardView.addSubview(backButton)
        cardView.addSubview(button)
        configureCard()
    }
    
    
    @objc func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configureLayout()
    }
    
    func configureCard(){
        
        let quote = quotes[position]
        
        quoteImageView.image = UIImage(named: quote.imageName)
        backButton.addTarget(self, action: #selector(didTapBack), for: .touchUpInside)
        button.addTarget(self, action: #selector(didTapPlay), for: .touchUpInside)
        
        
                let urlString = Bundle.main.path(forResource: quote.quoteMp3name ,ofType: "mp3")
        
                do {
                    try AVAudioSession.sharedInstance().setMode(.default)
                    try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                    guard let urlString = urlString else {
                        return
                    }
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                    audioPlayer?.delegate = self
                } catch  {
                    print("Error")
                }
    }

    func configureLayout(){
        
        cardView.anchor(top: view.topAnchor, bottom: view.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor)
        
        quoteImageView.anchor(top: cardView.topAnchor,
                              left: cardView.leftAnchor,
                              right: cardView.rightAnchor,
                              centerX: cardView.centerXAnchor,
                              height: cardView.heightAnchor, heightMultiplier: 0.6,
                              topPadding: 5, leftPadding: 5, rightPadding: 5)
        
        button.anchor(top: quoteImageView.bottomAnchor,
                      bottom: cardView.bottomAnchor,
                      left: quoteImageView.leftAnchor,
                      right: quoteImageView.rightAnchor,
                      topPadding: 5, bottomPadding: 5)
        
        backButton.anchor(top: quoteImageView.topAnchor,
                          right: quoteImageView.rightAnchor,
                          width: quoteImageView.heightAnchor,
                          height: quoteImageView.heightAnchor,
                          widthMultiplier: 0.2, heightMultiplier: 0.2, topPadding: 5, rightPadding: 5)
    }
    
    @objc func didTapBack() {
        dismiss(animated: true, completion: nil)
    }

    @objc func didTapPlay(){
        
        let quote = quotes[position]
        
        if audioPlayer?.isPlaying == true {
            
            audioPlayer?.pause()
            button.setTitle("Play", for: .normal)
        }
        
        else {
            audioPlayer?.play()
            button.setTitle(quote.quote, for: .normal)
        }
}

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        button.setTitle("Play", for: .normal)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let audioPlayer = audioPlayer {
            audioPlayer.stop()
        }
    }
}


