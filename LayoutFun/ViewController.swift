//
//  ViewController.swift
//  LayoutFun
//
//  Created by James Campagno on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let redView = UIView(frame: CGRect.zero)
    let orangeView = UIView(frame: CGRect.zero)
    let yellowView = UIView(frame: CGRect.zero)
    let greenView = UIView(frame: CGRect.zero)
    let blueView = UIView(frame: CGRect.zero)
    let birthdayLabel = UILabel()
    let iLabel = UILabel()
    let wishLabel = UILabel()
    let youLabel = UILabel()
    let cakeLabel = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        turnOffAutoResizingOnAllViews()
        setupTheConstraints()
        setupColors()
    }
    
}

// MARK: Constraints
extension ViewController {
    
    func setupTheConstraints() {

        redView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        redView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        redView.heightAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
        
        birthdayLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        birthdayLabel.centerYAnchor.constraint(equalTo: self.redView.centerYAnchor).isActive = true
        
        orangeView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        orangeView.bottomAnchor.constraint(equalTo: self.redView.topAnchor).isActive = true
        orangeView.widthAnchor.constraint(equalTo: self.redView.widthAnchor, multiplier: 0.75).isActive = true
        orangeView.heightAnchor.constraint(equalTo: orangeView.widthAnchor).isActive = true
        
        cakeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        cakeLabel.centerYAnchor.constraint(equalTo: self.orangeView.centerYAnchor).isActive = true
        
        yellowView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        yellowView.bottomAnchor.constraint(equalTo: self.orangeView.topAnchor).isActive = true
        yellowView.widthAnchor.constraint(equalTo: self.orangeView.widthAnchor, multiplier: 0.75).isActive = true
        yellowView.heightAnchor.constraint(equalTo: yellowView.widthAnchor).isActive = true
        
        youLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        youLabel.centerYAnchor.constraint(equalTo: self.yellowView.centerYAnchor).isActive = true
    

        greenView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        greenView.bottomAnchor.constraint(equalTo: self.yellowView.topAnchor).isActive = true
        greenView.widthAnchor.constraint(equalTo: self.yellowView.widthAnchor, multiplier: 0.75).isActive = true
        greenView.heightAnchor.constraint(equalTo: greenView.widthAnchor).isActive = true
        
        wishLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        wishLabel.centerYAnchor.constraint(equalTo: self.greenView.centerYAnchor).isActive = true
        

        blueView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo: self.greenView.topAnchor).isActive = true
        blueView.widthAnchor.constraint(equalTo: self.greenView.widthAnchor, multiplier: 0.75).isActive = true
        blueView.heightAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true
        
        iLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        iLabel.centerYAnchor.constraint(equalTo: self.blueView.centerYAnchor).isActive = true
    }
    
    func turnOffAutoResizingOnAllViews() {
        [redView, orangeView, yellowView, greenView, blueView, birthdayLabel, iLabel, wishLabel, youLabel, cakeLabel].forEach { colorView in
            colorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(colorView)
        }
    }
    
}


// MARK: Setting up Views
extension ViewController {
    
    func setupColors() {
        redView.backgroundColor = UIColor.red
        orangeView.backgroundColor = UIColor.orange
        yellowView.backgroundColor = UIColor.yellow
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
        birthdayLabel.textColor = UIColor.green
        birthdayLabel.text = "Happy Birthday!"
        iLabel.textColor = UIColor.white
        iLabel.text = "我"
        wishLabel.textColor = UIColor.brown
        wishLabel.text = "wünsche"
        youLabel.textColor = UIColor.blue
        youLabel.text = "tú"
        cakeLabel.text = "🎁🎉🎈🎂💐🍾"
        
        
    }
}
