//
//  UserMessageTableViewCell.swift
//  Messenger
//
//  Created by Victoria Kashlina on 04/05/2018.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

public class UserMessageTableViewCell: UITableViewCell {
    @IBOutlet private weak var messageLabel: UILabel?
    
    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.messageLabel = UILabel()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.messageLabel = UILabel()
    }
    
    public override func prepareForReuse() {
        self.messageLabel?.text = nil
    }
    
    //MAKR: -
    
    var messageText: String? {
        get {
            return messageLabel?.text
        }
        
        set {
            messageLabel?.text = newValue
        }
    }
    
    var messageAttributedText: NSAttributedString? {
        get {
            return messageLabel?.attributedText
        }
        
        set {
            messageLabel?.attributedText = newValue
        }
    }
}
