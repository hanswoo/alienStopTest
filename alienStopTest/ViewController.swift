//
//  ViewController.swift
//  alienStopTest
//
//  Created by D7702_10 on 2018. 4. 5..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var myTimer = Timer()
    @IBOutlet weak var ad: UIImageView!
    @IBOutlet weak var sd: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func bt1(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(doAnimation) , userInfo: nil, repeats: true)
    }
    
    @IBAction func bt2(_ sender: Any) {
        //타이머 중지
        myTimer.invalidate()
    }
    //타이머에 의해 동작으로 호출되는 함수
    @objc func doAnimation(){
        //if counter == 5{
        //    counter = 1
        //}else{
        //    counter = counter + 1
        //}
        //ad.image = UIImage(named: "frame\(counter).png")
        //sd.text = String(counter)
        //타이머 5부터 역순으로 호출되는 함수
        if counter == 5 {
            chk = false
        }else if counter == 1 {
            chk = true
        }
        if chk == true{
            counter = counter + 1
            ad.image = UIImage(named:"frame\(counter).png")
            sd.text = String(counter)
        }else if chk == false{
            counter = counter - 1
            ad.image = UIImage(named:"frame\(counter).png")
            sd.text = String(counter)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

