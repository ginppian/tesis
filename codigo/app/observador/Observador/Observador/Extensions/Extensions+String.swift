//
//  Extensions+String.swift
//  AppSomos
//
//  Created by Gmo Ginppian on 2/19/19.
//  Copyright © 2019 gonet. All rights reserved.
//

import Foundation
import UIKit

/*
 Objetivo: Ahorro de memoria.
 Descripción: Se usa una sola instancia, en vez de inicializar String's con "" o String() multiples veces.
 */
extension String {
    public static let Empty = String()
}
/*
 Objetivo: Quitar espacios y concatener la cadena.
 Descripción: Ejemplo. "22 27 80 20 98" -> "2227802098"
 */
extension String {
    func removeCharacters(from forbiddenChars: CharacterSet) -> String {
        let passed = self.unicodeScalars.filter { !forbiddenChars.contains($0) }
        return String(String.UnicodeScalarView(passed))
    }
    func removeCharacters(from: String) -> String {
        return removeCharacters(from: CharacterSet(charactersIn: from))
    }
}
/*
 Objetivo: Remplazar espacios por '+'
 Descripción: Ejemplo. "https//servicio medico&..." -> "https//servicio+medico&..."
 */
extension String {
    func replace(target: String, withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString, options: NSString.CompareOptions.literal, range: nil)
    }
}
/*
 Objetivo: Fecha apartir de una cadena
 Descripción: Ejemplo. ""2019-02-21 16:26:41 +0000"" -> Date
 */
//extension String {
//    func formato(_ fecha: String) -> Date {
//        let strISO = fecha.removeCharacters(from: " ")
//        let dateFormatter = DateFormatter()
//        //dateFormatter.dateFormat = "yyyy-MM-ddHH:mm:ssZ"
//        dateFormatter.dateFormat = "yyyy-MM-ddHH:mm:ss"
//        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
//        return dateFormatter.date(from: strISO) ?? Date()
//    }
//}
//extension String {
//    func formato(_ fechaTotal: String) -> Date {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
//        return dateFormatter.date(from: fechaTotal) ?? Date()
//    }
//}
extension String {
    func formato(_ fechaDia: String) -> Date {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.date(from: fechaDia) ?? Date()
    }
}

