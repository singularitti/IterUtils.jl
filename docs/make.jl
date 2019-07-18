using Documenter, IterUtils

makedocs(;
    modules=[IterUtils],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/singularitti/IterUtils.jl/blob/{commit}{path}#L{line}",
    sitename="IterUtils.jl",
    authors="Qi Zhang <singularitti@outlook.com>",
    assets=String[],
)

deploydocs(;
    repo="github.com/singularitti/IterUtils.jl",
)
