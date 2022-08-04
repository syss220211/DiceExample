//
//  ViewController.swift
//  DiceExample
//
//  Created by geonhui Yu on 2022/08/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Dice: UILabel!
    @IBOutlet weak var DiceImage: UIImageView!
    @IBOutlet weak var StartButton: UIButton!
    @IBOutlet weak var RollingButton: UIButton!
    
    private let DiceImages = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
    private let colors : [UIColor] = [.red, .green, .purple, .orange]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Dice.textColor = .darkGray
        Dice.text = "주사위"
        Dice.textAlignment = .center
        
        StartButton.backgroundColor = .yellow
        StartButton.layer.cornerRadius = 30
        
        DiceImage.image = UIImage(named: "DiceOne")
        
    }

    @IBAction func ClickButton(_ sender: Any) {
        print("돌리는 중")
        
        let random = Int.random(in: 0...5)
        DiceImage.image = DiceImages[random]
        
        Dice.text = (random + 1) % 2 == 0 ? "짝수입니다!" : "홀수입니다!"
    }
    
}

