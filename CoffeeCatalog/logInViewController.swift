//
//  ViewController.swift
//  CoffeeCatalog
//
//  Created by Алексей on 19.06.2021.
//

import UIKit

class logInViewController: UIViewController {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    let user = User(login: "user", password: "password")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addBackground()
        
        loginTF.delegate = self
        loginTF.layer.cornerRadius = 15
        loginTF.layer.masksToBounds = true
        
        passwordTF.delegate = self
        passwordTF.layer.cornerRadius = 15
        passwordTF.layer.masksToBounds = true
        
        logInButton.layer.cornerRadius = 17
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func logInButton(_ sender: UIButton) {
        if !verification() {
            alertMessage(title: "Ошибка", message: "Логин или пароль не правильный!")
        }
    }
    @IBAction func forgotPassword(_ sender: UIButton) {
        alertMessage(title: "Забыли логин или пароль?", message: "Логин - \(user.login) , Пароль - \(user.password)")
    }
    
    private func verification() -> Bool {
        if loginTF.text == user.login && passwordTF.text == user.password {
            return true
        }
        return false
    }
    
    private func alertMessage(title: String, message: String, buttonTitle: String = "Ok") {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: buttonTitle, style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
    
}

extension logInViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let nextTag = textField.tag + 1
            
        if let nextResponder = textField.superview?.viewWithTag(nextTag) {
            nextResponder.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            logInButton.sendActions(for: .touchUpInside)
        }
        
        return true
    }
}

extension UIView {
func addBackground() {
    // screen width and height:
    let width = UIScreen.main.bounds.size.width
    let height = UIScreen.main.bounds.size.height

    let imageViewBackground = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
    imageViewBackground.image = UIImage(named: "wallpaper.jpg")

    // you can change the content mode:
    imageViewBackground.contentMode = UIView.ContentMode.scaleAspectFill

    self.addSubview(imageViewBackground)
    self.sendSubviewToBack(imageViewBackground)
}}

