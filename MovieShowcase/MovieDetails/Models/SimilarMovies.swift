//
//  SimilarMovies.swift
//  MovieShowcase
//
//  Created by Vivek on 25/04/21.
//

import Foundation

struct SimilarMovies : Codable {
    
    let page : Int?
    let movies : [Movie]?
    let totalPages : Int?
    let totalResults : Int?
    
    enum CodingKeys: String, CodingKey {
        case page = "page"
        case movies = "results"
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        page = try values.decodeIfPresent(Int.self, forKey: .page)
        movies = try values.decodeIfPresent([Movie].self, forKey: .movies)
        totalPages = try values.decodeIfPresent(Int.self, forKey: .totalPages)
        totalResults = try values.decodeIfPresent(Int.self, forKey: .totalResults)
    }
    
}
