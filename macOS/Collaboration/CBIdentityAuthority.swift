
@available(macOS 10.5, *)
class CBIdentityAuthority : NSObject {
  class func local() -> CBIdentityAuthority
  class func managed() -> CBIdentityAuthority
  class func `default`() -> CBIdentityAuthority
  var localizedName: String { get }
}
