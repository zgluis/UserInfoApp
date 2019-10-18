//
//  ListUserContactsInteractor.swift
//  UserInfoApp
//
//  Created by Luis Zapata on 17-10-19.
//  Copyright (c) 2019 Luis Zapata. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ListUserContactsBusinessLogic
{
    func getContacts(request: ListUserContacts.Something.Request)
}

protocol ListUserContactsDataStore
{
    var loginResult: Result? { get set }
}

class ListUserContactsInteractor: ListUserContactsBusinessLogic, ListUserContactsDataStore
{
    var loginResult: Result?
    
    var presenter: ListUserContactsPresentationLogic?
    var worker: ListUserContactsWorker?
    
    // MARK: Do something
    
    func getContacts(request: ListUserContacts.Something.Request) {
        if loginResult != nil {
            let response = ListUserContacts.Something.Response(result: loginResult!)
            presenter?.presentContacts(response: response)
        }
    }
}
