;;;NOTE stuff.lisp must be loaded first.

;; A building
(new-type {building} {place})

;; Location of a building
(new-indv-role {building location} {building} {place})

(new-indv-role {building num floors} {building} {place})

(new-indv-role {building size} {buidling} {volume measure})
(new-indv-role {building height} {building} {length measure})
(new-indv-role {building color} {building} {color})

;; Floors of a building
(new-type {floor} {place})

;; Floor number
(new-indv-role {floor number} {floor} {integer})

;; A floor is part of a building
(x-is-a-y-of-z {floor} {part} {building})

;; Hallway
(new-type {hallway} {place})

(x-is-a-y-of-z {hallway} {part} {floor})


;; Room 
(new-type {room} {place})
(new-indv-role {room cleanliness} {room} {cleanliness})
(new-indv-role {room orderliness} {room} {orderliness})
(new-indv-role {room relative age} {room} {old or new})

;; a room is a part of a building
(x-is-a-y-of-z {room} {part} {floor})

;; a room has size
(new-indv-role {room size} {room} {area measure})

;; a room has occupancy
(new-indv-role {room occupancy} {room} {integer})

;; a room has occupants (maybe)
(new-indv-role {room occupants} {room} {physical objects})

;; a room has an ID / name
(new-type {string} {thing})
(new-indv-role {room number} {room} {string})

;; Types of rooms
(new-split-subtypes {room}
		    '({office}
		      {lecture hall}
		      {lab}
		      {bedroom}
		      {lobby}
		      {kitchen}
		      {living room}
		      {closet}
		      {bathroom}))


(new-indv-role {office occupant} {office} {person})
(new-is-a {office occupant} {room occupant})



;;; Sample Rooms
(new-indv {Wean Hall} {building})

(new-indv {WeH 8th floor} {floor})
(x-is-a-y-of-z {WeH 8th floor} {part} {Wean Hall})

(new-indv {WeH 8200 Corridor} {hallway})
(x-is-a-y-of-z {WeH 8200 Corridor} {part} {WeH 8th floor})

(new-indv {WeH 8214} {room})
(x-is-a-y-of-z {WeH 8214} {part} {WeH 8th floor})



(new-indv {Newell Simon Hall} {building})

(new-indv {NSH 4th floor} {floor})
(x-is-a-y-of-z {NSH 4th floor} {part} {Newell Simon Hall})

(new-indv {NSH 4513} {NSH 4th floor})
(x-is-a-y-of-z {NSH 4513} {part} {NSH 4th floor})

