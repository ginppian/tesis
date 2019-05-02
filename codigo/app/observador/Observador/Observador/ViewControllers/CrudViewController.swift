//
//  CrudViewController.swift
//  Observador
//
//  Created by Gmo Ginppian on 3/25/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

class CrudViewController: UIViewController {
    
    var arrDevices = ["device 1", "device 2", "device 3", "device 4", "device 5"]
    var arrDeviceSelected = [true, false, false, false, false]
    
    let tableView: UITableView = {
        let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()
    
    let tableViewCell: UITableViewCell = {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "CrudViewControllerCell")
        return cell
    }()
    
    func constrainTableView() {
        self.view.addSubview(self.tableView)
        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0.0).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0.0).isActive = true
        self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0.0).isActive = true
        self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0.0).isActive = true
    }
    func setupTableView() {
        constrainTableView()
    }
    func configTableView() {
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: self.tableViewCell.reuseIdentifier!)
    }
    func addBtnRight() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add +", style: .plain, target: self, action: #selector(CrudViewController.addDevice))
    }
    func setupUI() {
        setupTableView()
        configTableView()
        addBtnRight()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    @objc func addDevice() {
        print("addDevice")
        let vc = AddUserViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
extension CrudViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDevices.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCell.reuseIdentifier!, for: indexPath)
        cell.textLabel?.text = arrDevices[indexPath.row]
        
        if arrDeviceSelected[indexPath.row] {
            cell.accessoryType = UITableViewCell.AccessoryType.checkmark
        } else {
            cell.accessoryType = UITableViewCell.AccessoryType.none
        }
        cell.selectionStyle = .none
        
        return cell
    }
}
extension CrudViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        arrDeviceSelected.removeAll()
        arrDeviceSelected = [false, false, false, false, false]
        arrDeviceSelected[indexPath.row] = true
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let editAction = UITableViewRowAction(style: .default, title: "Edit", handler: { (action, indexPath) in
//            let alert = UIAlertController(title: "", message: "Edit list item", preferredStyle: .alert)
//            alert.addTextField(configurationHandler: { (textField) in
//                textField.text = self.list[indexPath.row]
//            })
//            alert.addAction(UIAlertAction(title: "Update", style: .default, handler: { (updateAction) in
//                self.list[indexPath.row] = alert.textFields!.first!.text!
//                self.tableView.reloadRows(at: [indexPath], with: .fade)
//            }))
//            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//            self.present(alert, animated: false)
        })
        editAction.backgroundColor = UIColor.lightGray
        
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: { (action, indexPath) in
            let alert = UIAlertController(title: "Eliminar", message: "¿Desea eliminar?", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { (cancelAction) in
                print("cancelAction")
            })
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { (okAction) in
                print("okAction")
            })
            alert.addAction(cancelAction)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        })
        
        return [deleteAction, editAction]
    }
}
