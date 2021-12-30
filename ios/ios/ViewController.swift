//
//  ViewController.swift
//  ios
//
//  Created by 김승진 on 2021/12/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rel: UILabel!
    
    var userIsInTheMiddleOfTyping = false // 입력 중일 때
    var finalValue: Int = 0 // 최종 결과 값
    var currentValue1: Int = 0 // 초기 값
    var currentValue2: Int = 0 // 중간 값
    var operatorr: String = "+" // 계산 연산자
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func touchNumber(_ sender: UIButton) {
        let num = sender.currentTitle! // currentTitle! 버튼의 텍스트를 가져오
        if userIsInTheMiddleOfTyping{
            let textCurrentlyInDisplay = rel.text!
            rel.text = textCurrentlyInDisplay + num
            
        }else {
            rel.text = num
        }
        userIsInTheMiddleOfTyping = true
    }
    @IBAction func eraseButton(_ sender: UIButton){
        rel.text = "0"
        userIsInTheMiddleOfTyping = false
        finalValue = 0
        currentValue1 = 0
        currentValue2 = 0
    }
    
    @IBAction func enterButton(_ sender: UIButton){
        if let realValue = rel.text{
            currentValue1 = Int(realValue) ?? 0
     }
        
        switch operatorr{
        case "+":
            finalValue = currentValue1 + currentValue2
        case "-":
            finalValue = currentValue1 + currentValue2
        case "*":
            finalValue = currentValue1 * currentValue2
        default:
            finalValue = 0
        }
        rel.text = "(finalValue)"
    }

    @IBAction func operaterButton(_ sender: UIButton) {
        let operater = sender.currentTitle!
        operatorr = operater
        
        if let realValue = rel.text{
            currentValue2 = Int(realValue) ?? 0
        }
        
        rel.text = " "
    }
}
