//
//  ChatTableViewCell.swift
//  Messenger
//
//  Created by Victoria Kashlina on 06/05/2018.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

public class ChatTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var titleLabel: UILabel?
    @IBOutlet private weak var authorLabel: UILabel?
    @IBOutlet private weak var messageLabel: UILabel?
    
    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.titleLabel = UILabel()
        self.authorLabel = UILabel()
        self.messageLabel = UILabel()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func prepareForReuse() {
        self.titleLabel?.text = nil
        self.authorLabel?.text = nil
        self.messageLabel?.text = nil
    }
}


