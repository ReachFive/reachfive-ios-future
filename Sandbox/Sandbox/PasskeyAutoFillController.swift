import Foundation
import Reach5
import UIKit

class PasskeyAutoFillControler: UIViewController {
    
    #if !targetEnvironment(macCatalyst)
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("viewDidAppear")
            
            if #available(iOS 16.0, *) {
                AppDelegate.reachfive().beginAutoFillAssistedPasskeyLogin(withRequest: NativeLoginRequest(presenting: Presentation(from: self), origin: "PasskeyAutoFillControler.viewDidAppear"))
                    .onSuccess(callback: goToProfile)
                    .onFailure { error in
                        let alert = AppDelegate.createAlert(title: "Login", message: "Error: \(error.message())")
                        self.present(alert, animated: true)
                    }
            }
        }
    #endif
}