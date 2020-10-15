
@available(macOS 10.9, *)
class ODModuleEntry : NSObject {
  @available(macOS 10.9, *)
  var mappings: ODMappings!
  @available(macOS 10.9, *)
  var supportedOptions: [Any]! { get }
  @available(macOS 10.9, *)
  var name: String!
  @available(macOS 10.9, *)
  var xpcServiceName: String!
  @available(macOS 10.9, *)
  var uuidString: String!
  @available(macOS 10.9, *)
  convenience init!(name: String!, xpcServiceName: String!)
  @available(macOS 10.9, *)
  func setOption(_ optionName: String!, value: Any!)
  @available(macOS 10.9, *)
  func option(_ optionName: String!) -> Any!
}
