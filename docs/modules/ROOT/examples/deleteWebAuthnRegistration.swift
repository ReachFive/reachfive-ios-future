AppDelegate
    .reachfive()
    .deleteWebAuthnRegistration(id: id, authToken: profileAuthToken)
    .onSuccess{ _ in
        // Do something
    }
    .onFailure { error in
        // Return a ReachFive error
    }
