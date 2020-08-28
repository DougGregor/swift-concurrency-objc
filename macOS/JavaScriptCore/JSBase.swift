
typealias JSContextGroupRef = OpaquePointer
typealias JSContextRef = OpaquePointer
typealias JSGlobalContextRef = OpaquePointer
typealias JSStringRef = OpaquePointer
typealias JSClassRef = OpaquePointer
typealias JSPropertyNameArrayRef = OpaquePointer
typealias JSPropertyNameAccumulatorRef = OpaquePointer
typealias JSTypedArrayBytesDeallocator = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void
typealias JSValueRef = OpaquePointer
typealias JSObjectRef = OpaquePointer
func JSEvaluateScript(_ ctx: JSContextRef!, _ script: JSStringRef!, _ thisObject: JSObjectRef!, _ sourceURL: JSStringRef!, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSValueRef!
func JSCheckScriptSyntax(_ ctx: JSContextRef!, _ script: JSStringRef!, _ sourceURL: JSStringRef!, _ startingLineNumber: Int32, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Bool
func JSGarbageCollect(_ ctx: JSContextRef!)
var JSC_OBJC_API_ENABLED: Int32 { get }
