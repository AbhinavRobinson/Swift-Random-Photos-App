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
        imageView.frame = CGRect(x:0, y:0, width: 300, height: 300)
        imageView.center = view.center
    }
}
