-- Esto es necesario para que VimTeX se cargue correctamente. El "indent" es opcional.
-- La mayoría de los gestores de complementos harán esto automáticamente.
vim.cmd('filetype plugin indent on')

-- Esto habilita las funciones relacionadas con la sintaxis en Vim y Neovim.
-- Sin esto, algunas características de VimTeX pueden no funcionar.
vim.cmd('syntax enable')

-- Opciones del visor: Se puede configurar el visor ya sea especificando un método incorporado
-- o utilizando una interfaz genérica.
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_view_general_viewer = 'zathura'
--vim.g.vimtex_view_general_viewer = 'okular'
--vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'

-- VimTeX utiliza latexmk como el backend del compilador de forma predeterminada.
-- Si lo estás utilizando, lo recomendado, probablemente no necesitas configurar nada.
-- Si deseas utilizar otro backend de compilador, puedes cambiarlo de la siguiente manera.
-- La lista de backends compatibles y más explicaciones se proporciona en la documentación,
-- consulta ":help vimtex-compiler".
vim.g.vimtex_compiler_method = 'latexrun'

-- La mayoría de los mapeos de VimTeX dependen de 'localleader'. Puedes cambiarlo con la siguiente línea.
-- El valor predeterminado es generalmente aceptable y es el símbolo "\".
vim.g.maplocalleader = ','

-- Si prefieres asignar el valor a `maplocalleader` localmente en un buffer específico, puedes hacerlo así:
-- vim.api.nvim_buf_set_var(0, 'maplocalleader', ',')

--Instalar latexrun, zathura si es necesario
