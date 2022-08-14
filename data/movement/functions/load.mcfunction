tellraw @a {"text": "Movement is loaded", "color": "yellow"}

function movement:stamina/init
schedule function movement:crawl/init 10t
