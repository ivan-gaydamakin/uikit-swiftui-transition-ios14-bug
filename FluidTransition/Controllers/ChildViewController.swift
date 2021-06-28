//
//  ChildViewController.swift
//  FluidTransition
//
//  Created by Mikhail Rubanov on 07/07/2019.
//  Copyright © 2019 akaDuality. All rights reserved.
//

import UIKit
import SwiftUI

class ChildViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(hue: 0.2, saturation: 0.8, brightness: 0.9, alpha: 1)
        view.layer.cornerRadius = 24
        
        addDismissButton()
    }
    
    private func addDismissButton() {
        let button = UIButton(type: .system)
        button.setTitle("Dismiss", for: .normal)
        button.addTarget(self, action: #selector(dismissSelf), for: .touchUpInside)
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 80),
            ])
        
        let child = UIHostingController(rootView: VStack {
            Button(action: {
                print("Button epta clicked")
            }, label: {
                Text("Tere epta")
                    .frame(maxWidth: .infinity)
            })
        })
        
        let v = child.view!
        view.addSubview(v)
        
        v.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            v.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            v.topAnchor.constraint(equalTo: view.topAnchor),
            v.widthAnchor.constraint(equalToConstant: 200),
            v.heightAnchor.constraint(equalToConstant: 80),
            ])
        
        
    }
    
    @objc func dismissSelf() {
        self.dismiss(animated: true)
    }
}
