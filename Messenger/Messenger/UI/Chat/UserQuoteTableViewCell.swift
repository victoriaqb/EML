//
//  UserQuoteTableViewCell.swift
//  Messenger
//
//  Created by Victoria Kashlina on 06/05/2018.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

public class UserQuoteTableViewCell: UserMessageTableViewCell {
    
    @IBOutlet private weak var visavisNameLabel: UILabel?
    @IBOutlet private weak var visavisquoteLabel: UILabel?
    @IBOutlet private weak var yourMessageLabel: UILabel?
    
    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.visavisNameLabel = UILabel()
        self.visavisquoteLabel = UILabel()
        self.yourMessageLabel = UILabel()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func prepareForReuse() {
        self.visavisNameLabel?.text = nil
        self.visavisquoteLabel?.text = nil
        self.yourMessageLabel?.text = nil
    }
}
