### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 7ef65854-0e69-11ec-0180-e54b0ec37e8e
begin 
	using PlutoUI
	md"Coordinate multiple inputs"
end

# ╔═╡ 60987f01-ad9a-4156-b309-f62bf9c60c18
md"""> ## Text navigation
"""


# ╔═╡ e43260d3-fdcb-4a14-9cba-06e2892e3fb2
md"*Navigate text using*"

# ╔═╡ 6ab045a0-066a-4e87-a151-d1d62860f113
@bind navigation Radio(["menu" => "popup menu", "manual" => "manually entered choice"] , default="menu")


# ╔═╡ d18bc69b-70e2-4588-9a26-d1d1c45fa1e9
md"""*Navigate to* $(@bind navmenu Select(["1.1", "1.2", "1.3", "1.4", "2.1"])) or *enter choice manually*:  $(@bind navmanual TextField((6,1); default="2.1"))"""

# ╔═╡ bdc2eaa9-6625-403b-868b-438c5759fcc0
md"> More ideas to implement"

# ╔═╡ 2a21c3de-f6c1-4393-be98-59596ba8a598
md"""

- load a corpus from URL
- choose text from corpus
- choose level of citation hierarchy for navigation
- choose default number of units?

"""

# ╔═╡ 54fe1cb7-e5ef-44e2-8944-b8581c5b99d2
md"> Behind the scenes"

# ╔═╡ 3eacd892-a28f-407a-b0b9-bb57de0c631a
psg = navigation == "menu" ? navmenu : navmanual

# ╔═╡ dc50789a-7321-40a1-8f53-47ec3022e344
md" **Text passage to display == $(psg)**"

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.9"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "8076680b162ada2a031f707ac7b4953e30667a37"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.2"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "438d35d2d95ae2c5e8780b330592b6de8494e779"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.0.3"

[[PlutoUI]]
deps = ["Base64", "Dates", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "Suppressor"]
git-tree-sha1 = "44e225d5837e2a2345e69a1d1e01ac2443ff9fcb"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.9"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[Suppressor]]
git-tree-sha1 = "a819d77f31f83e5792a76081eee1ea6342ab8787"
uuid = "fd094767-a336-5f1f-9728-57cf17d0bbfb"
version = "0.2.0"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
"""

# ╔═╡ Cell order:
# ╟─7ef65854-0e69-11ec-0180-e54b0ec37e8e
# ╟─60987f01-ad9a-4156-b309-f62bf9c60c18
# ╟─e43260d3-fdcb-4a14-9cba-06e2892e3fb2
# ╟─6ab045a0-066a-4e87-a151-d1d62860f113
# ╟─d18bc69b-70e2-4588-9a26-d1d1c45fa1e9
# ╟─dc50789a-7321-40a1-8f53-47ec3022e344
# ╟─bdc2eaa9-6625-403b-868b-438c5759fcc0
# ╟─2a21c3de-f6c1-4393-be98-59596ba8a598
# ╟─54fe1cb7-e5ef-44e2-8944-b8581c5b99d2
# ╟─3eacd892-a28f-407a-b0b9-bb57de0c631a
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
