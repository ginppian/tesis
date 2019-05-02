//
//  OpcionesViewController.swift
//  Observador
//
//  Created by Gmo Ginppian on 3/21/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

class OpcionesViewController: UIViewController {
    
    //var arrOpc = ["Ruta por fecha", "Ruta actual de alguien", "Cambiar persona", "Nueva cuenta"]
    var arrPath = ["Ubicación tiempo real", "Ubicación por fecha"]
    var arrDate = ["Fecha de ubicación"]
    var arrCrud = ["CRUD(Lista personas, editar)"]
    var arrPathSelected = [true, false]
    // ruta actual va en ruta por fecha, como ubicacion en tiempo real
    
    enum path: Int {
        case today = 0
        case date = 1
    }
    enum sec: Int {
        case path = 0
        case date = 1
        case crud = 2
    }
    
    let tableView: UITableView = {
        let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()
    
    let tableViewCell: UITableViewCell = {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "OpcionesViewControllerCell")
        //cell.restorationIdentifier = "OpcionesViewControllerCell"
        return cell
    }()
    
    //    enum opc: Int {
    //        case rutaFecha = 0
    //        case rutaActual = 1
    //        case nuevaCuenta = 2
    //    }
    
    func constrainTableView() {
        self.view.addSubview(self.tableView)
        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0.0).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0.0).isActive = true
        self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0.0).isActive = true
        self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0.0).isActive = true
    }
    func styleTableView() {
        //self.tableView.backgroundColor = UIColor.red
    }
    func addBtnRight() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Aplicar", style: .done, target: self, action: #selector(OpcionesViewController.dismissOptions))
    }
    @objc func dismissOptions() {
        self.dismiss(animated: true, completion: nil)
    }
    func configTableView() {
        //self.tableView.allowsSelection = true
        //self.tableView.allowsMultipleSelection = false
    }
    func setupTableView() {
        constrainTableView()
        styleTableView()
        addBtnRight()
        configTableView()
    }
    func setupUI() {
        setupTableView()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: self.tableViewCell.reuseIdentifier!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension OpcionesViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case sec.path.rawValue:
            return 2
        case sec.date.rawValue:
            return 1
        case sec.crud.rawValue:
            return 1
        default:
            return 2
        }
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case sec.path.rawValue:
            switch indexPath.row {
            case path.today.rawValue:
                let cell = tableView.dequeueReusableCell(withIdentifier: "OpcionesViewControllerCell", for: indexPath)
                cell.textLabel?.text = arrPath[indexPath.row]
                if arrPathSelected[indexPath.row] {
                    cell.accessoryType = UITableViewCell.AccessoryType.checkmark
                } else {
                    cell.accessoryType = UITableViewCell.AccessoryType.none
                }
                //cell.accessoryType = UITableViewCell.AccessoryType.checkmark
                cell.selectionStyle = .none
                return cell
            case path.date.rawValue:
                let cell = tableView.dequeueReusableCell(withIdentifier: "OpcionesViewControllerCell", for: indexPath)
                cell.textLabel?.text = arrPath[indexPath.row]
                //cell.accessoryType = UITableViewCell.AccessoryType.detailButton
                if arrPathSelected[indexPath.row] {
                    cell.accessoryType = UITableViewCell.AccessoryType.checkmark
                } else {
                    cell.accessoryType = UITableViewCell.AccessoryType.none
                }
                cell.selectionStyle = .none
                return cell
            default:
                return UITableViewCell()
            }
        case sec.date.rawValue:
            let cell = tableView.dequeueReusableCell(withIdentifier: "OpcionesViewControllerCell", for: indexPath)
            cell.textLabel?.text = arrDate[indexPath.row]
            cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
            return cell
        case sec.crud.rawValue:
            let cell = tableView.dequeueReusableCell(withIdentifier: "OpcionesViewControllerCell", for: indexPath)
            cell.textLabel?.text = arrCrud[indexPath.row]
            cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case sec.path.rawValue:
            return "Path"
        case sec.date.rawValue:
            return "Date"
        case sec.crud.rawValue:
            return "Crud"
        default:
            return nil
        }
    }
}
extension OpcionesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        switch indexPath.section {
        case sec.path.rawValue:
            print("Path")
            switch indexPath.row {
            case path.today.rawValue:
                arrPathSelected.removeAll()
                arrPathSelected = [true, false]
                tableView.reloadData()
            case path.date.rawValue:
                arrPathSelected.removeAll()
                arrPathSelected = [false, true]
                tableView.reloadData()
            default:
                print("bad index")
            }
        case sec.date.rawValue:
            print("Date")
            tableView.deselectRow(at: indexPath, animated: true)
            let vc = RutaFechaViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case sec.crud.rawValue:
            print("Crud")
            tableView.deselectRow(at: indexPath, animated: true)
            let vc = CrudViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            print("didSelect bad index")
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}
