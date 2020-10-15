
@available(iOS 11.3, *)
class CLSScoreItem : CLSActivityItem {
  var score: Double
  var maxScore: Double
  init(identifier: String, title: String, score: Double, maxScore: Double)
}
