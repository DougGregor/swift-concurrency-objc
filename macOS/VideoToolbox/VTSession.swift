
typealias VTSession = CFTypeRef
@available(macOS 10.8, *)
func VTSessionCopySupportedPropertyDictionary(_ session: VTSession, supportedPropertyDictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
@available(macOS 10.8, *)
let kVTPropertyTypeKey: CFString
@available(macOS 10.8, *)
let kVTPropertyType_Enumeration: CFString
@available(macOS 10.8, *)
let kVTPropertyType_Boolean: CFString
@available(macOS 10.8, *)
let kVTPropertyType_Number: CFString
@available(macOS 10.8, *)
let kVTPropertyReadWriteStatusKey: CFString
@available(macOS 10.8, *)
let kVTPropertyReadWriteStatus_ReadOnly: CFString
@available(macOS 10.8, *)
let kVTPropertyReadWriteStatus_ReadWrite: CFString
@available(macOS 10.8, *)
let kVTPropertyShouldBeSerializedKey: CFString
@available(macOS 10.8, *)
let kVTPropertySupportedValueMinimumKey: CFString
@available(macOS 10.8, *)
let kVTPropertySupportedValueMaximumKey: CFString
@available(macOS 10.8, *)
let kVTPropertySupportedValueListKey: CFString
@available(macOS 10.8, *)
let kVTPropertyDocumentationKey: CFString
@available(macOS 10.8, *)
func VTSessionSetProperty(_ session: VTSession, key propertyKey: CFString, value propertyValue: CFTypeRef?) -> OSStatus
@available(macOS 10.8, *)
func VTSessionCopyProperty(_ session: VTSession, key propertyKey: CFString, allocator: CFAllocator?, valueOut propertyValueOut: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.8, *)
func VTSessionSetProperties(_ session: VTSession, propertyDictionary: CFDictionary) -> OSStatus
@available(macOS 10.8, *)
func VTSessionCopySerializableProperties(_ session: VTSession, allocator: CFAllocator?, dictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
