//
//  TextViewController.swift
//  SecondKadaiApp
//
//  Created by 池野功太郎 on 2018/04/20.
//  Copyright © 2018年 Kotaro Ikeno. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    var name:String?
    

    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Label.text = "こんにちは、\(name ?? "名前")さん"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
