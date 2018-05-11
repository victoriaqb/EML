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
    @IBOutlet private weak var visavisQuoteLabel: UILabel?
    @IBOutlet private weak var yourMessageLabel: UILabel?
    
    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.visavisNameLabel = UILabel()
        self.visavisQuoteLabel = UILabel()
        self.yourMessageLabel = UILabel()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func prepareForReuse() {
        self.visavisNameLabel?.text = nil
        self.visavisQuoteLabel?.text = nil
        self.yourMessageLabel?.text = nil
    }
    
    //MAKR: -
    
    var visavisName: String? {
        get {
            return visavisNameLabel?.text
        }
        
        set {
            visavisNameLabel?.text = newValue
        }
    }
    
    var vasavisQuote: String? {
        get {
            return visavisQuoteLabel?.text
        }
        
        set {
            visavisQuoteLabel?.text = newValue
        }
    }
    
    var yourMessageText: String? {
        get {
            return yourMessageLabel?.text
        }
        
        set {
            yourMessageLabel?.text = newValue
        }
    }
    
    var yourMessageAttributedText: NSAttributedString? {
        get {
            return yourMessageLabel?.attributedText
        }
        
        set {
            yourMessageLabel?.attributedText = newValue
        }
    }
}
