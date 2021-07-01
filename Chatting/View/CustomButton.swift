//
//  CustomButton.swift
//  Chatting
//
//  Created by Victor Uriarte on 01/07/21.
//

import UIKit

class CustomButton: UIButton {
    init(text: String) {
        super.init(frame: .zero)
        setTitle(text, for: .normal)
        layer.cornerRadius = 5
        setHeight(height: 50)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        setTitleColor(.white, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

