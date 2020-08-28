
@available(iOS 12.0, *)
class CPTripPreviewTextConfiguration : NSObject, NSSecureCoding {
  init(startButtonTitle: String?, additionalRoutesButtonTitle: String?, overviewButtonTitle: String?)
  var startButtonTitle: String? { get }
  var additionalRoutesButtonTitle: String? { get }
  var overviewButtonTitle: String? { get }
}
