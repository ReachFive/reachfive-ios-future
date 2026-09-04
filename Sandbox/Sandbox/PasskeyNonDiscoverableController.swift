import Reach5
import BrightFutures
import UIKit

@available(iOS 16.0, *)
class PasskeyNonDiscoverableController: UIViewController {
    @IBOutlet weak var username: UITextField!
    
    @IBAction func loginWithImmediatelyAvailableCredentials(_ sender: Any) {
        login(display: .IfImmediatelyAvailableCredentials)
    }
    
    @IBAction func loginAlways(_ sender: Any) {
        login(display: .Always)
    }
    
    private func login(display mode: Mode) {
        print("PasskeyNonDiscoverableController.login(display:\(mode))")
        guard let username = username.text, !username.isEmpty else { return }
        
        let request = NativeLoginRequest(presenting: Presentation(from: self), origin: "PasskeyNonDiscoverableController.login")
        AppDelegate.reachfive().login(withNonDiscoverableUsername: .Unspecified(username), forRequest: request, usingModalAuthorizationFor: [.Passkey], display: mode)
            .onSuccess(callback: goToProfile)
            .onFailure { error in
                switch error {
                case .AuthCanceled:
                    return
                default:
                    let alert = AppDelegate.createAlert(title: "Login", message: "Error: \(error.message())")
                    self.present(alert, animated: true)
                }
            }
    }
}
