
typealias VTSession = CFTypeRef
@available(iOS 8.0, *)
func VTSessionCopySupportedPropertyDictionary(_ session: VTSession, supportedPropertyDictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
@available(iOS 8.0, *)
let kVTPropertyTypeKey: CFString
@available(iOS 8.0, *)
let kVTPropertyType_Enumeration: CFString
@available(iOS 8.0, *)
let kVTPropertyType_Boolean: CFString
@available(iOS 8.0, *)
let kVTPropertyType_Number: CFString
@available(iOS 8.0, *)
let kVTPropertyReadWriteStatusKey: CFString
@available(iOS 8.0, *)
let kVTPropertyReadWriteStatus_ReadOnly: CFString
@available(iOS 8.0, *)
let kVTPropertyReadWriteStatus_ReadWrite: CFString
@available(iOS 8.0, *)
let kVTPropertyShouldBeSerializedKey: CFString
@available(iOS 8.0, *)
let kVTPropertySupportedValueMinimumKey: CFString
@available(iOS 8.0, *)
let kVTPropertySupportedValueMaximumKey: CFString
@available(iOS 8.0, *)
let kVTPropertySupportedValueListKey: CFString
@available(iOS 8.0, *)
let kVTPropertyDocumentationKey: CFString
@available(iOS 8.0, *)
func VTSessionSetProperty(_ session: VTSession, key propertyKey: CFString, value propertyValue: CFTypeRef?) -> OSStatus
@available(iOS 8.0, *)
func VTSessionCopyProperty(_ session: VTSession, key propertyKey: CFString, allocator: CFAllocator?, valueOut propertyValueOut: UnsafeMutableRawPointer?) -> OSStatus
@available(iOS 8.0, *)
func VTSessionSetProperties(_ session: VTSession, propertyDictionary: CFDictionary) -> OSStatus
@available(iOS 8.0, *)
func VTSessionCopySerializableProperties(_ session: VTSession, allocator: CFAllocator?, dictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
