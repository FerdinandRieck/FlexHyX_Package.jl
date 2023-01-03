using FlexHyX_Package
using Documenter

DocMeta.setdocmeta!(FlexHyX_Package, :DocTestSetup, :(using FlexHyX_Package); recursive=true)

makedocs(;
    modules=[FlexHyX_Package],
    authors="Ferdinand Rieck <ferdinand.rieck@smail.emt.h-brs.de>",
    repo="https://github.com/FerdinandRieck/FlexHyX_Package.jl/blob/{commit}{path}#{line}",
    sitename="FlexHyX_Package.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
