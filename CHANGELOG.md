# v2.0.1 #
## Fixed ##
* CalcHeight function replaced, rather than overridden (since it's native and not virtual in GZDoom v3.7.2).
* GetStillBob/MoveBob no longer called (since they don't exist in GZDoom v3.7.2).


# v2.0 #
## Added ##
* Quake 3 style weapon and view bob
    * `Weapon.BobRangeX`/`Y` and `Weapon.BobSpeed` affect Quake-style bob
    * Weapon.BobStyle is disabled while `CG_QuakeBob` is true
* View kicks when player is damaged
* View and weapon sqeeze down when landing
* Footstep sounds
    * `*step`, `*splash`, and `*swim` need to be added to SNDINFO
* Quake 3 style friction
* New CVars:
    * `CG_QuakeBob`: Enables Quake 3 style view and weapon bob
    * `CG_RunPitch` & `CG_RunRoll`: Scale view tilt
    * `CG_BobPitch`, `CG_BobRoll`, & `CG_BobUp`: Scale view bob
    * `CG_DamageKick`: Scale damage kick
    * `CG_LandDown`: Scale leg spring when landing
    * `SV_FlyControl`: Scale player flight speed
    * `SV_WaterControl`: Scale player swim speed
    * `SV_AssumeCVarDefaults`: Shifts variables to account for default CVar values
        * `SV_AirControl` is shifted up so that the default value has the same effect that 0.1 would have otherwise.
        * `MoveBob` and `StillBob` are shifted up so that the default value has the same effect that 1 would have otherwise. These only apply if `CG_QuakeBob` is true.

## Changed ##
* Now licensed under GPL v3
* `QuakePlayer` now descends directly from `PlayerPawn`. The original behavior (where `QuakePlayer` descends from `DoomPlayer`) is preserved on the `doom-mod` branch.
* Player now walks at the same speed when moving forward vs. strafing (160 UPS) (only on `gzdoom-v3.8` branch)
* Lower jump (280 UPS -> 270 UPS)
* Lower step height (24 UPS -> 18 UPS)
* Custom friction uses +NoFriction flag

## Fixed ##
* Player no longer moves faster by moving diagonally, while walking (when `G_Straferunning` is false)


# v1.0 #
The first public release emulates all the major features of Quake III movement.

## Added ##
* Slower movement (320 UPS)
* Higher default friction
* Strafejumping
* CVars to enable/disable straferunning and strafejumping (`G_Straferunning` and `G_Strafejumping`, respectively)
* Speedometer (enabled with `CG_Speedometer 1`)
* Strafejump bot (enabled with `HelpMeMommy 1`; requires `SV_Cheats 1`, of course)
