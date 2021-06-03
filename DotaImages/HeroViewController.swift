//
//  HeroViewController.swift
//  DotaImages
//
//  Created by Atai Akishev on 6/1/21.
//

import UIKit

class HeroViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var attributeLabel: UILabel!
    @IBOutlet weak var attacLabel: UILabel!
    
    @IBOutlet weak var legsLabel: UILabel!
    
    var hero:HeroStats?
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameLabel.text = hero?.localized_name
        attributeLabel.text = hero?.primary_attr
        attacLabel.text = hero?.attack_type
        legsLabel.text = "\((hero?.legs)!)"
        
        let urlString = "https://api.opendota.com"+(hero?.img)!
        
        let url = URL(string: urlString)
        
        imageView.downloaded(from: url!)
    }
    


}
