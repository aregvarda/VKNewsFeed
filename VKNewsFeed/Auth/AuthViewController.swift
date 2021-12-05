//
//  ViewController.swift
//  VKNewsFeed
//
//  Created by Геворг on 03.12.2021.
//

import UIKit

class AuthViewController: UIViewController {
    private var authService: AuthService!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        authService = SceneDelegate.shared().authService
        view.backgroundColor = .systemFill
    }

    @IBAction func signinTouch(_ sender: Any) {
        authService.wakeUpSession()
    }
}

