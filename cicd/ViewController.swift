//
//  ViewController.swift
//  cicd
//
//  Created by Quân Nguyễn on 2/7/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("URL is", CicdEnviroment.rootURL)
        print("API_Key is", CicdEnviroment.apiKey)
    }


}

