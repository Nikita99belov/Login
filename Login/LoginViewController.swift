//
//  ViewController.swift
//  Login
//
//  Created by Sofi on 02.02.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUserButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            userTextField.enablesReturnKeyAutomatically = true
            userTextField.returnKeyType = .next
            passwordTextField.enablesReturnKeyAutomatically = true
            passwordTextField.returnKeyType = .done
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       textField.resignFirstResponder()
       if textField == userTextField {
           passwordTextField.becomeFirstResponder()
       } else if textField == passwordTextField {
           loginInAction()
       }
       return true
   }
   
   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       self.view.endEditing(true)
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let welcomeVC = segue.destination as? WelcomViewController else { return }
       welcomeVC.userName = userTextField.text!
   }
     
    private func textDelited() {
          passwordTextField.text = nil
          userTextField.text = nil
      }
    
    private func validateIn() -> Bool {
          return userTextField.text == "Alex" && passwordTextField.text == "12345"
      }
      
   private func showLoginAlert() {
        textDelited()
    
       let alert = UIAlertController(title: "Invalid login or password",
                                     message: "Please, enter correct login and password",
                                     preferredStyle: .alert )
        let action = UIAlertAction(title: "OK",
                                   style:.destructive,
                                   handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotUserAction(_ sender: Any) {
        textDelited()
        
        let alert = UIAlertController(title: "Oops!",
                                      message: "Your name in Alex 😉",
                                      preferredStyle: .alert )
         let action = UIAlertAction(title: "OK",
                                    style:.destructive,
                                    handler: nil)
         alert.addAction(action)
         present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        textDelited()
        
        let alert = UIAlertController(title: "Oops!",
                                      message: "Your password in 12345 😉",
                                      preferredStyle: .alert )
         let action = UIAlertAction(title: "OK",
                                    style:.destructive,
                                    handler: nil)
        
         alert.addAction(action)
         present(alert, animated: true, completion: nil)
    }
    
    @IBAction func loginInAction() {
        let isValid = validateIn()
        if  validateIn() {
            performSegue(withIdentifier: "Welcome", sender: nil)
            textDelited()
        } else if !isValid {
            showLoginAlert()
        }
    }
}
