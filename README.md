## Table of Contents

1. [How to submit a bug report](https://github.com/EdenServer/community/blob/master/README.md#how-to-submit-a-bug-report)
2. [How to get rid of those pesky "NPC" mob names](https://github.com/EdenServer/community/blob/master/README.md#how-to-get-rid-of-those-pesky-npc-mob-names)

## How to submit a bug report

0. Search to see if your issue has already been submitted. If it has you can comment on that issue instead of posting your own.

1. Click Issues

2. Click New Issue

3. Fill as much data as possible to help us figure out the problem. More details means it's more likely to get fixed and you can always update your report later if you remember something.

4. Attach the appropriate labels

5. Click Submit

![Step 1](https://raw.githubusercontent.com/EdenServer/Issues/master/step1.png)

![Step 2](https://raw.githubusercontent.com/EdenServer/Issues/master/step2.png)



## How to get rid of those pesky "NPC" mob names

1. Make a new folder in './Ashita/addons' and name it 'renamer'.
2. Copy the [Renamer plugin](https://raw.githubusercontent.com/TeoTwawki/renamer/master/ashita/v3/renamer.lua) to the renamer folder that you just made
3. Create another folder inside the 'renamer' folder and name it 'lists'
4. click on the eden file in the renamer file, then click raw. copy it and paste it into a new file using notepad++ or something similar. Save as eden.lua file
5. Inside your default script ('./Ashita/scripts/Default.txt' if you haven't changed it) add the following lines in order...
```txt
/addon load renamer
/renamer load eden
```

*Note: The renamer addon is only allowed to be used with the lists we provide. Any use of it other than that is strictly prohibited. Please inform us if the names are incorrect by [submitting a bug report](https://github.com/EdenServer/community/blob/master/README.md#how-to-submit-a-bug-report).*
