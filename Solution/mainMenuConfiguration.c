#include <gb/console.h>
#include <gb/gb.h>
#include <rand.h>
#include <stdio.h>

BOOLEAN hasMainMenuBeenInitialized = FALSE;
BOOLEAN hasPressedStart = FALSE;

void mainMenuInitialization()
{
    if(!hasMainMenuBeenInitialized)
    {
        hasMainMenuBeenInitialized = TRUE;

        // set_bkg_data(0, 137, &mainMenuSprites);
        // set_bkg_tiles(0, 0, 20, 18, &mainMenuScene);    
    }
}

// Main.c will call this function.
// Everything the track would do, will be placed and called here.
void mainMenuCoreLoop()
{    
    mainMenuInitialization();

    wait_vbl_done();
}