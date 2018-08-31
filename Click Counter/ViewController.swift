//
//  ViewController.swift
//  Click Counter
//
//  Created by carloshenrique.carmo on 31/08/18.
//  Copyright © 2018 carloshenrique.carmo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        // label increment
        let label = UILabel()
        label.frame = CGRect(x:	100, y:150, width:60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //Button Increment
        let button = UIButton()
        button.frame = CGRect(x: 90, y:170, width:60, height: 60)
        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        
        //Button Decrement
        let buttonDecrement = UIButton()
        buttonDecrement.frame = CGRect(x: 140, y:170, width:60, height: 60)
        buttonDecrement.setTitle("-", for: .normal)
        buttonDecrement.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(buttonDecrement)
        
        buttonDecrement.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
   
        // Button Color
        let buttonColor = UIButton()
        buttonColor.frame = CGRect(x: 190, y:170, width:60, height: 60)
        buttonColor.setTitle("Alter Color", for: .normal)
        buttonColor.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(buttonColor)
        
        buttonColor.addTarget(self, action: #selector(ViewController.changerColor), for: UIControlEvents.touchUpInside)
        
    }

    @objc func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    @objc func changerColor(){
        self.view.backgroundColor = UIColor.blue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

