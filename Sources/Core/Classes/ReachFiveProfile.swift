import Foundation
import Reach5
import BrightFutures

public extension ContinueEmailVerification {
    func verify(code: String, email: String, freshAuthToken token: AuthToken? = nil) -> Future<Void, ReachFiveError> {
        bridge {
            await self.verify(code: code, email: email, freshAuthToken: token)
        }
    }
}

public extension ReachFiveFuture {
    func getProfile(authToken: AuthToken) -> Future<Profile, ReachFiveError> {
        bridge {
            await self.reachfive.getProfile(authToken: authToken)
        }
    }

    func sendEmailVerification(authToken: AuthToken, redirectUrl: String? = nil) -> Future<EmailVerificationResponse, ReachFiveError>{
        bridge {
            await self.reachfive.sendEmailVerification(authToken: authToken, redirectUrl: redirectUrl)
        }
    }

    func verifyEmail(authToken: AuthToken, code: String, email: String) -> Future<Void, ReachFiveError> {
        bridge {
            await self.reachfive.verifyEmail(authToken: authToken, code: code, email: email)
        }
    }

    func verifyPhoneNumber(
        authToken: AuthToken,
        phoneNumber: String,
        verificationCode: String
    ) -> Future<(), ReachFiveError> {
        bridge {
            await self.reachfive.verifyPhoneNumber(authToken: authToken, phoneNumber: phoneNumber, verificationCode: verificationCode)
        }
    }

    func updateEmail(
        authToken: AuthToken,
        email: String,
        redirectUrl: String? = nil
    ) -> Future<Profile, ReachFiveError> {
        bridge {
            await self.reachfive.updateEmail(authToken: authToken, email: email, redirectUrl: redirectUrl)
        }
    }

    func updatePhoneNumber(
        authToken: AuthToken,
        phoneNumber: String
    ) -> Future<Profile, ReachFiveError> {
        bridge {
            await self.reachfive.updatePhoneNumber(authToken: authToken, phoneNumber: phoneNumber)
        }
    }

    func updateProfile(
        authToken: AuthToken,
        profile: Profile
    ) -> Future<Profile, ReachFiveError> {
        bridge {
            await self.reachfive.updateProfile(authToken: authToken, profile: profile)
        }
    }

    func updateProfile(
        authToken: AuthToken,
        profileUpdate: ProfileUpdate
    ) -> Future<Profile, ReachFiveError> {
        bridge {
            await self.reachfive.updateProfile(authToken: authToken, profileUpdate: profileUpdate)
        }
    }

    func updatePassword(_ updatePasswordParams: UpdatePasswordParams) -> Future<(), ReachFiveError> {
        bridge {
            await self.reachfive.updatePassword(updatePasswordParams)
        }
    }

    func requestPasswordReset(
        email: String? = nil,
        phoneNumber: String? = nil,
        redirectUrl: String? = nil
    ) -> Future<(), ReachFiveError> {
        bridge {
            await self.reachfive.requestPasswordReset(email: email, phoneNumber: phoneNumber, redirectUrl: redirectUrl)
        }
    }

    func requestAccountRecovery(
        email: String? = nil,
        phoneNumber: String? = nil,
        redirectUrl: String? = nil,
        origin: String? = nil
    ) -> Future<(), ReachFiveError> {
        bridge {
            await self.reachfive.requestAccountRecovery(email: email, phoneNumber: phoneNumber, redirectUrl: redirectUrl, origin: origin)
        }
    }

    /// Lists all passkeys the user has registered
    func listWebAuthnCredentials(authToken: AuthToken) -> Future<[DeviceCredential], ReachFiveError> {
        bridge {
            await self.reachfive.listWebAuthnCredentials(authToken: authToken)
        }
    }

    /// Deletes a passkey the user has registered
    func deleteWebAuthnRegistration(id: String, authToken: AuthToken) -> Future<(), ReachFiveError> {
        bridge {
            await self.reachfive.deleteWebAuthnRegistration(id: id, authToken: authToken)
        }
    }
}
