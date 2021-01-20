# Human-of-Julia Website
This repository hosts the source code used by StaticWebPages.jl to generate the HoJ website along with the last generated output.

## Website generation
Please modify your contents files and execute the following commands at the root.

Optional step:
```julia
(@v1.6) pkg> up # Recommended
(@v1.6) pkg> add StaticWebPages # First time using StaticWebPages

import StaticWebPages # Trigger precompilation
```

Generation routine (in the root folder of the repository):
```
julia run.jl
```

or in the REPL
```julia
include("run.jl")
```

## Update
After generating the last website version locally, just commit and push your changes in `main`.

```git
git add *
git push origin main
```
