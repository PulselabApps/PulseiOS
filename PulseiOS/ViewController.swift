//
//  ViewController.swift
//  PulseiOS
//
//  Created by Max Marze on 2/10/16.
//  Copyright © 2016 PulseLab. All rights reserved.
//

import UIKit
import ApiModel


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Api<Institution>.get("/institutions") { response in
            print("response.isSuccessful: \(response.isSuccessful)")
            print("Response as an array: \(response.array)")
            //print("Response as a dictionary: \(response.dictionary)")
            print("Response errors?: \(response.errors)")
        }
        
        /*Api<Institution>.findArray { institutions in
            for institution in institutions {
                print(institution.name)
            }
        }*/
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

