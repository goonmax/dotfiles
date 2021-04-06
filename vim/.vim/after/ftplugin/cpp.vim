function! s:JbzClangFormat(first, last)
	let l:winview = winsaveview()
	execute a:first . "," . a:last . "!clang-format"
	call winrestview(l:winview)
endfunction
command! -range=% JbzClangFormat call <sid>JbzClangFormat (<line1>, <line2>)

" Autoformatting with clang-format
au FileType c,cpp nnoremap <buffer><leader>lf :<C-u>JbzClangFormat<CR>
au FileType c,cpp nnoremap <buffer><leader>lf :JbzClangFormat<CR>
