//
//  ResultViewController.swift
//  Gacha
//
//  Created by Aoi Sakaue on 2017/05/01.
//  Copyright © 2017年 com.ueao.gachatech. All rights reserved.
//  Gacha game app for School.

import UIKit

class ResultViewController: UIViewController {

    //乱数を入れるためのInt型の変数を用意
    var number: Int!
    
    //背景画像とモンスター画像を表示するためのImageViewを用意
    @IBOutlet var backgroundImageView : UIImageView!
    @IBOutlet var monsterImageView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //0~9までのランダムな数（乱数）を発生させる
        //arc4random(最大値)
        number = Int(arc4random_uniform(10))
        
        //値によって表示するモンスターと背景の画像を変える
        //カウントで勉強したif文を使った条件分岐
        if number == 9 {
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else if number > 7 {
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        } else {
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
