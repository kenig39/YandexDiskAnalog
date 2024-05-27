
import Foundation

final class LoginModel{
    typealias Router = Closable & TabBarInsets
    let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func openAuth(){
        
    }
}
