//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Vadim on 29.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    let profileHeader = ProfileHeaderView ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        self.view.addSubview(profileHeader)
    }
    override func viewWillLayoutSubviews(){
        profileHeader.frame = CGRect(x: 0,
                                     y: 0,
                                     width: view.frame.width,
                                     height: view.frame.height)
       
}
}
