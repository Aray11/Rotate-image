//
//  ViewController.swift
//  Rotate Image
//
//  Created by SALIM on 10/12/17.
//  Copyright © 2017 ARAY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgPreview: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnRotate(_ sender: Any) {
        //menambahkan durasi animasi
        //durasi rotasi nya 2 detik
        //angle rotasi nya 180 derajat
        
        UIView.animate(withDuration: 10.0, animations: {self.imgPreview.transform = CGAffineTransform(rotationAngle: (360.0 * .pi) / 360.0)
        })
    }
    
    @IBAction func btnRotate2(_ sender: Any) {
        //multiple rotate image
        //melakukan rotasi dari posisi x 100 dan y 300
        imgPreview.transform = CGAffineTransform.identity.translatedBy(x: 100, y: 300) .rotated(by: CGFloat.pi / 4).scaledBy(x: -1, y: 2)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

