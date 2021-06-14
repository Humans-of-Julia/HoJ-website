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

######################################
# index.html
#   items: about hoj
######################################

about_hoj = Block(
    paragraphs(
    """
    We are a group of individuals who fell in love with Julia and pray to the gods of Lisp. We formed a community around our favourite programming language and it has evolved to something bigger. We’ve got regular code challenges, a $(link("GitHub Organization","https://github.com/Humans-of-Julia")) which is meant to host community-driven projects such as TypeDB database client or our own Discord bot. We are also a good destination if you’ve got questions anywhere from beginner to pro, need some valuable pointers or intellectual discourse about design and beauty (only Julia and Off-Topic of course). If you’d like to participate or are just curious, don’t hesitate to join us from anywhere around the world! We already have a good time zone coverage but we are - just as Julia itself - greedy to increase it even further!
    """,
    """
    This community follows the Julia Community Guidelines and Standards!
    """,
    """
    Join our $(link("Discord","https://discord.gg/nPPZy4RYbP")). Contact us at $hoj_email
    """
    ),
    images()
)

github = GitRepo(
    "Humans-of-Julia/TypeDBClient.jl" => ["TypeDB"],
    "Humans-of-Julia/HoJBot.jl",
    "Humans-of-Julia/TypeDBRunner" => ["TypeDB"],
    "Humans-of-Julia/JuliaTutor.jl",
    "Humans-of-Julia/WeeklyContest" => ["community"],
    "Humans-of-Julia/HoJ-logo-graphics" => ["community"],
    "Humans-of-Julia/StaticWebPages.jl" => ["webdev", "modern-academics"],
    "Humans-of-Julia/Bibliography.jl" => ["bibliography", "modern-academics"],
    "Humans-of-Julia/BibParser.jl" => ["bibliography", "modern-academics"],
    "Humans-of-Julia/BibInternal.jl" => ["bibliography", "modern-academics"],
    "Humans-of-Julia/PatternFolds.jl" => ["modern-academics"],
    "Humans-of-Julia/LaTeXUnicode.jl" => ["bibliography", "modern-academics"],
    "Humans-of-Julia/ModernGraphs.jl" => ["modern-academics"],
    "Humans-of-Julia/HoJ-website" => ["community", "modern-academics"],
)

page(
    title="index",
    sections=[
        Section(
            title="Humans of Julia",
            items=about_hoj
        ),
        Section(
            title="GitHub",
            hide=false,
            items=github,
        ),
    ]
)

######################################
# about_constest.html
#   items: about contest, previous contest
######################################
contest_tl = TimeLine(
    StaticWebPages.tl_julia,
    Dot(
        "Week 2",
        "$(link("TextAnalysis.jl", "https://github.com/JuliaText/TextAnalysis.jl")) provides support for standard tools and models for working with textual data and natural languages in the Julia language.",
        "Winner: Laurens Bosman (laurens777)"
    ),
    Dot(
        "Week 1",
        "$(link("GLM.jl", "https://github.com/JuliaStats/GLM.jl")) a package for linear and generalized linear models in Julia.",
        "Winner: Tom Kwong (tk3369)"
    ),
)

about_contest = Section(
    title="HoJ Weekly Contest",
    items=Block(
        paragraphs(
            """
            context
            """,
            """
            resutls
            """
        ),
        images()
    )
)

previous_contest = Section(title="Previous contests", items=contest_tl)


page(
    title="weekly contest",
    sections=[about_contest, previous_contest]
)

######################################
# announcement.html
#   items: about hoj
######################################

about_announce = Block(
    paragraphs(
    """
    We are proud to present here the packages that Humans-of-Julia members have developed or participated in! All these packages have been previously announced on the #pkg-announcements channel or on our Discord.
    """,
    """
    The list of packages is upgraded regularly to match the announcements on Discord.
    """
    ),
    images()
)

pkg_announce = GitRepo(
    "arubhardwaj/Beep.jl" => ["productivity"],
    "erikedin/Behavior.jl" => ["TypeDB"],
    "longemen3000/ChemicalIdentifiers.jl",
    "ali-ramadhan/DocumenterCitations.jl" => ["bibliography", "modern-academics"],
    "rmsrosa/UnitfulBuckinghamPi.jl",
    "rmsrosa/UnitfulAssets.jl",
    "VarLad/Utilitas.jl",
    "arubhardwaj/WooldridgeDatasets.jl" => ["econometry"],
)

page(
    title="Pkg-announcements",
    sections=[
        Section(
            title="Package announcements",
            items=about_announce
        ),
        Section(
            title="GitHub",
            hide=false,
            items=pkg_announce,
        ),
    ]
)

######################################
# End of the entries
######################################
