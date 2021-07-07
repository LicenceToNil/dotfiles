nnoremap <silent> <C-P> :BufferPrevious<CR>
nnoremap <silent> <C-N> :BufferNext<CR>

let bufferline = get(g:, 'bufferline', {})

" Enable/disable animations
let bufferline.animation = v:false

" Enable/disable close button
let bufferline.closable = v:false

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:false

" Enable/disable icons
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:true

" Configure icons on the bufferline.
let bufferline.icon_separator_active = ''
let bufferline.icon_separator_inactive = ''
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
