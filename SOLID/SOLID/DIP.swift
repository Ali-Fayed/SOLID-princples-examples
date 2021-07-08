//
//  DIP.swift
//  SOLID
//
//  Created by fixed on 08/07/2021.
//

import Foundation
import UIKit

// MARK:- Class doesn't conofrm DIP

class Notification {

    func sendByGmailButton () {
        sendByGmail()
    }
    func sendByHotmailButton () {
        sendByHotmail()
    }
}

class sendByGmail {

}
class sendByHotmail {

}


// MARK:- Class conofrm DIP

protocol ProductProtocol {
    var name: String { get }
    var cost: Int { get }
    var image: UIImage { get }
}
protocol NetworkProtocol {
    func getProducts(for userId: String, completion: @escaping ([ProductProtocol]) -> Void)
}

///
struct Product: ProductProtocol {
    let name: String
    let cost: Int
    let image: UIImage
}

///
final class Network: NetworkProtocol {
    private let urlSession = URLSession(configuration: .default)

    func getProducts(for userId: String, completion: @escaping ([ProductProtocol]) -> Void) {
        guard let url = URL(string: "baseURL/products/user/\(userId)") else {
            completion([])
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        urlSession.dataTask(with: request) { (data, response, error) in
            completion([Product(name: "Just an example", cost: 1000, image: UIImage())])
        }
    }
}
///
class ExampleScreenViewController: UIViewController {
    private let network: NetworkProtocol // Abstraction dependency
    private var products: [ProductProtocol] // Abstraction dependency
    private let userId: String = "user-id"

    required init?(coder: NSCoder) {
        fatalError()
    }

    init(network: NetworkProtocol, products: [ProductProtocol]) { // Abstraction dependency
        self.network = network
        self.products = products
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        getProducts()
    }

    private func getProducts() {
        network.getProducts(for: userId) { [weak self] products in
            self?.products = products
        }
    }
}


