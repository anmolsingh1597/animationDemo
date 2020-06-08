//
//  ViewController.swift
//  animationDemo
//
//  Created by Anmol singh on 2020-06-08.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    var isAnimated = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func play(_ sender: UIButton) {
        imageView.animationImages = [
        UIImage(named: "frame_1_delay-0.1s.gif")!,
        UIImage(named: "frame_2_delay-0.1s.gif")!,
        UIImage(named: "frame_3_delay-0.1s.gif")!,
        UIImage(named: "frame_4_delay-0.1s.gif")!,
        UIImage(named: "frame_5_delay-0.1s.gif")!
            
        ]
        imageView.animationDuration = 1
        // infinite loop
        imageView.animationRepeatCount = 0
        
        if isAnimated{
            imageView.stopAnimating()
            playBtn.setTitle("Play", for: [])
            isAnimated = false
        }else {
            imageView.startAnimating()
            playBtn.setTitle("Stop", for: [])
            isAnimated = true
        }
        imageView.startAnimating()
    }
    

    @IBAction func fadeIn(_ sender: UIButton) {
        imageView.alpha = 0
        UIView.animate(withDuration: 2){
            self.imageView.alpha = 1
        }
    }
    @IBAction func slideIn(_ sender: UIButton) {
    }
    
}

