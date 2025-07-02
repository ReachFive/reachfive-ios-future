import Alamofire
import BrightFutures
import Foundation
import Reach5


public extension ContinueStepUp {
    func verify(code: String, trustDevice: Bool? = nil) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.verify(code: code, trustDevice: trustDevice)
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

public extension ReachFive {
    func mfaStart(registering credential: Credential, authToken: AuthToken) -> Future<MfaStartRegistrationResponse, ReachFiveError> {
        bridge {
            await self.mfaStart(registering: credential, authToken: authToken)
        }
    }

    func mfaVerify(_ credentialType: CredentialType, code: String, authToken: AuthToken) -> Future<MfaCredentialItem, ReachFiveError> {
        bridge {
            await self.mfaVerify(credentialType, code: code, authToken: authToken)
        }
    }

    func mfaListCredentials(authToken: AuthToken) -> Future<MfaCredentialsListResponse, ReachFiveError> {
        bridge {
            await self.mfaListCredentials(authToken: authToken)
        }
    }

    func mfaStart(stepUp request: StartStepUp) -> Future<ContinueStepUp, ReachFiveError> {
        bridge {
            await self.mfaStart(stepUp: request)
        }
    }

    func mfaVerify(stepUp request: VerifyStepUp) -> Future<AuthToken, ReachFiveError> {
        bridge {
            await self.mfaVerify(stepUp: request)
        }
    }

    func mfaDeleteCredential(_ phoneNumber: String? = nil, authToken: AuthToken) -> Future<Void, ReachFiveError> {
        bridge {
            await self.mfaDeleteCredential(phoneNumber, authToken: authToken)
        }
    }

    func mfaListTrustedDevices(authToken: AuthToken) -> Future<[TrustedDevice], ReachFiveError> {
        bridge {
            await self.mfaListTrustedDevices(authToken: authToken)
        }
    }

    func mfaDelete(trustedDeviceId deviceId: String, authToken: AuthToken) -> Future<Void, ReachFiveError> {
        bridge {
            await self.mfaDelete(trustedDeviceId: deviceId, authToken: authToken)
        }
    }
}
