require('overseer').setup({ templates = { "builtin", "user.cpp_build" } })

require('code_runner').setup({
	filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "cd $dir && npm start",
		javascript = "cd $dir && npm start",
		typescriptreact = "cd $dir && npm run dev",
		javascriptreact = "cd $dir && npm run dev",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
	}
})
