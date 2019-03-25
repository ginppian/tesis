//
//  RutaFechaViewController.swift
//  Observador
//
//  Created by Gmo Ginppian on 3/24/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

class RutaFechaViewController: UIViewController {
    
    let pickerView: UIDatePicker = {
        let picker = UIDatePicker()
        picker.translatesAutoresizingMaskIntoConstraints = false
        picker.datePickerMode = .date
        return picker
    }()
    
    func constrainPicker() {
        self.view.addSubview(self.pickerView)
        //self.pickerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0.0).isActive = true
        self.pickerView.heightAnchor.constraint(equalToConstant: 300.0).isActive = true
        self.pickerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0.0).isActive = true
        self.pickerView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0.0).isActive = true
        self.pickerView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0.0).isActive = true
    }
    func stylePicker() {
        self.pickerView.backgroundColor = UIColor.red
    }
    func setupPicker() {
        constrainPicker()
        stylePicker()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupPicker()
//        self.pickerView.delegate = self
//        self.pickerView.dataSource = self
        self.view.backgroundColor = UIColor.white
    }
}
//extension RutaFechaViewController: UIPickerViewDataSource {
//    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
//
//    }
//    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//
//    }
//}
//extension RutaFechaViewController: UIPickerViewDelegate {
//
//}
