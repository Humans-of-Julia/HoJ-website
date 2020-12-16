# Human-of-Julia Website
This repository hosts the source code used by StaticWebPages.jl to generate the HoJ website along with the last generated output.

### Warning!!!
This repository should remain private as some configuration data could be available.

## Website generation
Please modify your contents files and execute the following commands at the root.

Optional step:
```julia
(@v1.5) pkg> up # Recommended
(@v1.5) pkg> add StaticWebPages # First time using StaticWebPages

import StaticWebPages # Trigger precompilation
```

Generation routine:
```
julia run.jl
```

or in the REPL
```julia
include("run.jl")
```
