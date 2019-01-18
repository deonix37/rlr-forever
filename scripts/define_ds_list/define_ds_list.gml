var ds_list = ds_list_create();

for (var i = 0; i < argument_count; i++) {
    ds_list_add(ds_list, argument[i]);
}

return ds_list;
