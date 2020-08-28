
@available(iOS 10.3, *)
enum INBillType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case autoInsurance
  case cable
  case carLease
  case carLoan
  case creditCard
  case electricity
  case gas
  case garbageAndRecycling
  case healthInsurance
  case homeInsurance
  case internet
  case lifeInsurance
  case mortgage
  case musicStreaming
  case phone
  case rent
  case sewer
  case studentLoan
  case trafficTicket
  case tuition
  case utilities
  case water
}
