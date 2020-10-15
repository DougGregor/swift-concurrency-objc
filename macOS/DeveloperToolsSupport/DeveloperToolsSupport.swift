
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@_functionBuilder struct LibraryContentBuilder {
  static func buildBlock(_ segments: [LibraryItem]...) -> [LibraryItem]
  static func buildExpression(_ item: LibraryItem) -> [LibraryItem]
  static func buildExpression(_ items: [LibraryItem]) -> [LibraryItem]
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol LibraryContentProvider {
  associatedtype ModifierBase = Any
  @LibraryContentBuilder var views: [LibraryItem] { get }
  func modifiers(base: Self.ModifierBase) -> [LibraryItem]
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension LibraryContentProvider {
  var views: [LibraryItem] { get }
  func modifiers(base: Self.ModifierBase) -> [LibraryItem]
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct LibraryItem {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  struct Category {
    static let effect: LibraryItem.Category
    static let layout: LibraryItem.Category
    static let control: LibraryItem.Category
    static let other: LibraryItem.Category
  }
  init<SnippetExpressionType>(_ snippet: @autoclosure () -> SnippetExpressionType, visible: Bool = true, title: String? = nil, category: LibraryItem.Category = .other, matchingSignature: String? = nil)
}

