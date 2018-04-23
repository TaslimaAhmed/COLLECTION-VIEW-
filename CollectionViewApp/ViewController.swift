//
//  ViewController.swift
//  CollectionViewApp
//
//  Created by MobioApp on 12/5/17.
//  Copyright © 2017 MobioApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    
    var imageArray = ["img1","img2","img3","img4","img4","img6","img7","img8","img9","img10"]
    
    var nameArray = ["Lubricant Store locator","Service Appointments","Find your Oil","Buy Now","Reminders","Calculators(EMI & Mileage)","Mobil Automative Products","Car Maintenance Tips","Current Campaigns","SOS/Helpline"]
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int  {
        print("hello")
        return imageArray.count
        // here we are telling that our number of item will be equal to number of collection images.
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CustomCollectionViewCell
        
        cell.collectionImageView.image = UIImage(named : imageArray[indexPath.row])
        cell.collectionNameLabel.text = nameArray[indexPath.row]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = UIScreen.main.bounds.width
        
        //let scaleFactor = (screenWidth / 4)-1
        let scaleFactor = (screenWidth / 2)-1
        return CGSize(width: scaleFactor, height: scaleFactor)
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
   // Add this method for configuring minimum line  between two row-
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let itemName = nameArray[indexPath.row]
        
        if indexPath.row == 0 {
            
            self.performSegue(withIdentifier: "secondView", sender: nil )
            print("item name is :\(itemName)")
        } else if indexPath.row == 1 {
            print("item name is :\(itemName)")
        } else if indexPath.row == 2 {
            print("item name is :\(itemName)")
        } else if indexPath.row == 3 {
            print("item name is :\(itemName)")
        } else if indexPath.row == 4 {
            print("item name is :\(itemName)")
        } else if indexPath.row == 5 {
            print("item name is :\(itemName)")
        } else if indexPath.row == 6 {
            print("item name is :\(itemName)")
        } else if indexPath.row == 7 {
            print("item name is :\(itemName)")
        }
        
    }


}

