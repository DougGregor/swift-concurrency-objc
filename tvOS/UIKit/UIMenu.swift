
extension UIMenu {
  @available(tvOS 13.0, *)
  struct Identifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(tvOS 13.0, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var displayInline: UIMenu.Options { get }
    static var destructive: UIMenu.Options { get }
  }
}
@available(tvOS 13.0, *)
class UIMenu : UIMenuElement {
  var identifier: UIMenu.Identifier { get }
  var options: UIMenu.Options { get }
  var children: [UIMenuElement] { get }
  func replacingChildren(_ newChildren: [UIMenuElement]) -> UIMenu
}

@available(iOS 13.0, tvOS 14.0, *)
extension UIMenu {
  convenience init(title: String = "", image: UIImage? = nil, identifier: UIMenu.Identifier? = nil, options: UIMenu.Options = [], children: [UIMenuElement] = [])
}
extension UIMenu.Identifier {
  @available(tvOS 13.0, *)
  static let application: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let file: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let edit: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let view: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let window: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let help: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let about: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let preferences: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let services: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let hide: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let quit: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let newScene: UIMenu.Identifier
  @available(tvOS 14.0, *)
  static let openRecent: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let close: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let print: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let undoRedo: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let standardEdit: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let find: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let replace: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let share: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let textStyle: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let spelling: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let spellingPanel: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let spellingOptions: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let substitutions: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let substitutionsPanel: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let substitutionOptions: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let transformations: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let speech: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let lookup: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let learn: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let format: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let font: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let textSize: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let textColor: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let textStylePasteboard: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let text: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let writingDirection: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let alignment: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let toolbar: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let fullscreen: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let minimizeAndZoom: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let bringAllToFront: UIMenu.Identifier
  @available(tvOS 13.0, *)
  static let root: UIMenu.Identifier
}
