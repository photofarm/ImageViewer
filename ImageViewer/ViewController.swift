//
//  ViewController.swift
//  ImageViewer
//
//  Created by sdt5 on 2015. 10. 19..
//  Copyright © 2015년 all4web. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let cats = ["cat1.jpg", "cat2.jpg", "cat3.jpg", "cat4.jpg", "cat5.png"]
    var catID = 0
    
    @IBOutlet weak var photoView: UIImageView!

    @IBAction func showPrev(sender: UIButton) {
        catID = (catID <= 0 ? 4 : --catID)
        photoView.image = UIImage(named: cats[catID])
    }
    
    @IBAction func showNext(sender: UIButton) {
        catID = (catID >= 4 ? 0 : ++catID)
        photoView.image = UIImage(named: cats[catID])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
