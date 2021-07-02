//
//  ViewController.swift
//  MiCard
//
//  Created by Binaya on 06/05/2021.
//

import UIKit

class MiCardViewController: UIViewController {
    
    // MARK: - Properties

    @IBOutlet weak var profilePicture: UIImageView!

    @IBOutlet weak var numberTextField: UITextField!{
        didSet {
            numberTextField.setIcon(UIImage(named: "phone")!)
        }
     }
    
    @IBOutlet weak var emailTextField: UITextField!{
        didSet {
            emailTextField.setIcon(UIImage(named: "email")!)
        }
     }
    
    // MARK: - App lifecycle method

    override func viewDidLoad() {
        super.viewDidLoad()
        profilePicture.layer.borderWidth = 1
        profilePicture.layer.masksToBounds = false
        profilePicture.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        profilePicture.layer.cornerRadius = profilePicture.frame.height / 2
        profilePicture.clipsToBounds = true
    }

}

// MARK: - UITextField extension

extension UITextField {
    
    func setIcon(_ image: UIImage) {
        
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        
        leftView = iconContainerView
        leftViewMode = .always
        
        
    }
    
}

