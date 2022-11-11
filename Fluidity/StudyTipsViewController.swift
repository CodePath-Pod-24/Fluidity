//
//  StudyTipsViewController.swift
//  Fluidity
//
//  Created by Saul Lopez Lucas on 11/11/22.
//

import UIKit
import AlamofireImage

class StudyTipsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var videos = [[String: Any]]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudyTipsCell") as! StudyTipsCell
        
        let video = videos[indexPath.row]
        let snippet = video["snippet"] as! [String: Any]
        let thumbnails = snippet["thumbnails"] as! [String: Any]
        let thumbnail = thumbnails["standard"] as! [String: Any]
        let thumbnail_path = thumbnail["url"] as! String
        let creator = snippet["channelTitle"] as! String
        let title = snippet["title"] as! String
    
        cell.titleLabel.text = title
        cell.creatorLabel.text = creator
        let imageURL = URL(string: thumbnail_path)
        cell.thumbnailView.af.setImage(withURL: imageURL!)
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for:cell)!
        let video = videos[indexPath.row]
        let detailsViewController = segue.destination as! StudyTipsVideoViewController
        detailsViewController.video = video
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let url = URL(string: "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PL2ADAFpTg5aZfX1gq1ZX27sYmOGwtBifC&key=AIzaSyDvjIzLkJmPJkn1aFXXDEDsFuna4F9r68Q")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
             
             if let error = error {
                    print(error.localizedDescription)
             } else if let data = data {
                    let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                 self.videos = dataDictionary["items"] as! [[String:Any]]
                 self.tableView.reloadData()
             }
        }
        task.resume()
        
    }
    
}
