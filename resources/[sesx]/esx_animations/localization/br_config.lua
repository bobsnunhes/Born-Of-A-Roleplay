Config = {}

Config.Animations = {

	{
		name  = 'festives',
		label = 'solene',
		items = {
			--{label = "Polta tupakkia", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING"}},
			{label = "Tocar música", type = "scenario", data = {anim = "WORLD_HUMAN_MUSICIAN"}},
			{label = "Dança - DJ", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@dj", anim = "dj"}},
			{label = "Tomar Escondido", type = "scenario", data = {anim = "WORLD_HUMAN_DRINKING"}},
			{label = "Beber Cerveja", type = "scenario", data = {anim = "WORLD_HUMAN_PARTYING"}},
			{label = "Air Guitar", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar"}},
			{label = "Sarrada no Ar", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},
			{label = "Rock'n'roll", type = "anim", data = {lib = "mp_player_int_upperrock", anim = "mp_player_int_rock"}},
			-- {label = "Polta pilveä", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING_POT"}},
			{label = "Bebado na Ventania", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},
			{label = "Vomitar fora do carro", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside"}},
			{label = "Acorde da noitada", type = "anim", data = {lib = "missfam5_blackout", anim = "vomit"}},
			{label = "Vomitar apoiado na parede", type = "anim", data = {lib = "missheistpaletoscore1leadinout", anim = "trv_puking_leadout"}},
		}
	},

	{
		name  = 'greetings',
		label = 'saudações',
		items = {
			{label = "E aí", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},
			{label = "Aperto de mão", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},
			{label = "Aperto de mão descolado", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},
			{label = "Comprimentar com abraço", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
			{label = "Bater Continência", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute"}},
		}
	},

	{
		name  = 'work',
		label = 'trabalho',
		items = {
			{label = "Suspeito: fique de joelhos", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c"}},
			{label = "Pescando", type = "scenario", data = {anim = "world_human_stand_fishing"}},
			{label = "Polícia: Investigue a cena do crime", type = "anim", data = {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"}},
			{label = "Polícia: Fale com o rádio", type = "anim", data = {lib = "random@arrests", anim = "generic_radio_chatter"}},
			{label = "Polícia: controle de tráfego", type = "scenario", data = {anim = "WORLD_HUMAN_CAR_PARK_ATTENDANT"}},
			{label = "Polícia: binóculos", type = "scenario", data = {anim = "WORLD_HUMAN_BINOCULARS"}},
			{label = "Jardineiro", type = "scenario", data = {anim = "world_human_gardener_plant"}},
			{label = "Mecânico: Repare o motor", type = "anim", data = {lib = "mini@repair", anim = "fixing_a_ped"}},
			{label = "Mecânico: Solda", type = "scenario", data = {anim = "WORLD_HUMAN_WELDING"}},
			{label = "SAMU: Reviver", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_KNEEL"}},
			{label = "Táxista: Fale com um cliente", type = "anim", data = {lib = "oddjobs@taxi@driver", anim = "leanover_idle"}},
			{label = "Cliente Táxi: Pague a conta", type = "anim", data = {lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger"}},
			{label = "Mover caixas", type = "anim", data = {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},
			{label = "Barman: Sirva o Cliente", type = "anim", data = {lib = "mini@drinking", anim = "shots_barman_b"}},
			{label = "Jornalista: Tirar fotos", type = "scenario", data = {anim = "WORLD_HUMAN_PAPARAZZI"}},
			{label = "Outros trabalhos: Exibir notas", type = "scenario", data = {anim = "WORLD_HUMAN_CLIPBOARD"}},
			{label = "Outros trabalhos: Martelada", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},
			{label = "Mendigo: Pedir Dinheiro", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_FREEWAY"}},
			{label = "Seja uma estátua", type = "scenario", data = {anim = "WORLD_HUMAN_HUMAN_STATUE"}},
		}
	},

	{
		name  = 'humors',
		label = 'Humor',
		items = {
			{label = "Aplaudir", type = "scenario", data = {anim = "WORLD_HUMAN_CHEERING"}},
			{label = "Mostrar Aprovação", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},
			{label = "Apontar a frente", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_point"}},
			{label = "Vem cá", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_come_here_soft"}}, 
			{label = "Desafiar para briga", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},
			{label = "Eu", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},
			{label = "Roubar, prateleira superior", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},
			-- {label = "Sem fôlego", type = "scenario", data = {lib = "amb@world_human_jog_standing@male@idle_b", anim = "idle_d"}}, -- Roberto - Não está funcionando
			{label = "Desapontado", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"}},
			{label = "Tranquilizar", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},
			{label = "Muito preocupado", type = "anim", data = {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"}},
			{label = "Com medo", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"}},
			{label = "Prepare-se para lutar", type = "anim", data = {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"}},
			{label = "Porcaria!", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},
			{label = "Beijo", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_a"}},
			{label = "Dedos centrais", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}},
			{label = "Masturbação", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01"}},
			{label = "Atire na cabeça", type = "anim", data = {lib = "mp_suicide", anim = "pistol"}},
		}
	},

	{
		name  = 'sports',
		label = 'Esporte',
		items = {
			{label = "Mostrar músculos", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"}},
			{label = "Levantar pesos", type = "anim", data = {lib = "amb@world_human_muscle_free_weights@male@barbell@base", anim = "base"}},
			{label = "Flexões", type = "anim", data = {lib = "amb@world_human_push_ups@male@base", anim = "base"}},
			{label = "Faça abdominais", type = "anim", data = {lib = "amb@world_human_sit_ups@male@base", anim = "base"}},
			{label = "Yoga", type = "anim", data = {lib = "amb@world_human_yoga@male@base", anim = "base_a"}},
		}
	},

	{
		name  = 'misc',
		label = 'Outros',
		items = {
			{label = "Beba café", type = "anim", data = {lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a"}},
			{label = "Sentar", type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"}},
			{label = "Encoste-se", type = "scenario", data = {anim = "world_human_leaning"}},
			{label = "Tomar Sol", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},
			{label = "Tomar Sol de Bruços", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE"}},
			{label = "Limpar", type = "scenario", data = {anim = "world_human_maid_clean"}},
			{label = "Churrasco", type = "scenario", data = {anim = "PROP_HUMAN_BBQ"}},
			{label = "Fazer T", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female"}},
			{label = "Selfie", type = "scenario", data = {anim = "world_human_tourist_mobile"}},
			{label = "Ouça a porta", type = "anim", data = {lib = "mini@safe_cracking", anim = "idle_base"}}, 
		}
	},

	{
		name  = 'attitudem',
		label = 'Atitudes',
		items = {
			--{label = "Confidente", type = "attitude", data = {lib = "move_m@confident", anim = "move_m@confident"}}, Roberto - não funciona
			-- {label = "N Normal", type = "attitude", data = {lib = "move_f@heels@c", anim = "move_f@heels@c"}}, Roberto - Não funciona
			{label = "Deprimido 1", type = "attitude", data = {lib = "move_m@depressed@a", anim = "move_m@depressed@a"}},
			{label = "Deprimido 2", type = "attitude", data = {lib = "move_f@depressed@a", anim = "move_f@depressed@a"}},
			{label = "Rico", type = "attitude", data = {lib = "move_m@business@a", anim = "move_m@business@a"}},
			{label = "Valente", type = "attitude", data = {lib = "move_m@brave@a", anim = "move_m@brave@a"}},
			{label = "Sujo", type = "attitude", data = {lib = "move_m@casual@a", anim = "move_m@casual@a"}},
			{label = "Fodendo", type = "attitude", data = {lib = "move_m@fat@a", anim = "move_m@fat@a"}},
			{label = "Hipster", type = "attitude", data = {lib = "move_m@hipster@a", anim = "move_m@hipster@a"}},
			{label = "Ferido", type = "attitude", data = {lib = "move_m@injured", anim = "move_m@injured"}},
			{label = "Ocupado", type = "attitude", data = {lib = "move_m@hurry@a", anim = "move_m@hurry@a"}},
			{label = "Gastador", type = "attitude", data = {lib = "move_m@hobo@a", anim = "move_m@hobo@a"}},
			{label = "Triste", type = "attitude", data = {lib = "move_m@sad@a", anim = "move_m@sad@a"}},
			{label = "Musculoso", type = "attitude", data = {lib = "move_m@muscle@a", anim = "move_m@muscle@a"}},
			{label = "Chateado", type = "attitude", data = {lib = "move_m@shocked@a", anim = "move_m@shocked@a"}},
			{label = "Luta", type = "attitude", data = {lib = "move_m@shadyped@a", anim = "move_m@shadyped@a"}},
			{label = "Cansado", type = "attitude", data = {lib = "move_m@buzzed", anim = "move_m@buzzed"}},
			{label = "Mais urgente", type = "attitude", data = {lib = "move_m@hurry_butch@a", anim = "move_m@hurry_butch@a"}},
			{label = "Orgulhoso", type = "attitude", data = {lib = "move_m@money", anim = "move_m@money"}},
			{label = "Corredor curto", type = "attitude", data = {lib = "move_m@quick", anim = "move_m@quick"}},
			{label = "Encantador dos homens", type = "attitude", data = {lib = "move_f@maneater", anim = "move_f@maneater"}},
			{label = "Petulante", type = "attitude", data = {lib = "move_f@sassy", anim = "move_f@sassy"}},	
			{label = "Arrogante", type = "attitude", data = {lib = "move_f@arrogant@a", anim = "move_f@arrogant@a"}},
		}
	},

	{
		name  = 'porn',
		label = 'Seção + 18',
		items = {
			{label = "Boquete 1", type = "anim", data = {lib = "oddjobs@towing", anim = "m_blow_job_loop"}},
			{label = "Boquete 2", type = "anim", data = {lib = "oddjobs@towing", anim = "f_blow_job_loop"}},
			{label = "Sexo 1", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player"}},
			{label = "Sexo 2", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female"}},
			{label = "Coçar o saco", type = "anim", data = {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch"}},
			{label = "Strip Tease 1", type = "anim", data = {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02"}},
			{label = "Prostituta de alta sociedade", type = "scenario", data = {anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}},
			{label = "Mostrar os peitos", type = "anim", data = {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b"}},
			{label = "Strip Tease 2", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f"}},
			{label = "Strip Tease 3", type = "anim", data = {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2"}},
			{label = "Strip Tease 4", type = "anim", data = {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3"}},
		}
	}
}