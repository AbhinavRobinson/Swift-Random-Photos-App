//
//  ViewController.swift
//  RandomPhoto
//
//  Created by Abhinav Robinson on 29/12/21.
//

import UIKit

class ViewController: UIViewController {
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemPink
        view.addSubview(imageView)
        imageView.frame = CGRect(x:0, y:0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        imageView.center = view.center
        getRandomPhoto()
    }
    
    func getRandomPhoto() {
        
        let urlString = "https://source.unsplash.com/random/3000x3000"
        let url = URL(string: urlString)!
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        imageView.image = UIImage(data:data)
    }
}
