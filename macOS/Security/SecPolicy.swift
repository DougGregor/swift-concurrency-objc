
@available(macOS 10.7, *)
let kSecPolicyAppleX509Basic: CFString
@available(macOS 10.7, *)
let kSecPolicyAppleSSL: CFString
@available(macOS 10.7, *)
let kSecPolicyAppleSMIME: CFString
@available(macOS 10.7, *)
let kSecPolicyAppleEAP: CFString
@available(macOS 10.7, *)
let kSecPolicyAppleIPsec: CFString
@available(macOS 10.7, *)
let kSecPolicyApplePKINITClient: CFString
@available(macOS 10.7, *)
let kSecPolicyApplePKINITServer: CFString
@available(macOS 10.7, *)
let kSecPolicyAppleCodeSigning: CFString
@available(macOS 10.7, *)
let kSecPolicyMacAppStoreReceipt: CFString
@available(macOS 10.7, *)
let kSecPolicyAppleIDValidation: CFString
@available(macOS 10.8, *)
let kSecPolicyAppleTimeStamping: CFString
@available(macOS 10.9, *)
let kSecPolicyAppleRevocation: CFString
@available(macOS 10.9, *)
let kSecPolicyApplePassbookSigning: CFString
@available(macOS 10.11, *)
let kSecPolicyApplePayIssuerEncryption: CFString
@available(macOS 10.7, *)
let kSecPolicyOid: CFString
@available(macOS 10.7, *)
let kSecPolicyName: CFString
@available(macOS 10.7, *)
let kSecPolicyClient: CFString
@available(macOS 10.9, *)
let kSecPolicyRevocationFlags: CFString
@available(macOS 10.9, *)
let kSecPolicyTeamIdentifier: CFString
@available(macOS 10.3, *)
func SecPolicyGetTypeID() -> CFTypeID
@available(macOS 10.7, *)
func SecPolicyCopyProperties(_ policyRef: SecPolicy) -> CFDictionary?
@available(macOS 10.6, *)
func SecPolicyCreateBasicX509() -> SecPolicy
@available(macOS 10.6, *)
func SecPolicyCreateSSL(_ server: Bool, _ hostname: CFString?) -> SecPolicy
var kSecRevocationOCSPMethod: CFOptionFlags { get }
var kSecRevocationCRLMethod: CFOptionFlags { get }
var kSecRevocationPreferCRL: CFOptionFlags { get }
var kSecRevocationRequirePositiveResponse: CFOptionFlags { get }
var kSecRevocationNetworkAccessDisabled: CFOptionFlags { get }
var kSecRevocationUseAnyAvailableMethod: CFOptionFlags { get }
@available(macOS 10.9, *)
func SecPolicyCreateRevocation(_ revocationFlags: CFOptionFlags) -> SecPolicy?
@available(macOS 10.9, *)
func SecPolicyCreateWithProperties(_ policyIdentifier: CFTypeRef, _ properties: CFDictionary?) -> SecPolicy?
@available(macOS 10.7, *)
let kSecPolicyKU_DigitalSignature: CFString
@available(macOS 10.7, *)
let kSecPolicyKU_NonRepudiation: CFString
@available(macOS 10.7, *)
let kSecPolicyKU_KeyEncipherment: CFString
@available(macOS 10.7, *)
let kSecPolicyKU_DataEncipherment: CFString
@available(macOS 10.7, *)
let kSecPolicyKU_KeyAgreement: CFString
@available(macOS 10.7, *)
let kSecPolicyKU_KeyCertSign: CFString
@available(macOS 10.7, *)
let kSecPolicyKU_CRLSign: CFString
@available(macOS 10.7, *)
let kSecPolicyKU_EncipherOnly: CFString
@available(macOS 10.7, *)
let kSecPolicyKU_DecipherOnly: CFString
