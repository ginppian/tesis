//
//  ViewController.swift
//  Observador
//
//  Created by Gmo Ginppian on 3/21/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ServiceModelView.GetDispositivos { (arrDispositivosRow) in
            print("arrDispositivosRow: \(arrDispositivosRow)")
        }
    }


}

