//
//  ViewController.swift
//  Login
//
//  Created by Sofi on 02.02.2021.
//

import UIKit

class LoginViewController: UIViewController  {
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private var user = DataUser.showDataUser().loginName
    private let password = DataUser.showDataUser().password
    private let userName = DataUser.showDataUser().userName
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let tabBarCuntrollers = tabBarController.viewControllers!
        for viewController in tabBarCuntrollers {
            if let welcomeVC = viewController as? WelcomViewController {
                welcomeVC.userName = userName
            }
        }
        
    }
    
    private func textDelited() {
        passwordTextField.text = nil
        userTextField.text = nil
    }
    
    @IBAction func unwind (Segue: UIStoryboardSegue ) {
        textDelited()
    }
    
    @IBAction func forgotUserAction(_ sender: Any) {
        textDelited()
        showLoginAlert(title: "Oops!", message: "Your name in Nik 😉")
    }
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        textDelited()
        showLoginAlert(title: "Oops!", message: "Your password in 12345 😉")
    }
    
    @IBAction func loginInAction() {
        if  userTextField.text != user || passwordTextField.text != password {
            showLoginAlert(title: "Invalid login or password",
                           message: "Please, enter correct login and password",
                           textField: passwordTextField)
        } else {
            performSegue(withIdentifier: "Welcome", sender: nil)
        }
    }
}

extension LoginViewController {
    private func showLoginAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK",
                                   style:.destructive,
                                   handler: nil)
        textField?.text = nil
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

extension LoginViewController:  UITextFieldDelegate  {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTextField {
            passwordTextField.becomeFirstResponder()
        }
        return true
    }
}
