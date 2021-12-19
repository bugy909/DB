const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "fb36065518b6433baaa9e75042293bc6",
                    "region": "eu-west-1"
                },
                "pinpointTargeting": {
                    "region": "eu-west-1"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "eu-west-1:8552e651-d0c8-4b7e-a806-baf96415ba64",
                            "Region": "eu-west-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "eu-west-1_rinUa0MJ7",
                        "AppClientId": "6a168v35hvalup9kg9ql2m9ak5",
                        "Region": "eu-west-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "socialProviders": [],
                        "usernameAttributes": [
                            "EMAIL"
                        ],
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                },
                "PinpointAnalytics": {
                    "Default": {
                        "AppId": "fb36065518b6433baaa9e75042293bc6",
                        "Region": "eu-west-1"
                    }
                },
                "PinpointTargeting": {
                    "Default": {
                        "Region": "eu-west-1"
                    }
                }
            }
        }
    },
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "PSK": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://4qrra3shmvcd3gb3bxupmx2rbm.appsync-api.eu-west-3.amazonaws.com/graphql",
                    "region": "eu-west-3",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-bm22mr4po5ev5gz4677oy4y4py"
                }
            }
        }
    }
}''';