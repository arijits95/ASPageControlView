//
//  ViewController.swift
//  PageControlAnimation
//
//  Created by Arijit Sarkar on 14/05/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pageIndicatorView: ASPageControlView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        pageIndicatorView.setCurrentPage(to: 2) // Setting current page to 2
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.pageIndicatorView.setCurrentPage(to: 1) // Changing current page to 1
        }
    }
}

