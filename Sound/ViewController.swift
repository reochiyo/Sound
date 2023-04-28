//
//  ViewController.swift
//  Sound
//
//  Created by 千代丸怜央 on 2023/04/28.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムのサウンドファイルを読み込んで、プレイヤーを作る
    let drumSoundPlayer = try!AVAudioPlayer(data:NSDataAsset(name: "drumSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラムがタップされた時に呼ばれる
    @IBAction func tapDrumButton(){
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
        
    }


}

