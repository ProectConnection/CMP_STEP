//
//  ViewController.swift
//  CMP
//
//  Created by yukio.miyamoto on 2017/08/21.
//  Copyright © 2017年 Yukio Miyamoto. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabe!
    let pedometer = CMPedometer()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
func startStepCouniting(){
    if CMPedometer.isStepCountingAvailable(){
        pedometer.startPedometerUpdatesFromDate(NSDate(),
                                            withHandler:{data,error in
                                                disoatch_async(dispatch_get_main_queue(),{
                                                
                                                    let steps = data.numder0fSteps
                                                    
                                        Self.label.text = "Steps \(steps)"
            })
        })
    }
}


