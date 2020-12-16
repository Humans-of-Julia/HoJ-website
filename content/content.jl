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
    HoJ purpose.
    """,
    ),
    images()
)

page(
    title="index",
    sections=[
        Section(
            title="Humans of Julia",
            items=about_hoj
        ),
    ]
)

######################################
# about_constest.html
#   items: about contest, previous contest
######################################
contest_tl = TimeLine(
    StaticWebPages.tl_red,
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

contest_tl2 = TimeLine(
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

contest_tl3 = TimeLine(
    StaticWebPages.tl_green,
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

contest_tl4 = TimeLine(
    StaticWebPages.tl_orange,
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
previous_contest2 = Section(title="Previous contests", items=contest_tl2)
previous_contest3 = Section(title="Previous contests", items=contest_tl3)
previous_contest4 = Section(title="Previous contests", items=contest_tl4)


page(
    title="weekly constest",
    sections=[about_contest, previous_contest, previous_contest2, previous_contest3, previous_contest4]
)

######################################
# software.html: github (GitRepo)
#   option 1: Section is hidden (to avoid pulling info from GitHub at each run)
#   option 2: background for the page is set to start with white to emphasize the items
######################################
github = GitRepo(
    "Humans-of-Julia/GraknClient.jl",
    "Humans-of-Julia/WeeklyContest",
    "Humans-of-Julia/HoJ-logo-graphics",
)

page(
    title="projects",
    background=bg_white,
    sections=[
        Section(
            title="GitHub",
            hide=false,
            items=github,
        )
    ]
)

######################################
# End of the entries
######################################
