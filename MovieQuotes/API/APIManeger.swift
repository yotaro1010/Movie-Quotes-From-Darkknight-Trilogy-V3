//
//  APIManeger.swift
//  DemoV7
//
//  Created by Yotaro Ito on 2021/03/03.
//
import Alamofire
import Foundation

class APIManeger {
   
    enum PathType: String {
         case movie
     }
    
    static let shared = APIManeger()
    
    private let apiKey = "268b9dd32048232e65d0ffd16ef6dd65"
    private let baseAPIURL = "https://api.themoviedb.org/3"
    
    private func handleError(errorHandler: @escaping(_ error: Error) -> Void, error: Error) {
           DispatchQueue.main.async {
               errorHandler(error)
           }
       }
    
    func searchMovie(pathType: PathType, query: String,
                     successHandler: @escaping (MovieResponse) -> Void,
                     errorHandler: @escaping (Error) -> Void) {
        
        let path = pathType.rawValue
        
        let url = baseAPIURL + "/search/" + path + "?"
        
        let params:[String: Any] = [
            "api_key": apiKey,
            "language": "en-US",
            "query": query,
            "include_adult": "false"
        ]
        
        let request = AF.request(url, method: .get, parameters: params)
        request.responseJSON { (response) in
            
            guard let statusCode = response.response?.statusCode else {
                self.handleError(errorHandler: errorHandler, error: MovieError.invalidResponse)
                print("Response status code: \(response)")
                return
            }
            
            print("Response status code: \(response)")
            
            if statusCode <= 300 {
                do {
                    guard let data = response.data else {
                        self.handleError(errorHandler: errorHandler, error: MovieError.noData)
                        return
                    }
                    let decoder = JSONDecoder()
                    let movieResponse = try decoder.decode(MovieResponse.self, from: data)
                    successHandler(movieResponse)
                }catch {
                    self.handleError(errorHandler: errorHandler, error: MovieError.serializationError)
                }
            }
        }
    }

}
