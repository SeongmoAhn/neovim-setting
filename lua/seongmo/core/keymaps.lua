-- <leader>키를 space로 지정
vim.g.mapleader = " " 

local keymap = vim.keymap -- for conciseness


---------------------
-- General Keymaps --
---------------------

keymap.set("i", "jk", "<ESC>")                 -- space + jk : insert mode 나가기

keymap.set("n", "<leader>nh", ":nohl<CR>")     -- space + nh : 하이라이트 지우기

keymap.set("n", "x", '"_x')                    -- x키가 잘라내기가 아닌 삭제로 동작

-- space + [+ or -] : 숫자 위에 커서가 있을 때 해당 숫자 증감
keymap.set("n", "<leader>+", "<C-a>")          -- space + + : increment
keymap.set("n", "<leader>-", "<C-x>")          -- space + - : decrement

-- 창 분할
keymap.set("n", "<leader>sv", "<C-w>v")        -- space + sv : 화면 세로 분할
keymap.set("n", "<leader>sh", "<C-w>s")        -- space + sh : 화면 가로 분할
keymap.set("n", "<leader>se", "<C-w>=")        -- space + se : 분할된 화면 크기 정렬
keymap.set("n", "<leader>sx", ":close<CR>")    -- space + sx : 분할된 화면 닫기
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")    -- space + sm : 분할된 화면 최대화 및 취소

keymap.set("n", "<leader>to", ":tabnew<CR>")   -- space + to : 새 탭 열기
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- space + tx : 현재 탭 닫기
keymap.set("n", "<leader>tn", ":tabn<CR>")     --  space + tn : 다음 탭으로 이동
keymap.set("n", "<leader>tp", ":tabp<CR>")     --  space + tp : 이전 탭으로 이동

----------------------
-- Plugin Keybinds --
----------------------

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- space + e : tree open & close

-- essential plugins
-- ysw + [" or '] : 커서 위치부터 단어 끝까지 [" or ']로 감싸기
-- ds + [" or '] : 감싸진 것 삭제
-- ys : 커서 위치부터 단어 끝까지 복사
-- grw : 커서 위치부터 복사된 단어로 덮어쓰기

-- comment
-- gcc : 현재 행 주석처리
-- gc + 행 수 + 방향키[j or k] : 현재 행과 위나 아래로 입력한 행 수 만큼 주석처리

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- space + ff : 미리보기가 가능한 파일탐색기 열기
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
