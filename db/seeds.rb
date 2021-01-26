user1 = User.create(:email => "test1@g.co", :password => "test1")
user2 = User.create(:email => "test2@g.co", :password => "test2")

sport1 = Sport.create(:name => "Tennis", :user_id => user1.id)
sport2 = Sport.create(:name => "Squash", :user_id => user1.id)
sport3 = Sport.create(:name => "Badminton", :user_id => user1.id)
sport4 = Sport.create(:name => "Table tennis", :user_id => user1.id)
u2sport1 = Sport.create(:name => "Tennis", :user_id => user2.id)
u2sport2 = Sport.create(:name => "Pickleball", :user_id => user2.id)

framebrand1 = FrameBrand.create(:name => "Yonex", :user_id => user1.id)
framebrand2 = FrameBrand.create(:name => "Babolat", :user_id => user1.id)
u2framebrand1 = FrameBrand.create(:name => "Wilson", :user_id => user2.id)

framemodel1 = FrameModel.create(:name => "EZONE 100", :user_id => user1.id)
framemodel2 = FrameModel.create(:name => "AeroPro Drive", :user_id => user1.id)
u2framemodel1 = FrameModel.create(:name => "Blade SW102 Autograph", :user_id => user2.id)

stringbrand1 = StringBrand.create(:name => "Babolat", :user_id => user1.id)
stringbrand2 = StringBrand.create(:name => "Luxilon", :user_id => user1.id)
u2stringbrand1 = StringBrand.create(:name => "Babolat", :user_id => user2.id)

stringmodel1 = StringModel.create(:name => "RPM Blast", :user_id => user1.id)
stringmodel2 = StringModel.create(:name => "4G", :user_id => user1.id)
u2stringmodel1 = StringModel.create(:name => "RPM Blast", :user_id => user2.id)

racquet1 = Racquet.create(:frame_brand_id => framebrand1.id, :frame_model_id => framemodel1.id, :string_brand_id => stringbrand1.id, :string_model_id => stringmodel1.id, :sport_id => sport1.id, :user_id => user1.id)
racquet2 = Racquet.create(:frame_brand_id => framebrand2.id, :frame_model_id => framemodel2.id, :string_brand_id => stringbrand1.id, :string_model_id => stringmodel1.id, :sport_id => sport1.id, :user_id => user1.id)
u2racquet1 = Racquet.create(:frame_brand_id => u2framebrand1.id, :frame_model_id => u2framemodel1.id, :string_brand_id => u2stringbrand1.id, :string_model_id => u2stringmodel1.id, :sport_id => u2sport1.id, :user_id => user2.id)

location1 = Location.create(:name => "West Ham Park", :user_id => user1.id)
location2 = Location.create(:name => "Stratford Park", :user_id => user1.id)
u2location1 = Location.create(:name => "Ealing Lawn Tennis Club", :user_id => user2.id)

opponent1 = Opponent.create(:name => "Rafael Nadal", :user_id => user1.id)
opponent2 = Opponent.create(:name => "Naomi Osaka", :user_id => user1.id)
u2opponent1 = Opponent.create(:name => "Serena Williams", :user_id => user2.id)

match1 = Match.create(:sport_id => sport1.id, :opponent_id => opponent1.id, :location_id => location1.id, :start_date => "25/01/2021", :end_date => "26/01/2021", :score => "0-6, 7-6, 6-4", :result => "Win", :user_id => user1.id)
match2 = Match.create(:sport_id => sport1.id, :opponent_id => opponent2.id, :location_id => location2.id, :start_date => "27/01/2021", :end_date => "27/01/2021", :score => "0-6, 6-1, 5-7", :result => "Loss", :user_id => user1.id)
u2match1 = Match.create(:sport_id => u2sport1.id, :opponent_id => u2opponent1.id, :location_id => u2location1.id, :start_date => "24/01/2021", :end_date => "24/01/2021", :score => "0-6, 6-4, 6-7", :result => "Loss", :user_id => user2.id)

matchracquet1 = MatchRacquet.create(:match_id => match1.id, :racquet_id => racquet2.id)
matchracquet2 = MatchRacquet.create(:match_id => match1.id, :racquet_id => racquet1.id)
matchracquet3 = MatchRacquet.create(:match_id => match2.id, :racquet_id => racquet1.id)
u2matchracquet1 = MatchRacquet.create(:match_id => u2match1.id, :racquet_id => u2racquet1.id)

coach1 = Coach.create(:name => "Jorge Santos", :user_id => user1.id)
coach2 = Coach.create(:name => "Mario Robledo", :user_id => user1.id)
u2coach1 = Coach.create(:name => "Patrick Mouratoglou", :user_id => user2.id)

coachingsession1 = CoachingSession.create(:sport_id => sport1.id, :location_id => location1.id, :date => "23/01/2021", :focus => "Serve", :notes => "Practicing toss and leg push off", :user_id => user1.id)
coachingsession2 = CoachingSession.create(:sport_id => sport1.id, :location_id => location2.id, :date => "25/01/2021", :focus => "Backhands and volleys", :notes => "Static drills and direction in match situation", :user_id => user1.id)
u2coachingsession1 = CoachingSession.create(:sport_id => u2sport1.id, :location_id => u2location1.id, :date => "24/01/2021", :focus => "Serve", :notes => "Toss and slice", :user_id => user2.id)

coachingsessioncoach1 = CoachingSessionCoach.create(:coaching_session_id => coachingsession1.id, :coach_id => coach1.id)
coachingsessioncoach2 = CoachingSessionCoach.create(:coaching_session_id => coachingsession1.id, :coach_id => coach2.id)
coachingsessioncoach3 = CoachingSessionCoach.create(:coaching_session_id => coachingsession2.id, :coach_id => coach1.id)
u2coachingsessioncoach1 = CoachingSessionCoach.create(:coaching_session_id => u2coachingsession1.id, :coach_id => u2coach1.id)