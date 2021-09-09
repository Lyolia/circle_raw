//
//  ViewController.swift
//  CircularProgress
//
//  Created by Алена on 25.03.2021.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var containerView: UIView?
    var circularView: CircularProgressView!
    var duration: TimeInterval = 2
    override func viewDidLoad() {
    super.viewDidLoad()
        pr()
    }

    @objc func handleTap() {
    duration = 5    //Play with whatever value you want :]
        circularView?.progressAnimation(duration: duration)
    }
    func pr() {
        circularView.center = view.center
            containerView!.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
            view.addSubview(circularView)
    }
    }

