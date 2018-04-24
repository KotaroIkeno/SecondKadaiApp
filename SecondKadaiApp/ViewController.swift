//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 池野功太郎 on 2018/04/20.
//  Copyright © 2018年 Kotaro Ikeno. All rights reserved.
//

import UIKit

//UITextFieldDelegateのデリゲートプロトコルを追加
class ViewController: UIViewController, UITextFieldDelegate{

    //テキストフィールドのプロパティ宣言
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextField.delegate = self //myTextFieldのDelegateになる
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let textViewController:TextViewController = segue.destination as! TextViewController
            
            textViewController.name = myTextField.text
        
        
    }
    
    //改行キーを押すとキーボードを下げる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    
    @IBAction func unwind(_segue: UIStoryboardSegue){
        
    }

}

