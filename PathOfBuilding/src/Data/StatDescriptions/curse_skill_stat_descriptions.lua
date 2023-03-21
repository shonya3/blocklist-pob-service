-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
		lang={
			English={
				[1]={
					[1]={
						k="milliseconds_to_seconds",
						v=1
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Curse lasts {0} seconds"
				}
			}
		},
		name="buff_duration",
		stats={
			[1]="buff_effect_duration"
		}
	},
	[2]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed Normal and Magic Enemies have {0}% more Action Speed"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed Normal and Magic Enemies have {0}% less Action Speed"
				}
			}
		},
		name="action_speed_reduction",
		stats={
			[1]="temporal_chains_action_speed_+%_final"
		}
	},
	[3]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Other effects on Cursed enemies expire {0}% faster"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextSlowTimeEffects"
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Other effects on Cursed enemies expire {0}% slower"
				}
			}
		},
		name="buff_time_passed_reduction",
		stats={
			[1]="buff_time_passed_+%_other_than_temporal_chains"
		}
	},
	[4]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies have {0:+d}% to Elemental Resistances"
				}
			}
		},
		name="elemental_resist",
		stats={
			[1]="base_resist_all_elements_%"
		}
	},
	[5]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies have {0:+d}% to Fire Resistance"
				}
			}
		},
		name="fire_resist",
		stats={
			[1]="base_fire_damage_resistance_%"
		}
	},
	[6]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies have {0:+d}% to Cold Resistance"
				}
			}
		},
		name="cold_resist",
		stats={
			[1]="base_cold_damage_resistance_%"
		}
	},
	[7]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies have {0:+d}% to Lightning Resistance"
				}
			}
		},
		name="lightning_resist",
		stats={
			[1]="base_lightning_damage_resistance_%"
		}
	},
	[8]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies have {0:+d}% to Chaos Resistance"
				}
			}
		},
		name="chaos_res",
		stats={
			[1]="base_chaos_damage_resistance_%"
		}
	},
	[9]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextFreeze"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Hits against Cursed Enemies have {0:+d}% chance to Freeze"
				}
			}
		},
		name="chance_to_be_frozen",
		stats={
			[1]="chance_to_be_frozen_%"
		}
	},
	[10]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextIgnite"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Hits against Cursed Enemies have {0:+d}% chance to Ignite"
				}
			}
		},
		name="chance_to_be_ignited",
		stats={
			[1]="chance_to_be_ignited_%"
		}
	},
	[11]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextShock"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Hits against Cursed Enemies have {0:+d}% chance to Shock"
				}
			}
		},
		name="chance_to_be_shocked",
		stats={
			[1]="chance_to_be_shocked_%"
		}
	},
	[12]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies grant {0}% increased Flask Charges"
				}
			}
		},
		name="monster_flask_charges_incr",
		stats={
			[1]="monster_slain_flask_charges_granted_+%"
		}
	},
	[13]={
		lang={
			English={
				[1]={
					[1]={
						k="divide_by_one_hundred",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLifeLeech"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies grant {0}% Life Leech when Hit by Attacks"
				}
			}
		},
		name="life_leeched_when_hit_by_attack",
		stats={
			[1]="life_leech_on_any_damage_when_hit_by_attack_permyriad"
		}
	},
	[14]={
		lang={
			English={
				[1]={
					[1]={
						k="divide_by_one_hundred",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLifeLeech"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies grant {0}% Life Leech when Hit"
				}
			}
		},
		name="life_leeched_when_hit",
		stats={
			[1]="life_leech_on_any_damage_when_hit_permyriad"
		}
	},
	[15]={
		lang={
			English={
				[1]={
					[1]={
						k="divide_by_one_hundred",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextManaLeech"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies grant {0}% Mana Leech when Hit by Attacks"
				}
			}
		},
		name="mana_leeched_when_hit_by_attack",
		stats={
			[1]="mana_leech_on_any_damage_when_hit_by_attack_permyriad"
		}
	},
	[16]={
		lang={
			English={
				[1]={
					[1]={
						k="divide_by_one_hundred",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextManaLeech"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies grant {0}% Mana Leech when Hit"
				}
			}
		},
		name="mana_leeched_when_hit",
		stats={
			[1]="mana_leech_on_any_damage_when_hit_permyriad"
		}
	},
	[17]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies have a {0}% chance to grant an Endurance Charge when slain"
				}
			}
		},
		name="chance_to_grant_endurance_charge_on_death",
		stats={
			[1]="chance_to_grant_endurance_charge_on_death_%"
		}
	},
	[18]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies have a {0}% chance to grant a Frenzy Charge when slain"
				}
			}
		},
		name="chance_to_grant_frenzy_charge_on_death",
		stats={
			[1]="chance_to_grant_frenzy_charge_on_death_%"
		}
	},
	[19]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies have a {0}% chance to grant a Power Charge when slain"
				}
			}
		},
		name="chance_to_grant_power_charge_on_death",
		stats={
			[1]="chance_to_grant_power_charge_on_death_%"
		}
	},
	[20]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies have {0}% increased Accuracy Rating"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed enemies have {0}% reduced Accuracy Rating"
				}
			}
		},
		name="accuracy_rating_incr",
		stats={
			[1]="accuracy_rating_+%"
		}
	},
	[21]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies have {0}% increased Critical Strike Chance"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed enemies have {0}% reduced Critical Strike Chance"
				}
			}
		},
		name="critical_strike_chance_incr",
		stats={
			[1]="critical_strike_chance_+%"
		}
	},
	[22]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies have {0:+d}% to Critical Strike Multiplier"
				}
			}
		},
		name="critical_strike_multiplier_incr",
		stats={
			[1]="base_critical_strike_multiplier_+"
		}
	},
	[23]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed Normal or Magic enemies deal {0}% more Damage"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed Normal or Magic enemies deal {0}% less Damage"
				}
			}
		},
		name="enfeeble_damage_scale",
		stats={
			[1]="enfeeble_damage_+%_final"
		}
	},
	[24]={
		lang={
			English={
				[1]={
					[1]={
						k="divide_by_one_hundred",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Hits against Cursed Enemies have {0:+d}% to Critical Strike Chance"
				}
			}
		},
		name="chance_to_take_critical_strike",
		stats={
			[1]="enemy_additional_critical_strike_chance_against_self"
		}
	},
	[25]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Hits against Cursed Enemies have {0:+d}% to Critical Strike Multiplier"
				}
			}
		},
		name="enemy_critical_strike_multiplier_against_self",
		stats={
			[1]="enemy_additional_critical_strike_multiplier_against_self"
		}
	},
	[26]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies take {0}% reduced Extra Damage from Critical Strikes"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed enemies take {0}% increased Extra Damage from Critical Strikes"
				}
			}
		},
		name="self_critical_strike_multiplier_reduction",
		stats={
			[1]="base_self_critical_strike_multiplier_-%"
		}
	},
	[27]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Projectiles Pierce Cursed Enemies"
				}
			}
		},
		name="be_pierced",
		stats={
			[1]="projectiles_always_pierce_you"
		}
	},
	[28]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextKnockback"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Hits on Cursed Enemies have an additional {0}% chance to Knockback"
				}
			}
		},
		name="chance_to_be_knocked_back",
		stats={
			[1]="chance_to_be_knocked_back_%"
		}
	},
	[29]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies have {0}% more Evasion Rating"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed enemies have {0}% less Evasion Rating"
				}
			}
		},
		name="evasion_rating_poachers_mark",
		stats={
			[1]="evasion_rating_+%_final_from_poachers_mark"
		}
	},
	[30]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies take {0}% increased Damage from Projectile Hits"
				}
			}
		},
		name="projectile_damage_taken_incr",
		stats={
			[1]="projectile_damage_taken_+%"
		}
	},
	[31]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed Enemies have an additional {0}% chance to be Stunned"
				}
			}
		},
		name="chance_to_be_stunned",
		stats={
			[1]="chance_to_be_stunned_%"
		}
	},
	[32]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies have {0}% increased Stun and Block Recovery"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed enemies have {0}% reduced Stun and Block Recovery"
				}
			}
		},
		name="stun_recovery_incr",
		stats={
			[1]="base_stun_recovery_+%"
		}
	},
	[33]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies take {0}% increased Physical Damage"
				}
			}
		},
		name="physical_damage_taken_incr",
		stats={
			[1]="physical_damage_taken_+%"
		}
	},
	[34]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies take {0}% increased Damage from Damage Over Time effects"
				}
			}
		},
		name="degen_effect_incr",
		stats={
			[1]="degen_effect_+%"
		}
	},
	[35]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Ignite on Cursed enemies has {0}% reduced Duration"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Ignite on Cursed enemies has {0}% increased Duration"
				}
			}
		},
		name="self_burn_duration",
		stats={
			[1]="base_self_ignite_duration_-%"
		}
	},
	[36]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Freezes on Cursed enemies have {0}% reduced Duration"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Freezes on Cursed enemies have {0}% increased Duration"
				}
			}
		},
		name="self_freeze_duration",
		stats={
			[1]="base_self_freeze_duration_-%"
		}
	},
	[37]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Shocks on Cursed enemies have {0}% reduced Duration"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Shocks on Cursed enemies have {0}% increased Duration"
				}
			}
		},
		name="self_shock_duration",
		stats={
			[1]="base_self_shock_duration_-%"
		}
	},
	[38]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="You cannot Cast this Spell directly"
				}
			}
		},
		name="cannot_cast_curses",
		stats={
			[1]="cannot_cast_curses"
		}
	},
	[39]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies grant {0} Life when Hit by Attacks"
				}
			}
		},
		name="life_granted_when_hit",
		stats={
			[1]="life_granted_when_hit_by_attacks"
		}
	},
	[40]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies grant {0} Mana when Hit by Attacks"
				}
			}
		},
		name="mana_granted_when_hit",
		stats={
			[1]="mana_granted_when_hit_by_attacks"
		}
	},
	[41]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies grant {0} Life when Killed"
				}
			}
		},
		name="life_granted_when_killed",
		stats={
			[1]="life_granted_when_killed"
		}
	},
	[42]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies grant {0} Mana when Killed"
				}
			}
		},
		name="mana_granted_when_killed",
		stats={
			[1]="mana_granted_when_killed"
		}
	},
	[43]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="{0}% increased Area of Effect"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="{0}% reduced Area of Effect"
				}
			}
		},
		name="curse_area",
		stats={
			[1]="curse_area_of_effect_+%"
		}
	},
	[44]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="This Curse is Cast as an Aura applying to nearby Enemies"
				}
			}
		},
		name="curse_aura",
		stats={
			[1]="curse_apply_as_aura"
		}
	},
	[45]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]=1
						}
					},
					text="Gain {0} Flask Charge when you Hit a Cursed Enemy, no more than once every 3 seconds"
				},
				[2]={
					limit={
						[1]={
							[1]=2,
							[2]="#"
						}
					},
					text="Gain {0} Flask Charges when you Hit a Cursed Enemy, no more than once every 3 seconds"
				}
			}
		},
		name="alchemists_mark_flask_on_hit",
		stats={
			[1]="alchemists_mark_grant_attacker_x_flask_charges_when_hit_once_per_3s"
		}
	},
	[46]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed enemies have {0:+d}% to Physical Damage Reduction"
				}
			}
		},
		name="phys_reduction",
		stats={
			[1]="base_additional_physical_damage_reduction_%"
		}
	},
	[47]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies take {0}% increased Damage"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed enemies take {0}% reduced Damage"
				}
			}
		},
		name="damage_taken_incr",
		stats={
			[1]="base_damage_taken_+%"
		}
	},
	[48]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextHinder"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Spell Hits have {0}% chance to Hinder Cursed Enemies"
				}
			}
		},
		name="hinder_when_hit_chance",
		stats={
			[1]="chance_to_be_hindered_when_hit_by_spells_%"
		}
	},
	[49]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextMaim"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Attack Hits have {0}% chance to Maim Cursed Enemies for 4 seconds"
				}
			}
		},
		name="maim_when_hit_chance",
		stats={
			[1]="chance_to_be_maimed_when_hit_%"
		}
	},
	[50]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed Enemies take {0}% increased Damage while on Low Life"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed Enemies take {0}% reduced Damage while on Low Life"
				}
			}
		},
		name="low_life_damage_taken",
		stats={
			[1]="damage_taken_+%_on_low_life"
		}
	},
	[51]={
		lang={
			English={
				[1]={
					[1]={
						k="milliseconds_to_seconds_2dp",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextDebilitate"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed Enemies are Debilitated for {0} Seconds when they Hit"
				}
			}
		},
		name="debilitated_when_hit",
		stats={
			[1]="debilitate_self_for_x_milliseconds_on_hit"
		}
	},
	[52]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Hits against Cursed Enemies have {0}% chance to double Stun Duration"
				}
			}
		},
		name="double_stun_duration_curse",
		stats={
			[1]="enemy_chance_to_double_stun_duration_%_vs_self"
		}
	},
	[53]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextDamagingAilments"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Ailments inflicted on Cursed Enemies deal Damage {0}% Faster"
				}
			}
		},
		name="vuln_curse_ailment_faster_damage",
		stats={
			[1]="enemy_damaging_ailments_deal_damage_+%_faster_against_self"
		}
	},
	[54]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Cursed Enemies grant {0} Rage Regenerated over 1 second when Stunned"
				}
			}
		},
		name="rage_regeneration_on_stun_curse",
		stats={
			[1]="enemy_rage_regeneration_on_stun"
		}
	},
	[55]={
		lang={
			English={
				[1]={
					[1]={
						k="divide_by_one_hundred",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextEnergyShieldLeech"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies grant {0}% Energy Shield Leech when Hit"
				}
			}
		},
		name="energy_shield_leeched_when_hit",
		stats={
			[1]="energy_shield_leech_on_any_damage_when_hit_permyriad"
		}
	},
	[56]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed Rare or Unique enemies deal {0}% more Damage"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed Rare or Unique enemies deal {0}% less Damage"
				}
			}
		},
		name="enfeeble_damage_scale_rare_or_unique",
		stats={
			[1]="enfeeble_damage_+%_vs_rare_or_unique_final"
		}
	},
	[57]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=100,
							[2]=100
						}
					},
					text="Cursed Enemies grant an Endurance Charge when Hit"
				},
				[2]={
					limit={
						[1]={
							[1]="#",
							[2]=99
						}
					},
					text="Cursed Enemies have a {0}% chance to grant an Endurance Charge when Hit"
				}
			}
		},
		name="curse_endurance_on_hit",
		stats={
			[1]="grant_attacker_endurance_charge_when_hit_%_chance"
		}
	},
	[58]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=100,
							[2]=100
						}
					},
					text="Cursed Enemies grant a Frenzy Charge when Hit"
				},
				[2]={
					limit={
						[1]={
							[1]="#",
							[2]=99
						}
					},
					text="Cursed Enemies have a {0}% chance to grant a Frenzy Charge when Hit"
				}
			}
		},
		name="curse_frenzy_on_hit",
		stats={
			[1]="grant_attacker_frenzy_charge_when_hit_%_chance"
		}
	},
	[59]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=100,
							[2]=100
						}
					},
					text="Cursed Enemies grant a Power Charge when Hit"
				},
				[2]={
					limit={
						[1]={
							[1]="#",
							[2]=99
						}
					},
					text="Cursed Enemies have a {0}% chance to grant a Power Charge when Hit"
				}
			}
		},
		name="curse_power_on_hit",
		stats={
			[1]="grant_attacker_power_charge_when_hit_%_chance"
		}
	},
	[60]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]=1
						}
					},
					text="You gain a Life Flask Charge when you Hit Cursed Enemy, no more\nthan once every 0.5 seconds"
				},
				[2]={
					limit={
						[1]={
							[1]=2,
							[2]="#"
						}
					},
					text="You gain {0} Life Flask Charges when you Hit Cursed Enemy, no more\nthan once every 0.5 seconds"
				}
			}
		},
		name="alchemists_mark_life_flask_on_hit",
		stats={
			[1]="grant_attacker_x_life_flask_charges_when_hit_once_per_500ms"
		}
	},
	[61]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]=1
						}
					},
					text="You gain a Mana Flask Charge when you Hit Cursed Enemy, no more\nthan once every 0.5 seconds"
				},
				[2]={
					limit={
						[1]={
							[1]=2,
							[2]="#"
						}
					},
					text="You gain {0} Mana Flask Charges when you Hit Cursed Enemy, no more\nthan once every 0.5 seconds"
				}
			}
		},
		name="alchemists_mark_mana_flask_on_hit",
		stats={
			[1]="grant_attacker_x_mana_flask_charges_when_hit_once_per_500ms"
		}
	},
	[62]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="{0}% increased Effect of Mark"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="{0}% reduced Effect of Mark"
				}
			}
		},
		name="mark_effect_incr",
		stats={
			[1]="mark_skills_curse_effect_+%"
		}
	},
	[63]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="Adds {0} to {1} Chaos Damage to Hits against Cursed Enemies"
				}
			}
		},
		name="chaos_weakness_damage",
		stats={
			[1]="minimum_added_chaos_damage_taken",
			[2]="maximum_added_chaos_damage_taken"
		}
	},
	[64]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="Adds {0} to {1} Physical Damage to Hits against Cursed Enemies"
				}
			}
		},
		name="physical_damage_enemies_cursed",
		stats={
			[1]="minimum_added_physical_damage_taken",
			[2]="maximum_added_physical_damage_taken"
		}
	},
	[65]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed enemies take {0}% increased Physical Damage from Damage Over Time"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed enemies take {0}% reduced Physical Damage from Damage Over Time"
				}
			}
		},
		name="physical_dot_taken_incr",
		stats={
			[1]="base_physical_damage_over_time_taken_+%"
		}
	},
	[66]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Projectiles which Hit Cursed Enemies Split towards {0} additional targets"
				}
			}
		},
		name="projectiles_split_against_self",
		stats={
			[1]="projectiles_hitting_self_split_into_x"
		}
	},
	[67]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextBleeding"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Attacks Hits against Cursed Enemies have {0}% chance to inflict Bleeding"
				}
			}
		},
		name="bleed_when_hit_chance",
		stats={
			[1]="receive_bleeding_chance_%_when_hit_by_attack"
		}
	},
	[68]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextOverkill"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="{0}% of Overkill Damage from Killing Blows on Cursed Enemies is Reflected to other Enemies as Physical Damage"
				}
			}
		},
		name="reflect_overkill_damage_on_death",
		stats={
			[1]="punishment_reflect_%_overkill_damage_to_nearby_allies_on_death"
		}
	},
	[69]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="{0}% increased Duration of Bleeding on Cursed Enemies"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="{0}% reduced Duration of Bleeding on Cursed Enemies"
				}
			}
		},
		name="self_bleeding_duration_incr",
		stats={
			[1]="self_bleed_duration_+%"
		}
	},
	[70]={
		lang={
			English={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextElementalAilments"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="{0}% reduced Duration of Elemental Ailments on Cursed enemies"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextElementalAilments"
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="{0}% increased Duration of Elemental Ailments on Cursed enemies"
				}
			}
		},
		name="self_elemental_status_duration",
		stats={
			[1]="self_elemental_status_duration_-%"
		}
	},
	[71]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="{0}% more Effect of Curse"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="{0}% less Effect of Curse"
				}
			}
		},
		name="bane_curse_effect",
		stats={
			[1]="support_bane_curse_effect_+%_final"
		}
	},
	[72]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="{0}% more Effect of Curse"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="{0}% less Effect of Curse"
				}
			}
		},
		name="blasphemy_curse_effect",
		stats={
			[1]="support_blasphemy_curse_effect_+%_final"
		}
	},
	[73]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="{0}% more Effect of Curse"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="{0}% less Effect of Curse"
				}
			}
		},
		name="hextouch_curse_effect",
		stats={
			[1]="support_hextouch_curse_effect_+%_final"
		}
	},
	[74]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Cursed Rare and Unique Enemies have {0}% more Action Speed"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Cursed Rare and Unique Enemies have {0}% less Action Speed"
				}
			}
		},
		name="action_speed_reduction_rare_or_unique",
		stats={
			[1]="temporal_chains_action_speed_+%_vs_rare_or_unique_final"
		}
	},
	[75]={
		lang={
			English={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]=99
						}
					},
					text="Trigger Doom Blast when Curse ends"
				},
				[2]={
					limit={
						[1]={
							[1]=100,
							[2]="#"
						}
					},
					text="Trigger Doom Blast when Curse ends"
				}
			}
		},
		name="curse_triggers_doom_blast",
		stats={
			[1]="trigger_vicious_hex_explosion_when_curse_ends"
		}
	},
	["accuracy_rating_+%"]=20,
	["alchemists_mark_grant_attacker_x_flask_charges_when_hit_once_per_3s"]=45,
	["base_additional_physical_damage_reduction_%"]=46,
	["base_chaos_damage_resistance_%"]=8,
	["base_cold_damage_resistance_%"]=6,
	["base_critical_strike_multiplier_+"]=22,
	["base_damage_taken_+%"]=47,
	["base_fire_damage_resistance_%"]=5,
	["base_lightning_damage_resistance_%"]=7,
	["base_physical_damage_over_time_taken_+%"]=65,
	["base_resist_all_elements_%"]=4,
	["base_self_critical_strike_multiplier_-%"]=26,
	["base_self_freeze_duration_-%"]=36,
	["base_self_ignite_duration_-%"]=35,
	["base_self_shock_duration_-%"]=37,
	["base_stun_recovery_+%"]=32,
	["buff_effect_duration"]=1,
	["buff_time_passed_+%_other_than_temporal_chains"]=3,
	["cannot_cast_curses"]=38,
	["chance_to_be_frozen_%"]=9,
	["chance_to_be_hindered_when_hit_by_spells_%"]=48,
	["chance_to_be_ignited_%"]=10,
	["chance_to_be_knocked_back_%"]=28,
	["chance_to_be_maimed_when_hit_%"]=49,
	["chance_to_be_shocked_%"]=11,
	["chance_to_be_stunned_%"]=31,
	["chance_to_grant_endurance_charge_on_death_%"]=17,
	["chance_to_grant_frenzy_charge_on_death_%"]=18,
	["chance_to_grant_power_charge_on_death_%"]=19,
	["critical_strike_chance_+%"]=21,
	["curse_apply_as_aura"]=44,
	["curse_area_of_effect_+%"]=43,
	["damage_taken_+%_on_low_life"]=50,
	["debilitate_self_for_x_milliseconds_on_hit"]=51,
	["degen_effect_+%"]=34,
	["enemy_additional_critical_strike_chance_against_self"]=24,
	["enemy_additional_critical_strike_multiplier_against_self"]=25,
	["enemy_chance_to_double_stun_duration_%_vs_self"]=52,
	["enemy_damaging_ailments_deal_damage_+%_faster_against_self"]=53,
	["enemy_rage_regeneration_on_stun"]=54,
	["energy_shield_leech_on_any_damage_when_hit_permyriad"]=55,
	["enfeeble_damage_+%_final"]=23,
	["enfeeble_damage_+%_vs_rare_or_unique_final"]=56,
	["evasion_rating_+%_final_from_poachers_mark"]=29,
	["grant_attacker_endurance_charge_when_hit_%_chance"]=57,
	["grant_attacker_frenzy_charge_when_hit_%_chance"]=58,
	["grant_attacker_power_charge_when_hit_%_chance"]=59,
	["grant_attacker_x_life_flask_charges_when_hit_once_per_500ms"]=60,
	["grant_attacker_x_mana_flask_charges_when_hit_once_per_500ms"]=61,
	["life_granted_when_hit_by_attacks"]=39,
	["life_granted_when_killed"]=41,
	["life_leech_on_any_damage_when_hit_by_attack_permyriad"]=13,
	["life_leech_on_any_damage_when_hit_permyriad"]=14,
	["mana_granted_when_hit_by_attacks"]=40,
	["mana_granted_when_killed"]=42,
	["mana_leech_on_any_damage_when_hit_by_attack_permyriad"]=15,
	["mana_leech_on_any_damage_when_hit_permyriad"]=16,
	["mark_skills_curse_effect_+%"]=62,
	["maximum_added_chaos_damage_taken"]=63,
	["maximum_added_physical_damage_taken"]=64,
	["minimum_added_chaos_damage_taken"]=63,
	["minimum_added_physical_damage_taken"]=64,
	["monster_slain_flask_charges_granted_+%"]=12,
	parent="skill_stat_descriptions",
	["physical_damage_taken_+%"]=33,
	["projectile_damage_taken_+%"]=30,
	["projectiles_always_pierce_you"]=27,
	["projectiles_hitting_self_split_into_x"]=66,
	["punishment_reflect_%_overkill_damage_to_nearby_allies_on_death"]=68,
	["receive_bleeding_chance_%_when_hit_by_attack"]=67,
	["self_bleed_duration_+%"]=69,
	["self_elemental_status_duration_-%"]=70,
	["support_bane_curse_effect_+%_final"]=71,
	["support_blasphemy_curse_effect_+%_final"]=72,
	["support_hextouch_curse_effect_+%_final"]=73,
	["temporal_chains_action_speed_+%_final"]=2,
	["temporal_chains_action_speed_+%_vs_rare_or_unique_final"]=74,
	["trigger_vicious_hex_explosion_when_curse_ends"]=75
}