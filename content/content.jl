######################################
# General informations
######################################

info["avatar"] = "logo.png"
info["lang"] = "en"
info["name"] = "Humans of Julia"
info["title"] = "HoJ"
info["email"] = "HumanOfJulia@gmail.com"

## Social Networks (comment/delete lines to unwanted social network, input your personal info for the others)
info["github"] = "https://github.com/Humans-of-Julia"
info["discord"] = "https://discord.com/channels/762167454973296644/762206833192468480/762206959042166784"
info["twitter"] = "HumansOfJulia"

######################################
# Contributors user name => real name
######################################
user_to_name["azzaare"] = "Jean-François Baffier"

######################################
# index.html
#   items: about hoj
######################################

about_hoj = Block(
    paragraphs(
    """
    Human. Neither dog nor god.
    """,
    """
    HoJ purpose. Join our $(link("Discord","https://discord.com/channels/762167454973296644/762206833192468480/762206959042166784"))
    """,
    ),
    images()
)

github = GitRepo(
    "Humans-of-Julia/GraknClient.jl",
    "Humans-of-Julia/WeeklyContest",
    "Humans-of-Julia/HoJ-logo-graphics",
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
    StaticWebPages.tl_blue,
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
# End of the entries
######################################
