//
//  InterfaceController.swift
//  WatchKitDemo WatchKit Extension
//
//  Created by YuQuan Zhang on 15-2-4.
//  Copyright (c) 2015年 YuQuan Zhang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {   
    @IBOutlet weak var guessSlider: WKInterfaceSlider! // 滑动条
    @IBOutlet weak var guessLabel: WKInterfaceLabel! // 显示用户所猜数字的Label
    @IBOutlet weak var resultLabel: WKInterfaceLabel! // 显示猜测对错结果的Label
    //设置默认的猜测数字变量
    var guessNumber = 3
    /**
    * 滑动条取值范围被设为0到1;
    * 取值乘5所得才是我们实际需要的数字;
    * 并更新guessLabel文本;
    *  param: value 滑动条取值
    */
    @IBAction func updateGuess(value: Float) {
        guessNumber = Int(value * 5)
        guessLabel.setText("Your guess: \(guessNumber)")
    }   
    @IBAction func startGuess() {
        //用arc4random_uniform(6)函数生成一个0到5的随机数
        var randomNumber = Int(arc4random_uniform(6))
        //根据用户所猜测数和随机数对比得出猜测结果
        if(guessNumber == randomNumber) {
            resultLabel.setText("Correct. You win!")
        } else {
            resultLabel.setText("Wrong. The number is \(randomNumber)")
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
