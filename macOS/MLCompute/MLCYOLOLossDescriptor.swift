
@available(macOS 11.0, *)
class MLCYOLOLossDescriptor : NSObject, NSCopying {
  var anchorBoxCount: Int { get }
  var anchorBoxes: Data { get }
  var shouldRescore: Bool
  var scaleSpatialPositionLoss: Float
  var scaleSpatialSizeLoss: Float
  var scaleNoObjectConfidenceLoss: Float
  var scaleObjectConfidenceLoss: Float
  var scaleClassLoss: Float
  var minimumIOUForObjectPresence: Float
  var maximumIOUForObjectAbsence: Float
  convenience init(anchorBoxes: Data, anchorBoxCount: Int)
}
