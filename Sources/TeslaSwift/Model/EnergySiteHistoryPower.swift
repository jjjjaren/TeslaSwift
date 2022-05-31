//
//  EnergySiteHistoryPower.swift
//  TeslaSwift
//
//  Created by Jaren Hamblin on 5/31/22.
//

import Foundation

// MARK: - EnergySiteHistoryPower
open class EnergySiteHistoryPower: Codable {
    open var serialNumber: String
    open var installationTimeZone: String
    open var timeSeries: [TimeSeries]

    enum CodingKeys: String, CodingKey {
        case serialNumber = "serial_number"
        case installationTimeZone = "installation_time_zone"
        case timeSeries = "time_series"
    }

    // MARK: - TimeSeries
    open class TimeSeries: Codable {
        open var timestamp: Date
        open var solarPower: Double
        open var batteryPower: Double
        open var gridPower: Double
        open var gridServicesPower: Double
        open var generatorPower: Double

        enum CodingKeys: String, CodingKey {
            case timestamp
            case solarPower = "solar_power"
            case batteryPower = "battery_power"
            case gridPower = "grid_power"
            case gridServicesPower = "grid_services_power"
            case generatorPower = "generator_power"
        }
    }
}
