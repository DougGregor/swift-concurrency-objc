
typealias VTSession = CFTypeRef
@available(tvOS 10.2, *)
func VTSessionCopySupportedPropertyDictionary(_ session: VTSession, supportedPropertyDictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
@available(tvOS 10.2, *)
let kVTPropertyTypeKey: CFString
@available(tvOS 10.2, *)
let kVTPropertyType_Enumeration: CFString
@available(tvOS 10.2, *)
let kVTPropertyType_Boolean: CFString
@available(tvOS 10.2, *)
let kVTPropertyType_Number: CFString
@available(tvOS 10.2, *)
let kVTPropertyReadWriteStatusKey: CFString
@available(tvOS 10.2, *)
let kVTPropertyReadWriteStatus_ReadOnly: CFString
@available(tvOS 10.2, *)
let kVTPropertyReadWriteStatus_ReadWrite: CFString
@available(tvOS 10.2, *)
let kVTPropertyShouldBeSerializedKey: CFString
@available(tvOS 10.2, *)
let kVTPropertySupportedValueMinimumKey: CFString
@available(tvOS 10.2, *)
let kVTPropertySupportedValueMaximumKey: CFString
@available(tvOS 10.2, *)
let kVTPropertySupportedValueListKey: CFString
@available(tvOS 10.2, *)
let kVTPropertyDocumentationKey: CFString
@available(tvOS 10.2, *)
func VTSessionSetProperty(_ session: VTSession, key propertyKey: CFString, value propertyValue: CFTypeRef?) -> OSStatus
@available(tvOS 10.2, *)
func VTSessionCopyProperty(_ session: VTSession, key propertyKey: CFString, allocator: CFAllocator?, valueOut propertyValueOut: UnsafeMutableRawPointer?) -> OSStatus
@available(tvOS 10.2, *)
func VTSessionSetProperties(_ session: VTSession, propertyDictionary: CFDictionary) -> OSStatus
@available(tvOS 10.2, *)
func VTSessionCopySerializableProperties(_ session: VTSession, allocator: CFAllocator?, dictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
