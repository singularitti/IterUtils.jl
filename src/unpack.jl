export unpack_tuple

function unpack_tuple(f, args...; kwargs...)
    # Call the function and create a stateful iterator
    iter = Iterators.Stateful(f(args...; kwargs...))
    # Extract the first tuple from the iterator
    iter_first = iterate(iter)
    if iter_first === nothing
        return ()  # Handle the case where the iterator is empty
    end
    elements_first, _ = iter_first  # First element of `iterate(iter)` contains the tuple
    # Initialize a tuple of empty arrays based on the number of elements in the tuple
    N = length(elements_first)
    arrays = ntuple(i -> [elements_first[i]], N)
    # Iterate through the remaining tuples
    while true
        iter_next = iterate(iter)
        if iter_next === nothing
            break
        end
        elements, _ = iter_next  # Extract the tuple from `iterate(iter)`
        for (array, element) in zip(arrays, elements)
            push!(array, element)
        end
    end
    # Return the tuple of arrays
    return arrays
end
