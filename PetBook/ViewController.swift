//
//  ViewController.swift
//  PetBook
//
//  Created by KEVIN on 07/12/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet var friendsIV: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContainerView()
        setupFriends()
    }

    func setupContainerView() {
        containerView.layer.cornerRadius = 20
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowRadius = 4
        containerView.layer.shadowOpacity = 0.75
        containerView.layer.shadowOffset = CGSize(width: 0, height: -4)
    }
    
    func setupFriends() {
        friendsIV.forEach { friend in
            let friendFrame = friend.frame
            let corner = friendFrame.height / 2
            friend.layer.cornerRadius = corner
            friend.layer.borderColor = UIColor.systemBackground.cgColor
            friend.layer.borderWidth = 2
        }
    }
}

