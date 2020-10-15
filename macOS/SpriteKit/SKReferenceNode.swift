
@available(macOS 10.11, *)
class SKReferenceNode : SKNode {
  init(url: URL?)
  init(fileNamed fileName: String?)
  convenience init(fileNamed fileName: String)
  convenience init(url referenceURL: URL)
  func didLoad(_ node: SKNode?)
  func resolve()
}
