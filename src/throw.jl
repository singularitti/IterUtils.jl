#=
throw:
- Julia version: 1.0
- Author: singularitti
- Date: 2019-07-18
=#
export throw_which_in,
    throw_which_occursin,
    throw_which_match

function throw_which_in(xs, each)
    for x in xs
        if x in each
            return x
        else
            continue
        end  # if-else
    end  # for
    return nothing
end  # function throw_which_in

function throw_which_occursin(xs, str::AbstractString)
    for x in xs
        if occursin(x, str)
            return x
        else
            continue
        end  # if-else
    end  # for
    return nothing
end  # function throw_which_occursin

function throw_which_match(rs, line)
    for r in rs
        m = match(r, line)
        if m ≢ nothing
            return r
        else
            continue
        end  # if-else
    end  # for
    return nothing
end  # function throw_which_match
