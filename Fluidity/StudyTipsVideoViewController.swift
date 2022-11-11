//
//  StudyTipsVideoViewController.swift
//  Fluidity
//
//  Created by Saul Lopez Lucas on 11/11/22.
//

import UIKit
import youtube_ios_player_helper
class StudyTipsVideoViewController: UIViewController {
    var video: [String:Any]!
    @IBOutlet var playerView: YTPlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let snippet = video["snippet"] as! [String: Any]
        let resource = snippet["resourceId"] as! [String: Any]
        let videoID = resource["videoId"] as! String
        
        playerView.load(withVideoId: videoID)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
