//
//  UserContactDeatilViewController.swift
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

protocol UserContactDeatilDisplayLogic: class
{
    func displaySomething(viewModel: UserContactDeatil.Something.ViewModel)
}

class UserContactDeatilViewController: UIViewController, UserContactDeatilDisplayLogic
{
    var interactor: UserContactDeatilBusinessLogic?
    var router: (NSObjectProtocol & UserContactDeatilRoutingLogic & UserContactDeatilDataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    
    private func setup()
    {
        let viewController = self
        let interactor = UserContactDeatilInteractor()
        let presenter = UserContactDeatilPresenter()
        let router = UserContactDeatilRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        doSomething()
    }
    
    // MARK: Do something
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    func doSomething()
    {
        let request = UserContactDeatil.Something.Request()
        interactor?.doSomething(request: request)
    }
    
    func displaySomething(viewModel: UserContactDeatil.Something.ViewModel)
    {
        //nameTextField.text = viewModel.name
    }
}
