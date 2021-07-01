//
//  CustomTextButton.swift
//  Chatting
//
//  Created by Victor Uriarte on 01/07/21.
//

import UIKit

class CustomTextButton: UIButton {
    init(staticText: String, clickableText: String) {
        super.init(frame: .zero)
        let attributedTitle = NSMutableAttributedString(string: staticText + "  ", attributes: [.font: UIFont.systemFont(ofSize: 16),
                                                                                                    .foregroundColor: UIColor.white])
        
        attributedTitle.append(NSAttributedString(string: clickableText, attributes: [.font: UIFont.boldSystemFont(ofSize: 16),
                                                                                  .foregroundColor: UIColor.white]))
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

