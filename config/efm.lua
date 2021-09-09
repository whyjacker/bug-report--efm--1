-- ESlint
local eslint = {
	lintCommand        = [[eslint_d -f visualstudio --no-color --config config/eslint.cjs --stdin --stdin-filename ${INPUT}]],
	lintFormats        = {
		'%f(%l,%c): %tarning %m',
		'%f(%l,%c): %rror %m'
	},
	lintStdin          = true,
	lintIgnoreExitCode = true,
	formatCommand      = 'eslint_d --config config/eslint.cjs --fix-to-stdout --stdin --stdin-filename ${INPUT}',
	formatStdin        = true
},

-- EFM
require 'lspconfig'.efm.setup {
    settings = {
        rootMarkers = {'.git/'},
        languages = {
            javascript = {eslint}
        }
    }
}

