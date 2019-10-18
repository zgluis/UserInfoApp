//
//  LoginRouter.swift
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

@objc protocol LoginRoutingLogic
{
  func routeToListUserContacts(segue: UIStoryboardSegue?)
}

protocol LoginDataPassing
{
  var dataStore: LoginDataStore? { get }
}

class LoginRouter: NSObject, LoginRoutingLogic, LoginDataPassing
{
  weak var viewController: LoginViewController?
  var dataStore: LoginDataStore?
  
  // MARK: Routing
  
  func routeToListUserContacts(segue: UIStoryboardSegue?)
  {

      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      let destinationVC = storyboard.instantiateViewController(withIdentifier: "ListUserContactsViewController") as! ListUserContactsViewController
      var destinationDS = destinationVC.router!.dataStore!
      passDataToSomewhere(source: dataStore!, destination: &destinationDS)
      navigateToSomewhere(source: viewController!, destination: destinationVC)
  }

  // MARK: Navigation
  
  func navigateToSomewhere(source: LoginViewController, destination: ListUserContactsViewController)
  {
    source.show(destination, sender: nil)
  }
  
  // MARK: Passing data
  
  func passDataToSomewhere(source: LoginDataStore, destination: inout ListUserContactsDataStore)
  {
    destination.loginResult = source.loginResult
  }
}
