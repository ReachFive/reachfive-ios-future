AppDelegate
    .reachfive()
    .listWebAuthnCredentials(authToken: profileAuthToken)
    .onSuccess { listCredentials in
      // Get the list of devices
    }
    .onFailure { error in
      // Return a ReachFive error
    }
