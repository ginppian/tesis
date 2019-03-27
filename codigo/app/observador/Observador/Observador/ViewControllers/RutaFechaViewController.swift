//
//  RutaFechaViewController.swift
//  Observador
//
//  Created by Gmo Ginppian on 3/24/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

extension RutaFechaViewController: UITextFieldDelegate {
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
}
class RutaFechaViewController: UIViewController {
    
    var pickerView: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = .date
        return picker
    }()
    
    let lblDe: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "De:"
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 17)
        return lbl
    }()
    
    func constrainLblDe() {
        self.view.addSubview(self.lblDe)
        self.lblDe.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100.0).isActive = true
        self.lblDe.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.lblDe.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.lblDe.heightAnchor.constraint(equalToConstant: 13.0).isActive = true
    }
    
    let txtDe: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "MM/DD/AAAA"
        txt.borderStyle = .roundedRect
        //txt.keyboardType = .default
        txt.backgroundColor = UIColor.red
        return txt
    }()
    
    func constrainTxtDe() {
        self.view.addSubview(self.txtDe)
        self.txtDe.topAnchor.constraint(equalTo: self.lblDe.bottomAnchor, constant: 13.0).isActive = true
        self.txtDe.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.txtDe.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.txtDe.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
    }
    
    let lblA: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "A:"
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 17)
        return lbl
    }()
    
    func constrainLblA() {
        self.view.addSubview(self.lblA)
        self.lblA.topAnchor.constraint(equalTo: self.txtDe.bottomAnchor, constant: 13.0).isActive = true
        self.lblA.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.lblA.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.lblA.heightAnchor.constraint(equalToConstant: 13.0).isActive = true
    }
    
    let txtA: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "MM/DD/AAAA"
        txt.borderStyle = .roundedRect
        //txt.keyboardType = .default
        txt.backgroundColor = UIColor.red
        return txt
    }()
    
    func constrainTxtA() {
        self.view.addSubview(self.txtA)
        self.txtA.topAnchor.constraint(equalTo: self.lblA.bottomAnchor, constant: 13.0).isActive = true
        self.txtA.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.txtA.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.txtA.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
    }
    
    func setupUI() {
        self.view.backgroundColor = UIColor.white
        constrainLblDe()
        constrainTxtDe()
        constrainLblA()
        constrainTxtA()
        
        setupPicker()
        showPickerInTxtDe()
    }
    
//    func constrainPicker() {
//        self.view.addSubview(self.pickerView)
//        //self.pickerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0.0).isActive = true
//        self.pickerView.heightAnchor.constraint(equalToConstant: 300.0).isActive = true
//        self.pickerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0.0).isActive = true
//        self.pickerView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0.0).isActive = true
//        self.pickerView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0.0).isActive = true
//    }
    func setupPicker() {

//        self.txtDe.inputView = self.pickerView
//        self.txtA.inputView = self.pickerView
//        self.pickerView.addTarget(self, action: #selector(datePickerChanged(picker:)), for: .valueChanged)
    }
    func showPickerInTxtDe() {
        self.txtDe.becomeFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
        self.txtDe.resignFirstResponder()
        self.txtA.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupUI()
        self.txtDe.delegate = self
        self.txtA.delegate = self
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = self.view.tintColor
        toolBar.sizeToFit()
        
        //let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: "donePicker")
        let leftRow = UIBarButtonItem(title: "<", style: UIBarButtonItem.Style.plain, target: self, action: #selector(RutaFechaViewController.leftRowPicker))
        let rightRow = UIBarButtonItem(title: ">", style: UIBarButtonItem.Style.plain, target: self, action: #selector(RutaFechaViewController.rightRowPicker))
        let okButtton = UIBarButtonItem(title: "OK", style: UIBarButtonItem.Style.plain, target: self, action: #selector(RutaFechaViewController.okPicker))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(RutaFechaViewController.cancelPicker))
        
       //toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.setItems([cancelButton, spaceButton, leftRow, rightRow, okButtton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        self.txtDe.inputView = self.pickerView
        self.txtA.inputView = self.pickerView
        self.pickerView.addTarget(self, action: #selector(datePickerChanged(picker:)), for: .valueChanged)

        self.txtDe.inputAccessoryView = toolBar
        self.txtA.inputAccessoryView = toolBar
    }
    @objc func okPicker() {
        let de = self.txtDe.text ?? String.Empty
        let a = self.txtA.text ?? String.Empty
        
        if !de.isEmpty && !a.isEmpty {
            self.navigationController?.popViewController(animated: true)
        } else {
            if self.txtDe.isEditing {
                self.txtDe.resignFirstResponder()
            }
            if self.txtA.isEditing {
                self.txtA.resignFirstResponder()
            }
        }
    }
    @objc func leftRowPicker() {
        if self.txtDe.isEditing {
        }
        if self.txtA.isEditing {
            self.txtDe.becomeFirstResponder()
        }
    }
    @objc func rightRowPicker() {
        if self.txtDe.isEditing {
            self.txtA.becomeFirstResponder()
        }
        if self.txtA.isEditing {
        }
    }
//    @objc func donePicker() {
//        print("donePicker...")
//        self.txtA.becomeFirstResponder()
//    }
    @objc func cancelPicker() {
        print("cancelPicker...")
        if self.txtDe.isEditing {
            self.txtDe.resignFirstResponder()
        }
        if self.txtA.isEditing {
            self.txtA.resignFirstResponder()
        }
    }
    @objc func datePickerChanged(picker: UIDatePicker) {
        print(picker.date)
        if self.txtDe.isEditing {
            print("editing...")
            self.txtDe.text = picker.date.description
        }
        if self.txtA.isEditing {
            self.txtA.text = picker.date.description
        }
    }
}
