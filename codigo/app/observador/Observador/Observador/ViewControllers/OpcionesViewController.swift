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
    var arrOpc = ["Ruta por fecha", "Cambiar persona", "Nueva cuenta"]
    // ruta actual va en ruta por fecha, como ubicacion en tiempo real
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
    
    enum opc: Int {
        case rutaFecha = 0
        case rutaActual = 1
        case nuevaCuenta = 2
    }
    
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
    func setupTableView() {
        constrainTableView()
        styleTableView()
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
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOpc.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //if
        let cell = tableView.dequeueReusableCell(withIdentifier: self.tableViewCell.reuseIdentifier!, for: indexPath)
                //as? UITableViewCell {
            cell.textLabel?.text = arrOpc[indexPath.row]
            cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator

            return cell
        //}
        //return UITableViewCell()
    }
}
extension OpcionesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case opc.rutaFecha.rawValue:
            print("rutaFecha")
            let vc = RutaFechaViewController()
            //var navigationController = UINavigationController(rootViewController: vc)
            //self.present(navigationController, animated: true, completion: nil)
            self.navigationController?.pushViewController(vc, animated: true)
        case opc.rutaActual.rawValue:
            print("rutaActual")
        case opc.nuevaCuenta.rawValue:
            print("nuevaCuenta")
        default:
            print("nothing")
        }
    }
}
