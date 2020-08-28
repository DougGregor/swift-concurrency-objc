
var NSScannedOption: Int { get }
var NSCollectorDisabledOption: Int { get }
func NSPageSize() -> Int
func NSLogPageSize() -> Int
func NSRoundUpToMultipleOfPageSize(_ bytes: Int) -> Int
func NSRoundDownToMultipleOfPageSize(_ bytes: Int) -> Int
func NSAllocateMemoryPages(_ bytes: Int) -> UnsafeMutableRawPointer
func NSDeallocateMemoryPages(_ ptr: UnsafeMutableRawPointer, _ bytes: Int)
func NSCopyMemoryPages(_ source: UnsafeRawPointer, _ dest: UnsafeMutableRawPointer, _ bytes: Int)
