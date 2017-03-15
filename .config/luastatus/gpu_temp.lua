function gpu_temp()
    gpu_temp_upd = io.popen('nvidia-smi -q -d TEMPERATURE')
    gpu_temp_upd:setvbuf('no')
    local gpu_temp = ''
    repeat
        gpu_temp = gpu_temp_upd:read() 
    until string.match(gpu_temp, ('Current'))
    gpu_temp_upd:close()
    gpu_temp = string.match(gpu_temp, '%d+%d+')
    return gpu_temp
end
    
widget = {
    plugin = 'timer',
    opts = {period = 2},
    cb = function()
        return {full_text='GPU  '..gpu_temp()..'°C', color='#00AB11'}
    end,
}
