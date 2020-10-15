
@available(macOS 10.12, *)
func JSObjectMakeTypedArray(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ length: Int, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(macOS 10.12, *)
func JSObjectMakeTypedArrayWithBytesNoCopy(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ bytes: UnsafeMutableRawPointer!, _ byteLength: Int, _ bytesDeallocator: JSTypedArrayBytesDeallocator!, _ deallocatorContext: UnsafeMutableRawPointer!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(macOS 10.12, *)
func JSObjectMakeTypedArrayWithArrayBuffer(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ buffer: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(macOS 10.12, *)
func JSObjectMakeTypedArrayWithArrayBufferAndOffset(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ buffer: JSObjectRef!, _ byteOffset: Int, _ length: Int, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(macOS 10.12, *)
func JSObjectGetTypedArrayBytesPtr(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> UnsafeMutableRawPointer!
@available(macOS 10.12, *)
func JSObjectGetTypedArrayLength(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
@available(macOS 10.12, *)
func JSObjectGetTypedArrayByteLength(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
@available(macOS 10.12, *)
func JSObjectGetTypedArrayByteOffset(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
@available(macOS 10.12, *)
func JSObjectGetTypedArrayBuffer(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(macOS 10.12, *)
func JSObjectMakeArrayBufferWithBytesNoCopy(_ ctx: JSContextRef!, _ bytes: UnsafeMutableRawPointer!, _ byteLength: Int, _ bytesDeallocator: JSTypedArrayBytesDeallocator!, _ deallocatorContext: UnsafeMutableRawPointer!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
@available(macOS 10.12, *)
func JSObjectGetArrayBufferBytesPtr(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> UnsafeMutableRawPointer!
@available(macOS 10.12, *)
func JSObjectGetArrayBufferByteLength(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
