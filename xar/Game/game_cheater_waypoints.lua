function p.add_all()
    --The existence of "if" statements like this make
    --me want to freak the hell out.
    local engine_ver = game_version.get_first_engine_version_int()
    if( engine_ver <= 10201 ) then
        p.add_all_version_1_02_01()
    else
        p.add_all_version_1_02_02()
    end
end

--Works up through "1.02.01".
function p.add_all_version_1_02_01()
    --Main cheater hub:
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0", "Reboot!")
    --Emergeny waypoint (sensitive).
    game_base_wp_system.add_emergency_wp("777_777_777_686_d3a_583_921_e20_082_657_778_679_777_664_777_777_03b_887_7b2_777_777_777_888_888_769_4c9_884_b76")
    --Growing a bit (sensitive).
    p.add_wp("777_777_777_686_d3a_583_921_e20_082_657_778_679_777_664_777_777_03b_887_7b2_777_777_777_988_545_798", "Gated Community")
    p.add_wp("777_777_777_686_d3a_583_921_e20_082_657_778_679_777_664_777_944_578", "Tau Caves")
    p.add_wp("777_777_777_686_d3a_583_921_e20_082_657_778_679_777_78f", "The Moon")
    --Outer space.
    p.add_wp("777_777_777_777_777_88f_88f_0e1", "Mylantis Top Garden")
    --Inner space.
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_193_778_777_e57_511_112", "Stoney Sanctuary")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_193_875_14d_bf3", "Orange: Inside")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_1a3_988_39f_777", "Botany Lab")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_1b3_887_775_773_c6a_5bf_37a_891_881_777", "Williston (I1)")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_187_920_7c0_77c_777_77d_777_787_c97_779", "I3 Main Forest")
    --Hell.
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_197_88a_888_88b_78f_e1b", "Final Boss")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_197_88a_888_88b_881_778", "Credits")
    --Burlington.
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_1a7_887_871_0ca_9a0_626", "Burlington")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_bd5_778_870", "Farmhouse")
end

--Works starting at "1.02.02".
function p.add_all_version_1_02_02()
    --Main cheater hub:
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0", "Reboot!")
    --Emergeny waypoint (sensitive).
    p.add_em_wp("777_777_777_768_e01_132_332_e42_cc9_627_768_666_777_664_777_777_051_887_7b2_777_777_777_888_888_769_4c9_884_b76")
    --Growing a bit (sensitive).
    p.add_wp("777_777_777_768_e01_132_332_e42_cc9_627_768_666_777_664_777_777_051_887_7b2_777_777_777_888_5be_798", "Gated Community")
    p.add_wp("777_777_777_768_e01_132_332_e42_cc9_627_768_666_777_664_777_777_184", "Tau Caves")
    p.add_wp("777_777_777_768_e01_132_332_e42_cc9_627_768_666_777_78f", "The Moon")
    --Outer space.
    p.add_wp("777_777_777_777_777_88f_88f_0e1", "Mylantis Top Garden")
    --Inner space.
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_193_778_777_e57_511_112", "Stoney Sanctuary")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_193_775_3cd_725", "Orange: Inside")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_1a3_988_39f_777", "Botany Lab")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_1b3_887_775_773_c6a_5bf_37a_891_881_777", "Williston (I1)")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_187_920_7c0_77c_777_77d_777_787_c97_779", "I3 Main Forest")
    --Hell.
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_197_88a_888_88b_78f_e1b", "Final Boss")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_197_88a_888_88b_881_778", "Credits")
    --Burlington.
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_1a7_887_751_48a_590_0e6", "Burlington")
    p.add_wp("777_777_777_777_777_88f_88f_0f1_0f0_bd5_778_870", "Farmhouse")
end

--Helper function.
function p.add_em_wp(path)
    game_base_wp_system.add_emergency_wp(path)
end

--Helper function.
function p.add_wp(path, override_name)
    game_base_wp_system.add_builtin_wp(path, override_name)
    --ga_add_waypoint_sloppy --Old way.
end
