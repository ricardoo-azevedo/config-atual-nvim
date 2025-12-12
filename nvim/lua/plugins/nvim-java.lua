return {
	{
		"nvim-java/nvim-java",
		ft = { "java" },
		config = function()
    local lombok_path = jdtls_path .. '/lombok.jar'
			require("jdtls").setup({

				vim.fn.expand("~/.sdkman/candidates/java/21.*-tem/bin/java"), 

				"-Declipse.application=org.eclipse.jdt.ls.core.id1",
				"-Dosgi.bundles.defaultStartLevel=4",
				"-Declipse.product=org.eclipse.jdt.ls.core.product",
				"-Dlog.protocol=true",
				"-Dlog.level=ALL",
				"-Xmx1g",
				"--add-modules=ALL-SYSTEM",
				"--add-opens",
				"java.base/java.util=ALL-UNNAMED",
				"--add-opens",
				"java.base/java.lang=ALL-UNNAMED",

				"-javaagent:" .. lombok_path,

				"-jar",
				equinox_launcher_path,

				"-configuration",
				config_path,

				"-data",
				vim.fn.stdpath("cache") .. "/jdtls/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t"),
			})
		end,
	},
}
