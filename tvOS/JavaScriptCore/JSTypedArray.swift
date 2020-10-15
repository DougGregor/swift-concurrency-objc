
func JSObjectMakeTypedArray(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ length: Int, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectMakeTypedArrayWithBytesNoCopy(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ bytes: UnsafeMutableRawPointer!, _ byteLength: Int, _ bytesDeallocator: JSTypedArrayBytesDeallocator!, _ deallocatorContext: UnsafeMutableRawPointer!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectMakeTypedArrayWithArrayBuffer(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ buffer: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectMakeTypedArrayWithArrayBufferAndOffset(_ ctx: JSContextRef!, _ arrayType: JSTypedArrayType, _ buffer: JSObjectRef!, _ byteOffset: Int, _ length: Int, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectGetTypedArrayBytesPtr(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> UnsafeMutableRawPointer!
func JSObjectGetTypedArrayLength(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
func JSObjectGetTypedArrayByteLength(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
func JSObjectGetTypedArrayByteOffset(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
func JSObjectGetTypedArrayBuffer(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectMakeArrayBufferWithBytesNoCopy(_ ctx: JSContextRef!, _ bytes: UnsafeMutableRawPointer!, _ byteLength: Int, _ bytesDeallocator: JSTypedArrayBytesDeallocator!, _ deallocatorContext: UnsafeMutableRawPointer!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> JSObjectRef!
func JSObjectGetArrayBufferBytesPtr(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> UnsafeMutableRawPointer!
func JSObjectGetArrayBufferByteLength(_ ctx: JSContextRef!, _ object: JSObjectRef!, _ exception: UnsafeMutablePointer<JSValueRef?>!) -> Int
