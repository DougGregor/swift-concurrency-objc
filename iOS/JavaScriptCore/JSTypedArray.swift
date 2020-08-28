
@available(iOS 10.0, *)
func JSObjectMakeTypedArray(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ length: Int, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(iOS 10.0, *)
func JSObjectMakeTypedArrayWithBytesNoCopy(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ bytes: UnsafeMutableRawPointer!, _ byteLength: Int, _ bytesDeallocator: JSTypedArrayBytesDeallocator!, _ deallocatorContext: UnsafeMutableRawPointer!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(iOS 10.0, *)
func JSObjectMakeTypedArrayWithArrayBuffer(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ buffer: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(iOS 10.0, *)
func JSObjectMakeTypedArrayWithArrayBufferAndOffset(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ buffer: JSObjectRef!, _ byteOffset: Int, _ length: Int, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(iOS 10.0, *)
func JSObjectGetTypedArrayBytesPtr(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> UnsafeMutableRawPointer!
@available(iOS 10.0, *)
func JSObjectGetTypedArrayLength(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
@available(iOS 10.0, *)
func JSObjectGetTypedArrayByteLength(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
@available(iOS 10.0, *)
func JSObjectGetTypedArrayByteOffset(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
@available(iOS 10.0, *)
func JSObjectGetTypedArrayBuffer(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(iOS 10.0, *)
func JSObjectMakeArrayBufferWithBytesNoCopy(_ ctx: JSContextRef!, _ bytes: UnsafeMutableRawPointer!, _ byteLength: Int, _ bytesDeallocator: JSTypedArrayBytesDeallocator!, _ deallocatorContext: UnsafeMutableRawPointer!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(iOS 10.0, *)
func JSObjectGetArrayBufferBytesPtr(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> UnsafeMutableRawPointer!
@available(iOS 10.0, *)
func JSObjectGetArrayBufferByteLength(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
