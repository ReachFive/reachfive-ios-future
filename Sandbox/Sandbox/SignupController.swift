import UIKit
import Reach5

class SignupController: UIViewController {
    var initialEmail: String?
    var origin: String = "SignupController.signup"
    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailInput.text = initialEmail
    }
    
    @IBAction func signup(_ sender: Any) {
        let email = emailInput.text ?? ""
        let password = passwordInput.text ?? ""
        let name = nameInput.text ?? ""
        
        let profile = ProfileSignupRequest(
            password: password,
            email: email,
            name: name
        )
        AppDelegate.reachfive().signup(profile: profile, origin: origin)
            .onSuccess(callback: { res in
                switch res {
                case let .AchievedLogin(authToken):
                    return self.goToProfile(authToken)
                case .AwaitingIdentifierVerification:
                    self.present(AppDelegate.createAlert(title: "Signup", message: "Login is not possible if your identifiers are not verified"), animated: true)
                    return
                }
            })
            .onFailure { error in
                let alert = AppDelegate.createAlert(title: "Signup", message: "Error: \(error.message())")
                self.present(alert, animated: true)
            }
    }
}
