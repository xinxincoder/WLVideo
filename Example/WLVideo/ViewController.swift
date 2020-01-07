//
//  ViewController.swift
//  WLVideo
//
//  Created by w704444178@qq.com on 01/07/2020.
//  Copyright (c) 2020 w704444178@qq.com. All rights reserved.
//

import UIKit
import WLVideo

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonClick(_ sender: Any) {
        let vc = WLCameraController()
        vc.modalPresentationStyle = .fullScreen
        vc.completeBlock = { url, type in
            if type == .video {
                let videoEditer = WLVideoEditor.init(videoUrl: URL.init(fileURLWithPath: url))
                videoEditer.addWaterMark(image: UIImage.init(named: "bilibili")!)
                videoEditer.addAudio(audioUrl: Bundle.main.path(forResource: "五环之歌", ofType: "mp3")!)
                videoEditer.assetReaderExport(completeHandler: { url in
                    let player = WLVideoPlayer(frame: self.view.bounds)
                    player.videoUrl = URL.init(fileURLWithPath: url)
                    self.view.addSubview(player)
                    player.play()
                })
            }
               }
        self.present(vc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

