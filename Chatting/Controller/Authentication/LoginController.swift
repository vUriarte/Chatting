//
//  LoginController.swift
//  Chatting
//
//  Created by Victor Uriarte on 30/06/21.
//

import UIKit

class LoginController: UIViewController {
    // MARK: - Properties
    
    private let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bubble.right")
        imageView.tintColor = .white
        return imageView
    }()
    
    private let emailContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        view.setHeight(height: 50)
        return view
    }()
    
    private let passwordContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.setHeight(height: 50)
        return view
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.layer.cornerRadius = 5
        button.setHeight(height: 50)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .systemRed
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureGradientLayer()
        
        view.addSubview(iconImage)
        iconImage.centerX(inView: view)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
        iconImage.setDimensions(height: 120, width: 120)
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView, loginButton])
        stack.axis = .vertical
        stack.spacing = 16
        
        view.addSubview(stack)
        stack.anchor(top: iconImage.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 32, paddingLeft: 32, paddingRight: 32)
        
    }
    
    // MARK: - Helper
    
    func configureUI() {
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        view.backgroundColor = .systemPurple
        
    }
    
    func configureGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemPink.cgColor]
        gradient.locations = [0,1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
}
