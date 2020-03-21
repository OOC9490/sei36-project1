User.destroy_all

u1 = User.create(:email => "lcarreon@ga.co", password: "chicken", administrator: 1, nickname: "OOC", profile_image: "https://i.kym-cdn.com/entries/icons/facebook/000/021/572/maxresdefault.jpg")
u2 = User.create(:email => "jturnbull@ga.co", password: "chicken", administrator: 1)
u3 = User.create(:email => "abrymora@ga.co", password: "chicken", administrator: 1)
u4 = User.create(:email => "test_user@ga.co", password: "chicken", administrator: 0)

puts "#{User.count} users created"

Fighter.destroy_all

c1 = Fighter.create(
    :name => "Wolf",
    :franchise => "Starfox",
    :stock_symbol => "/assets/wolf_stock.png",
    :availability => "Unlockable",
    :image => "/assets/wolf_fullbody.png",
    :final_smash => "/assets/wolf_final.gif",
    :entry_created => Time.zone.now
)

c2 = Fighter.create(
    :name => "Toon Link",
    :franchise => "Legend of Zelda",
    :stock_symbol => "/assets/toonlink_stock.png",
    :availability => "Unlockable",
    :image => "/assets/toonlink_fullbody.png",
    :final_smash => "/assets/toonlink_final.gif",
    :entry_created => Time.zone.now
)

c3 = Fighter.create(
    :name => "Lucina",
    :franchise => "Fire Emblem",
    :stock_symbol => "/assets/lucina_stock.png",
    :availability => "Unlockable",
    :image => "/assets/lucina_fullbody.png",
    :final_smash => "/assets/lucina_final.gif",
    :entry_created => Time.zone.now
)

c4 = Fighter.create(
    :name => "Peach",
    :franchise => "Super Mario",
    :stock_symbol => "/assets/peach_stock.png",
    :availability => "Unlockable",
    :image => "/assets/peach_fullbody.png",
    :final_smash => "/assets/peach_final.gif",
    :entry_created => Time.zone.now
)

c5 = Fighter.create(
    :name => "Pikachu",
    :franchise => "Pokemon",
    :stock_symbol => "/assets/pikachu_stock.png",
    :availability => "Unlockable",
    :image => "/assets/pikachu_fullbody.png",
    :final_smash => "/assets/pikachu_final.gif",
    :entry_created => Time.zone.now
)

puts "#{Fighter.count} Fighters were made!"


Special.destroy_all

# wolf specials
s1 = Special.create(
    :name => "Blaster",
    :input_direction => "Neutral",
    :attack_type => "Projectile",
    :damage_dealt => "7% (base)",
    :preview => "/assets/wolf_neutralb.gif",
    :entry_created => Time.zone.now
)

s2 = Special.create(
    :name => "Wolf Flash",
    :input_direction => "Side",
    :attack_type => "Melee/ Recovery",
    :damage_dealt => "3%-15% (base)",
    :preview => "/assets/wolf_sideb.gif",
    :entry_created => Time.zone.now
)

s3 = Special.create(
    :name => "Fire Wolf",
    :input_direction => "Up",
    :attack_type => "Melee/ Recovery",
    :damage_dealt => "11.5% (base)",
    :preview => "/assets/wolf_upb.gif",
    :entry_created => Time.zone.now
)

s4 = Special.create(
    :name => "Reflector",
    :input_direction => "Down",
    :attack_type => "Melee/ Reflector",
    :damage_dealt => "4% (base)",
    :preview => "/assets/wolf_downb.gif",
    :entry_created => Time.zone.now
)

c1.specials << s1 << s2 << s3 << s4

# toon link specials
s5 = Special.create(
    :name => "Hero's Bow",
    :input_direction => "Neutral",
    :attack_type => "Projectile",
    :damage_dealt => "4-12% (base)",
    :preview => "/assets/toonlink_neutralb.gif",
    :entry_created => Time.zone.now
)

s6 = Special.create(
    :name => "Boomerang",
    :input_direction => "Side",
    :attack_type => "Projectile",
    :damage_dealt => "3-9.6% (base)",
    :preview => "/assets/toonlink_sideb.gif",
    :entry_created => Time.zone.now
)

s7 = Special.create(
    :name => "Spin Attack",
    :input_direction => "Up",
    :attack_type => "Melee/ Recovery",
    :damage_dealt => "1-4% (base)",
    :preview => "/assets/toonlink_upb.gif",
    :entry_created => Time.zone.now
)

s8 = Special.create(
    :name => "Bomb",
    :input_direction => "Down",
    :attack_type => "Projectile",
    :damage_dealt => "14% (base)",
    :preview => "/assets/toonlink_downb.gif",
    :entry_created => Time.zone.now
)

c2.specials << s5 << s6 << s7 << s8

# lucina specials
s9 = Special.create(
    :name => "Shieldbreaker",
    :input_direction => "Neutral",
    :attack_type => "Melee",
    :damage_dealt => "8.5-23% (base)",
    :preview => "/assets/lucina_neutralb.gif",
    :entry_created => Time.zone.now
)

s10 = Special.create(
    :name => "Dancing Blade",
    :input_direction => "Side",
    :attack_type => "Melee",
    :damage_dealt => "2-5.6% (base)",
    :preview => "/assets/lucina_sideb.gif",
    :entry_created => Time.zone.now
)

s11 = Special.create(
    :name => "Dolphin Slash",
    :input_direction => "Up",
    :attack_type => "Melee/ Recovery",
    :damage_dealt => "7-11% (base)",
    :preview => "/assets/lucina_upb.gif",
    :entry_created => Time.zone.now
)

s12 = Special.create(
    :name => "Counter",
    :input_direction => "Down",
    :attack_type => "Counter",
    :damage_dealt => "Varies",
    :preview => "/assets/lucina_downb.gif",
    :entry_created => Time.zone.now
)

c3.specials << s9 << s10 << s11 << s12

# peach specials
s13 = Special.create(
    :name => "Toad",
    :input_direction => "Neutral",
    :attack_type => "Counter",
    :damage_dealt => "Varies",
    :preview => "/assets/peach_neutralb.gif",
    :entry_created => Time.zone.now
)

s14 = Special.create(
    :name => "Peach Bomber",
    :input_direction => "Side",
    :attack_type => "Melee",
    :damage_dealt => "12% (base)",
    :preview => "/assets/peach_sideb.gif",
    :entry_created => Time.zone.now
)

s15 = Special.create(
    :name => "Peach Parasol",
    :input_direction => "Up",
    :attack_type => "Melee/ Recovery",
    :damage_dealt => "1-4% (base)",
    :preview => "/assets/peach_upb.gif",
    :entry_created => Time.zone.now
)

s16 = Special.create(
    :name => "Vegetable",
    :input_direction => "Down",
    :attack_type => "Projectile",
    :damage_dealt => "Varies (based on Turnip type)",
    :preview => "/assets/peach_downb.gif",
    :entry_created => Time.zone.now
)

c4.specials << s13 << s14 << s15 << s16

# pikachu specials
s17 = Special.create(
    :name => "Thunder Jolt",
    :input_direction => "Neutral",
    :attack_type => "Projectile",
    :damage_dealt => "5% (base)",
    :preview => "/assets/pikachu_neutralb.gif",
    :entry_created => Time.zone.now
)

s18 = Special.create(
    :name => "Skull Bash",
    :input_direction => "Side",
    :attack_type => "Melee/ Recovery",
    :damage_dealt => "8% (base)",
    :preview => "/assets/pikachu_sideb.gif",
    :entry_created => Time.zone.now
)

s19 = Special.create(
    :name => "Quick Attack",
    :input_direction => "Up",
    :attack_type => "Melee/ Recovery",
    :damage_dealt => "2% (base)",
    :preview => "/assets/pikachu_upb.gif",
    :entry_created => Time.zone.now
)

s20 = Special.create(
    :name => "Thunder",
    :input_direction => "Down",
    :attack_type => "Projectile/ Melee",
    :damage_dealt => "12% (base)",
    :preview => "/assets/pikachu_downb.gif",
    :entry_created => Time.zone.now
)

c5.specials << s17 << s18 << s19 << s20

puts "#{Special.count} specials were made!"


Game.destroy_all

g1 = Game.create(
    :name => "Smash 64",
    :release_date => "1999-01-21",
    :patch_version => "N/A",
    :image => "/assets/smash64_logo.jpg"
);

g2 = Game.create(
    :name => "Melee",
    :release_date => "2001-11-21",
    :patch_version => "N/A",
    :image => "/assets/melee_logo.jpg"
);

g3 = Game.create(
    :name => "Brawl",
    :release_date => "2008-01-31",
    :patch_version => "N/A",
    :image => "/assets/brawl_logo.png"
);

g4 = Game.create(
    :name => "Smash4",
    :release_date => "2014-09-13",
    :patch_version => "1.1.7",
    :image => "/assets/wiiu_logo.png"
);

g5 = Game.create(
    :name => "Ultimate",
    :release_date => "2018-12-07",
    :patch_version => "7.0.0",
    :image => "/assets/ultimate_logo.png"
);

c1.games << g3 << g5
c2.games << g3 << g4 << g5
c3.games << g4 << g5
c4.games << g2 << g3 << g4 << g5
c5.games << g1 << g2 << g3 << g4 << g5


puts "#{Game.count} games were made!"


