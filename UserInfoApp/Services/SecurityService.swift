//
//  EncryptionService.swift
//  UserInfoApp
//
//  Created by Luis Zapata on 17-10-19.
//  Copyright © 2019 Luis Zapata. All rights reserved.
//

import Foundation
import CommonCrypto

class SecurityService {
    
    static func encrypt(text: String, salt: String) -> String? {
        let key = Array(salt.utf8)
        let bytes = Array(text.utf8)
        
        
//        let cryptor = Cryptor(operation: .encrypt, algorithm: .des, options: [.ECBMode, .PKCS7Padding], key: key, iv:[UInt8]())
//        if let encrypted = cryptor.update(byteArray: bytes)?.final() {
//            return Data(encrypted).base64EncodedString()
//        }
        return nil
    }
    
}
