######################################
# General informations
######################################

info["avatar"] = "logo.png"
info["avatar_shape"] = "raw" # use "round" or just comment that line to use a round border
info["lang"] = "en"
info["name"] = "Humans of Julia"
info["title"] = "HoJ"

hoj_email = email("contact@humansofjulia.org") # obfuscated

## Social Networks (comment/delete lines to unwanted social network, input your personal info for the others)
info["github"] = "https://github.com/Humans-of-Julia"
info["discord"] = "https://discord.gg/nPPZy4RYbP"
info["twitter"] = "https://twitter.com/HumansOfJulia"

######################################
# Contributors user name => real name
######################################
user_to_name["azzaare"] = "Jean-François Baffier"
user_to_name["mkschulze"] = "Mark Schulze"
user_to_name["tk3369"] = "Tom Kwong"
user_to_name["arubhardwaj"] = "Aru Bhardwaj"
user_to_name["varlad"] = "Chetan Vardhan"

include("index.jl")
include("events.jl")
include("announcements.jl")

######################################
# End of the entries
######################################
