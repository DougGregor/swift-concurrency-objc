
@available(tvOS 14.0, *)
enum UIContentInsetsReference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case none
  case safeArea
  case layoutMargins
  case readableContent
}
@available(tvOS 13.0, *)
class UICollectionViewCompositionalLayoutConfiguration : NSObject, NSCopying {
  var scrollDirection: UICollectionView.ScrollDirection
  var interSectionSpacing: CGFloat
  var boundarySupplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem]
  @available(tvOS 14.0, *)
  var contentInsetsReference: UIContentInsetsReference
}
typealias UICollectionViewCompositionalLayoutSectionProvider = (Int, NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection?
@available(tvOS 13.0, *)
class UICollectionViewCompositionalLayout : UICollectionViewLayout {
  init(section: NSCollectionLayoutSection)
  init(section: NSCollectionLayoutSection, configuration: UICollectionViewCompositionalLayoutConfiguration)
  init(sectionProvider: @escaping UICollectionViewCompositionalLayoutSectionProvider)
  init(sectionProvider: @escaping UICollectionViewCompositionalLayoutSectionProvider, configuration: UICollectionViewCompositionalLayoutConfiguration)
  @NSCopying var configuration: UICollectionViewCompositionalLayoutConfiguration
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCompositionalLayout {
  static func list(using configuration: UICollectionLayoutListConfiguration) -> UICollectionViewCompositionalLayout
}
@available(tvOS 13.0, *)
enum UICollectionLayoutSectionOrthogonalScrollingBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case continuous
  case continuousGroupLeadingBoundary
  case paging
  case groupPaging
  case groupPagingCentered
}
typealias NSCollectionLayoutSectionVisibleItemsInvalidationHandler = ([NSCollectionLayoutVisibleItem], CGPoint, NSCollectionLayoutEnvironment) -> Void
@available(tvOS 13.0, *)
class NSCollectionLayoutSection : NSObject, NSCopying {
  convenience init(group: NSCollectionLayoutGroup)
  var contentInsets: NSDirectionalEdgeInsets
  var interGroupSpacing: CGFloat
  @available(tvOS 14.0, *)
  var contentInsetsReference: UIContentInsetsReference
  var orthogonalScrollingBehavior: UICollectionLayoutSectionOrthogonalScrollingBehavior
  var boundarySupplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem]
  var supplementariesFollowContentInsets: Bool
  var visibleItemsInvalidationHandler: NSCollectionLayoutSectionVisibleItemsInvalidationHandler?
  var decorationItems: [NSCollectionLayoutDecorationItem]
}

@available(iOS 14.0, tvOS 14.0, *)
extension NSCollectionLayoutSection {
  static func list(using configuration: UICollectionLayoutListConfiguration, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection
}
@available(tvOS 13.0, *)
class NSCollectionLayoutItem : NSObject, NSCopying {
  convenience init(layoutSize: NSCollectionLayoutSize)
  convenience init(layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem])
  var contentInsets: NSDirectionalEdgeInsets
  @NSCopying var edgeSpacing: NSCollectionLayoutEdgeSpacing?
  var layoutSize: NSCollectionLayoutSize { get }
  var supplementaryItems: [NSCollectionLayoutSupplementaryItem] { get }
}
@available(tvOS 13.0, *)
class NSCollectionLayoutGroupCustomItem : NSObject, NSCopying {
  convenience init(frame: CGRect)
  convenience init(frame: CGRect, zIndex: Int)
  var frame: CGRect { get }
  var zIndex: Int { get }
}
typealias NSCollectionLayoutGroupCustomItemProvider = (NSCollectionLayoutEnvironment) -> [NSCollectionLayoutGroupCustomItem]
@available(tvOS 13.0, *)
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
@available(tvOS 13.0, *)
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
@available(tvOS 13.0, *)
class NSCollectionLayoutSize : NSObject, NSCopying {
  convenience init(widthDimension width: NSCollectionLayoutDimension, heightDimension height: NSCollectionLayoutDimension)
  var widthDimension: NSCollectionLayoutDimension { get }
  var heightDimension: NSCollectionLayoutDimension { get }
}
@available(tvOS 13.0, *)
class NSCollectionLayoutSpacing : NSObject, NSCopying {
  class func flexible(_ flexibleSpacing: CGFloat) -> Self
  class func fixed(_ fixedSpacing: CGFloat) -> Self
  var spacing: CGFloat { get }
  var isFlexible: Bool { get }
  var isFixed: Bool { get }
}
@available(tvOS 13.0, *)
class NSCollectionLayoutEdgeSpacing : NSObject, NSCopying {
  convenience init(leading: NSCollectionLayoutSpacing?, top: NSCollectionLayoutSpacing?, trailing: NSCollectionLayoutSpacing?, bottom: NSCollectionLayoutSpacing?)
  var leading: NSCollectionLayoutSpacing? { get }
  var top: NSCollectionLayoutSpacing? { get }
  var trailing: NSCollectionLayoutSpacing? { get }
  var bottom: NSCollectionLayoutSpacing? { get }
}
@available(tvOS 13.0, *)
class NSCollectionLayoutSupplementaryItem : NSCollectionLayoutItem, NSCopying {
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor)
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor, itemAnchor: NSCollectionLayoutAnchor)
  var zIndex: Int
  var elementKind: String { get }
  var containerAnchor: NSCollectionLayoutAnchor { get }
  var itemAnchor: NSCollectionLayoutAnchor? { get }
}
@available(tvOS 13.0, *)
class NSCollectionLayoutBoundarySupplementaryItem : NSCollectionLayoutSupplementaryItem, NSCopying {
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment)
  convenience init(layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment, absoluteOffset: CGPoint)
  var extendsBoundary: Bool
  var pinToVisibleBounds: Bool
  var alignment: NSRectAlignment { get }
  var offset: CGPoint { get }
}
@available(tvOS 13.0, *)
class NSCollectionLayoutDecorationItem : NSCollectionLayoutItem, NSCopying {
  class func background(elementKind: String) -> Self
  var zIndex: Int
  var elementKind: String { get }
}
@available(tvOS 13.0, *)
class NSCollectionLayoutAnchor : NSObject, NSCopying {
  convenience init(edges: NSDirectionalRectEdge)
  convenience init(edges: NSDirectionalRectEdge, absoluteOffset: CGPoint)
  convenience init(edges: NSDirectionalRectEdge, fractionalOffset: CGPoint)
  var edges: NSDirectionalRectEdge { get }
  var offset: CGPoint { get }
  var isAbsoluteOffset: Bool { get }
  var isFractionalOffset: Bool { get }
}
@available(tvOS 13.0, *)
protocol NSCollectionLayoutContainer : NSObjectProtocol {
  var contentSize: CGSize { get }
  var effectiveContentSize: CGSize { get }
  var contentInsets: NSDirectionalEdgeInsets { get }
  var effectiveContentInsets: NSDirectionalEdgeInsets { get }
}
@available(tvOS 13.0, *)
protocol NSCollectionLayoutEnvironment : NSObjectProtocol {
  var container: NSCollectionLayoutContainer { get }
  var traitCollection: UITraitCollection { get }
}
@available(tvOS 13.0, *)
protocol NSCollectionLayoutVisibleItem : UIDynamicItem {
  var alpha: CGFloat { get set }
  var zIndex: Int { get set }
  var isHidden: Bool { get set }
  var transform3D: CATransform3D { get set }
  var name: String { get }
  var indexPath: IndexPath { get }
  var frame: CGRect { get }
  var representedElementCategory: UICollectionView.ElementCategory { get }
  var representedElementKind: String? { get }
}
