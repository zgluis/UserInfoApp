//
//  ListUserContactsRouter.swift
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

@objc protocol ListUserContactsRoutingLogic
{
  //func routeToShowContactDetail(segue: UIStoryboardSegue?)
}

protocol ListUserContactsDataPassing
{
  var dataStore: ListUserContactsDataStore? { get }
}

class ListUserContactsRouter: NSObject, ListUserContactsRoutingLogic, ListUserContactsDataPassing
{
  weak var viewController: ListUserContactsViewController?
  var dataStore: ListUserContactsDataStore?
  
  // MARK: Routing
  
  //func routeToShowContactDetail(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: ListUserContactsViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: ListUserContactsDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
