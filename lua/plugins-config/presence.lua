local presence = require("presence")
presence.start_timestamp = os.time()  -- Set a fixed start time
presence:setup({
		auto_update = true,  -- Ensure updates happen
    neovim_image_text = "The One True Editor",
    editing_text = "Editing %s",  -- Keeps the same activity
    enable_line_number = false,
    buttons = false,
    show_time = true,  -- Keep the timer running
})
