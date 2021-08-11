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
