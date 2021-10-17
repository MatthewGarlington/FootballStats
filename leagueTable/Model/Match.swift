//
//  PremLeagueInfo.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation
import UIKit

//nested layer deeper!!!!!
struct MatchInfo: Hashable, Codable {
   
    var data: MatchInfoData?
}

struct MatchInfoData: Hashable, Codable {
    var match_events: [MatchEvents]?
    var round: Round?
    var referee_id: Int?
    var season_id: Int?
    var stage: Stage?
    var group: Group?
    var status_code: Int?
    var match_start: String?
    var match_start_iso: String?
    var minute: Int?
    var status: String?
    var stats: Stats?
    var venue: Venue?
    var home_team: HomeTeam?
    var away_team: AwayTeam?
    var match_statistics: [MatchStatistics]?
    var lineups: [LineUps]?
}



struct Round: Hashable, Codable {
    var round_id: Int?
    var name: String?
    var is_current: Bool?
}

struct Venue: Hashable, Codable {
    var round_id: Int?
    var name: String?
    var capacity: Int?
    var city: String?
    var country_id: Int?
}

struct Stage: Hashable, Codable {
    var stage_id: Int?
    var name: String?
}

struct Group: Hashable, Codable {
    var group_id: Int?
    var group_name: String?
}

struct Stats: Codable, Hashable {
    var ht_score: String?
    var ft_score: String?
    var et_score: String?
    var ps_score: String?
}

struct HomeTeam: Codable, Hashable {
    var team_id: Int?
    var name: String?
    var short_code: String?
    var common_name: String?
    var logo: URL?
    var country: Country?
}

struct AwayTeam: Codable, Hashable {
    var team_id: Int?
    var name: String?
    var short_code: String?
    var common_name: String?
    var logo: URL?
    var country: Country?
}

struct Country: Codable, Hashable {
    var country_id: Int?
    var name: String?
    var country_code: String?
    var continent: String?
}

struct MatchEvents: Hashable, Codable {
    var team_id: Int?
    var type: String?
    var player_name: String?
    var related_player_id: Int?
    var related_player_name: String?
    var minute: Int?
    var extra_minute: Int?
    var reason: String?
    var injured: String?
    var own_goal: Bool?
    var penalty: Bool?
    var result: String?
}

struct MatchStatistics: Hashable, Codable {
    var team_id: Int?
    var team_name: String?
    var fouls: Int?
    var injuries: Int?
    var corners: Int?
    var offsides: Int?
    var shots_total: Int?
    var shots_on_target: Int?
    var shots_off_target: Int?
    var shots_blocked: Int?
    var possessiontime: Int?
    var possessionpercent: Int?
    var yellowcards: Int?
    var yellowredcards: Int?
    var redcards: Int?
    var substitutions: Int?
    var goal_kick: Int?
    var goal_attempts: Int?
    var free_kick: Int?
    var throw_in: Int?
    var ball_safe: Int?
    var goals: Int?
    var penalties: Int?
    var attacks: Int?
    var dangerous_attacks: Int?
}

struct LineUps: Codable, Hashable {
    var team_id: Int?
    var formation: String?
    var formation_confirmed: Int?
    var players: [Players]?
}

struct Players: Codable, Hashable {
    var player_id: Int?
    var firstname: String?
    var lastname: String?
    var birthday: String?
    var age: Int?
    var weight: Int?
    var height: Int?
    var img: String?
    var country: Country?
    var detailed: Detailed?
}

struct Detailed: Hashable, Codable {
    var number: Int?
    var position: String?
    var order: Int?
}






