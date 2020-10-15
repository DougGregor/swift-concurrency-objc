
typealias SecRandomRef = OpaquePointer
@available(tvOS 2.0, *)
let kSecRandomDefault: SecRandomRef
@available(tvOS 2.0, *)
func SecRandomCopyBytes(_ rnd: SecRandomRef?, _ count: Int, _ bytes: UnsafeMutableRawPointer) -> Int32
