
@available(macOS 10.6, *)
let ODSessionProxyAddress: String
@available(macOS 10.6, *)
let ODSessionProxyPort: String
@available(macOS 10.6, *)
let ODSessionProxyUsername: String
@available(macOS 10.6, *)
let ODSessionProxyPassword: String
class ODSession : NSObject {
  @available(macOS 10.6, *)
  class func `default`() -> ODSession!
  @available(macOS 10.6, *)
  init(options inOptions: [AnyHashable : Any]! = [:]) throws
  @available(macOS 10.6, *)
  func nodeNames() throws -> [Any]
  @available(macOS 10.9, *)
  var configurationTemplateNames: [Any]! { get }
  @available(macOS 10.9, *)
  var mappingTemplateNames: [Any]! { get }
  @available(macOS 10.9, *)
  func configuration(forNodename nodename: String!) -> ODConfiguration!
}
