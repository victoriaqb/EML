//
//  UserStickerTableViewCell.swift
//  Messenger
//
//  Created by Victoria Kashlina on 06/05/2018.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

public class UserStickerTableViewCell: UserMessageTableViewCell {
    
    @IBOutlet public final var strickerImageView: UIImageView?
    
    // почему не делали aDecoder и prepareForReuse
    
    //MAKR: -
    
    var stickerImage: UIImage? {
        get {
            return strickerImageView?.image
        }
        
        set {
            strickerImageView?.image = newValue
        }
    }
    
    
}
