export throw_which_in,
    throw_which_occursin,
    throw_which_match

function throw_which_in(xs, each)
    for x in xs
        if x in each
            return x
        else
            continue
        end
    end
    return nothing
end

function throw_which_occursin(xs, str::AbstractString)
    for x in xs
        if occursin(x, str)
            return x
        else
            continue
        end
    end
    return nothing
end

function throw_which_match(rs, line)
    for r in rs
        m = match(r, line)
        if m ≢ nothing
            return r
        else
            continue
        end
    end
    return nothing
end
