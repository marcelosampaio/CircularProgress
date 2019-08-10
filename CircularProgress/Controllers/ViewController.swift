//
//  ViewController.swift
//  CircularProgress
//
//  Created by Marcelo Sampaio on 09/08/19.
//  Copyright © 2019 Marcelo Sampaio. All rights reserved.
//

import UIKit
import GradientCircularProgress

class ViewController: UIViewController {

    // MARK: - Properties
    private let progress = GradientCircularProgress()
    private var timer = Timer()
    private var index = 0
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    // MARK: - UI Actions
    @IBAction func goAction(_ sender: Any) {
        
        
        
        let rect = CGRect(x: 120, y: 120, width: 220, height: 220)
        
        let progressView = progress.show(frame: rect, message: "", style: MyStyle())
        view.addSubview(progressView!)
        
//        progress.dismiss(progress: progressView!)
        
        
        
        //
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fire), userInfo: nil, repeats: true)
        
        
    }
    
    // MARK: - TIMER HELPER
    @objc func fire()
    {
        index = index + 1
        progress.updateMessage(message: "Step \(index)")
    
        print("FIRE!!!")
    }
}

