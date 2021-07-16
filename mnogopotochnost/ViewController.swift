//
//  ViewController.swift
//  mnogopotochnost
//
//  Created by Vlad on 6.07.21.
//
import SDWebImage
import UIKit

class ViewController: UIViewController {
   
    var imageVC: SecondViewController?
    let imagePatch = "https://memepedia.ru/wp-content/uploads/2018/03/ebanyy-rot-etogo-kazino.png"
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "image")
    }

    @IBAction func loadImage(_ sender: Any) {
        guard let vc = imageVC else {
            return
        }
        _ = vc.view
        
        
        vc.immage.sd_setImage(with: URL(string: self.imagePatch), completed: nil)
        navigationController?.show(vc, sender: nil)
        
}

}

