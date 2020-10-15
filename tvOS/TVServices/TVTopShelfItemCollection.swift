
@available(tvOS 13.0, *)
class TVTopShelfItemCollection<Item> : TVTopShelfObject where Item : TVTopShelfItem {
  var items: [Item] { get }
  init(items: [Item])
}
