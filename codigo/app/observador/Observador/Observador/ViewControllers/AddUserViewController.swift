//
//  AddUserViewController.swift
//  Observador
//
//  Created by Gmo Ginppian on 3/27/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

class AddUserViewController: UIViewController {
    
    let lblName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Name:"
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 17.0)
        return lbl
    }()
    
    func constrainLblName() {
        self.view.addSubview(self.lblName)
        self.lblName.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8.0).isActive = true
        self.lblName.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.lblName.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.lblName.heightAnchor.constraint(equalToConstant: 13.0).isActive = true
    }
    
    let txtName: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "Juan"
        txt.borderStyle = .roundedRect
        //txt.keyboardType = .default
        txt.backgroundColor = UIColor.red
        return txt
    }()
    
    func constrainTxtName() {
        self.view.addSubview(self.txtName)
        self.txtName.topAnchor.constraint(equalTo: self.lblName.bottomAnchor, constant: 8.0).isActive = true
        self.txtName.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.txtName.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.txtName.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
    }
    
    let lblEmail: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Email:"
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 17)
        return lbl
    }()
    
    func constrainLblEmail() {
        self.view.addSubview(self.lblEmail)
        self.lblEmail.topAnchor.constraint(equalTo: self.txtName.bottomAnchor, constant: 8.0).isActive = true
        self.lblEmail.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.lblEmail.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.lblEmail.heightAnchor.constraint(equalToConstant: 13.0).isActive = true
    }
    
    let txtEmail: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "juan@gmail.com"
        txt.borderStyle = .roundedRect
        //txt.keyboardType = .default
        txt.backgroundColor = UIColor.red
        return txt
    }()
    
    func constrainTxtEmail() {
        self.view.addSubview(self.txtEmail)
        self.txtEmail.topAnchor.constraint(equalTo: self.lblEmail.bottomAnchor, constant: 8.0).isActive = true
        self.txtEmail.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.txtEmail.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.txtEmail.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
    }
    
    let lblPassFirst: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Pass First:"
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 17)
        return lbl
    }()
    
    func constrainLblPassFirst() {
        self.view.addSubview(self.lblPassFirst)
        self.lblPassFirst.topAnchor.constraint(equalTo: self.txtEmail.bottomAnchor, constant: 8.0).isActive = true
        self.lblPassFirst.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.lblPassFirst.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.lblPassFirst.heightAnchor.constraint(equalToConstant: 13.0).isActive = true
    }
    
    let txtPassFirst: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "****"
        txt.borderStyle = .roundedRect
        //txt.keyboardType = .default
        txt.backgroundColor = UIColor.red
        return txt
    }()
    
    func constrainTxtPassFirst() {
        self.view.addSubview(self.txtPassFirst)
        self.txtPassFirst.topAnchor.constraint(equalTo: self.lblPassFirst.bottomAnchor, constant: 8.0).isActive = true
        self.txtPassFirst.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.txtPassFirst.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.txtPassFirst.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
    }
    
    let lblPassSecond: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Pass Second:"
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 17)
        return lbl
    }()
    
    func constrainLblPassSecond() {
        self.view.addSubview(self.lblPassSecond)
        self.lblPassSecond.topAnchor.constraint(equalTo: self.txtPassFirst.bottomAnchor, constant: 8.0).isActive = true
        self.lblPassSecond.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.lblPassSecond.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.lblPassSecond.heightAnchor.constraint(equalToConstant: 13.0).isActive = true
    }
    
    let txtPassSecond: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "****"
        txt.borderStyle = .roundedRect
        //txt.keyboardType = .default
        txt.backgroundColor = UIColor.red
        return txt
    }()
    
    func constrainTxtPassSecond() {
        self.view.addSubview(self.txtPassSecond)
        self.txtPassSecond.topAnchor.constraint(equalTo: self.lblPassSecond.bottomAnchor, constant: 8.0).isActive = true
        self.txtPassSecond.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 8.0).isActive = true
        self.txtPassSecond.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -8.0).isActive = true
        self.txtPassSecond.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
    }
    
    func setupUI() {
        self.view.backgroundColor = UIColor.white
        constrainLblName()
        constrainTxtName()
        constrainLblEmail()
        constrainTxtEmail()
        constrainLblPassFirst()
        constrainTxtPassFirst()
        constrainLblPassSecond()
        constrainTxtPassSecond()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
}
