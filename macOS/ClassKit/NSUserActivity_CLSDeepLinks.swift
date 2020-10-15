
extension NSUserActivity {
  @available(macOS 11.0, *)
  var isClassKitDeepLink: Bool { get }
  @available(macOS 11.0, *)
  var contextIdentifierPath: [String]? { get }
}
