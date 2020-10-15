
func sec_retain(_ obj: UnsafeMutableRawPointer!) -> UnsafeMutableRawPointer!
func sec_release(_ obj: UnsafeMutableRawPointer!)
protocol OS_sec_object : NSObjectProtocol {
}
typealias sec_object_t = OS_sec_object
