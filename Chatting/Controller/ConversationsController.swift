//
//  ConversationsController.swift
//  Chatting
//
//  Created by Victor Uriarte on 29/06/21.
//

import UIKit

class ConversationsController: UIViewController {
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    // MARK: - Selectors
    
    @objc func showProfile() {
        print(123)
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        configureNavigationBar()
    
        
        let image = UIImage(systemName: "person.circle.fill")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(showProfile))
        
    }
    
    func configureNavigationBar() {
        let appearence = UINavigationBarAppearance()
        appearence.configureWithOpaqueBackground()
        appearence.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearence.backgroundColor = .systemRed
        
        navigationController?.navigationBar.standardAppearance = appearence
        navigationController?.navigationBar.compactAppearance = appearence
        navigationController?.navigationBar.scrollEdgeAppearance = appearence
        
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Messages"
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        
        
        
    }
    
    
}
