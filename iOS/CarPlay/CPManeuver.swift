
@available(iOS 12.0, *)
class CPManeuver : NSObject, NSCopying, NSSecureCoding {
  @available(iOS, introduced: 12.0, deprecated: 13.0)
  var symbolSet: CPImageSet?
  var symbolImage: UIImage?
  var junctionImage: UIImage?
  var instructionVariants: [String]
  var initialTravelEstimates: CPTravelEstimates?
  var attributedInstructionVariants: [NSAttributedString]
  @available(iOS 14.0, *)
  var dashboardSymbolImage: UIImage?
  @available(iOS 14.0, *)
  var dashboardJunctionImage: UIImage?
  @available(iOS 14.0, *)
  var dashboardInstructionVariants: [String]
  @available(iOS 14.0, *)
  var dashboardAttributedInstructionVariants: [NSAttributedString]
  @available(iOS 14.0, *)
  var notificationSymbolImage: UIImage?
  @available(iOS 14.0, *)
  var notificationInstructionVariants: [String]
  @available(iOS 14.0, *)
  var notificationAttributedInstructionVariants: [NSAttributedString]
  var userInfo: Any?
}
