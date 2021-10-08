#if !defined(using_map_DATUM) //Nebula uses a different capitalization of this for... reasons... Waste of my fucking time...

	//Packs
	#include "../../packs/faction_iccgn/_pack.dm"
	#include "../../packs/faction_solgov/_pack.dm"

	//Exoplanet Ruins
	//#include "../random_ruins/exoplanet_ruins/playablecolony/playablecolony.dm"

	// Space Ruins
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	//Nebula Defaults End
	#include "../away/meatstation/meatstation.dm"
	#include "../away/mininghome/mininghome.dm"
	#include "../away/scavver/scavver_gantry.dm"
	#include "../away/blueriver/blueriver.dm"

	//Job Information
	#include "jobs/_goals.dm"
	#include "jobs/captain.dm"
	#include "jobs/civilian.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/science.dm"
	#include "jobs/security.dm"

	//Outfits
	//Empty



	//Objects
	#include "items/mecha.dm"
	#include "items/stamps.dm"

	//Misc
	#include "exodus_announcements.dm"
	#include "exodus_antagonism.dm"
	#include "exodus_cameras.dm"
	#include "exodus_areas.dm"
	#include "exodus_elevator.dm"
	#include "exodus_jobs.dm"
	#include "exodus_loadout.dm"
	#include "exodus_overmap.dm"
	#include "exodus_setup.dm"
	#include "exodus_shuttles.dm"
	#include "exodus_holodecks.dm"
	#include "exodus_unit_testing.dm"
	#include "exodus_npcs.dm"
	#include "exodus_overrides.dm"
	#include "exodus_presets.dm"

	//Maps
	#include "exodus-1.dmm"       //1
	#include "exodus-2.dmm"       //2
	#include "exodus-admin.dmm"   //3
	#include "exodus-transit.dmm" //4
	#include "../away/empty.dmm"  //5


	//Control Keys
	#define using_map_DATUM /datum/map/exodus

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Exodus
#endif