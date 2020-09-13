//
//  Mentor.swift
//  MentorBook
//
//  Created by 古田翔太郎 on 2020/09/14.
//  Copyright © 2020 古田翔太郎. All rights reserved.
//

import UIKit

class Mentor {
    var name: String! //name of mentor
    var course: String! //course
    var imageName: String! //name of picture
    
    //初期化
    init(name: String, imageName: String, course: String) {
        self.name       = name
        self.imageName  = imageName
        self.course     = course
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}

