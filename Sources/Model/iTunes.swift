//
//  iTunes.swift
//  
//
//  Created by Jeremie Berduck on 05/11/2022.
//

import Foundation

// MARK: - Welcome
struct iTunes {
    let resultCount: Int
    let results: [Result]
}

// MARK: - Result
struct Result {
    let screenshotUrls: [String]
    let ipadScreenshotUrls: [String]
    let appletvScreenshotUrls: [Any?]
    let artworkUrl512: String
    let features, supportedDevices, advisories: [String]
    let isGameCenterEnabled: Bool
    let artistViewURL: String
    let artworkUrl60, artworkUrl100: String
    let kind, minimumOSVersion, trackCensoredName: String
    let languageCodesISO2A: [String]
    let fileSizeBytes: String
    let sellerURL: String
    let formattedPrice: String
    let averageUserRatingForCurrentVersion: Double
    let userRatingCountForCurrentVersion: Int
    let trackViewURL: String
    let trackContentRating: String
    let currentVersionReleaseDate: Date
    let releaseNotes, bundleID: String
    let trackID: Int
    let trackName: String
    let releaseDate: Date
    let genreIDS: [String]
    let primaryGenreName: String
    let primaryGenreID: Int
    let isVppDeviceBasedLicensingEnabled: Bool
    let sellerName, currency, contentAdvisoryRating: String
    let averageUserRating: Double
    let version, wrapperType, resultDescription: String
    let artistID: Int
    let artistName: String
    let genres: [String]
    let price, userRatingCount: Int
}
