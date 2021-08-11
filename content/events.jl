######################################
# events.html
#   items: about event, JuliaCon, Weekly contest
######################################

contest_tl = TimeLine(
    StaticWebPages.tl_julia_red,
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

juliacon_tl = TimeLine(
    StaticWebPages.tl_julia_green,
    Dot(
        "July 28 2021",
        "$(link("Put some constraints into your life with JuliaCon(straints)", "https://live.juliacon.org/talk/8LL9QH")), Jean-François BAFFIER (azzaare)",
        "The freshly born JuliaConstraints GitHub organization provides a combination of packages around the theme of Constraint Programming and Combinatorial Optimization. This talk introduces the whole ecosystem of JuliaConstraints packages and its main dependencies. It focuses on the LocalSearchSolvers.jl framework (and CBLS.jl, its interface with JuMP) for Constraint-Based Local Search. We also cover the utility packages that we hope to share with the Julia and Constraint Programming communities."
    ),
    Dot(
        "July 29 2021",
        "$(link("ConstraintSolver.jl - First constraint solver written in Julia", "https://live.juliacon.org/talk/9KTFNJ")), Ole KRÖGER",
        "In this talk we discuss ConstraintSolver.jl, a new Julia package to tackle the problem of solving constraint programming problems purely in Julia."
    ),
    Dot(
        "July 29 2021",
        "$(link("Javis.jl - Julia Animations and Visualizations", "https://live.juliacon.org/talk/DMTYDS")), Jacob ZELKO, Ole KRÖGER",
        "Javis.jl is a general purpose animation library which builds on top of the Luxor.jl graphics library. It fills a gap in the Julia ecosystem by providing functionality to create object based animations to communicate complex ideas through simple means. Furthermore, Javis provides the flexibility for users to extend Javis’s visualizations to a variety of applications. Users are already expressing complicated ideas through winsome domain specific visuals such as planetary motion or brain mapping."
    ),
    Dot(
        "July 29 2021",
        "$(link("CompositionalNetworks.jl: a scaling glass-box neural network", "https://live.juliacon.org/talk/BSTFEQ")), Khalil CHRIT",
        "Interpretable Compositional Networks (ICN), a variant of neural networks, that allows the user to get interpretable results, unlike regular artificial neural networks. An ICN is a glass-box producing functions composition that scale with the size of the input, allowing a learning phase on relatively small spaces. This presentation covers the different Julia packages and paradigms involved, a set of use-case, current limitations, future developments, and hopefully possible collaborations."
    ),
    Dot(
        "July 30 2021",
        "$(link("HoJBot: a community-driven Discord bot", "https://youtu.be/0xbh2I1ksA8")), Tom KWONG",
        "Discord is a popular online chat platform that initially appeals to gamers and younger generations but has grown in scope significantly recently. The Humans-of-Julia is a Discord community server founded during the fall last year. The community started building a chatbot called HoJBot in March 2021. This poster will cover some background information, our motivation and the bot’s functionalities"
    ),
    Dot(
        "July 30 2021",
        "$(link("TypeDBClient.jl - interface to a strongly-typed database", "https://youtu.be/q5CJKv_teMA")), Mark SCHULZE",
        "The TypeDBClient.jl provides an interface to a novel type of database called TypeDB. TypeDB is a strongly-typed database, with a rich and logical type system. TypeDB empowers you to solve complex problems, using TypeQL as its query language. It offers a higher abstraction of the entity relation model known in SQL."
    ),
)
juliacon = Section(title="JuliaCon", items=juliacon_tl)

about_contest = Section(
    title="Events",
    items=Block(
        paragraphs(
            """
            Humans of Julia provides a few original events coupled with official events from the Julia language and other programming communities.
            """,
            """
            $(link("JuliaCon 2021","https://juliacon.org/2021/")) has met a great success with various talks originated from both HoJ projects and HoJ members.
            """
        ),
        images()
    )
)

previous_contest = Section(title="Weekly contests (discontinued)", items=contest_tl)


page(
    title="events",
    sections=[about_contest, juliacon, previous_contest]
)
