if (ds_exists(buttons, ds_type_list)) {
    ds_list_destroy(buttons);
}

if (ds_exists(buttons_arrows, ds_type_map)) {
    ds_map_destroy(buttons_arrows);
}
