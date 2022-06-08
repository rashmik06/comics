 marvel = Publisher.create(name: "Marvel Comics")
 dc = Publisher.create(name: "DC Comics")
Comicbook.create(title: "Amazing Spider-man", number:1, description: "Peter Parker tries to continue a show biz career as Spider-Man, yet J. Jonah Jameson's editorials slamming him as a menace makes it hard to find work.",  artist: "Steve Ditko",  writer: "Stan Lee" , publisher_id: marvel.id)
Comicbook.create(title: "Flash Rebirth", number: 1, description: "Geoff Johns and Ethan Van Sciver, the writer/artist team behind the blockbuster GREEN LANTERN: REBIRTH and THE SINESTRO CORPS WAR, create an explosive, jaw-dropping epic that reintroduces Barry Allen as The Flash in this volume collecting the fast-paced 6-issue miniseries. But how will this greatest of all Flashes find his place in the twenty-first century?",  artist: "Ethan Van Sciver",  writer: "Geoff Johns" , publisher_id: dc.id)


