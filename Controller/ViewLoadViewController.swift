//
//  ViewController.swift
//  GoodByeStoryboard
//
//  Created by Tong Yi on 4/29/20.
//  Copyright © 2020 Tong Yi. All rights reserved.
//

import UIKit

class ViewLoadViewController: UIViewController {

    private let myButton = UIButton(frame: CGRect(x: 30, y: 500, width: 300, height: 40))
    private let myLabel = UILabel(frame: CGRect(x: 30, y: 200, width: 100, height: 40))
    private let myText = UITextField(frame: CGRect(x: 160, y: 200, width: 150, height: 40))
    let myview = UIView()
    
    override func loadView() {
        myview.addSubview(myText)
        myview.addSubview(myLabel)
        myview.addSubview(myButton)
        self.view = myview
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myview.backgroundColor = UIColor.brown.withAlphaComponent(1)
        setupMyText()
        setupMyLabel()
        setupMyButton()
        // Do any additional setup after loading the view.
    }
    
    func setupMyButton() {
        myButton.backgroundColor = UIColor.blue.withAlphaComponent(0.4)
        myButton.setTitle("Hello", for: .normal)
        myButton.addTarget(self, action: #selector(helloButtonTapped(_:)), for: .touchUpInside)
        
    }
    
    func setupMyLabel() {
        myLabel.backgroundColor = UIColor.systemPink.withAlphaComponent(0.9)
        myLabel.text = "Who is it?"
        
    }
    
    func setupMyText() {
        myText.backgroundColor = .white
        
    }
    
    @objc func helloButtonTapped(_ sender: UIButton)
    {
        myText.text = "Tong"
    }


}

