using IterUtils
using Documenter

DocMeta.setdocmeta!(IterUtils, :DocTestSetup, :(using IterUtils); recursive=true)

makedocs(;
    modules=[IterUtils],
    authors="singularitti <singularitti@outlook.com> and contributors",
    sitename="IterUtils.jl",
    format=Documenter.HTML(;
        canonical="https://singularitti.github.io/IterUtils.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/singularitti/IterUtils.jl",
    devbranch="main",
)
