//
//  HeroHeaderUIView.swift
//  Movie App
//
//  Created by Dambi on 16.06.23.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let saveButton: UIButton = {
       let button = UIButton()
        button.setTitle("❤︎ Save", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let playButton: UIButton = {
       let button = UIButton()
        button.setTitle("▶︎ Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let heroImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()

    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(saveButton)
        applyConstraints()
    }
    
    private func applyConstraints(){
        let playButtonConstraints = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            playButton.widthAnchor.constraint(equalToConstant: 90)
        ]
        
        let saveButtonConstraint = [
            saveButton.leadingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            saveButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            saveButton.widthAnchor.constraint(equalToConstant: 90)
        ]
        
        NSLayoutConstraint.activate(playButtonConstraints)
        NSLayoutConstraint.activate(saveButtonConstraint)

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
