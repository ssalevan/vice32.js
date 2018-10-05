echo compiling js...
emcc -O2 -o ../js/x64.js -s DOUBLE_MODE=0 -s EMTERPRETIFY=1 -s EMTERPRETIFY_ASYNC=1 -s EMTERPRETIFY_WHITELIST="[ \
        '_sdl_ui_trap_top', \
        '_sdl_ui_menu_display', \
        '_attach_disk_callback', \
        '_sdl_ui_file_selection_dialog', \
        '_sdl_ui_menu_poll_input', \
        '_custom_volume_callback', \
        '_sdl_ui_slider_input_dialog', \
        '_autostart_callback', \
        '_SDL_WaitEvent', \
        '_pause_trap_top', \
        '_sdl_ui_readline', \
        '_sdl_ui_readline_input', 
        '_sdl_ui_text_input_dialog', \
        '_sdl_ui_menu_string_helper', \
        '_string_RsDevice1_callback', \
        '_string_RsDevice2_callback', \
        '_string_RsDevice3_callback', \
        '_string_RsDevice4_callback', \
        '_monitor_callback', \
        '_monitor_startup', \
        '_uimon_in', \
        '_uimon_get_in', \
        '_custom_ui_keyset_callback', \
        '_custom_keyset_callback', \
        '_sdl_ui_poll_event', \
        '_dummy_entry_must_be_last' \
    ]" -s PRECISE_I64_MATH=0 -s WARN_ON_UNDEFINED_SYMBOLS=1 -s TOTAL_MEMORY=33554432 -s ALLOW_MEMORY_GROWTH=1 -s USE_SDL=1 -s WASM=1 -s SINGLE_FILE=1 \
    -s EXPORTED_FUNCTIONS="[ \
        '_autostart_autodetect', \
        '_cmdline_options_string', \
        '_file_system_attach_disk', \
        '_file_system_detach_disk', \
        '_file_system_get_disk_name', \
        '_joystick_set_value_and', \
        '_joystick_set_value_or', \
        '_keyboard_key_pressed', \
        '_keyboard_key_released', \
        '_machine_trigger_reset', \
        '_main', \
        '_set_playback_enabled' \
    ]" \
    --embed-file "data/C64@/C64" --embed-file "data/DRIVES@/DRIVES" --embed-file "data/fonts@/fonts" \
        src/*.o \
        src/arch/sdl/*.o \
        src/c64/*.o \
        src/c64/cart/*.o \
        src/core/*.o \
        src/diskimage/*.o \
        src/drive/*.o \
        src/drive/iec/*.o \
        src/drive/iec/c64exp/*.o \
        src/drive/iec/plus4exp/*.o \
        src/drive/iec128dcr/*.o \
        src/drive/iecieee/*.o \
        src/drive/ieee/*.o \
        src/drive/tcbm/*.o \
        src/fileio/*.o \
        src/fsdevice/*.o \
        src/gfxoutputdrv/*.o \
        src/iecbus/*.o \
        src/imagecontents/*.o \
        src/joyport/*.o \
        src/lib/p64/*.o \
        src/mididrv/*.o \
        src/monitor/*.o \
        src/parallel/*.o \
        src/printerdrv/*.o \
        src/raster/*.o \
        src/resid/*.o \
        src/rs232drv/*.o \
        src/rtc/*.o \
        src/samplerdrv/*.o \
        src/serial/*.o \
        src/sid/*.o \
        src/sounddrv/*.o \
        src/tape/*.o \
        src/tapeport/*.o \
        src/userport/*.o \
        src/vdrive/*.o \
        src/vicii/*.o \
        src/video/*.o
