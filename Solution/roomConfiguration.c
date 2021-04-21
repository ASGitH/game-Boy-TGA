#include <gb/gb.h>
#include <rand.h>
#include <stdio.h>

#include "gBTDRoomSprites.c"

BOOLEAN hasRoomBeenInitialized = FALSE;
BOOLEAN hasSeedBeenInitialized = FALSE;

UINT8 indexCounter = 0;
UINT8 roomHeightMin = 0, roomHeightMax = 0;
UINT8 roomWidthAndHeightRandomized = 0;
UINT8 roomWidthMin = 0, roomWidthMax = 0;
// sectorAndSectorTwoTileIndexCounter = s.S.T.T.I.C.
// sectorOneAndSectorThreeTileIndexCounter = s.O.S.T.T.I.C.
UINT8 sSTTIC = 0, sOSTTIC = 0;
UINT8 tileIndexPoint = 0;

// sectorAndSectorTwoTileIndexPoint = s.S.T.T.I.P.
// sectorOneAndSectorThreeTileIndexPoints = s.O.S.T.T.I.P.
UINT8 sSTTIP[6], sOSTTIP[6];

unsigned int seed;

void generateRoom()
{
    if(hasSeedBeenInitialized)
    {
        if(roomWidthAndHeightRandomized != 0)
        {
            for(indexCounter = 0; indexCounter < 4; indexCounter++)
            {
                UINT8 sectorPoints = randw() % 4;

                printf("sectorPoints = %d\n", (UINT16)sectorPoints); delay(999); 

                if(sectorPoints != 0)
                {
                    for(sectorPoints; sectorPoints > 0; sectorPoints--)
                    {
                        printf("sP = %d\n", (UINT16)sectorPoints); delay(999); 

                        tileIndexPoint = randw() % (roomWidthAndHeightRandomized * roomWidthAndHeightRandomized) - 1; 

                        printf("tileInPoi = %d\n", (UINT16)tileIndexPoint); delay(999); 

                        switch(indexCounter)
                        {
                            case 0: tileIndexPoint += roomWidthAndHeightRandomized; printf("newTIP = %d\n", (UINT16)tileIndexPoint); delay(999); break;
                            case 1: tileIndexPoint += 473; printf("newTIP = %d\n", (UINT16)tileIndexPoint); delay(999); break;
                            case 2: tileIndexPoint += roomWidthAndHeightRandomized * 3; printf("newTIP = %d\n", (UINT16)tileIndexPoint); delay(999); break;
                            case 3: tileIndexPoint += roomWidthAndHeightRandomized * 7; printf("newTIP = %d\n", (UINT16)tileIndexPoint); delay(999); break;
                        }

                        if(indexCounter == 0 || indexCounter == 2)
                        {
                            sSTTIP[sSTTIC] = tileIndexPoint;

                            sSTTIC += 1;
                        }
                        else
                        {
                            sOSTTIP[sOSTTIC] = tileIndexPoint;

                            sOSTTIC += 1;
                        }
                    }
                }
            }
            // for(sSTTIC; sSTTIC < 0; sSTTIC--) { printf("sSTTIC[%d] = %d\n", (UINT16)sSTTIC, (UINT16)sSTTIP[sSTTIC]); delay(99); }
        }
        else
        {
            roomWidthAndHeightRandomized = randw() % 18;

            printf("%d\n", (UINT16)roomWidthAndHeightRandomized); delay(25);

            if(roomWidthAndHeightRandomized <= 9) { roomWidthAndHeightRandomized = 0; }
        }
    }
}

void roomInitialization()
{
    if(!hasRoomBeenInitialized)
    {
        hasRoomBeenInitialized = TRUE;

        seed = 0;

        set_bkg_data(0, 2, roomSprites);
    }
}

void seedInitialization()
{
    if(!hasSeedBeenInitialized)
    {
        if(joypad() & J_A) 
        { 
            hasSeedBeenInitialized = TRUE; 
            
            initrand(seed); 
            
            printf("Seed Initialized! %d\n", seed); 
        }

        if(seed >= 255){ seed = 0; }
        else{ seed += 1; }
    }
}

// Main.c will call this function.
// Everything the room would do, will be placed and called here.
void roomCoreLoop()
{    
    generateRoom();

    roomInitialization();

    seedInitialization();

    wait_vbl_done();
}