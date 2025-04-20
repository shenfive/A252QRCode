//
//  ViewController.swift
//  A252QRCode
//
//  Created by 申潤五 on 2025/4/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        theImageView.image = generrateQRCode(from: "Hello World",size: theImageView.bounds.size)
    }


}

