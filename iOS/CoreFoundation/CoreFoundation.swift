
var __COREFOUNDATION__: Int32 { get }
func __assert_rtn(_: UnsafePointer<CChar>!, _: UnsafePointer<CChar>!, _: Int32, _: UnsafePointer<CChar>!) -> Never
protocol _CFObject : AnyObject, Hashable {
}

extension _CFObject {
  var hashValue: Int { get }
  func hash(into hasher: inout Hasher)
  static func == (left: Self, right: Self) -> Bool
}

