import Alamofire
import BrightFutures
import Foundation
import Reach5


public extension ContinueStepUp {
    func verify(code: String, trustDevice: Bool? = nil) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.reachfive.mfaVerify(stepUp: VerifyStepUp(challengeId: self.challengeId, verificationCode: code, trustDevice: trustDevice))
        }
    }
}

public extension ContinueRegistration {
    func verify(code: String, freshAuthToken: AuthToken? = nil) -> Future<MfaCredentialItem, ReachFiveError> {
        bridge {
            await self.verify(code: code, freshAuthToken: freshAuthToken)
        }
    }
}

public extension ReachFiveFuture {
    func mfaStart(registering credential: Credential, authToken: AuthToken) -> Future<MfaStartRegistrationResponse, ReachFiveError> {
        bridge {
            await self.reachfive.mfaStart(registering: credential, authToken: authToken)
        }
    }

    func mfaVerify(_ credentialType: CredentialType, code: String, authToken: AuthToken) -> Future<MfaCredentialItem, ReachFiveError> {
        bridge {
            await self.reachfive.mfaVerify(credentialType, code: code, authToken: authToken)
        }
    }

    func mfaListCredentials(authToken: AuthToken) -> Future<MfaCredentialsListResponse, ReachFiveError> {
        bridge {
            await self.reachfive.mfaListCredentials(authToken: authToken)
        }
    }

    func mfaStart(stepUp request: StartStepUp) -> Future<ContinueStepUp, ReachFiveError> {
        bridge {
            await self.reachfive.mfaStart(stepUp: request)
        }
    }

    func mfaVerify(stepUp request: VerifyStepUp) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.reachfive.mfaVerify(stepUp: request)
        }
    }

    func mfaDeleteCredential(_ phoneNumber: String? = nil, authToken: AuthToken) -> Future<Void, ReachFiveError> {
        bridge {
            await self.reachfive.mfaDeleteCredential(phoneNumber, authToken: authToken)
        }
    }

    func mfaListTrustedDevices(authToken: AuthToken) -> Future<[TrustedDevice], ReachFiveError> {
        bridge {
            await self.reachfive.mfaListTrustedDevices(authToken: authToken)
        }
    }

    func mfaDelete(trustedDeviceId deviceId: String, authToken: AuthToken) -> Future<Void, ReachFiveError> {
        bridge {
            await self.reachfive.mfaDelete(trustedDeviceId: deviceId, authToken: authToken)
        }
    }
}
