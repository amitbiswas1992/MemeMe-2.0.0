//
//  DetailVC.swift
//  MemeMe-2.0
//
//  Created by Amit Biswas on 17/06/2020.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class DetailMemeVC: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    var meme: Meme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = meme.memedImage
    }
    
    @IBAction func editAction(_ sender: Any) {
        let memeEditorVC = storyboard!.instantiateViewController(withIdentifier: "MemeEditorVC") as! MemeEditorVC
        memeEditorVC.memeSentFromDetail = self.meme
        self.navigationController?.pushViewController(memeEditorVC, animated: true)
    }
    
    }
