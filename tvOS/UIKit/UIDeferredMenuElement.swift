
@available(tvOS 14.0, *)
class UIDeferredMenuElement : UIMenuElement {
  convenience init(_ elementProvider: @escaping (@escaping ([UIMenuElement]) -> Void) -> Void)
}
