//
//  ViewController.swift
//  Observador
//
//  Created by Gmo Ginppian on 3/21/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ServiceModelView.GetDispositivos { (arrDispositivosRow) in
            print("arrDispositivosRow: \(arrDispositivosRow)")
        }
        setupUI()
    }

    func setupUI() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage(named: "credencial"), style: .done, target: self, action: #selector(MainViewController.showOptions))
    }
    
    @objc func showOptions() {
        let vc = OpcionesViewController()
        let navC = UINavigationController(rootViewController: vc)
        self.present(navC, animated: true, completion: nil)
        
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        let vc = sb.instantiateViewController(withIdentifier: "lkjh")
//        self.present(vc, animated: true, completion: nil)
    }
}

