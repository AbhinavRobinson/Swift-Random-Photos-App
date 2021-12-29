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
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray5
        button.setTitle("Change Picture", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(imageView)
        view.addSubview(button)
        imageView.frame = CGRect(x:0,
                                 y:0,
                                 width: view.frame.size.width,
                                 height: view.frame.size.height)
        imageView.center = view.center
        getRandomPhoto()
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRect(x:25,
                              y:view.frame.size.height-40-view.safeAreaInsets.bottom,
                              width: view.frame.size.width-50,
                              height: 50)
        button.layer.cornerRadius = 10.0
    }
    
    @objc func didTapButton() {
        getRandomPhoto()
    }
    
    func getRandomPhoto() {
        let urlString = "https://source.unsplash.com/random/800x1200"
        let url = URL(string: urlString)!
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        imageView.image = UIImage(data:data)
    }
}
