//
//  ViewController.swift
//  RatingBarDemo
//
//  Created by Nino on 16/10/8.
//  Copyright © 2016年 Nino. All rights reserved.
//

import UIKit

class ViewController: UIViewController,RatingBarDelegate {

    var ratingLabel:UILabel?
    
    var ratingValue:Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ratingBar1 = RatingBar()
        ratingBar1.frame = CGRectMake(100, 100, 100, 40)
        ratingBar1.setSeletedState("star_big1", halfSelectedName: "star_big2", fullSelectedName: "star_big3", starSideLength: 24, delegate: self)
        ratingBar1.displayRating(8)
        self.view.addSubview(ratingBar1)
        
        let ratingBar2 = RatingBar()
        ratingBar2.frame = CGRectMake(100, 220, 100, 40)
        ratingBar2.setSeletedState("star_big1", halfSelectedName: "star_big2", fullSelectedName: "star_big3", starSideLength: 24, delegate: self)
        ratingBar2.displayRating(0)
        ratingBar2.isIndicator = false
        ratingBar2.tag = 2
        self.view.addSubview(ratingBar2)
        
        ratingLabel = UILabel()
        ratingLabel!.frame = CGRectMake(100, 340, 200, 40)
        ratingLabel!.text = "展示第二个星星条的分值"
        self.view.addSubview(ratingLabel!)
        
        
        
        
    }
    //MARK:RatingBarDelegate
    func ratingChanged(ratingBar: RatingBar, newRating: Float) {
        if(ratingBar.tag == 2){
            ratingValue = newRating
            ratingLabel!.text = String(ratingValue)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

