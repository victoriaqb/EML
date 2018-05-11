//
//  SplitViewController.swift
//  Messenger
//
//  Created by Victoria Kashlina on 10/05/2018.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

class SplitViewController : UISplitViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.performSegue(withIdentifier: "authentication", sender: nil)
        }
    }
}
