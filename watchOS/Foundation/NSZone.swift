
func NSPageSize() -> Int
func NSLogPageSize() -> Int
func NSRoundUpToMultipleOfPageSize(_ bytes: Int) -> Int
func NSRoundDownToMultipleOfPageSize(_ bytes: Int) -> Int
func NSAllocateMemoryPages(_ bytes: Int) -> UnsafeMutableRawPointer
func NSDeallocateMemoryPages(_ ptr: UnsafeMutableRawPointer, _ bytes: Int)
func NSCopyMemoryPages(_ source: UnsafeRawPointer, _ dest: UnsafeMutableRawPointer, _ bytes: Int)
@available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use NSProcessInfo instead")
func NSRealMemoryAvailable() -> Int
