//
//  ViewController.swift
//  product-hunt
//
//  Created by Yves Songolo on 7/23/18.
//  Copyright © 2018 Yves Songolo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getProduct()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    func getProduct(){
        NetworkService.downloadProduct { (product) in
            
        }
    }


}

