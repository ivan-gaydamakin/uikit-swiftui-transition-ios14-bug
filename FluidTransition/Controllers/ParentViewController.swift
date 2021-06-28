//
//  ViewController.swift
//  FluidTransition
//
//  Created by Mikhail Rubanov on 28/06/2019.
//  Copyright © 2019 akaDuality. All rights reserved.
//

import UIKit
import SwiftUI

class ParentViewController: UIViewController {
    
    private let transition = PanelTransition()
    
    @IBAction func openDidPress(_ sender: Any) {
        if #available(iOS 13.0, *) {
//            let child = UIHostingController(rootView: VStack {
//                Button(action: {
//                    print("Button epta clicked")
//                }, label: {
//                    Text("Tere epta")
//                        .frame(maxWidth: .infinity)
//                })
//            })
            let child = ChildViewController()
            child.transitioningDelegate = transition
            child.modalPresentationStyle = .custom
            
            present(child, animated: true)
        }
    }
}
