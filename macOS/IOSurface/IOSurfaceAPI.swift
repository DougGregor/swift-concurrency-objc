
@available(macOS 10.7, *)
func IOSurfaceCreateXPCObject(_ aSurface: IOSurfaceRef) -> xpc_object_t
@available(macOS 10.7, *)
func IOSurfaceLookupFromXPCObject(_ xobj: xpc_object_t) -> IOSurfaceRef?
