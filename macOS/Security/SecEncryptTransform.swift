
let kSecPaddingNoneKey: CFString
let kSecPaddingPKCS1Key: CFString
let kSecPaddingPKCS5Key: CFString
let kSecPaddingPKCS7Key: CFString
@available(macOS 10.8, *)
let kSecPaddingOAEPKey: CFString
let kSecModeNoneKey: CFString
let kSecModeECBKey: CFString
let kSecModeCBCKey: CFString
let kSecModeCFBKey: CFString
let kSecModeOFBKey: CFString
let kSecEncryptKey: CFString
let kSecPaddingKey: CFString
let kSecIVKey: CFString
let kSecEncryptionMode: CFString
@available(macOS 10.8, *)
let kSecOAEPMessageLengthAttributeName: CFString
@available(macOS 10.8, *)
let kSecOAEPEncodingParametersAttributeName: CFString
@available(macOS 10.8, *)
let kSecOAEPMGF1DigestAlgorithmAttributeName: CFString
@available(macOS 10.7, *)
func SecEncryptTransformCreate(_ keyRef: SecKey, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecTransform
@available(macOS 10.7, *)
func SecDecryptTransformCreate(_ keyRef: SecKey, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecTransform
@available(macOS 10.7, *)
func SecDecryptTransformGetTypeID() -> CFTypeID
@available(macOS 10.7, *)
func SecEncryptTransformGetTypeID() -> CFTypeID
