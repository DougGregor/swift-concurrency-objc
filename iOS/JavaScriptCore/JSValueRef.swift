
struct JSType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kJSTypeUndefined: JSType { get }
var kJSTypeNull: JSType { get }
var kJSTypeBoolean: JSType { get }
var kJSTypeNumber: JSType { get }
var kJSTypeString: JSType { get }
var kJSTypeObject: JSType { get }
@available(iOS 13.0, *)
var kJSTypeSymbol: JSType { get }
@available(iOS 10.0, *)
struct JSTypedArrayType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kJSTypedArrayTypeInt8Array: JSTypedArrayType { get }
var kJSTypedArrayTypeInt16Array: JSTypedArrayType { get }
var kJSTypedArrayTypeInt32Array: JSTypedArrayType { get }
var kJSTypedArrayTypeUint8Array: JSTypedArrayType { get }
var kJSTypedArrayTypeUint8ClampedArray: JSTypedArrayType { get }
var kJSTypedArrayTypeUint16Array: JSTypedArrayType { get }
var kJSTypedArrayTypeUint32Array: JSTypedArrayType { get }
var kJSTypedArrayTypeFloat32Array: JSTypedArrayType { get }
var kJSTypedArrayTypeFloat64Array: JSTypedArrayType { get }
var kJSTypedArrayTypeArrayBuffer: JSTypedArrayType { get }
var kJSTypedArrayTypeNone: JSTypedArrayType { get }
func JSValueGetType(_ ctx: JSContextRef!, _ value: JSValueRef!) -> JSType
func JSValueIsUndefined(_ ctx: JSContextRef!, _ value: JSValueRef!) -> Bool
func JSValueIsNull(_ ctx: JSContextRef!, _ value: JSValueRef!) -> Bool
func JSValueIsBoolean(_ ctx: JSContextRef!, _ value: JSValueRef!) -> Bool
func JSValueIsNumber(_ ctx: JSContextRef!, _ value: JSValueRef!) -> Bool
func JSValueIsString(_ ctx: JSContextRef!, _ value: JSValueRef!) -> Bool
@available(iOS 13.0, *)
func JSValueIsSymbol(_ ctx: JSContextRef!, _ value: JSValueRef!) -> Bool
func JSValueIsObject(_ ctx: JSContextRef!, _ value: JSValueRef!) -> Bool
func JSValueIsObjectOfClass(_ ctx: JSContextRef!, _ value: JSValueRef!, _ jsClass: JSClassRef!) -> Bool
@available(iOS 9.0, *)
func JSValueIsArray(_ ctx: JSContextRef!, _ value: JSValueRef!) -> Bool
@available(iOS 9.0, *)
func JSValueIsDate(_ ctx: JSContextRef!, _ value: JSValueRef!) -> Bool
@available(iOS 10.0, *)
func JSValueGetTypedArrayType(_ ctx: JSContextRef!, _ value: JSValueRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSTypedArrayType
func JSValueIsEqual(_ ctx: JSContextRef!, _ a: JSValueRef!, _ b: JSValueRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Bool
func JSValueIsStrictEqual(_ ctx: JSContextRef!, _ a: JSValueRef!, _ b: JSValueRef!) -> Bool
func JSValueIsInstanceOfConstructor(_ ctx: JSContextRef!, _ value: JSValueRef!, _ constructor: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Bool
func JSValueMakeUndefined(_ ctx: JSContextRef!) -> JSValueRef!
func JSValueMakeNull(_ ctx: JSContextRef!) -> JSValueRef!
func JSValueMakeBoolean(_ ctx: JSContextRef!, _ boolean: Bool) -> JSValueRef!
func JSValueMakeNumber(_ ctx: JSContextRef!, _ number: Double) -> JSValueRef!
func JSValueMakeString(_ ctx: JSContextRef!, _ string: JSStringRef!) -> JSValueRef!
@available(iOS 13.0, *)
func JSValueMakeSymbol(_ ctx: JSContextRef!, _ description: JSStringRef!) -> JSValueRef!
@available(iOS 7.0, *)
func JSValueMakeFromJSONString(_ ctx: JSContextRef!, _ string: JSStringRef!) -> JSValueRef!
@available(iOS 7.0, *)
func JSValueCreateJSONString(_ ctx: JSContextRef!, _ value: JSValueRef!, _ indent: UInt32, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSStringRef!
func JSValueToBoolean(_ ctx: JSContextRef!, _ value: JSValueRef!) -> Bool
func JSValueToNumber(_ ctx: JSContextRef!, _ value: JSValueRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Double
func JSValueToStringCopy(_ ctx: JSContextRef!, _ value: JSValueRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSStringRef!
func JSValueToObject(_ ctx: JSContextRef!, _ value: JSValueRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSValueProtect(_ ctx: JSContextRef!, _ value: JSValueRef!)
func JSValueUnprotect(_ ctx: JSContextRef!, _ value: JSValueRef!)
