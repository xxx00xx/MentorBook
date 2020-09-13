//
//  ViewController.swift
//  MentorBook
//
//  Created by 古田翔太郎 on 2020/09/10.
//  Copyright © 2020 古田翔太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    //表示するメンターの番号
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course:"iPhone" ))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS,WebD"))
        
        setUI()
    }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    func check(){
        if (index == -1){
            index = 2
        } else if (index == 3) {
            index = 0
        }
    }
    
    @IBAction func mae(){
        index = index - 1
        check()
        setUI()
    }

    @IBAction func tugi(){
        index = index + 1
        check()
        setUI()
    }
}

