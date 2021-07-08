//
//  ISP.swift
//  SOLID
//
//  Created by fixed on 08/07/2021.
//

import Foundation
import UIKit

// MARK:- protocol conform ISP

@objc protocol MoviesProtocol {
    func addNewMovie ()
    func removeMovie ()
    func searchMovie ()
    @objc optional func sortMovies ()
    @objc optional func filterMovies ()
}


class Movies: MoviesProtocol {
    func addNewMovie() {
        //
    }

    func removeMovie() {
        //
    }

    func searchMovie() {
        //
    }

}

// MARK:- protocol doesn't conform ISP

 protocol SeriesProtocol {
    func addNewSeries ()
    func removeSeries ()
    func searchSeries ()
    func sortSeries ()
    func filterSeries ()
}

class Series: SeriesProtocol {

    func removeSeries() {
        //
    }

    func searchSeries() {
        //
    }

    func sortSeries() {
        //
    }

    func filterSeries() {
        //
    }

    func addNewSeries() {
        //
    }

}
