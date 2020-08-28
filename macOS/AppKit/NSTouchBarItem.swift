
extension NSTouchBarItem {
  struct Identifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.12.2, *)
  struct Priority : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: Float)
    init(rawValue: Float)
    let rawValue: Float
  }
}
extension NSTouchBarItem.Priority {
  @available(macOS 10.12.2, *)
  static let high: NSTouchBarItem.Priority
  @available(macOS 10.12.2, *)
  static let normal: NSTouchBarItem.Priority
  @available(macOS 10.12.2, *)
  static let low: NSTouchBarItem.Priority
}
@available(macOS 10.12.2, *)
class NSTouchBarItem : NSObject, NSCoding {
  init(identifier: NSTouchBarItem.Identifier)
  var identifier: NSTouchBarItem.Identifier { get }
  var visibilityPriority: NSTouchBarItem.Priority
  var view: NSView? { get }
  var viewController: NSViewController? { get }
  var customizationLabel: String { get }
  var isVisible: Bool { get }
}

@available(macOS 10.12.2, *)
extension NSTouchBarItem : __DefaultCustomPlaygroundQuickLookable {
}
extension NSTouchBarItem.Identifier {
  @available(macOS 10.12.2, *)
  static let fixedSpaceSmall: NSTouchBarItem.Identifier
  @available(macOS 10.12.2, *)
  static let fixedSpaceLarge: NSTouchBarItem.Identifier
  @available(macOS 10.12.2, *)
  static let flexibleSpace: NSTouchBarItem.Identifier
  @available(macOS 10.12.2, *)
  static let otherItemsProxy: NSTouchBarItem.Identifier
}
