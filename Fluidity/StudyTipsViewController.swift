//
//  StudyTipsViewController.swift
//  Fluidity
//
//  Created by Sherry Liu on 10/29/22.
//

import UIKit
import AlamofireImage

class StudyTipsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    // List of study tip names
    // var tips =[[String:Any]]()
    
    // Study tips collection
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self

        // Connect to study tips API
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // return tips.count
        return 1;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StudyTipCell", for: indexPath) as! StudyTipCell
        
        // Configure image url to set cell image
        
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("loading tip details screen")
        
        // Find selected study tip
        
        // Pass the selected tip to the tip details view controller
    }

}
