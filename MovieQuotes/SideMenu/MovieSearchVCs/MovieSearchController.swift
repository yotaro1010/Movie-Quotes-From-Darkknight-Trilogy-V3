//
//  ViewController.swift
//  DemoV7
//
//  Created by Yotaro Ito on 2021/03/03.
//
import SafariServices
import UIKit

class MovieSearchController: UIViewController {
    
    private let searchBar = SearchBar(placeHolder: "Search Movies", tintColor: UIColor.white, textColor: UIColor.white)
      
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(MovieSearchCell.self.self, forCellReuseIdentifier: "MovieSearchCell")
        tableView.backgroundColor = UIColor.black
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        return tableView
    }()
    
    var listOfMovies = [Movie]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"),
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(dismissSelf))
        navigationItem.titleView = searchBar
        view.addSubview(tableView)
        searchBar.delegate = self
        }
    
        @objc func dismissSelf(){
            dismiss(animated: true, completion: nil)
        }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
}

extension MovieSearchController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieSearchCell.identifier, for: indexPath) as! MovieSearchCell
        cell.backgroundColor = UIColor.black
        cell.listOfMoviesForTV = listOfMovies[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let url = "https://www.themoviedb.org/movie/\(listOfMovies[indexPath.row].id ?? 0))"
        let VC = SFSafariViewController(url: URL(string: url)!)
        
        DispatchQueue.main.async {
            self.present(VC, animated: true)
        }
    }
}

extension MovieSearchController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        searchBar.resignFirstResponder()
        
        guard let text = searchBar.text, !text.isEmpty  else {
            return
        }
    
        APIManeger.shared.searchMovie(query: text, successHandler: {[weak self] (result) in
            self?.listOfMovies = result.movies
            DispatchQueue.main.async {
                            self?.tableView.reloadData()
                        }
        }, errorHandler: {(error) in
            print(error)
        })
        
//        APIManeger.shared.searchMovie(pathType: .movie, query: text) {[weak self] (result) in
//            self?.listOfMovies = result.movies
//            DispatchQueue.main.async {
//                self?.tableView.reloadData()
//            }
//        } errorHandler: { (error) in
//            print(error)
//        }
    }
}



