
import UIKit
//import SwiftKeychainWrapper
//import FacebookCore
//import FacebookLogin
//import GoogleSignIn

class AuthService {
    
    static let instance = AuthService()
    private init () { }
    
    // User Defaults KEYS
    private lazy var ApiTokenKey = "apiToken"
    private lazy var LoggedInKey = "loggedIn"
    private lazy var UserMailKey = "userEmail"
    private lazy var UserIdKey = "userId"
    private lazy var UserProfileImage = "userProfileImage"
    private lazy var UserName = "userName"
    private lazy var IdentityNumber = "IdentityNumber"
    private lazy var IdentityImage = "IdentityImage"
    private lazy var CarLicenc = "CarLicenc"
    private lazy var CarModel = "CarModel"
    private lazy var  Carnumber = "Carnumber"
    private lazy var LicenceImage = "LicenceImage"
    private lazy var ShouldShowNotifications = "ShouldShowNotifications"
    private lazy var Address = "Address"
    private lazy var CarType = "cartypr"
    private lazy var carapplication = "carform"
    private lazy var CarImage = "carimage"
    private lazy var uploadphoto = "uploadpho"
    
    private let defaults = UserDefaults.standard
    
    var isLoggedIn : Bool {
        get {
            return defaults.bool(forKey: LoggedInKey)
        }
        set {
            defaults.set(newValue, forKey: LoggedInKey)
        }
    }
    
    var authToken: String? {
        get {
            return defaults.value(forKey: ApiTokenKey) as? String
        }
        set {
            defaults.set(newValue, forKey: ApiTokenKey)
        }
    }
    var UserAdrres: String? {
        get {
            return defaults.value(forKey: Address) as? String
        }
        set {
            defaults.set(newValue, forKey: Address)
        }
    }
    var UserIdentyNumber: String? {
        get {
            return defaults.value(forKey: IdentityNumber) as? String
        }
        set {
            defaults.set(newValue, forKey: IdentityNumber)
        }
    }
    var UserIdentityimage: String? {
        get {
            return defaults.value(forKey: IdentityImage) as? String
        }
        set {
            defaults.set(newValue, forKey: IdentityImage)
        }
    }
    var UserLicence: String? {
        get {
            return defaults.value(forKey: CarLicenc) as? String
        }
        set {
            defaults.set(newValue, forKey: CarLicenc)
        }
    }
    var UsercarModel: String? {
        get {
            return defaults.value(forKey: CarModel) as? String
        }
        set {
            defaults.set(newValue, forKey: CarModel)
        }
    }
    var Usercartype: String? {
        get {
            return defaults.value(forKey: CarType) as? String
        }
        set {
            defaults.set(newValue, forKey: CarType)
        }
    }
    var UsercarNumber: String? {
        get {
            return defaults.value(forKey: Carnumber) as? String
        }
        set {
            defaults.set(newValue, forKey: Carnumber)
        }
    }
    var UserLicinecImage: String? {
        get {
            return defaults.value(forKey: LicenceImage) as? String
        }
        set {
            defaults.set(newValue, forKey: LicenceImage)
        }
    }
    var UserapplicatioImage: String? {
        get {
            return defaults.value(forKey: carapplication) as? String
        }
        set {
            defaults.set(newValue, forKey: carapplication)
        }
    }
    var UsercarImage: String? {
        get {
            return defaults.value(forKey: CarImage) as? String
        }
        set {
            defaults.set(newValue, forKey: CarImage)
        }
    }
    
    var userEmail: String? {
        get {
            return defaults.value(forKey: UserMailKey) as? String
        }
        set {
            defaults.set(newValue, forKey: UserMailKey)
        }
    }
    
    var userId: Int? {
        get {
            return defaults.value(forKey: UserIdKey) as? Int
        }
        set {
            defaults.set(newValue, forKey: UserIdKey)
        }
    }
    
    var userName: String? {
        get {
            return defaults.value(forKey: UserName) as? String
        }
        set {
            defaults.set(newValue, forKey: UserName)
        }
    }
    
    var userImage: String? {
        get {
            return defaults.value(forKey: UserProfileImage) as? String
        }
        set {
            defaults.set(newValue, forKey: UserProfileImage)
        }
    }
    
    var userFirstName: String? {
        get {
            return defaults.value(forKey: "userFirstName") as? String
        }
        set {
            defaults.set(newValue, forKey: "userFirstName")
        }
    }
    
    var userLastName: String? {
        get {
            return defaults.value(forKey: "userLastName") as? String
        }
        set {
            defaults.set(newValue, forKey: "userLastName")
        }
    }
    
    var userPhone: String? {
        get {
            return defaults.value(forKey: "userPhone") as? String
        }
        set {
            defaults.set(newValue, forKey: "userPhone")
        }
    }
    
    var userGender: String? {
        get {
            return defaults.value(forKey: "userGender") as? String
        }
        set {
            defaults.set(newValue, forKey: "userGender")
        }
    }
    
    var userJob: String? {
        get {
            return defaults.value(forKey: "userJob") as? String
        }
        set {
            defaults.set(newValue, forKey: "userJob")
        }
    }
    
    var userMemberShip: String? {
        get {
            return defaults.value(forKey: "userMemberShip") as? String
        }
        set {
            defaults.set(newValue, forKey: "userMemberShip")
        }
    }
    
//    // userCountry
//    var userCountryUrl: String? {
//        get {
//            return defaults.value(forKey: UserCountry) as? String
//        }
//        set {
//            defaults.set(newValue, forKey: UserCountry)
//        }
//    }
//
//    var lastRequest: Int? {
//        get {
//            return defaults.value(forKey: LastRequest) as? Int
//        }
//        set {
//            defaults.set(newValue, forKey: LastRequest)
//        }
//    }
    
    var userdate: String? {
        get {
            return (defaults.value(forKey: "userdate") as? String)
        }
        set {
            defaults.set(newValue, forKey: "userdate")
        }
    }
    
    var userArea: String? {
        get {
            return (defaults.value(forKey: "userArea") as? String)
        }
        set {
            defaults.set(newValue, forKey: "userArea")
        }
    }
    
    var userRigon: String? {
        get {
            return (defaults.value(forKey: "userRigon") as? String)
        }
        set {
            defaults.set(newValue, forKey: "userRigon")
        }
    }
    
    var userDist: String? {
        get {
            return (defaults.value(forKey: "userDist") as? String)
        }
        set {
            defaults.set(newValue, forKey: "userDist")
        }
    }
    
    var userRole: String {
        get {
            return (defaults.value(forKey: "userRole") as? String) ?? "client"
        }
        set {
            defaults.set(newValue, forKey: "userRole")
        }
    }
    
    var shouldShowNotifications: Bool {
        get {
            return defaults.value(forKey: ShouldShowNotifications) as? Bool ?? true
        }
        set {
            defaults.set(newValue, forKey: ShouldShowNotifications)
        }
    }
    var uploadimage: Int? {
        get {
            return defaults.value(forKey: uploadphoto) as? Int
        }
        set {
            defaults.set(newValue, forKey: uploadphoto)
        }
    }
    
//    func setUserDefaults(update user: UpdateProf) {
//
//        isLoggedIn = true
//        userId = user.id
//        //        authToken = user.token
//        userEmail = user.email
//        userImage = user.image.filterAsURL
//        userName = user.firstName
//        userFirstName = user.firstName
//        userLastName = user.lastName
//        userPhone = user.phone
//        userGender = user.gender
//        userJob = user.subCategoryName
//        userdate = user.birthDate
//        userRole = user.role
//    }
    
    func setUserDefaults(user: UserDate) {
//        header = ["X-localization" : "ar",
//                  "Authorization" : "bearer \(user.token)"
//        ]
        isLoggedIn = true
        userId = user.id
        authToken = user.token
        userEmail = user.email
        userImage = user.image
        userName = user.name
        userPhone = user.phone
        UserAdrres = user.address
        UsercarNumber = user.carNumber
        UsercarModel = user.carModel
        UserIdentyNumber = user.identityNumber
        UserIdentityimage = user.identityImage
        UserLicence = user.licenseNumber
        UserLicinecImage = user.licenseImage
        Usercartype = user.carType
        UserapplicatioImage = user.carFormImage
        UsercarImage = user.carImage
        userImage = user.image
    }
    
    private func removeUserDefaults()  {
        isLoggedIn = false
        authToken = nil
        userEmail = nil
        userId = nil
        userName = nil
        userImage = nil
        userFirstName = nil
        userLastName = nil
        userGender = nil
        userMemberShip = nil
        shouldShowNotifications = true
    }
    
    func restartAppAndRemoveUserDefaults() {
        removeUserDefaults()
        DispatchQueue.main.async {
            guard let window =  UIApplication.shared.keyWindow else { fatalError() }
            window.rootViewController = DLoginVC()
            UIView.transition(with: window, duration: 1.0, options: .transitionFlipFromTop, animations: nil, completion: nil)
        }
    }
    
    private func resetDefaults() {
        //    print(Array(UserDefaults.standard.dictionaryRepresentation().values))
        defaults.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        print("****************************************************")
        //    print(Array(UserDefaults.standard.dictionaryRepresentation().values))
        
        //        let dictionary = defaults.dictionaryRepresentation()
        //        dictionary.keys.forEach { key in
        //            defaults.removeObject(forKey: key)
        //        }
    }
}
