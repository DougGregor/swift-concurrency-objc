
let kSecDecodeTypeAttribute: CFString
@available(macOS 10.7, *)
func SecDecodeTransformCreate(_ DecodeType: CFTypeRef, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecTransform?
