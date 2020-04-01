//
//  ViewController.swift
//  UIPanGestureRecognizerSample
//
//  Created by satoshi.marumoto on 2020/04/01.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func PanLabel(_ sender: UIPanGestureRecognizer) {
        //移動量を取得する。
        let move:CGPoint = sender.translation(in: view)
        //ドラッグした部品の座標に移動量を加算する。
        sender.view!.center.x += move.x
        sender.view!.center.y += move.y
        //ラベルに現在座標を表示する。
        //testLabel.text = "\(sender.view!.frame.origin.x), \(sender.view!.frame.origin.y)"
        
        //移動量を0にする。
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
}

