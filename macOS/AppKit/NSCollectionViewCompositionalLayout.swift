
@available(macOS 10.15, *)
struct NSDirectionalRectEdge : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var top: NSDirectionalRectEdge { get }
  static var leading: NSDirectionalRectEdge { get }
  static var bottom: NSDirectionalRectEdge { get }
  static var trailing: NSDirectionalRectEdge { get }
  static var all: NSDirectionalRectEdge { get }
}
@available(macOS 10.15, *)
struct NSDirectionalEdgeInsets {
  var top: CGFloat
  var leading: CGFloat
  var bottom: CGFloat
  var trailing: CGFloat
  init()
  init(top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat)
}
@available(macOS 10.15, *)
let NSDirectionalEdgeInsetsZero: NSDirectionalEdgeInsets
@available(macOS 10.15, *)
enum NSRectAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case top
  case topLeading
  case leading
  case bottomLeading
  case bottom
  case bottomTrailing
  case trailing
  case topTrailing
}
@available(macOS 10.15, *)
class NSCollectionViewCompositionalLayoutConfiguration : NSObject, NSCopying {
  var scrollDirection: NSCollectionView.ScrollDirection
  var interSectionSpacing: CGFloat
  var boundarySupplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem]
}
typealias NSCollectionViewCompositionalLayoutSectionProvider = (Int, NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection?
@available(macOS 10.15, *)
class NSCollectionViewCompositionalLayout : NSCollectionViewLayout {
  init(section: NSCollectionLayoutSection)
  init(section: NSCollectionLayoutSection, configuration: NSCollectionViewCompositionalLayoutConfiguration)
  init(sectionProvider: @escaping NSCollectionViewCompositionalLayoutSectionProvider)
  init(sectionProvider: @escaping NSCollectionViewCompositionalLayoutSectionProvider, configuration: NSCollectionViewCompositionalLayoutConfiguration)
  @NSCopying var configuration: NSCollectionViewCompositionalLayoutConfiguration
}
@available(macOS 10.15, *)
enum NSCollectionLayoutSectionOrthogonalScrollingBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case continuous
  case continuousGroupLeadingBoundary
  case paging
  case groupPaging
  case groupPagingCentered
}
typealias NSCollectionLayoutSectionVisibleItemsInvalidationHandler = ([NSCollectionLayoutVisibleItem], NSPoint, NSCollectionLayoutEnvironment) -> Void
@available(macOS 10.15, *)
class NSCollectionLayoutSection : NSObject, NSCopying {
  convenience init(group: NSCollectionLayoutGroup)
  var contentInsets: NSDirectionalEdgeInsets
  var interGroupSpacing: CGFloat
  var orthogonalScrollingBehavior: NSCollectionLayoutSectionOrthogonalScrollingBehavior
  var boundarySupplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem]
  var supplementariesFollowContentInsets: Bool
  var visibleItemsInvalidationHandler: NSCollectionLayoutSectionVisibleItemsInvalidationHandler?
  var decorationItems: [NSCollectionLayoutDecorationItem]
}
@available(macOS 10.15, *)
class NSCollectionLayoutItem : NSObject, NSCopying {
  convenience init(layoutSize: NSCollectionLayoutSize)
  convenience init(layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem])
  var contentInsets: NSDirectionalEdgeInsets
  @NSCopying var edgeSpacing: NSCollectionLayoutEdgeSpacing?
  var layoutSize: NSCollectionLayoutSize { get }
  var supplementaryItems: [NSCollectionLayoutSupplementaryItem] { get }
}
@available(macOS 10.15, *)
class NSCollectionLayoutGroupCustomItem : NSObject, NSCopying {
  convenience init(frame: NSRect)
  convenience init(frame: NSRect, zIndex: Int)
  var frame: NSRect { get }
  var zIndex: Int { get }
}
typealias NSCollectionLayoutGroupCustomItemProvider = (NSCollectionLayoutEnvironment) -> [NSCollectionLayoutGroupCustomItem]
@available(macOS 10.15, *)
class NSCollectionLayoutGroup : NSCollectionLayoutItem, NSCopying {
  class func horizontal(layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self
  class func horizontal(layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self
  class func vertical(layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self
  class func vertical(layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self
  class func custom(layoutSize: NSCollectionLayoutSize, itemProvider: @escaping NSCollectionLayoutGroupCustomItemProvider) -> Self
  @NSCopying var interItemSpacing: NSCollectionLayoutSpacing?
  var subitems: [NSCollectionLayoutItem] { get }
  func visualDescription() -> String
}
@available(macOS 10.15, *)
class NSCollectionLayoutDimension : NSObject, NSCopying {
  class func fractionalWidth(_ fractionalWidth: CGFloat) -> Self
  class func fractionalHeight(_ fractionalHeight: CGFloat) -> Self
  class func absolute(_ absoluteDimension: CGFloat) -> Self
  class func estimated(_ estimatedDimension: CGFloat) -> Self
  var isFractionalWidth: Bool { get }
  var isFractionalHeight: Bool { get }
  var isAbsolute: Bool { get }
  var isEstimated: Bool { get }
  var dimension: CGFloat { get }
}
@available(macOS 10.15, *)
class NSCollectionLayoutSize : NSObject, NSCopying {
  convenience init(widthDimension width: NSCollectionLayoutDimension, heightDimension height: NSCollectionLayoutDimension)
  var widthDimension: NSCollectionLayoutDimension { get }
  var heightDimension: NSCollectionLayoutDimension { get }
}
@available(macOS 10.15, *)
class NSCollectionLayoutSpacing : NSObject, NSCopying {
  class func flexible(_ flexibleSpacing: CGFloat) -> Self
  class func fixed(_ fixedSpacing: CGFloat) -> Self
  var spacing: CGFloat { get }
  var isFlexible: Bool { get }
  var isFixed: Bool { get }
}
@available(macOS 10.15, *)
class NSCollectionLayoutEdgeSpacing : NSObject, NSCopying {
  convenience init(leading: NSCollectionLayoutSpacing?, top: NSCollectionLayoutSpacing?, trailing: NSCollectionLayoutSpacing?, bottom: NSCollectionLayoutSpacing?)
  var leading: NSCollectionLayoutSpacing? { get }
  var top: NSCollectionLayoutSpacing? { get }
  var trailing: NSCollectionLayoutSpacing? { get }
  var bottom: NSCollectionLayoutSpacing? { get }
}
@available(macOS 10.15, *)
class NSCollectionLayoutSupplementaryItem : NSCollectionLayoutItem, NSCopying {
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor)
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor, itemAnchor: NSCollectionLayoutAnchor)
  var zIndex: Int
  var elementKind: String { get }
  var containerAnchor: NSCollectionLayoutAnchor { get }
  var itemAnchor: NSCollectionLayoutAnchor? { get }
}
@available(macOS 10.15, *)
class NSCollectionLayoutBoundarySupplementaryItem : NSCollectionLayoutSupplementaryItem, NSCopying {
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment)
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment, absoluteOffset: NSPoint)
  var extendsBoundary: Bool
  var pinToVisibleBounds: Bool
  var alignment: NSRectAlignment { get }
  var offset: NSPoint { get }
}
@available(macOS 10.15, *)
class NSCollectionLayoutDecorationItem : NSCollectionLayoutItem, NSCopying {
  class func background(elementKind: String) -> Self
  var zIndex: Int
  var elementKind: String { get }
}
@available(macOS 10.15, *)
class NSCollectionLayoutAnchor : NSObject, NSCopying {
  convenience init(edges: NSDirectionalRectEdge)
  convenience init(edges: NSDirectionalRectEdge, absoluteOffset: NSPoint)
  convenience init(edges: NSDirectionalRectEdge, fractionalOffset: NSPoint)
  var edges: NSDirectionalRectEdge { get }
  var offset: NSPoint { get }
  var isAbsoluteOffset: Bool { get }
  var isFractionalOffset: Bool { get }
}
@available(macOS 10.15, *)
protocol NSCollectionLayoutContainer : NSObjectProtocol {
  var contentSize: NSSize { get }
  var effectiveContentSize: NSSize { get }
  var contentInsets: NSDirectionalEdgeInsets { get }
  var effectiveContentInsets: NSDirectionalEdgeInsets { get }
}
@available(macOS 10.15, *)
protocol NSCollectionLayoutEnvironment : NSObjectProtocol {
  var container: NSCollectionLayoutContainer { get }
}
@available(macOS 10.15, *)
protocol NSCollectionLayoutVisibleItem : NSObjectProtocol {
  var alpha: CGFloat { get set }
  var zIndex: Int { get set }
  var isHidden: Bool { get set }
  var center: NSPoint { get set }
  var name: String { get }
  var indexPath: IndexPath { get }
  var frame: NSRect { get }
  var bounds: NSRect { get }
  var representedElementCategory: NSCollectionElementCategory { get }
  var representedElementKind: String? { get }
}
