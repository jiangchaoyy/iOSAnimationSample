//
//  PositionViewController.swift
//  iOSAnimationSample
//
//  Created by jiangchao on 15/10/20.
//  Copyright © 2015年 jiangchao. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var blueSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: {
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
        })
        
        UIView.animateWithDuration(1, delay: 0.5, options: [], animations: {
                self.redSquare.center.y = self.view.bounds.height - self.redSquare.center.y
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0.5, options: [], animations: {
                self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
                self.greenSquare.center.y = self.view.bounds.height - self.greenSquare.center.y
            }, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
