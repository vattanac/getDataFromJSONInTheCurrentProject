//
//  ViewController.swift
//  JsonData
//
//  Created by Vattanac on 12/19/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = Bundle.main.url(forResource: "data", withExtension: "json")
        let data = try! Data(contentsOf: url!)
        
        do{
            
            let object = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            
        
            if let dic = object as? [String:Any]{
                let users = dic["users"] as! [[String:Any]]
                
                
                for user in users {
                    
                    let user = user as [String:Any]
                    print(user)
                    
                }
            }
            
        }catch let responceError{
            print(responceError.localizedDescription)
        }
    }
    
    
}

