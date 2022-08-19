import Pkg
Pkg.add(url = "https://github.com/StructuralEquationModels/Taxonomy.jl")
using Taxonomy

Record(
    rater    = Union{Missing, AbstractString},
    id       = Union{Missing, Base.UUID},
    location = AbstractLocation,
    meta     = Taxonomy.AbstractMeta,
    taxons   = Union{Missing, Vector{<:Taxonomy.Taxon}},
    spec     = Union{Missing, Judgement},
    data     = Union{Missing, Judgement},
)

first_record = Record(
    rater    = "ME",
    id       = "1b39c8bd-6126-55aa-8e62-28e67deea681",
    location = DOI("10.1177/1073191120905892"),
    taxons   = [NoTaxon()],
    spec     = false,
    data     = false,
)

# we have no taxon for SEMs?
second_record = Record(
    rater    = "ME",
    id       = "3da4a79b-1049-5e13-95e9-7e0b62a9d596",
    location = DOI("10.1037/ebs0000266"),
    taxons   = missing,
    spec     = true,
    data     = true,
)