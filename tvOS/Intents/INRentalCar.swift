
@available(tvOS 13.0, *)
class INRentalCar : NSObject, NSCopying, NSSecureCoding {
  init(rentalCompanyName: String, type: String?, make: String?, model: String?, rentalCarDescription: String?)
  var rentalCompanyName: String { get }
  var type: String? { get }
  var make: String? { get }
  var model: String? { get }
  var rentalCarDescription: String? { get }
}
