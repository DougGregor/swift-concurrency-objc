
typealias SecRandomRef = OpaquePointer
@available(macOS 10.7, *)
let kSecRandomDefault: SecRandomRef
@available(macOS 10.7, *)
func SecRandomCopyBytes(_ rnd: SecRandomRef?, _ count: Int, _ bytes: UnsafeMutableRawPointer) -> Int32
