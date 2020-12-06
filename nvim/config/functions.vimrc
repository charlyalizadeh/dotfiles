function SetWinWidth(id, width)
    call win_gotoid(a:id)
    execute "vertical resize " . a:width
endfunction

function SetWinHeight(id, height)
    call win_gotoid(a:id)
    execute "resize " . a:height
endfunction

function SetWinDim(id, width, height)
    call SetWinWidth(a:id, a:width)
    call SetWinHeight(a:id, a:height)
endfunction

function Clear(list)
    while empty(a:list) == 0
        call remove(a:list, 0)
    endwhile
endfunction

function Copy(list_src, list_dst)
    for element in a:list_src
        call add(a:list_dst, element)
    endfor
endfunction

function EqualizeWindowSize()
    let width = &columns
    let height = &lines
    let current_queu = [[winlayout(), width, height]]
    let next_queu = []
    while empty(current_queu) == 0
        while empty(current_queu) == 0
            let current_node = current_queu[0]
            call remove(current_queu, 0)
            if current_node[0][0] ==# "row"
                let new_width = current_node[1] / len(current_node[0][1])
                for child in current_node[0][1]
                    call add(next_queu, [child, new_width, current_node[2]]) 
                endfor
            elseif current_node[0][0] ==# "col"
                let new_height = current_node[2] / len(current_node[0][1])
                for child in current_node[0][1]
                    echo child
                    call add(next_queu, [child, current_node[1], new_height]) 
                endfor
            elseif current_node[0][0] ==# "leaf"
                let id = current_node[0][1]
                call SetWinDim(id, current_node[1], current_node[2])
            endif
        endwhile
        call Copy(next_queu, current_queu)
        call Clear(next_queu)
    endwhile
endfunction

function MaximizeWindowSize()
    let width = &columns
    let height = &lines
    let window_id = win_getid()
    call SetWinDim(window_id, width, height)
endfunction

function SaveAndCloseAllTabBuffer()
    let buffer_list = tabpagebuflist()
    for nbr in buffer_list
        execute "b".nbr
        if $modifiable == 1
            execute "wq!"
        else
            execute "q!"
        endif
    endfor
endfunction

function KillBuffer()
    let filename = expand("%")
    let choice = confirm("Are you sure you want to kill " . filename . "?", "&Yes\n&No")
    if choice == 1
        execute ":bd!"
    endif
endfunction
