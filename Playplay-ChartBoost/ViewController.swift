//
//  ViewController.swift
//  Playplay-ChartBoost
//
//  Created by Chandra Welim on 09/02/20.
//  Copyright © 2020 Chandra Welim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button: UIButton = UIButton(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        button.backgroundColor = .systemBlue
        button.setTitle("Show Chart Boost", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(openChartBoost), for: .touchUpInside)
    }
    
    @objc func openChartBoost() {
        Chartboost.showRewardedVideo(CBLocationMainMenu)
    }
}

