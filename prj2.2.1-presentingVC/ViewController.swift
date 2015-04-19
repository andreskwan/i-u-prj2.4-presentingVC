//
//  ViewController.swift
//  prj2.2.1-presentingVC
//
//  Created by Andres Kwan on 4/18/15.
//  Copyright (c) 2015 Kwan Castle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func experiment(sender: UIButton) {
        let nextController = UIImagePickerController()
        self.presentViewController(nextController, animated: true, completion: nil)
    }
    
    @IBAction func experimentWithActivityVC(sender: UIButton){
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.presentViewController(controller, animated: true, completion: nil)
    }

    @IBAction func experimentWithAlertVC(sender: UIButton) {
        let controller = UIAlertController()
        controller.title = "Test alert"
        controller.message = "Alert message"
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default){
            action in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        controller.addAction(okAction)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
}

