
@available(iOS 4.0, *)
class UINib : NSObject {
  /*not inherited*/ init(nibName name: String, bundle bundleOrNil: Bundle?)
  /*not inherited*/ init(data: Data, bundle bundleOrNil: Bundle?)
  func instantiate(withOwner ownerOrNil: Any?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> [Any]
}
