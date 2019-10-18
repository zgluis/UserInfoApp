//
//  RequestHandler.swift
//  UserInfoApp
//
//  Created by Luis Zapata on 17-10-19.
//  Copyright © 2019 Luis Zapata. All rights reserved.
//

import Foundation
import Alamofire

let requestHandler = RequestHandler()

class RequestHandler {
    
    var sessionManager: Alamofire.SessionManager;
    
    init() {
        sessionManager = Alamofire.SessionManager.init()
    }
    
    func get(resource: String) -> DataRequest {
        return sessionManager.request(Constants.baseDomain + resource)
    }
}
