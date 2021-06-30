//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Vadim on 29.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        iv.image = UIImage(named: "avatar")
        iv.clipsToBounds = true
        
        return iv
    }()
    let button = UIButton (type: .system)
    let titleLabel = UILabel ()
    let labelNew = UILabel()
    
    override init(frame: CGRect) {
        super.init (frame: frame)
        addSubview(imageView)
        addSubview(button)
        addSubview(titleLabel)
        addSubview(labelNew)
    }
    override func layoutSubviews() {
        imageView.layer.cornerRadius = imageView.bounds.height/2
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.frame = CGRect(x: 16,
                                 y: self.safeAreaInsets.top + 16,
                                 width: 150,
                                 height: 150)
        button.frame = CGRect(x: 16,
                              y: self.safeAreaInsets.top + 182,
                              width: self.frame.width - 32,
                              height: 50)
        
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 14
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        titleLabel.frame = CGRect(x: 150,
                                  y: self.safeAreaInsets.top + 27,
                                  width: 150,
                                  height: 30)
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        titleLabel.text = "Grumpy cat"
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        
        labelNew.frame = CGRect(x: 150,
                              y: self.safeAreaInsets.top + 134,
                              width: 200,
                              height: 20)
        labelNew.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        labelNew.text = "Waiting for something..."
        labelNew.textColor = .systemGray2
        labelNew.textAlignment = .center
    
    }
    @objc private func buttonPressed() {
        print("button pressed")
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
