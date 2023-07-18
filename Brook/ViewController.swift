//
//  ViewController.swift
//  Brook
//
//  Created by Rufus on 2023/7/18.
//

import Cocoa
import Alamofire

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        test_net()
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func test_net() {
        AF.request(URL(string: "https://www.bing.com")!).responseData(completionHandler: { result_data in
            
        })
    }

}

