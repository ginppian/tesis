//
//  ServiceModelView.swift
//  Observador
//
//  Created by Gmo Ginppian on 3/21/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

/*
 public class ModelView: NSObject {
 public class func BBVAListaCredencialessMedicalService(_ completion: @escaping (_ completion: [BBVAMSCredencialModel]?) -> Void) {
 
 var email = "guadalupeelizeth.fajardo.mart@bbva.com"
 //var email = "m.garciag@bbva.com"
 
 //        if let data = UserDefaults.standard.object(forKey: "Key_Login_BBVASomosLoginModel") as? Data {
 //            do {
 //                let bbvaSomosLoginRow = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? BBVASomosLoginModel
 //                if let bbvaSomosLogin = bbvaSomosLoginRow {
 //                    email = bbvaSomosLogin.Email
 //                    print("email: \(email)")
 //                }
 //            } catch {
 //                print("bailo con berth")
 //            }
 //        }
 
 let r = DGRequest(timeOutInterval: 3.0)
 let urlStr = DGEnvironment.endpoint + "/t/cards"
 print("urlStr: \(urlStr)")
 
 r.httpGet(url: urlStr, extraHeaders: ["requestor": email]) { (responseError, responseJson) in
 */

/*
 let username = "username"
 let password = "password"
 let loginString = "\(username):\(password)"
 
 guard let loginData = loginString.data(using: String.Encoding.utf8) else {
 return
 }
 let base64LoginString = loginData.base64EncodedString()
 
 request.httpMethod = "GET"
 request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
 */
import Foundation

public class ServiceModelView: NSObject {
    public class func GetDispositivos(_ completion: @escaping (_ completion: [NSDictionary]?) -> Void) {
        
        let usuario = "admin"
        let contrasena = "admin"
        let loginStr = "\(usuario):\(contrasena)"
        
        guard let loginData = loginStr.data(using: String.Encoding.utf8) else {
            return
        }
        let base64LoginString = loginData.base64EncodedString()
        let authorization = "Basic \(base64LoginString)"
        print("authorization: \(authorization)")
        
        let r = DGRequest()
        let urlStr = DGEnvironment.endpoint + "/devices"
        
        
        
        r.httpGet(url: urlStr, extraHeaders: ["Authorization": authorization]) { (responseError, responseJson) in
            
            if let json = responseJson {
                print(json)
            } else {
                print(responseError)
            }
        }
    }
}
