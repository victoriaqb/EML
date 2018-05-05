//
//  Application.swift
//  Messenger
//
//  Created by Victoria Kashlina on 17/04/2018.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

public protocol ApplicationDelegate: UIApplicationDelegate {
    var finalResponder: UIResponder? { get }
}

//MARK: -

public final class Application: UIApplication {
    public typealias Delegate = ApplicationDelegate;
    
    var finalResponder: UIResponder? {
        return self.appDelegate?.finalResponder;
    }
    
    public override var next: UIResponder? {
        
        var result = super.next
        
        if result == nil {
            result = finalResponder
        }
        
        return result
    }
}

//MARK: -

public extension UIApplication {
    var appDelegate: Application.Delegate? {
        return self.delegate as? Application.Delegate
    }
}
