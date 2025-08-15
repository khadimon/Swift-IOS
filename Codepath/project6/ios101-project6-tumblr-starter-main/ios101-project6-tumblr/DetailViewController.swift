//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Khadichabonu Valieva on 25/10/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
   
    @IBOutlet weak var backdropImageView: UIImageView!
    
    
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
        // MARK: - Configure the labels
        textView.text = post.caption.trimHTMLTags()
        
    
        // MARK: - Configure the image views
        // Unwrap the optional backdrop path
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: backdropImageView)
            
        }
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
