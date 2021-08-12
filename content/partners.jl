######################################
# partners.html
#   items: about event, JuliaCon, Weekly contest
######################################

about_contest = Section(
    title="Humans of Julia's partners",
    items=Block(
        paragraphs(
            """
            Our Humans of Julia interacts with various programming communities and we have official partnership with the following communities.
            """,
        ),
        images()
    )
)

the_algorithm = Section(
    title="The Algorithms",
    items=Block(
        paragraphs(
            """
            We are a group of programmers helping each other build new things, whether it be writing complex encryption programs, or simple ciphers. Our goal is to work together to document and model beautiful, helpful and interesting algorithms using code. We are an open-source community - anyone can contribute. We check each other's work, communicate and collaborate to solve problems. We strive to be welcoming, respectful, yet make sure that our code follows the latest programming guidelines.
            """,
            """
            Join us on our $(link("Discord server","https://discord.gg/c7MnfGFGa6"))! And do not hesitate to have a look at our $(link("GitHub repositories", "https://github.com/TheAlgorithms")) such as the Julia dedicated one: $(link("The Algotihms - Julia", "https://github.com/TheAlgorithms/Julia")).
            """
        ),
        images()
    )
)

page(
    title="partners",
    sections=[about_partners, the_algorithm]
)
