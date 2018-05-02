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

public final class Application: UIApplication {
    public typealias Delegate = ApplicationDelegate;
    
    var finalResponder: UIResponder? {
        return self.appDelegate?.finalResponder;
    }
}

public extension UIApplication {
    var appDelegate: Application.Delegate? {
        return self.delegate as? Application.Delegate
    }   
}
