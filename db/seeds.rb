
Trail.destroy_all
Hike.destroy_all
Park.destroy_all
State.destroy_all
ParkState.destroy_all

def random_difficulty
    diff = ["easy", "medium", "strong"]
    return diff.sample
end 


# actual seed data 
# 50 states 

AL = State.create(name: "Alabama")
AK = State.create(name: "Alaska")
AZ = State.create(name: "Arizona")
AR = State.create(name: "Arkansas")
CA = State.create(name: "California")
CO = State.create(name: "Colorado")
CT = State.create(name: "Connecticut")
DE = State.create(name: "Delaware")
FL = State.create(name: "Florida")
GA = State.create(name: "Georgia")
HI = State.create(name: "Hawaii")
ID = State.create(name: "Idaho")
IL = State.create(name: "Illinois")
IN = State.create(name: "Indiana")
IA = State.create(name: "Iowa")
KS = State.create(name: "Kansas")
KY = State.create(name: "Kentucky")
LA = State.create(name: "Louisiana")
ME = State.create(name: "Maine")
MD = State.create(name: "Maryland")
MA = State.create(name: "Massachusetts")
MI = State.create(name: "Michigan")
MN = State.create(name: "Minnesota")
MS = State.create(name: "Mississippi ")
MO = State.create(name: "Missouri")
MT = State.create(name: "Montana")
NE = State.create(name: "Nebraska")
NV = State.create(name: "Nevada")
NH = State.create(name: "New Hampshire")
NJ = State.create(name: "New Jersey")
NM = State.create(name: "New Mexico")
NY = State.create(name: "New York")
NC = State.create(name: "North Carolina")
ND = State.create(name: "North Dakota")
OH = State.create(name: "Ohio")
OK = State.create(name: "Oklahoma")
OR = State.create(name: "Oregon")
PA = State.create(name: "Pennsylvania")
RI = State.create(name: "Rhode Island")
SC = State.create(name: "South Carolina")
SD = State.create(name: "South Dakota")
TN = State.create(name: "Tennessee")
TX = State.create(name: "Texas")
UT = State.create(name: "Utah")
VT = State.create(name: "Vermont")
VA = State.create(name: "Virginia")
WA = State.create(name: "Washington")
WV = State.create(name: "West Virginia")
WI = State.create(name: "Wisconsin")
WY = State.create(name: "Wyoming")

# PARKS

lrc = Park.create(
    name: "Little River Canyon", park_info: "Little River is unique because it flows for most of its length atop Lookout Mountain in northeast Alabama. Forested uplands, waterfalls, canyon rims and bluffs, pools, boulders, and sandstone cliffs offer settings for a variety of recreational activities. Natural resources and cultural heritage come together to tell the story of the Preserve, a special place in the Southern Appalachians.", waterfalls: true
)
russ = Park.create(
    name: "Russell Cave", park_info: "Russell Cave is an archeological site with one of the most complete records of prehistoric cultures in the Southeast.  In the 1950s, archeologists uncovered a large quantity of artifacts representing over 10,000 years of use in a single place.  Today, Russell Cave National Monument helps bring to light many cultural developments of phenomenal human journeys.", waterfalls: false
)
denali = Park.create(
    name: "Denali National Park", park_info: "Denali is a big part of the Anchorage skyline. The tallest peak on the continent pops up on the northern horizon. It’s within easy reach. Flightseeing excursions take off from Anchorage and the town of Talkeetna for a day of flying in the Alaska Range. Some itineraries even include glacier landings in the shadow of Denali. Flightseeing tours from Anchorage are perfect for travelers with a long to do list. The mountain looms large, but it’s just the most obvious attraction in Denali National Park. Wildlife including caribou, brown and black bears, wolves, moose and fox are among the species that call the park home.", waterfalls: true
)
fjords = Park.create(
    name: "Kenai Fjords National Park", park_info: "One of the most amazing natural places in Southcentral Alaska, Kenai Fjords National Park is the perfect place to explore marine life, fish for salmon and halibut, and watch glacier ice tumble into the waters below.

    Glaciers, waves and mountains have shaped Kenai Fjords National Park over millennia, forging some of the most awe-inspiring and picturesque vistas in Alaska. With so many natural wonders and easy access via road, rail, and boat, it’s no surprise that the area draws visitors of all stripes.", waterfalls: true
)
grand = Park.create(
    name: "Grand Canyon National Park", park_info: "Located in Arizona, Grand Canyon National Park encompasses 277 miles (446 km) of the Colorado River and adjacent uplands. The park is home to much of the immense Grand Canyon; a mile (1.6 km) deep, and up to 18 miles (29 km) wide. Layered bands of colorful rock reveal millions of years of geologic history. Grand Canyon is unmatched in the incomparable vistas it offers visitors from the rim.", waterfalls: true
)
monumentv = Park.create(
    name: "Monument Valley", park_info: "This famous natural area on the Navajo Nation Reservation features towering red sandstone buttes.", waterfalls: false
)
springs = Park.create(
    name: "Hot Springs National Park", park_info: "Hot Springs National Park has a rich cultural past. The grand architecture of our historic bathhouses is equally matched by the natural curiosities that have been drawing people here for hundreds of years. Ancient thermal springs, mountain views, incredible geology, forested hikes, and abundant creeks – all in the middle of town – make Hot Springs National Park a unique and beautiful destination.", waterfalls: true
)
yosemite = Park.create(
    name: "Yosemite National Park", park_info: "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome. In Yosemite Village are shops, restaurants, lodging, the Yosemite Museum and the Ansel Adams Gallery, with prints of the photographer’s renowned black-and-white landscapes of the area.", waterfalls: true
)
sequoia = Park.create(
    name: "Sequoia National Park", park_info: "This dramatic landscape testifies to nature's size, beauty, and diversity—huge mountains, rugged foothills, deep canyons, vast caverns, and the world's largest trees. The parks lie side by side in the southern Sierra Nevada east of the San Joaquin Valley. Weather varies a lot by season and elevation, which ranges from 1,370' to 14,494'.", waterfalls: false
)
rocky = Park.create(
    name: "Rocky Mountain Natinoal Park", park_info: "Rocky Mountain National Park in northern Colorado spans the Continental Divide and encompasses protected mountains, forests and alpine tundra. It's known for the Trail Ridge Road and the Old Fall River Road, drives that pass aspen trees and rivers. The Keyhole Route, a climb crossing vertical rock faces, leads up Longs Peak, the park’s tallest mountain. A trail surrounding Bear Lake offers views of the peaks.", waterfalls: true
)
mesa = Park.create(
    name: "Mesa Verde National Park", park_info: "Mesa Verde National Park is in southwest Colorado. It's known for its well-preserved Ancestral Puebloan cliff dwellings, notably the huge Cliff Palace. The Chapin Mesa Archeological Museum has exhibits on the ancient Native American culture. Mesa Top Loop Road winds past archaeological sites and overlooks, including Sun Point Overlook with panoramic canyon views. Petroglyph Point Trail has several rock carvings.", waterfalls: false
)
weir = Park.create(
    name: "Weir Farm National Historic Site", park_info: "Weir Farm National Historic Site is located in Ridgefield and Wilton, Connecticut. It commemorates the life and work of American impressionist painter J. Alden Weir and other artists who stayed at the site or lived there, to include Childe Hassam, Albert Pinkham Ryder, John Singer Sargent, and John Twachtman.", waterfalls: false
)
first = Park.create(
    name: "First State National Historical Park", park_info: "First State National Historical Park is a National Park Service unit which lies primarily in the state of Delaware but which extends partly into Pennsylvania in Chadds Ford.", waterfalls: false
)
everglades = Park.create(
    name: "Everglades National Park", park_info: "Everglades National Park is a 1.5-million-acre wetlands preserve on the southern tip of the U.S. state of Florida. Often compared to a grassy, slow-moving river, the Everglades is made up of coastal mangroves, sawgrass marshes and pine flatwoods that are home to hundreds of animal species. Among the Everglades' abundant wildlife are the endangered leatherback turtle, Florida panther and West Indian manatee.", waterfalls: false
)
biscayne = Park.create(
    name: "Biscayne National Park", park_info: "Biscayne National Park encompasses coral reefs, islands and shoreline mangrove forest in the northern Florida Keys. Its reefs and islands are accessible only by boat. Dolphins, turtles and pelicans live in Biscayne Bay Lagoon. The underwater Maritime Heritage Trail links dive sites, most of them shipwrecks. On Boca Chita Key, Boca Chita Lighthouse has coastal views. A museum at Convoy Point explains local ecosystems.", waterfalls: false
)
chattahoochee = Park.create(
    name: "Chattahoochee River National Recreation Area.", park_info: "Chattahoochee River National Recreation Area preserves a series of sites between Atlanta and Lake Sidney Lanier along the Chattahoochee River, Georgia, U.S. The 48-mile stretch of the river affords public recreation opportunities and access to historic sites.", waterfalls: true
)
volcano = Park.create(
    name: "Hawaiʻi Volcanoes National Park", park_info: "Hawaii Volcanoes National Park is on Hawaii Island (the Big Island). At its heart are the Kīlauea and Mauna Loa active volcanoes. The Crater Rim Drive passes steam vents and the Jaggar Museum, which features volcanology exhibits and a viewpoint overlooking Halema'uma'u Crater. Thick ferns mark the entrance to the Thurston Lava Tube (Nāhuku). The Chain of Craters Road weaves over lava. Trails crisscross the park.", waterfalls: false
)
idaho = Park.create(
    name: "Idaho National Monuments and National Recreation Areas", park_info: "Apart from Yellowstone National Park, of which Idaho contains a small section, there are only two NPS-managed scenic areas in the state - City of Rocks and Craters of the Moon. The Park Service also administers Hagerman Fossil Beds, notable only as the site of fossil excavations, and two national historic parks. In addition there is one USFS preserve, Hells Canyon National Recreation Area.", waterfalls: false
)
indiana = Park.create(
    name: "Indiana Dunes National Park", park_info: "Indiana Dunes National Park is a United States National Park located in Northwestern Indiana, managed by the National Park Service. It was authorized by Congress in 1966 as the Indiana Dunes National Lakeshore, the name by which it was known until it was designated the nation's 61st national park on February 15, 2019.", waterfalls: false
)
mammoth = Park.create(
    name: "Mammoth Cave National Park", park_info: "Mammoth Cave National Park is an American national park in central Kentucky, encompassing portions of Mammoth Cave, the longest cave system known in the world.", waterfalls: false
)
cane = Park.create(
    name: "Cane River Creole National Historical Park", park_info: "Established in 1994, the Cane River Creole National Historical Park serves to preserve the resources and cultural landscapes of the Cane River region in Natchitoches Parish, Louisiana.", waterfalls: false
)
acadia = Park.create(
    name: "Acadia National Park", park_info: "Acadia National Park is a 47,000-acre Atlantic coast recreation area primarily on Maine's Mount Desert Island. Its landscape is marked by woodland, rocky beaches and glacier-scoured granite peaks such as Cadillac Mountain, the highest point on the United States’ East Coast. Among the wildlife are moose, bear, whales and seabirds. The bayside town of Bar Harbor, with restaurants and shops, is a popular gateway.", waterfalls: true
)
pictured = Park.create(
    name: "Pictured Rocks National Lakeshore", park_info: "Pictured Rocks National Lakeshore hugs the south shore of Lake Superior in Michigan’s Upper Peninsula. It's known for the dramatic multicolored Pictured Rocks cliffs. Unusual sandstone formations like Miners Castle and Chapel Rock define the park’s headlands. Twelvemile Beach has a trail through a nearby white birch forest. Remnants of shipwrecks dot the shoreline around Au Sable Point’s 19th-century lighthouse.", waterfalls: false
)
natchez = Park.create(
    name: "Natchez National Historical Park", park_info: "Natchez National Historical Park commemorates the history of Natchez, Mississippi, and is managed by the National Park Service. The park consists of three separate sites: Fort Rosalie is the site of a former fortification from the 18th century, built by the French.", waterfalls: false
)
gateway = Park.create(
    name: "Gateway Arch National Park", park_info: "Gateway Arch National Park, formerly known as the Jefferson National Expansion Memorial until 2018, is an American national park located in St. Louis, Missouri, near the starting point of the Lewis and Clark Expedition.", waterfalls: false
)
glacier = Park.create(
    name: "Glacier National Park", park_info: "Glacier National Park is a 1,583-sq.-mi. wilderness area in Montana's Rocky Mountains, with glacier-carved peaks and valleys running to the Canadian border. It's crossed by the mountainous Going-to-the-Sun Road. Among more than 700 miles of hiking trails, it has a route to photogenic Hidden Lake. Other activities include backpacking, cycling and camping. Diverse wildlife ranges from mountain goats to grizzly bears.", waterfalls: true
)
yellowstone = Park.create(
    name: "Yellowstone National Park", park_info: "Yellowstone National Park is a nearly 3,500-sq.-mile wilderness recreation area atop a volcanic hot spot. Mostly in Wyoming, the park spreads into parts of Montana and Idaho too. Yellowstone features dramatic canyons, alpine rivers, lush forests, hot springs and gushing geysers, including its most famous, Old Faithful. It's also home to hundreds of animal species, including bears, wolves, bison, elk and antelope.", waterfalls: false
)
basin = Park.create(
    name: "Great Basin National Park", park_info: "Great Basin National Park is in eastern Nevada near the Utah border. It's in the Great Basin Desert and contains most of the South Snake mountains. In the north, the mountain-hugging Wheeler Peak Scenic Drive leads to towering Wheeler Peak. Nearby is one of several ancient bristlecone pine groves. The marble Lehman Caves have distinctive stalactites and other formations. Park wildlife includes bighorn sheep.", waterfalls: false
)
redrock = Park.create(
    name: "Red Rock Canyon National Conservation Area", park_info: "Red Rock Canyon National Conservation Area lies in Nevada’s Mojave Desert. It’s known for geological features such as towering red sandstone peaks and the Keystone Thrust Fault, as well as Native American petroglyphs. Panoramic viewing spots dot the 13-mile Scenic Drive. The sheltered Ice Box Canyon has seasonal waterfalls. To the south, Spring Mountain Ranch State Park features historic buildings and hiking trails.", waterfalls: false
)
whitesand = Park.create(
    name: "White Sands National Park", park_info: "White Sands National Monument is in the northern Chihuahuan Desert in the U.S. state of New Mexico. It's known for its dramatic landscape of rare white gypsum sand dunes. Trails through the dunes include the raised Interdune Boardwalk and the Dune Life Nature Trail, dotted with interpretive exhibits on wildlife and other features. Dunes Drive is a looped road from the White Sands Visitor Center to the dune field.", waterfalls: false
)
adirondack = Park.create(
    name: "Adirondack Park", park_info: "The Adirondack Park is a protected park in the U.S. state of New York. It’s known for its fall foliage viewing​ and forested mountains, with hiking trails crossing the Adirondack High Peaks near Lake Placid. Whiteface Mountain’s ski runs are nearby. West, paddling routes weave through St. Regis Canoe Area. Rapids swirl along Ausable Chasm canyon to the east. Southwest are the Adirondack Museum’s history exhibits.", waterfalls: true 
)
roosevelt = Park.create(
    name: "Theodore Roosevelt National Park", park_info: "An American national park comprising three geographically separated areas of badlands in western North Dakota. The park was named for U.S. President Theodore Roosevelt. The park covers 70,446 acres (110.072 sq mi; 28,508 ha; 285.08 km2) of land in three sections: the North Unit, the South Unit, and the Elkhorn Ranch Unit.", waterfalls: false
)
crater = Park.create(
    name: "Crater Lake National Park", park_info: "Crater Lake National Park is in the Cascade Mountains of southern Oregon. It’s known for its namesake Crater Lake, formed by the now-collapsed volcano, Mount Mazama. Wizard Island is a cinder cone near the western edge of the lake. The Rim Drive, a road surrounding the lake, offers views of the park’s volcanic formations. The park’s numerous trails include Sun Notch, with views of the Phantom Ship, a small island.", waterfalls: true
)
badlands = Park.create(
    name: "Badlands National Park", park_info: "Badlands National Park is in South Dakota. Its dramatic landscapes span layered rock formations, steep canyons and towering spires. Bison, bighorn sheep and prairie dogs inhabit its sprawling grasslands. The Badlands Loop Road (Highway 240) winds past scenic lookouts. Several trails begin near the Ben Reifel Visitor Center. The Fossil Exhibit Trail is a boardwalk with displays on fossils uncovered in the park.", waterfalls: false
)
smoky = Park.create(
    name: "Great Smoky Mountains National Park", park_info: "Great Smoky Mountains National Park straddles the border between North Carolina and Tennessee. The sprawling landscape encompasses lush forests and an abundance of wildflowers that bloom year-round. Streams, rivers and waterfalls appear along hiking routes that include a segment of the Appalachian Trail. An observation tower tops Clingmans Dome, the highest peak, offering scenic views of the mist-covered mountains.", waterfalls: true
)
bend = Park.create(
    name: "Big Bend National Park", park_info: "Big Bend National Park is in southwest Texas and includes the entire Chisos mountain range and a large swath of the Chihuahuan Desert. The Ross Maxwell Scenic Drive leads to the ruins of Sam Nail Ranch, now home to desert wildlife. The Santa Elena Canyon, carved by the Rio Grande, features steep limestone cliffs. Langford Hot Springs, near the Mexican border, has pictographs and the foundations of an old bathhouse.", waterfalls: true
)
zion = Park.create(
    name: "Zion National Park", park_info: "Zion National Park is a southwest Utah nature preserve distinguished by Zion Canyon’s steep red cliffs. Zion Canyon Scenic Drive cuts through its main section, leading to forest trails along the Virgin River. The river flows to the Emerald Pools, which have waterfalls and a hanging garden. Also along the river, partly through deep chasms, is Zion Narrows wading hike.", waterfalls: true
)
bryce = Park.create(
    name: "Bryce Canyon National Park", park_info: "Bryce Canyon National Park, a sprawling reserve in southern Utah, is known for crimson-colored hoodoos, which are spire-shaped rock formations. The park’s main road leads past the expansive Bryce Amphitheater, a hoodoo-filled depression lying below the Rim Trail hiking path. It has overlooks at Sunrise Point, Sunset Point, Inspiration Point and Bryce Point. Prime viewing times are around sunup and sundown.", waterfalls: false
)
arches = Park.create(
    name: "Arches National Park", park_info: "Arches National Park lies north of Moab in the state of Utah. Bordered by the Colorado River in the southeast, it’s known as the site of more than 2,000 natural sandstone arches, such as the massive, red-hued Delicate Arch in the east. Long, thin Landscape Arch stands in Devils Garden to the north. Other geological formations include Balanced Rock, towering over the desert landscape in the middle of the park.", waterfalls: false
)
greatfalls = Park.create(
    name: "Great Falls Park", park_info: "a small National Park Service (NPS) site in Virginia, United States. Situated on 800 acres (3.65 km2) along the banks of the Potomac River in northern Fairfax County, the park is a disconnected but integral part of the George Washington Memorial Parkway.", waterfalls: true
)
olympic = Park.create(
    name: "Olympic National Park", park_info: "Olympic National Park is on Washington's Olympic Peninsula in the Pacific Northwest. The park sprawls across several different ecosystems, from the dramatic peaks of the Olympic Mountains to old-growth forests. The summit of glacier-clad Mt. Olympus is popular with climbers, and hiking and backpacking trails cut through the park's rainforests and along its Pacific coastline.", waterfalls: true
)
ranier = Park.create(
    name: "Mount Rainier National Park", park_info: "Mount Rainier National Park, a 369-sq.-mile Washington state reserve southeast of Seattle, surrounds glacier-capped, 14,410-ft. Mount Rainier. Atop 6,400-ft.-high Sunrise, the highest point in the park reachable by car, visitors can admire Rainier and other nearby volcanoes, including Mount Adams. The park’s 5,400-ft.-high Paradise overlook offers mountain views, summertime wildflower meadows and hiking trailheads.", waterfalls: true
)
harpers = Park.create(
    name: "Harpers Ferry", park_info: "Harpers Ferry is a town in West Virginia. Paths wind through Harpers Ferry National Historical Park, which has 19th-century buildings, a Civil War Museum and John Brown’s Fort, a key site in an 1859 abolitionist raid. The location where the Potomac and Shenandoah rivers meet, known as The Point, offers views of Maryland and Virginia. The Appalachian Trail Visitor Center has exhibits on the long-distance hiking trail.", waterfalls: true
)
tetons = Park.create(
    name: "Grand Teton National Park", park_info: "an American national park in northwestern Wyoming. At approximately 310,000 acres (480 sq mi; 130,000 ha; 1,300 km2), the park includes the major peaks of the 40-mile-long (64 km) Teton Range as well as most of the northern sections of the valley known as Jackson Hole. Grand Teton National Park is only 10 miles (16 km) south of Yellowstone National Park, to which it is connected by the National Park Service-managed John D. Rockefeller, Jr. Memorial Parkway. Along with surrounding national forests, these three protected areas constitute the almost 18,000,000-acre (7,300,000 ha) Greater Yellowstone Ecosystem, one of the world's largest intact mid-latitude temperate ecosystems.", waterfalls: true
)


# PARKSTATE

ParkState.create(park: lrc, state: AL)
ParkState.create(park: russ, state: AL)
ParkState.create(park: denali, state: AK)
ParkState.create(park: fjords, state: AK)
ParkState.create(park: grand, state: AZ)
ParkState.create(park: monumentv, state: AZ)
ParkState.create(park: springs, state: AR)
ParkState.create(park: yosemite, state: CA)
ParkState.create(park: sequoia, state: CA)
ParkState.create(park: rocky, state: CO)
ParkState.create(park: mesa, state: CO)
ParkState.create(park: weir, state: CT)
ParkState.create(park: first, state: DE)
ParkState.create(park: everglades, state: FL)
ParkState.create(park: biscayne, state: FL)
ParkState.create(park: chattahoochee, state: GA)
ParkState.create(park: volcano, state: HI)
ParkState.create(park: idaho, state: ID)
ParkState.create(park: indiana, state: IN)
ParkState.create(park: mammoth, state: KY)
ParkState.create(park: cane, state: LA)
ParkState.create(park: acadia, state: ME)
ParkState.create(park: pictured, state: MI)
ParkState.create(park: natchez, state: MS)
ParkState.create(park: gateway, state: MO)
ParkState.create(park: glacier, state: MT)
ParkState.create(park: yellowstone, state: MT)
ParkState.create(park: basin, state: NV)
ParkState.create(park: redrock, state: NV)
ParkState.create(park: whitesand, state: NM)
ParkState.create(park: adirondack, state: NY)
ParkState.create(park: roosevelt, state: ND)
ParkState.create(park: crater, state: OR)
ParkState.create(park: badlands, state: SD)
ParkState.create(park: smoky, state: TN)
ParkState.create(park: bend, state: TX)
ParkState.create(park: zion, state: UT)
ParkState.create(park: bryce, state: UT)
ParkState.create(park: arches, state: UT)
ParkState.create(park: greatfalls, state: VA)
ParkState.create(park: olympic, state: WA)
ParkState.create(park: ranier, state: WA)
ParkState.create(park: harpers, state: WV)
ParkState.create(park: tetons, state: WY)


200.times do |x|
    Trail.create(name: Faker::Address.unique.city, distance_of_trail: rand(1..1000), elevation: rand(1..8000), difficulty: random_difficulty, park: Park.all.sample )
end

Trail.create(name: "Rim Trail", distance_of_trail: 14, elevation: 6820, difficulty: random_difficulty, park: grand)
Trail.create(name: "Weeping Rock Trail", distance_of_trail: 1, elevation: 98, difficulty: random_difficulty, park: zion)
Trail.create(name: "Angel's Landing", distance_of_trail: 3, elevation: 5790, difficulty: random_difficulty, park: zion)
Trail.create(name: "The Narrows", distance_of_trail: 6, elevation: 2800, difficulty: random_difficulty, park: zion)
Trail.create(name: "Watchman Trail", distance_of_trail: 3, elevation: 646, difficulty: random_difficulty, park: zion)


80.times do |x|
    Hike.create(name: Faker::Hipster.unique.word, user: User.all.sample, trail: Trail.all.sample, user_rating: rand(1..10))
end