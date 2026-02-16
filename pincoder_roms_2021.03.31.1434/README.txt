Pincoder Diagnostics Inc.  Version 2021.03.31.1434

SOFTWARE LICENSE
========================================================================================================================

The Pincoder software ("software") is trademarked and owned by Pincoder Diagnostics Inc. ("Pincoder") and is provided for use at your own risk. By downloading, copying, distributing, and/or using this software you agree to be bound by the following license terms:

	1) Pincoder is not responsible for any damages arising from the use of this software, whether direct, indirect, or consequential.

	2) You may utilize, copy, and distribute this software free of charge provided the following conditions are met:

		A)    You may not charge a fee for copies of the software.

		B)    You may not charge a fee for distributing the software.

		C)    Copies that you make and/or distribute must be in their original unmodifed form.

		D)    You must pass along information about how to obtain the latest version directly from Pincoder Diagnostics.

	3) You may charge your usual fee, if any, for utilizing the ROMs in the process of diagnosing your clients machine. You are under no obligation to pay Pincoder a royalty fee as long as all of the above conditions in (2) are met.

	4) The software is available only in compiled ("binary") form. The source code is not available to the public.

A NOTE ABOUT PROGRAMMING MULTIPLE ROMs
========================================================================================================================

If you are thinking of programming all of the test ROM images at once and only have a limited number of chips available you may want to skip the 01b and 01c chips as you will only need to run those tests if 01a fails.

Lastly, the clear_cmos, edit_cmos, and init_cmos ROMs are optional. See the notes on each of them to decide if you'd like to program those images into their own chips.



INSTRUCTIONS
========================================================================================================================


	1) Download and extract the Pincoder software.

	2) Power down the game.

	3) Identify and Remove the correct ROM chip from the MPU board and make note of the chip number printed on the top of the chip itself (not the paper label):

		*   The FLIPPER ROMs for different systems are identified by color (system 6 is GREEN, system 7 is BLUE, etc). Consult the game documentation and/or the printed labels on the ROM chips to identify the correct chip.

		*   Remove ONLY the 2nd FLIPPER ROM chip from the socket the MPU board. If there is an adapter board between the chip and the MPU board then leave the adapter board installed.

	4) Open the Pincoder software folder desginated for your game:

		* Open the 'sys346' folder if your game is a Williams:
			Blackout
			Contact
			Disco Fever
			FirePower
			Flash
			Gorgar
			Hot Tip
			Laser Ball
			Lucky Seven
			Phoenix
			Pokerino
			Scorpion
			Stellar Wars
			Time Warp
			Tri Zone
			World Cup

		* Open the 'sys6a' folder if your game is a Williams:
			Algar
			Alien Poker

		* Open the 'sys7' folder if your game is a Williams:
			Barracora
			Black Knight
			Cosmic Gunfight
			Defender Pinball
			Firepower II
			Hyperball
			Joust Pinball
			Jungle Lord
			Laser Cue
			Pharoah
			Solar Fire
			Time Fantasy
			Varkon
			Warlok

	NOTE: If your system has been upgraded to a newer version of boards and has been correctly jumpered to emulate the original board, then you should use the software folder designated for the original board. For example, if your game was manufactured using a System 6 MPU board and you have a correctly jumpered System 7 board installed, then you must use the software in the sys346 folder.


	1) Choose the correct test to run:

		*   Tests with a numbered prefix are mandatory and must be run from the lowest to highest. Tests without a prefix are optional.

		*   YOU MUST SUCCESSFULLY COMPLETE EACH NUMBERED TEST BEFORE MOVING ON TO A HIGHER NUMBERED TEST.

		*   If the prefix for a test ends in the letter 'a' and the test fails you can run the tests with the remaining letters (b,c,d, etc) to help find the problem. Fix any problems found and run the 'a' test again. Once the board passes the 'a' test you can continue with the next higher numbered test.

	2) Read the instructions for the chosen test:

		*   Read the instructions for the chosen test in the corresponding .txt file BEFORE running the test.

	3) Progam the desired ROM image:

		A)   The image you will write to your chip depends on the size of the chip removed earlier:

			*      For a 2K chip (2716, 2816, etc) use the corresponding image in the 2K directory.

			*      For a 4K chip (2532, 2732, etc) use the corresponding image in the 4K directory.

		B)   Use a chip programmer to program the selected image into a different EPROM chip.

	4) Install the new chip and run the test:

		A)   Power down the game.

		B)   Insert the EPROM into the socket identified earlier.

		C)   Open the coin door

		D)   Power on the game to run the test.

	NOTE: DISPLAY FLICKER: The ROMs that use the DISPLAYs (Player 1 - Player 4 scores, Match, Credits) may flicker. Some ROMs more than others.  This is NORMAL and is a product of how the ROMs were built. I may fix this in a future version, but for now they'll still get the job done.




HOW TO GO BACK TO PLAYING THE GAME
========================================================================================================================

Some of the tests require writing to the CMOS chip. The values that remain inside the chip may confuse the stock game software and incorrect behaviour may result.

To alleviate this we need to clear out the values in the CMOS chip before the running the stock game software.

On the first boot of the game software, it will see the empty values and re-assign them as needed. This ensures the game behaves properly during normal use.

When you are ready to clear the CMOS chip and go back to playing the game:

	1) Power down the game.

	2) OPEN THE COIN DOOR.

	3) Perform ONE of the following steps:

		A)   Remove one of the batteries on the motherboard, wait a second or two then replace the battery, or

		B)   Run the clear_cmos ROM, or

		C)   Run the init_cmos ROM.

	4) Power down the game.

	5) Reinstall the stock ROM chip.

	6) Ensure the coin door is still open and power on the machine.

	7) If diagnostic mode comes up, power down then power on again.

	8) Close the coin door.

You can now play pinball again!

RELEASE VERSION NOTES
========================================================================================================================

Changes since the previous Release version:

	* Updated 01a-led.txt for all systems (sys346,6a,7)

	* Updated 09-lamps to include a DELAY feature.

	* Renumbered the ROMs to accomodate the new 12-flippers ROM.

	NOTE: Hyperball is not fully supported in this version. Specifically, the displays ROM does not test the alphanumeric display in the playfield. However, I now have a working hyperball board set and will release an update in the future that contains full support for this machine. Hint: The sound test ROMS have already been verified to work in Hyperball. I have not yet verified any other test ROMS in Hyperball.


LINKS
========================================================================================================================


  | The PinCoder website:
  |    https://pincoder.ca
  | 
  | The official Pincoder Software support thread:
  |    https://pinside.com/pinball/forum/topic/new-williams-system-6-in-game-test-roms
  | 
  | The official Pincoder Adapter support thread:
  |    https://pinside.com/pinball/forum/topic/new-pincoder-adapter
  | 
  | Information on the Pincoder Adapter, including how to get one:
  |    https://pincoder.ca/index.php/2020/07/10/adapter-2020-06-23-0506/


Pincoder Diagnostics Inc. Version 2021.03.31.1434
