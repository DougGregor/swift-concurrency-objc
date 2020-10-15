
class DASession : _CFObject {
}
func DASessionGetTypeID() -> CFTypeID
func DASessionCreate(_ allocator: CFAllocator?) -> DASession?
func DASessionScheduleWithRunLoop(_ session: DASession, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func DASessionUnscheduleFromRunLoop(_ session: DASession, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
func DASessionSetDispatchQueue(_ session: DASession, _ queue: DispatchQueue?)
