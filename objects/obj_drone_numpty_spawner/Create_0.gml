event_inherited();

spawners = ds_list_create();

ds_list_add(spawners, inst_1F4D77F3, inst_26E2700D, inst_2910C701, inst_6CFA517A,
            inst_783408FC, inst_7D79F2D3, inst_DDC3F5A, inst_25B18D4C,
            inst_2D3EF479, inst_4E5E29EE, inst_148F320, inst_6CDFE53D,
            inst_8F306C1, inst_6734C46F, inst_781A0D1F, inst_723C71E1,
            inst_5A5301DC, inst_6F9034AF, inst_731D130D);
drone_numpty_spawner_init();
ds_list_destroy(spawners);
instance_destroy();
