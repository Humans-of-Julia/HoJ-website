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
