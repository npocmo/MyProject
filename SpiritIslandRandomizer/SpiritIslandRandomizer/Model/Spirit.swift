import Foundation

let numberOfPlayers = Array(1...6) // Array of numbers from 1 to 6

enum Complexity {
    case low, moderate, high, very_high
}

enum Tier: String, Equatable {
    case x, s, a, b, c, d, f
}

struct TierItem: Identifiable {
    let id = UUID()
    var isChecked: Bool = true
    var tier: Tier
}

let tiers = [
    TierItem(tier: .x),
    TierItem(tier: .s),
    TierItem(tier: .a),
    TierItem(tier: .b),
    TierItem(tier: .c),
    TierItem(tier: .d),
    TierItem(tier: .f)
]

struct Spirit {
    let tier: Tier
    let complexity: Complexity
    let name: String
    let image: String
    let aspectName: String?
    
    init(tier: Tier, complexity: Complexity, name: String, image: String, aspectName: String? = nil) {
        self.tier = tier
        self.complexity = complexity
        self.name = name
        self.image = image
        self.aspectName = aspectName
    }
}

struct SpiritItem: Identifiable {
    let id = UUID()
    var spirit: Spirit
}

let spirits = [
    // Base game
    SpiritItem(spirit: Spirit(tier: .b, complexity: .low, name: "River Surges in Sunlight", image: "River_Surges_in_Sunlight")),
    SpiritItem(spirit: Spirit(tier: .f, complexity: .low, name: "Shadows Flicker Like Flame", image: "Shadows_Flicker_Like_Flame")),
    SpiritItem(spirit: Spirit(tier: .d, complexity: .low, name: "Vital Strength of the Earth", image: "Vital_Strength_of_the_Earth")),
    SpiritItem(spirit: Spirit(tier: .c, complexity: .low, name: "Lightning's Swift Strike", image: "Lightning's_Swift_Strike")),
    SpiritItem(spirit: Spirit(tier: .x, complexity: .moderate, name: "A Spread of Rampant Green", image: "A_Spread_of_Rampant_Green")),
    SpiritItem(spirit: Spirit(tier: .c, complexity: .high, name: "Bringer of Dreams and Nightmares", image: "Bringer_of_Dreams_and_Nightmares")),
    SpiritItem(spirit: Spirit(tier: .c, complexity: .high, name: "Ocean's Hungry Grasp", image: "Ocean's_Hungry_Grasp")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .moderate, name: "Thunderspeaker", image: "Thunderspeaker")),
    
    // Horizons
    SpiritItem(spirit: Spirit(tier: .d, complexity: .low, name: "Devouring Teeth Lurk Underfoot", image: "Devouring_Teeth_Lurk_Underfoot")),
    SpiritItem(spirit: Spirit(tier: .a, complexity: .low, name: "Eyes Watch from the Trees", image: "Eyes_Watch_from_the_Trees")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .low, name: "Fathomless Mud of the Swamp", image: "Fathomless_Mud_of_the_Swamp")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .low, name: "Rising Heat of Stone and Sand", image: "Rising_Heat_of_Stone_and_Sand")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .low, name: "Sun-Bright Whirlwind", image: "Sun-Bright_Whirlwind")),
    
    // Branch
    SpiritItem(spirit: Spirit(tier: .s, complexity: .moderate, name: "Keeper of the Forbidden Wilds", image: "Keeper_of_the_Forbidden_Wilds")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .moderate, name: "Sharp Fangs Behind the Leaves", image: "Sharp_Fangs_Behind_the_Leaves")),
    
    // Promo
    SpiritItem(spirit: Spirit(tier: .s, complexity: .high, name: "Downpour Drenches the World", image: "Downpour_Drenches_the_World")),
    SpiritItem(spirit: Spirit(tier: .a, complexity: .very_high, name: "Finder of Paths Unseen", image: "Finder_of_Paths_Unseen")),
    SpiritItem(spirit: Spirit(tier: .d, complexity: .high, name: "Heart of the Wildfire", image: "Heart_of_the_Wildfire")),
    SpiritItem(spirit: Spirit(tier: .a, complexity: .high, name: "Serpent Slumbering Beneath the Island", image: "Serpent_Slumbering_Beneath_the_Island")),
    
    // Jagged Earth
    SpiritItem(spirit: Spirit(tier: .c, complexity: .moderate, name: "Shifting Memory of Ages", image: "Shifting_Memory_of_Ages")),
    SpiritItem(spirit: Spirit(tier: .d, complexity: .high, name: "Shroud of Silent Mist", image: "Shroud_of_Silent_Mist")),
    SpiritItem(spirit: Spirit(tier: .a, complexity: .moderate, name: "Grinning Trickster Stirs Up Trouble", image: "Grinning_Trickster_Stirs_Up_Trouble")),
    SpiritItem(spirit: Spirit(tier: .s, complexity: .moderate, name: "Many Minds Move as One", image: "Many_Minds_Move_as_One")),
    SpiritItem(spirit: Spirit(tier: .x, complexity: .moderate, name: "Stone's Unyielding Defiance", image: "Stone's_Unyielding_Defiance")),
    SpiritItem(spirit: Spirit(tier: .a, complexity: .moderate, name: "Volcano Looming High", image: "Volcano_Looming_High")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .high, name: "Vengeance as a Burning Plague", image: "Vengeance_as_a_Burning_Plague")),
    SpiritItem(spirit: Spirit(tier: .x, complexity: .very_high, name: "Fractured Days Split the Sky", image: "Fractured_Days_Split_the_Sky")),
    SpiritItem(spirit: Spirit(tier: .s, complexity: .very_high, name: "Starlight Seeks Its Form", image: "Starlight_Seeks_Its_Form")),
    SpiritItem(spirit: Spirit(tier: .a, complexity: .moderate, name: "Lure of the Deep Wilderness", image: "Lure_of_the_Deep_Wilderness")),
    
    // Incarnate
    SpiritItem(spirit: Spirit(tier: .b, complexity: .high, name: "Breath of Darkness Down Your Spine", image: "Breath_of_Darkness_Down_Your_Spine")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .moderate, name: "Ember-Eyed Behemoth", image: "Ember-Eyed_Behemoth")),
    SpiritItem(spirit: Spirit(tier: .x, complexity: .moderate, name: "Hearth-Vigil", image: "Hearth-Vigil")),
    SpiritItem(spirit: Spirit(tier: .s, complexity: .high, name: "Relentless Gaze of the Sun", image: "Relentless_Gaze_of_the_Sun")),
    SpiritItem(spirit: Spirit(tier: .s, complexity: .moderate, name: "Towering Roots of the Jungle", image: "Towering_Roots_of_the_Jungle")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .high, name: "Wandering Voice Keens Delirium", image: "Wandering_Voice_Keens_Delirium")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .high, name: "Wounded Waters Bleeding", image: "Wounded_Waters_Bleeding")),
    SpiritItem(spirit: Spirit(tier: .x, complexity: .very_high, name: "Dances Up Earthquakes", image: "Dances_Up_Earthquakes")),
    
    // Aspects
    SpiritItem(spirit: Spirit(tier: .c, complexity: .low, name: "Lightning's Swift Strike", image: "Lightning's_Swift_Strike_(Pandemonium)", aspectName: "Pandemonium")),
    SpiritItem(spirit: Spirit(tier: .c, complexity: .low, name: "Lightning's Swift Strike", image: "Lightning's_Swift_Strike_(Wind)", aspectName: "Wind")),
    SpiritItem(spirit: Spirit(tier: .f, complexity: .low, name: "River Surges in Sunlight", image: "River_Surges_in_Sunlight_(Sunshine)", aspectName: "Sunshine")),
    SpiritItem(spirit: Spirit(tier: .d, complexity: .low, name: "Shadows Flicker Like Flame", image: "Shadows_Flicker_Like_Flame_(Madness)", aspectName: "Madness")),
    SpiritItem(spirit: Spirit(tier: .f, complexity: .low, name: "Shadows Flicker Like Flame", image: "Shadows_Flicker_Like_Flame_(Reach)", aspectName: "Reach")),
    SpiritItem(spirit: Spirit(tier: .d, complexity: .low, name: "Vital Strength of the Earth", image: "Vital_Strength_of_the_Earth_(Resilience)", aspectName: "Resilience")),
    SpiritItem(spirit: Spirit(tier: .d, complexity: .moderate, name: "Lightning's Swift Strike", image: "Lightning's_Swift_Strike", aspectName: "Immense")),
    SpiritItem(spirit: Spirit(tier: .a, complexity: .low, name: "River Surges in Sunlight", image: "River_Surges_in_Sunlight", aspectName: "Travel")),
    SpiritItem(spirit: Spirit(tier: .f, complexity: .moderate, name: "Shadows Flicker Like Flame", image: "Shadows_Flicker_Like_Flame", aspectName: "Amorphous")),
    SpiritItem(spirit: Spirit(tier: .d, complexity: .moderate, name: "Shadows Flicker Like Flame", image: "Shadows_Flicker_Like_Flame", aspectName: "Foreboding")),
    SpiritItem(spirit: Spirit(tier: .c, complexity: .moderate, name: "Vital Strength of the Earth", image: "Vital_Strength_of_the_Earth", aspectName: "Might")),
    SpiritItem(spirit: Spirit(tier: .a, complexity: .moderate, name: "A Spread of Rampant Green", image: "A_Spread_of_Rampant_Green", aspectName: "Tangles")),
    SpiritItem(spirit: Spirit(tier: .x, complexity: .moderate, name: "A Spread of Rampant Green", image: "A_Spread_of_Rampant_Green", aspectName: "Regrowth")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .high, name: "Bringer of Dreams and Nightmares", image: "Bringer_of_Dreams_and_Nightmares", aspectName: "Enticing")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .high, name: "Bringer of Dreams and Nightmares", image: "Bringer_of_Dreams_and_Nightmares", aspectName: "Violence")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .high, name: "Heart of the Wildfire", image: "Heart_of_the_Wildfire", aspectName: "Transforming")),
    SpiritItem(spirit: Spirit(tier: .c, complexity: .high, name: "Serpent Slumbering Beneath the Island", image: "Serpent_Slumbering_Beneath_the_Island", aspectName: "Locus")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .moderate, name: "Keeper of the Forbidden Wilds", image: "Keeper_of_the_Forbidden_Wilds", aspectName: "Hostility")),
    SpiritItem(spirit: Spirit(tier: .a, complexity: .moderate, name: "Lightning's Swift Strike", image: "Lightning's_Swift_Strike", aspectName: "Sparking")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .moderate, name: "Lure of the Deep Wilderness", image: "Lure_of_the_Deep_Wilderness", aspectName: "Lair")),
    SpiritItem(spirit: Spirit(tier: .c, complexity: .high, name: "Ocean's Hungry Grasp", image: "Ocean's_Hungry_Grasp", aspectName: "Deep")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .moderate, name: "River Surges in Sunlight", image: "River_Surges_in_Sunlight", aspectName: "Haven")),
    SpiritItem(spirit: Spirit(tier: .c, complexity: .moderate, name: "Shadows Flicker Like Flame", image: "Shadows_Flicker_Like_Flame", aspectName: "Darkfire")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .moderate, name: "Sharp Fangs Behind the Leaves", image: "Sharp_Fangs_Behind_the_Leaves", aspectName: "Encircle")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .moderate, name: "Sharp Fangs Behind the Leaves", image: "Sharp_Fangs_Behind_the_Leaves", aspectName: "Unconstrainted")),
    SpiritItem(spirit: Spirit(tier: .s, complexity: .moderate, name: "Shifting Memory of Ages", image: "Shifting_Memory_of_Ages", aspectName: "Intensify")),
    SpiritItem(spirit: Spirit(tier: .c, complexity: .moderate, name: "Shifting Memory of Ages", image: "Shifting_Memory_of_Ages", aspectName: "Mentor")),
    SpiritItem(spirit: Spirit(tier: .b, complexity: .high, name: "Shroud of Silent Mist", image: "Shroud_of_Silent_Mist", aspectName: "Stranded")),
    SpiritItem(spirit: Spirit(tier: .d, complexity: .moderate, name: "Thunderspeaker", image: "Thunderspeaker", aspectName: "Tactician")),
    SpiritItem(spirit: Spirit(tier: .d, complexity: .moderate, name: "Thunderspeaker", image: "Thunderspeaker", aspectName: "Warrior")),
    SpiritItem(spirit: Spirit(tier: .s, complexity: .moderate, name: "Vital Strength of the Earth", image: "Vital_Strength_of_the_Earth", aspectName: "Nourishing"))
].sorted { $0.spirit.name < $1.spirit.name }
