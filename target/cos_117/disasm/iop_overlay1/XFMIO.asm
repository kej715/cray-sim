@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@ Input:
@@       OR[280]: device desc.
@@       OR[281]: file handle: 68-WORD return buffer from XFMACC, including the directory entry at offset 8
@@       OR[282]: 1 - read 0 - write ????
@@       OR[283]: 0xffff - target sector index or 0xffff is not specified - this is the nth sector of the file to write or read or, if 0xffff, touch the next sector as described in the file handle
@@       OR[284]: 2k buffer
@@
@@       OR[285]: return code
@@       OR[286]: local 2k buffer
@@       OR[287]: directory entry (offset 8 from OR[281])
@ Make sure neither parameters are NULL
0x0000 (0x000000) 0x2118-       f:00020 d: 280 | A = OR[280]                   
0x0001 (0x000002) 0xB434-       f:00132 d:  52 | R = OR[52], A = 0             
0x0002 (0x000004) 0x0000-       f:00000 d:   0 | PASS                          
0x0003 (0x000006) 0x2119-       f:00020 d: 281 | A = OR[281]                   
0x0004 (0x000008) 0xB434-       f:00132 d:  52 | R = OR[52], A = 0             
0x0005 (0x00000A) 0x0000-       f:00000 d:   0 | PASS                          

0x0006 (0x00000C) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0007 (0x00000E) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x0008 (0x000010) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0009 (0x000012) 0x291E-       f:00024 d: 286 | OR[286] = A                   
0x000A (0x000014) 0x2119-       f:00020 d: 281 | A = OR[281]                   
0x000B (0x000016) 0x1408-       f:00012 d:   8 | A = A + 8 (0x0008)            
0x000C (0x000018) 0x291F-       f:00024 d: 287 | OR[287] = A                   
@ Check 4th parameter
0x000D (0x00001A) 0x211B-       f:00020 d: 283 | A = OR[283]                   
0x000E (0x00001C) 0x1E00-0xFFFF f:00017 d:   0 | A = A - 65535 (0xFFFF)        
0x0010 (0x000020) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0012), A = 0     
0x0011 (0x000022) 0x7008-       f:00070 d:   8 | P = P + 8 (0x0019)            
@ 4th parameter is 0xffff - set OR[288] to file handle entry offset 2 + 1 (this entry starts at 0)
0x0012 (0x000024) 0x2119-       f:00020 d: 281 | A = OR[281]                   
0x0013 (0x000026) 0x1402-       f:00012 d:   2 | A = A + 2 (0x0002)            
0x0014 (0x000028) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x0015 (0x00002A) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x0016 (0x00002C) 0x2920-       f:00024 d: 288 | OR[288] = A                   
0x0017 (0x00002E) 0x2D20-       f:00026 d: 288 | OR[288] = OR[288] + 1         
0x0018 (0x000030) 0x7003-       f:00070 d:   3 | P = P + 3 (0x001B)            
@ 4th parameter is not 0xffff - load OR[288] from 4th parameter
0x0019 (0x000032) 0x211B-       f:00020 d: 283 | A = OR[283]                   
0x001A (0x000034) 0x2920-       f:00024 d: 288 | OR[288] = A                   
@ Load directory entry 30 into OR[289]
0x001B (0x000036) 0x211F-       f:00020 d: 287 | A = OR[287]                   
0x001C (0x000038) 0x141E-       f:00012 d:  30 | A = A + 30 (0x001E)           
0x001D (0x00003A) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x001E (0x00003C) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x001F (0x00003E) 0x2921-       f:00024 d: 289 | OR[289] = A                   
@ Test 3rd parameter: is it 1?
0x0020 (0x000040) 0x211A-       f:00020 d: 282 | A = OR[282]                   
0x0021 (0x000042) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x0022 (0x000044) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0024), A = 0     
0x0023 (0x000046) 0x700B-       f:00070 d:  11 | P = P + 11 (0x002E)           
@ Yes, 3rd parameter is 1 - read operation: make sure requested sector index is less than number of sectors in the file (offset 3). If not, return error code 1028
0x0024 (0x000048) 0x2120-       f:00020 d: 288 | A = OR[288]                   
0x0025 (0x00004A) 0x2721-       f:00023 d: 289 | A = A - OR[289]               
0x0026 (0x00004C) 0x8003-       f:00100 d:   3 | P = P + 3 (0x0029), C = 0     
0x0027 (0x00004E) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0029), A = 0     
0x0028 (0x000050) 0x7002-       f:00070 d:   2 | P = P + 2 (0x002A)            
0x0029 (0x000052) 0x7005-       f:00070 d:   5 | P = P + 5 (0x002E)            
0x002A (0x000054) 0x1800-0x0404 f:00014 d:   0 | A = 1028 (0x0404)             
0x002C (0x000058) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x002D (0x00005A) 0x70C8-       f:00070 d: 200 | P = P + 200 (0x00F5)          
@ Current sector index (?) in OR[290]
0x002E (0x00005C) 0x2120-       f:00020 d: 288 | A = OR[288]                   
0x002F (0x00005E) 0x2922-       f:00024 d: 290 | OR[290] = A                   
0x0030 (0x000060) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0031 (0x000062) 0x2923-       f:00024 d: 291 | OR[291] = A                   
@ Read directory entry 31 into OR[292]
0x0032 (0x000064) 0x211F-       f:00020 d: 287 | A = OR[287]                   
0x0033 (0x000066) 0x141F-       f:00012 d:  31 | A = A + 31 (0x001F)           
0x0034 (0x000068) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x0035 (0x00006A) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x0036 (0x00006C) 0x2924-       f:00024 d: 292 | OR[292] = A                   
@ Put directory offset 32 (not the value, but the address) in OR[293]
0x0037 (0x00006E) 0x211F-       f:00020 d: 287 | A = OR[287]                   
0x0038 (0x000070) 0x1420-       f:00012 d:  32 | A = A + 32 (0x0020)           
0x0039 (0x000072) 0x2925-       f:00024 d: 293 | OR[293] = A                   
@ Put directory offset 33 (not the value, but the address) in OR[294]
0x003A (0x000074) 0x211F-       f:00020 d: 287 | A = OR[287]                   
0x003B (0x000076) 0x1421-       f:00012 d:  33 | A = A + 33 (0x0021)           
0x003C (0x000078) 0x2926-       f:00024 d: 294 | OR[294] = A                   
@@ We have a loop here. So far we have:
@@ OR[287]: directory entry (offset 8 from OR[281])
@@ OR[288]: target sector (either 4th paramter or (file handle entry 2) + 1)
@@ OR[289]: directory entry 30 <-- number of sectors in the file
@@ OR[290]: current sector-offset: that is how many sectors is what we want to access from the start of the current chain. Starts as target sector (OR[288])
@@ OR[291]: starts at 0 <-- current chain
@@ OR[292]: directory entry 31 <-- number of chains
@@ OR[293]: directory offset 32 <-- first sector in chain
@@ OR[294]: directory offset 33 <-- number of sectors in chain
@@ OR[295]: number of sectors in current chain
@@ OR[296]: first sector in current chain
@ Exit the loop if OR[291] reaches OR[292]
0x003D (0x00007A) 0x2123-       f:00020 d: 291 | A = OR[291]                   
0x003E (0x00007C) 0x2724-       f:00023 d: 292 | A = A - OR[292]               
0x003F (0x00007E) 0x8421-       f:00102 d:  33 | P = P + 33 (0x0060), A = 0    
0x0040 (0x000080) 0x3125-       f:00030 d: 293 | A = (OR[293])                 @ Read directory entry 32 into OR[295] and 33 into OR[296]
0x0041 (0x000082) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x0042 (0x000084) 0x3126-       f:00030 d: 294 | A = (OR[294])                 
0x0043 (0x000086) 0x2928-       f:00024 d: 296 | OR[296] = A                   
@ Check if current sector-offset is within the current chain
0x0044 (0x000088) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x0045 (0x00008A) 0x2728-       f:00023 d: 296 | A = A - OR[296]               
0x0046 (0x00008C) 0x8002-       f:00100 d:   2 | P = P + 2 (0x0048), C = 0     @ jump if OR[290] < OR[296]
0x0047 (0x00008E) 0x8602-       f:00103 d:   2 | P = P + 2 (0x0049), A # 0    @ jump if OR[290] != OR[296]
0x0048 (0x000090) 0x7002-       f:00070 d:   2 | P = P + 2 (0x004A)            
0x0049 (0x000092) 0x700E-       f:00070 d:  14 | P = P + 14 (0x0057)           
@ Current sector-offset is within the current chain.
0x004A (0x000094) 0x2127-       f:00020 d: 295 | A = OR[295]                   @ If chain is not valid (if OR[295] which is the first sector is 0xffff), return error 9
0x004B (0x000096) 0x1E00-0xFFFF f:00017 d:   0 | A = A - 65535 (0xFFFF)        
0x004D (0x00009A) 0x8402-       f:00102 d:   2 | P = P + 2 (0x004F), A = 0     
0x004E (0x00009C) 0x7004-       f:00070 d:   4 | P = P + 4 (0x0052)            
0x004F (0x00009E) 0x1009-       f:00010 d:   9 | A = 9 (0x0009)                
0x0050 (0x0000A0) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x0051 (0x0000A2) 0x70A4-       f:00070 d: 164 | P = P + 164 (0x00F5)          @ Return from overlay with error-code 9
0x0052 (0x0000A4) 0x2127-       f:00020 d: 295 | A = OR[295]                   @ Chain is valid: calculate target sector as OR[290] = OR[290] + OR[295] - 1 and issue the XDISK transaction
0x0053 (0x0000A6) 0x2522-       f:00022 d: 290 | A = A + OR[290]               
0x0054 (0x0000A8) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x0055 (0x0000AA) 0x2922-       f:00024 d: 290 | OR[290] = A                   
0x0056 (0x0000AC) 0x7063-       f:00070 d:  99 | P = P + 99 (0x00B9)           
@ Current sector-offset is not within current chain
0x0057 (0x0000AE) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x0058 (0x0000B0) 0x2728-       f:00023 d: 296 | A = A - OR[296]               
0x0059 (0x0000B2) 0x2922-       f:00024 d: 290 | OR[290] = A                   @ Re-calculate sector-offset by subtracting current chain length
0x005A (0x0000B4) 0x2D23-       f:00026 d: 291 | OR[291] = OR[291] + 1         @ Increment current chain
0x005B (0x0000B6) 0x1002-       f:00010 d:   2 | A = 2 (0x0002)                @ Move chain size and chain start pointers
0x005C (0x0000B8) 0x2B25-       f:00025 d: 293 | OR[293] = A + OR[293]         
0x005D (0x0000BA) 0x1002-       f:00010 d:   2 | A = 2 (0x0002)                
0x005E (0x0000BC) 0x2B26-       f:00025 d: 294 | OR[294] = A + OR[294]         
0x005F (0x0000BE) 0x7222-       f:00071 d:  34 | P = P - 34 (0x003D)           @ And continue looping

@ We get here if we exhausted the chain-list in the current directory entry and haven't found our target sector
0x0060 (0x0000C0) 0x2124-       f:00020 d: 292 | A = OR[292]                   @ Test if we had 14 chains in the current directory entry
0x0061 (0x0000C2) 0x160E-       f:00013 d:  14 | A = A - 14 (0x000E)           
0x0062 (0x0000C4) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0064), A = 0     
0x0063 (0x0000C6) 0x7005-       f:00070 d:   5 | P = P + 5 (0x0068)            
0x0064 (0x0000C8) 0x1800-0x0446 f:00014 d:   0 | A = 1094 (0x0446)             @ Yes, we have, return error-code 1094 ????
0x0066 (0x0000CC) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x0067 (0x0000CE) 0x708E-       f:00070 d: 142 | P = P + 142 (0x00F5)          
0x0068 (0x0000D0) 0x211F-       f:00020 d: 287 | A = OR[287]                   @ No, it's not 14 - read offset 27 into OR[297]
0x0069 (0x0000D2) 0x141B-       f:00012 d:  27 | A = A + 27 (0x001B)           
0x006A (0x0000D4) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x006B (0x0000D6) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x006C (0x0000D8) 0x2929-       f:00024 d: 297 | OR[297] = A                   @ If number of sectors needed is greater than what's stored in offset 27, offset 27 with sectors needed
0x006D (0x0000DA) 0x2129-       f:00020 d: 297 | A = OR[297]                   
0x006E (0x0000DC) 0x2722-       f:00023 d: 290 | A = A - OR[290]               
0x006F (0x0000DE) 0x8002-       f:00100 d:   2 | P = P + 2 (0x0071), C = 0     
0x0070 (0x0000E0) 0x7003-       f:00070 d:   3 | P = P + 3 (0x0073)            
0x0071 (0x0000E2) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x0072 (0x0000E4) 0x2929-       f:00024 d: 297 | OR[297] = A                   

@ Call XFMGET
0x0073 (0x0000E6) 0x1028-       f:00010 d:  40 | A = 40 (0x0028)               
0x0074 (0x0000E8) 0x2934-       f:00024 d: 308 | OR[308] = A                   
0x0075 (0x0000EA) 0x1800-0x00F1 f:00014 d:   0 | A = 241 (0x00F1)              
0x0077 (0x0000EE) 0x2935-       f:00024 d: 309 | OR[309] = A                   
0x0078 (0x0000F0) 0x2118-       f:00020 d: 280 | A = OR[280]                   @ Device desc.
0x0079 (0x0000F2) 0x2936-       f:00024 d: 310 | OR[310] = A                   
0x007A (0x0000F4) 0x1800-0xFFFF f:00014 d:   0 | A = 65535 (0xFFFF)            @ Allocate sectors
0x007C (0x0000F8) 0x2937-       f:00024 d: 311 | OR[311] = A                   
0x007D (0x0000FA) 0x2129-       f:00020 d: 297 | A = OR[297]                   @ Number of sectors to allocate
0x007E (0x0000FC) 0x2938-       f:00024 d: 312 | OR[312] = A                   
0x007F (0x0000FE) 0x101E-       f:00010 d:  30 | A = 30 (0x001E)               @ output parameter index. If I'm not mistaken, this gets value into OR[268+30] = OR[298]
0x0080 (0x000100) 0x2939-       f:00024 d: 313 | OR[313] = A                   
0x0081 (0x000102) 0x1134-       f:00010 d: 308 | A = 308 (0x0134)              
0x0082 (0x000104) 0x5800-       f:00054 d:   0 | B = A                         
0x0083 (0x000106) 0x1800-0x3918 f:00014 d:   0 | A = 14616 (0x3918)            
0x0085 (0x00010A) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
0x0086 (0x00010C) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x0087 (0x00010E) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0088 (0x000110) 0x8602-       f:00103 d:   2 | P = P + 2 (0x008A), A # 0    
0x0089 (0x000112) 0x7002-       f:00070 d:   2 | P = P + 2 (0x008B)            
0x008A (0x000114) 0x706B-       f:00070 d: 107 | P = P + 107 (0x00F5)          @ Return from overlay with error, if allocation was unsuccessful
0x008B (0x000116) 0x2124-       f:00020 d: 292 | A = OR[292]                   @ Is this the first chain we allocate for this file?
0x008C (0x000118) 0x8602-       f:00103 d:   2 | P = P + 2 (0x008E), A # 0    
0x008D (0x00011A) 0x7014-       f:00070 d:  20 | P = P + 20 (0x00A1)           
@ Not the first chain for the file
0x008E (0x00011C) 0x2127-       f:00020 d: 295 | A = OR[295]                   
0x008F (0x00011E) 0x2528-       f:00022 d: 296 | A = A + OR[296]               
0x0090 (0x000120) 0x2908-       f:00024 d: 264 | OR[264] = A                   @ OR[264] is the last sector in the current chain
0x0091 (0x000122) 0x212A-       f:00020 d: 298 | A = OR[298]                   @ OR[298] is the first sector in the new chain
0x0092 (0x000124) 0x2708-       f:00023 d: 264 | A = A - OR[264]               
0x0093 (0x000126) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0095), A = 0     
0x0094 (0x000128) 0x700D-       f:00070 d:  13 | P = P + 13 (0x00A1)           
@ New chain continues at the end of the old one, so concatenate the two
0x0095 (0x00012A) 0x2125-       f:00020 d: 293 | A = OR[293]                   
0x0096 (0x00012C) 0x1602-       f:00013 d:   2 | A = A - 2 (0x0002)            
0x0097 (0x00012E) 0x2925-       f:00024 d: 293 | OR[293] = A                   
0x0098 (0x000130) 0x2126-       f:00020 d: 294 | A = OR[294]                   
0x0099 (0x000132) 0x1602-       f:00013 d:   2 | A = A - 2 (0x0002)            
0x009A (0x000134) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x009B (0x000136) 0x2128-       f:00020 d: 296 | A = OR[296]                   
0x009C (0x000138) 0x2529-       f:00022 d: 297 | A = A + OR[297]               
0x009D (0x00013A) 0x2928-       f:00024 d: 296 | OR[296] = A                   
0x009E (0x00013C) 0x2128-       f:00020 d: 296 | A = OR[296]                   
0x009F (0x00013E) 0x3926-       f:00034 d: 294 | (OR[294]) = A                 
0x00A0 (0x000140) 0x700F-       f:00070 d:  15 | P = P + 15 (0x00AF)           
@ New chain is either the first one, or isn't a concatenation of the old one, so add it as a new chain
0x00A1 (0x000142) 0x2D24-       f:00026 d: 292 | OR[292] = OR[292] + 1         @ Increment the number of chains
0x00A2 (0x000144) 0x211F-       f:00020 d: 287 | A = OR[287]                   
0x00A3 (0x000146) 0x141F-       f:00012 d:  31 | A = A + 31 (0x001F)           
0x00A4 (0x000148) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x00A5 (0x00014A) 0x2124-       f:00020 d: 292 | A = OR[292]                   
0x00A6 (0x00014C) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
0x00A7 (0x00014E) 0x212A-       f:00020 d: 298 | A = OR[298]                   
0x00A8 (0x000150) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x00A9 (0x000152) 0x212A-       f:00020 d: 298 | A = OR[298]                   
0x00AA (0x000154) 0x3925-       f:00034 d: 293 | (OR[293]) = A                 
0x00AB (0x000156) 0x2129-       f:00020 d: 297 | A = OR[297]                   
0x00AC (0x000158) 0x2928-       f:00024 d: 296 | OR[296] = A                   
0x00AD (0x00015A) 0x2129-       f:00020 d: 297 | A = OR[297]                   
0x00AE (0x00015C) 0x3926-       f:00034 d: 294 | (OR[294]) = A                 
0x00AF (0x00015E) 0x311F-       f:00030 d: 287 | A = (OR[287])                 @ Set bit-14 in the first word of the directory entry
0x00B0 (0x000160) 0x0E02-       f:00007 d:   2 | A = A << 2 (0x0002)           
0x00B1 (0x000162) 0x0A01-       f:00005 d:   1 | A = A < 1 (0x0001)            
0x00B2 (0x000164) 0x1401-       f:00012 d:   1 | A = A + 1 (0x0001)            
0x00B3 (0x000166) 0x0C03-       f:00006 d:   3 | A = A >> 3 (0x0003)           
0x00B4 (0x000168) 0x391F-       f:00034 d: 287 | (OR[287]) = A                 
0x00B5 (0x00016A) 0x212A-       f:00020 d: 298 | A = OR[298]                   
0x00B6 (0x00016C) 0x2522-       f:00022 d: 290 | A = A + OR[290]               
0x00B7 (0x00016E) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x00B8 (0x000170) 0x2922-       f:00024 d: 290 | OR[290] = A                   
@ We seem to be jumping here on certain occasions
@ Issue a read or write sector operation depending on 3rd argument: 1 - read; 0 - write
0x00B9 (0x000172) 0x211A-       f:00020 d: 282 | A = OR[282]                   
0x00BA (0x000174) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x00BB (0x000176) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00BD), A = 0     
0x00BC (0x000178) 0x7004-       f:00070 d:   4 | P = P + 4 (0x00C0)            
0x00BD (0x00017A) 0x1004-       f:00010 d:   4 | A = 4 (0x0004)                
0x00BE (0x00017C) 0x292C-       f:00024 d: 300 | OR[300] = A                   
0x00BF (0x00017E) 0x7003-       f:00070 d:   3 | P = P + 3 (0x00C2)            
0x00C0 (0x000180) 0x1003-       f:00010 d:   3 | A = 3 (0x0003)                
0x00C1 (0x000182) 0x292C-       f:00024 d: 300 | OR[300] = A                   
@ Call XDISK
0x00C2 (0x000184) 0x1028-       f:00010 d:  40 | A = 40 (0x0028)               
0x00C3 (0x000186) 0x2934-       f:00024 d: 308 | OR[308] = A                   
0x00C4 (0x000188) 0x1800-0x00A6 f:00014 d:   0 | A = 166 (0x00A6)              
0x00C6 (0x00018C) 0x2935-       f:00024 d: 309 | OR[309] = A                   
0x00C7 (0x00018E) 0x2118-       f:00020 d: 280 | A = OR[280]                   @ Device desc.
0x00C8 (0x000190) 0x2936-       f:00024 d: 310 | OR[310] = A                   
0x00C9 (0x000192) 0x212C-       f:00020 d: 300 | A = OR[300]                   @ Command code (read or write)
0x00CA (0x000194) 0x2937-       f:00024 d: 311 | OR[311] = A                   
0x00CB (0x000196) 0x211C-       f:00020 d: 284 | A = OR[284]                   @ Buffer address - incomming buffer
0x00CC (0x000198) 0x2938-       f:00024 d: 312 | OR[312] = A                   
0x00CD (0x00019A) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                @ not used
0x00CE (0x00019C) 0x2939-       f:00024 d: 313 | OR[313] = A                   
0x00CF (0x00019E) 0x2122-       f:00020 d: 290 | A = OR[290]                   @ sector
0x00D0 (0x0001A0) 0x293A-       f:00024 d: 314 | OR[314] = A                   
0x00D1 (0x0001A2) 0x1134-       f:00010 d: 308 | A = 308 (0x0134)              
0x00D2 (0x0001A4) 0x5800-       f:00054 d:   0 | B = A                         
0x00D3 (0x0001A6) 0x1800-0x3918 f:00014 d:   0 | A = 14616 (0x3918)            
0x00D5 (0x0001AA) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
0x00D6 (0x0001AC) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x00D7 (0x0001AE) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x00D8 (0x0001B0) 0x8602-       f:00103 d:   2 | P = P + 2 (0x00DA), A # 0    
0x00D9 (0x0001B2) 0x700C-       f:00070 d:  12 | P = P + 12 (0x00E5)           
@ XDISK call failed
0x00DA (0x0001B4) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x00DB (0x0001B6) 0x1609-       f:00013 d:   9 | A = A - 9 (0x0009)            
0x00DC (0x0001B8) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00DE), A = 0     
0x00DD (0x0001BA) 0x7007-       f:00070 d:   7 | P = P + 7 (0x00E4)            
0x00DE (0x0001BC) 0x211A-       f:00020 d: 282 | A = OR[282]                   
0x00DF (0x0001BE) 0x1602-       f:00013 d:   2 | A = A - 2 (0x0002)            
0x00E0 (0x0001C0) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00E2), A = 0     
0x00E1 (0x0001C2) 0x7003-       f:00070 d:   3 | P = P + 3 (0x00E4)            
0x00E2 (0x0001C4) 0x7429-       f:00072 d:  41 | R = P + 41 (0x010B)           @ we intended to write and failed with error-code 9... here we probably undo the changes to the sector-allocation array in sector 4
0x00E3 (0x0001C6) 0x722A-       f:00071 d:  42 | P = P - 42 (0x00B9)           
0x00E4 (0x0001C8) 0x7011-       f:00070 d:  17 | P = P + 17 (0x00F5)           @ bail with error from overlay
@ XDFISK succeeded
0x00E5 (0x0001CA) 0x2119-       f:00020 d: 281 | A = OR[281]                   
0x00E6 (0x0001CC) 0x1402-       f:00012 d:   2 | A = A + 2 (0x0002)            
0x00E7 (0x0001CE) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x00E8 (0x0001D0) 0x2120-       f:00020 d: 288 | A = OR[288]                   
0x00E9 (0x0001D2) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 @ Store target sector as current sector in file handle
0x00EA (0x0001D4) 0x2120-       f:00020 d: 288 | A = OR[288]                   @ If target sector is greater than number of sectors, than update number of sectors in directory entry
0x00EB (0x0001D6) 0x2721-       f:00023 d: 289 | A = A - OR[289]               
0x00EC (0x0001D8) 0x8003-       f:00100 d:   3 | P = P + 3 (0x00EF), C = 0     
0x00ED (0x0001DA) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00EF), A = 0     
0x00EE (0x0001DC) 0x7002-       f:00070 d:   2 | P = P + 2 (0x00F0)            
0x00EF (0x0001DE) 0x7006-       f:00070 d:   6 | P = P + 6 (0x00F5)            
0x00F0 (0x0001E0) 0x211F-       f:00020 d: 287 | A = OR[287]                   
0x00F1 (0x0001E2) 0x141E-       f:00012 d:  30 | A = A + 30 (0x001E)           
0x00F2 (0x0001E4) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x00F3 (0x0001E6) 0x2120-       f:00020 d: 288 | A = OR[288]                   
0x00F4 (0x0001E8) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
@ Release buffer if allocated
0x00F5 (0x0001EA) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x00F6 (0x0001EC) 0x8602-       f:00103 d:   2 | P = P + 2 (0x00F8), A # 0    
0x00F7 (0x0001EE) 0x7009-       f:00070 d:   9 | P = P + 9 (0x0100)            
0x00F8 (0x0001F0) 0x101B-       f:00010 d:  27 | A = 27 (0x001B)               
0x00F9 (0x0001F2) 0x2934-       f:00024 d: 308 | OR[308] = A                   
0x00FA (0x0001F4) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x00FB (0x0001F6) 0x2935-       f:00024 d: 309 | OR[309] = A                   
0x00FC (0x0001F8) 0x1134-       f:00010 d: 308 | A = 308 (0x0134)              
0x00FD (0x0001FA) 0x5800-       f:00054 d:   0 | B = A                         
0x00FE (0x0001FC) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x00FF (0x0001FE) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
@ Set return code (from OR[285]) and return from overlay
0x0100 (0x000200) 0x2005-       f:00020 d:   5 | A = OR[5]                     
0x0101 (0x000202) 0x1406-       f:00012 d:   6 | A = A + 6 (0x0006)            
0x0102 (0x000204) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x0103 (0x000206) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0104 (0x000208) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
0x0105 (0x00020A) 0x102A-       f:00010 d:  42 | A = 42 (0x002A)               
0x0106 (0x00020C) 0x2934-       f:00024 d: 308 | OR[308] = A                   
0x0107 (0x00020E) 0x1134-       f:00010 d: 308 | A = 308 (0x0134)              
0x0108 (0x000210) 0x5800-       f:00054 d:   0 | B = A                         
0x0109 (0x000212) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x010A (0x000214) 0x7C09-       f:00076 d:   9 | R = OR[9]                     

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@
@ Allocate 2k buffer in OR[286]
0x010B (0x000216) 0x101A-       f:00010 d:  26 | A = 26 (0x001A)               
0x010C (0x000218) 0x2934-       f:00024 d: 308 | OR[308] = A                   
0x010D (0x00021A) 0x111E-       f:00010 d: 286 | A = 286 (0x011E)              
0x010E (0x00021C) 0x2935-       f:00024 d: 309 | OR[309] = A                   
0x010F (0x00021E) 0x1134-       f:00010 d: 308 | A = 308 (0x0134)              
0x0110 (0x000220) 0x5800-       f:00054 d:   0 | B = A                         
0x0111 (0x000222) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0112 (0x000224) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
0x0113 (0x000226) 0x8602-       f:00103 d:   2 | P = P + 2 (0x0115), A # 0    
0x0114 (0x000228) 0x700B-       f:00070 d:  11 | P = P + 11 (0x011F)           
0x0115 (0x00022A) 0x1007-       f:00010 d:   7 | A = 7 (0x0007)                
0x0116 (0x00022C) 0x2934-       f:00024 d: 308 | OR[308] = A                   
0x0117 (0x00022E) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x0118 (0x000230) 0x2935-       f:00024 d: 309 | OR[309] = A                   
0x0119 (0x000232) 0x1134-       f:00010 d: 308 | A = 308 (0x0134)              
0x011A (0x000234) 0x5800-       f:00054 d:   0 | B = A                         
0x011B (0x000236) 0x1800-0x3918 f:00014 d:   0 | A = 14616 (0x3918)            
0x011D (0x00023A) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
0x011E (0x00023C) 0x7213-       f:00071 d:  19 | P = P - 19 (0x010B)           

0x011F (0x00023E) 0x1004-       f:00010 d:   4 | A = 4 (0x0004)                
0x0120 (0x000240) 0x292C-       f:00024 d: 300 | OR[300] = A                   
0x0121 (0x000242) 0x74B8-       f:00072 d: 184 | R = P + 184 (0x01D9)          
0x0122 (0x000244) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x0123 (0x000246) 0x1C00-0x03FA f:00016 d:   0 | A = A + 1018 (0x03FA)         
0x0125 (0x00024A) 0x292D-       f:00024 d: 301 | OR[301] = A                   
0x0126 (0x00024C) 0x100F-       f:00010 d:  15 | A = 15 (0x000F)               
0x0127 (0x00024E) 0x2722-       f:00023 d: 290 | A = A - OR[290]               
0x0128 (0x000250) 0x120F-       f:00011 d:  15 | A = A & 15 (0x000F)           
0x0129 (0x000252) 0x5800-       f:00054 d:   0 | B = A                         
0x012A (0x000254) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x012B (0x000256) 0x0804-       f:00004 d:   4 | A = A > 4 (0x0004)            
0x012C (0x000258) 0x252D-       f:00022 d: 301 | A = A + OR[301]               
0x012D (0x00025A) 0x290D-       f:00024 d: 269 | OR[269] = A                   
0x012E (0x00025C) 0x310D-       f:00030 d: 269 | A = (OR[269])                 
0x012F (0x00025E) 0x4800-       f:00044 d:   0 | A = A > B                     
0x0130 (0x000260) 0x1201-       f:00011 d:   1 | A = A & 1 (0x0001)            
0x0131 (0x000262) 0x292E-       f:00024 d: 302 | OR[302] = A                   
0x0132 (0x000264) 0x212E-       f:00020 d: 302 | A = OR[302]                   
0x0133 (0x000266) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0135), A = 0     
0x0134 (0x000268) 0x701B-       f:00070 d:  27 | P = P + 27 (0x014F)           
0x0135 (0x00026A) 0x100F-       f:00010 d:  15 | A = 15 (0x000F)               
0x0136 (0x00026C) 0x2722-       f:00023 d: 290 | A = A - OR[290]               
0x0137 (0x00026E) 0x120F-       f:00011 d:  15 | A = A & 15 (0x000F)           
0x0138 (0x000270) 0x5800-       f:00054 d:   0 | B = A                         
0x0139 (0x000272) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x013A (0x000274) 0x1201-       f:00011 d:   1 | A = A & 1 (0x0001)            
0x013B (0x000276) 0x290D-       f:00024 d: 269 | OR[269] = A                   
0x013C (0x000278) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x013D (0x00027A) 0x0804-       f:00004 d:   4 | A = A > 4 (0x0004)            
0x013E (0x00027C) 0x252D-       f:00022 d: 301 | A = A + OR[301]               
0x013F (0x00027E) 0x290E-       f:00024 d: 270 | OR[270] = A                   
0x0140 (0x000280) 0x310E-       f:00030 d: 270 | A = (OR[270])                 
0x0141 (0x000282) 0x4C00-       f:00046 d:   0 | A = A >> B                    
0x0142 (0x000284) 0x0801-       f:00004 d:   1 | A = A > 1 (0x0001)            
0x0143 (0x000286) 0x0A01-       f:00005 d:   1 | A = A < 1 (0x0001)            
0x0144 (0x000288) 0x250D-       f:00022 d: 269 | A = A + OR[269]               
0x0145 (0x00028A) 0x4E00-       f:00047 d:   0 | A = A << B                    
0x0146 (0x00028C) 0x390E-       f:00034 d: 270 | (OR[270]) = A                 
0x0147 (0x00028E) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x0148 (0x000290) 0x1C00-0x03F9 f:00016 d:   0 | A = A + 1017 (0x03F9)         
0x014A (0x000294) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x014B (0x000296) 0x3D08-       f:00036 d: 264 | (OR[264]) = (OR[264]) + 1     
0x014C (0x000298) 0x1003-       f:00010 d:   3 | A = 3 (0x0003)                
0x014D (0x00029A) 0x292C-       f:00024 d: 300 | OR[300] = A                   
0x014E (0x00029C) 0x748B-       f:00072 d: 139 | R = P + 139 (0x01D9)          
0x014F (0x00029E) 0x2128-       f:00020 d: 296 | A = OR[296]                   
0x0150 (0x0002A0) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x0151 (0x0002A2) 0x8003-       f:00100 d:   3 | P = P + 3 (0x0154), C = 0     
0x0152 (0x0002A4) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0154), A = 0     
0x0153 (0x0002A6) 0x7002-       f:00070 d:   2 | P = P + 2 (0x0155)            
0x0154 (0x0002A8) 0x702B-       f:00070 d:  43 | P = P + 43 (0x017F)           
0x0155 (0x0002AA) 0x2127-       f:00020 d: 295 | A = OR[295]                   
0x0156 (0x0002AC) 0x2528-       f:00022 d: 296 | A = A + OR[296]               
0x0157 (0x0002AE) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x0158 (0x0002B0) 0x292F-       f:00024 d: 303 | OR[303] = A                   
0x0159 (0x0002B2) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x015A (0x0002B4) 0x2727-       f:00023 d: 295 | A = A - OR[295]               
0x015B (0x0002B6) 0x8402-       f:00102 d:   2 | P = P + 2 (0x015D), A = 0     
0x015C (0x0002B8) 0x7008-       f:00070 d:   8 | P = P + 8 (0x0164)            
0x015D (0x0002BA) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x015E (0x0002BC) 0x1401-       f:00012 d:   1 | A = A + 1 (0x0001)            
0x015F (0x0002BE) 0x3925-       f:00034 d: 293 | (OR[293]) = A                 
0x0160 (0x0002C0) 0x2128-       f:00020 d: 296 | A = OR[296]                   
0x0161 (0x0002C2) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x0162 (0x0002C4) 0x3926-       f:00034 d: 294 | (OR[294]) = A                 
0x0163 (0x0002C6) 0x701B-       f:00070 d:  27 | P = P + 27 (0x017E)           
0x0164 (0x0002C8) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x0165 (0x0002CA) 0x272F-       f:00023 d: 303 | A = A - OR[303]               
0x0166 (0x0002CC) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0168), A = 0     
0x0167 (0x0002CE) 0x7009-       f:00070 d:   9 | P = P + 9 (0x0170)            
0x0168 (0x0002D0) 0x2128-       f:00020 d: 296 | A = OR[296]                   
0x0169 (0x0002D2) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x016A (0x0002D4) 0x3926-       f:00034 d: 294 | (OR[294]) = A                 
0x016B (0x0002D6) 0x1002-       f:00010 d:   2 | A = 2 (0x0002)                
0x016C (0x0002D8) 0x2B25-       f:00025 d: 293 | OR[293] = A + OR[293]         
0x016D (0x0002DA) 0x1002-       f:00010 d:   2 | A = 2 (0x0002)                
0x016E (0x0002DC) 0x2B26-       f:00025 d: 294 | OR[294] = A + OR[294]         
0x016F (0x0002DE) 0x700F-       f:00070 d:  15 | P = P + 15 (0x017E)           
0x0170 (0x0002E0) 0x7436-       f:00072 d:  54 | R = P + 54 (0x01A6)           
0x0171 (0x0002E2) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x0172 (0x0002E4) 0x2727-       f:00023 d: 295 | A = A - OR[295]               
0x0173 (0x0002E6) 0x3926-       f:00034 d: 294 | (OR[294]) = A                 
0x0174 (0x0002E8) 0x1002-       f:00010 d:   2 | A = 2 (0x0002)                
0x0175 (0x0002EA) 0x2B25-       f:00025 d: 293 | OR[293] = A + OR[293]         
0x0176 (0x0002EC) 0x1002-       f:00010 d:   2 | A = 2 (0x0002)                
0x0177 (0x0002EE) 0x2B26-       f:00025 d: 294 | OR[294] = A + OR[294]         
0x0178 (0x0002F0) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x0179 (0x0002F2) 0x1401-       f:00012 d:   1 | A = A + 1 (0x0001)            
0x017A (0x0002F4) 0x3925-       f:00034 d: 293 | (OR[293]) = A                 
0x017B (0x0002F6) 0x212F-       f:00020 d: 303 | A = OR[303]                   
0x017C (0x0002F8) 0x2722-       f:00023 d: 290 | A = A - OR[290]               
0x017D (0x0002FA) 0x3926-       f:00034 d: 294 | (OR[294]) = A                 
0x017E (0x0002FC) 0x7428-       f:00072 d:  40 | R = P + 40 (0x01A6)           
@ Call XFMGET
0x017F (0x0002FE) 0x1028-       f:00010 d:  40 | A = 40 (0x0028)               
0x0180 (0x000300) 0x2934-       f:00024 d: 308 | OR[308] = A                   
0x0181 (0x000302) 0x1800-0x00F1 f:00014 d:   0 | A = 241 (0x00F1)              
0x0183 (0x000306) 0x2935-       f:00024 d: 309 | OR[309] = A                   
0x0184 (0x000308) 0x2118-       f:00020 d: 280 | A = OR[280]                   
0x0185 (0x00030A) 0x2936-       f:00024 d: 310 | OR[310] = A                   
0x0186 (0x00030C) 0x1800-0xFFFF f:00014 d:   0 | A = 65535 (0xFFFF)            
0x0188 (0x000310) 0x2937-       f:00024 d: 311 | OR[311] = A                   
0x0189 (0x000312) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x018A (0x000314) 0x2938-       f:00024 d: 312 | OR[312] = A                   
0x018B (0x000316) 0x1016-       f:00010 d:  22 | A = 22 (0x0016)               
0x018C (0x000318) 0x2939-       f:00024 d: 313 | OR[313] = A                   
0x018D (0x00031A) 0x1134-       f:00010 d: 308 | A = 308 (0x0134)              
0x018E (0x00031C) 0x5800-       f:00054 d:   0 | B = A                         
0x018F (0x00031E) 0x1800-0x3918 f:00014 d:   0 | A = 14616 (0x3918)            
0x0191 (0x000322) 0x7C09-       f:00076 d:   9 | R = OR[9]                     

0x0192 (0x000324) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x0193 (0x000326) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0194 (0x000328) 0x8602-       f:00103 d:   2 | P = P + 2 (0x0196), A # 0    
0x0195 (0x00032A) 0x7002-       f:00070 d:   2 | P = P + 2 (0x0197)            
0x0196 (0x00032C) 0x72A1-       f:00071 d: 161 | P = P - 161 (0x00F5)          
0x0197 (0x00032E) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x0198 (0x000330) 0x3925-       f:00034 d: 293 | (OR[293]) = A                 
0x0199 (0x000332) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x019A (0x000334) 0x3926-       f:00034 d: 294 | (OR[294]) = A                 
@ Release local buffer and return
0x019B (0x000336) 0x101B-       f:00010 d:  27 | A = 27 (0x001B)               
0x019C (0x000338) 0x2934-       f:00024 d: 308 | OR[308] = A                   
0x019D (0x00033A) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x019E (0x00033C) 0x2935-       f:00024 d: 309 | OR[309] = A                   
0x019F (0x00033E) 0x1134-       f:00010 d: 308 | A = 308 (0x0134)              
0x01A0 (0x000340) 0x5800-       f:00054 d:   0 | B = A                         
0x01A1 (0x000342) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x01A2 (0x000344) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
0x01A3 (0x000346) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x01A4 (0x000348) 0x291E-       f:00024 d: 286 | OR[286] = A                   
0x01A5 (0x00034A) 0x0200-       f:00001 d:   0 | EXIT                          





0x01A6 (0x00034C) 0x2124-       f:00020 d: 292 | A = OR[292]                   
0x01A7 (0x00034E) 0x160E-       f:00013 d:  14 | A = A - 14 (0x000E)           
0x01A8 (0x000350) 0x8402-       f:00102 d:   2 | P = P + 2 (0x01AA), A = 0     
0x01A9 (0x000352) 0x7005-       f:00070 d:   5 | P = P + 5 (0x01AE)            
0x01AA (0x000354) 0x1800-0x0446 f:00014 d:   0 | A = 1094 (0x0446)             
0x01AC (0x000358) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x01AD (0x00035A) 0x72B8-       f:00071 d: 184 | P = P - 184 (0x00F5)          
0x01AE (0x00035C) 0x2123-       f:00020 d: 291 | A = OR[291]                   
0x01AF (0x00035E) 0x2931-       f:00024 d: 305 | OR[305] = A                   
0x01B0 (0x000360) 0x2125-       f:00020 d: 293 | A = OR[293]                   
0x01B1 (0x000362) 0x2932-       f:00024 d: 306 | OR[306] = A                   
0x01B2 (0x000364) 0x2126-       f:00020 d: 294 | A = OR[294]                   
0x01B3 (0x000366) 0x2933-       f:00024 d: 307 | OR[307] = A                   
0x01B4 (0x000368) 0x2131-       f:00020 d: 305 | A = OR[305]                   
0x01B5 (0x00036A) 0x2724-       f:00023 d: 292 | A = A - OR[292]               
0x01B6 (0x00036C) 0x8407-       f:00102 d:   7 | P = P + 7 (0x01BD), A = 0     
0x01B7 (0x00036E) 0x2D31-       f:00026 d: 305 | OR[305] = OR[305] + 1         
0x01B8 (0x000370) 0x1002-       f:00010 d:   2 | A = 2 (0x0002)                
0x01B9 (0x000372) 0x2B32-       f:00025 d: 306 | OR[306] = A + OR[306]         
0x01BA (0x000374) 0x1002-       f:00010 d:   2 | A = 2 (0x0002)                
0x01BB (0x000376) 0x2B33-       f:00025 d: 307 | OR[307] = A + OR[307]         
0x01BC (0x000378) 0x7208-       f:00071 d:   8 | P = P - 8 (0x01B4)            
0x01BD (0x00037A) 0x2131-       f:00020 d: 305 | A = OR[305]                   
0x01BE (0x00037C) 0x2723-       f:00023 d: 291 | A = A - OR[291]               
0x01BF (0x00037E) 0x8413-       f:00102 d:  19 | P = P + 19 (0x01D2), A = 0    
0x01C0 (0x000380) 0x2132-       f:00020 d: 306 | A = OR[306]                   
0x01C1 (0x000382) 0x1602-       f:00013 d:   2 | A = A - 2 (0x0002)            
0x01C2 (0x000384) 0x2913-       f:00024 d: 275 | OR[275] = A                   
0x01C3 (0x000386) 0x3113-       f:00030 d: 275 | A = (OR[275])                 
0x01C4 (0x000388) 0x3932-       f:00034 d: 306 | (OR[306]) = A                 
0x01C5 (0x00038A) 0x2133-       f:00020 d: 307 | A = OR[307]                   
0x01C6 (0x00038C) 0x1602-       f:00013 d:   2 | A = A - 2 (0x0002)            
0x01C7 (0x00038E) 0x2914-       f:00024 d: 276 | OR[276] = A                   
0x01C8 (0x000390) 0x3114-       f:00030 d: 276 | A = (OR[276])                 
0x01C9 (0x000392) 0x3933-       f:00034 d: 307 | (OR[307]) = A                 
0x01CA (0x000394) 0x2F31-       f:00027 d: 305 | OR[305] = OR[305] - 1         
0x01CB (0x000396) 0x2132-       f:00020 d: 306 | A = OR[306]                   
0x01CC (0x000398) 0x1602-       f:00013 d:   2 | A = A - 2 (0x0002)            
0x01CD (0x00039A) 0x2932-       f:00024 d: 306 | OR[306] = A                   
0x01CE (0x00039C) 0x2133-       f:00020 d: 307 | A = OR[307]                   
0x01CF (0x00039E) 0x1602-       f:00013 d:   2 | A = A - 2 (0x0002)            
0x01D0 (0x0003A0) 0x2933-       f:00024 d: 307 | OR[307] = A                   
0x01D1 (0x0003A2) 0x7214-       f:00071 d:  20 | P = P - 20 (0x01BD)           
0x01D2 (0x0003A4) 0x2D24-       f:00026 d: 292 | OR[292] = OR[292] + 1         
0x01D3 (0x0003A6) 0x211F-       f:00020 d: 287 | A = OR[287]                   
0x01D4 (0x0003A8) 0x141F-       f:00012 d:  31 | A = A + 31 (0x001F)           
0x01D5 (0x0003AA) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x01D6 (0x0003AC) 0x2124-       f:00020 d: 292 | A = OR[292]                   
0x01D7 (0x0003AE) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
0x01D8 (0x0003B0) 0x0200-       f:00001 d:   0 | EXIT                          


@ Call XDISK
0x01D9 (0x0003B2) 0x1028-       f:00010 d:  40 | A = 40 (0x0028)               
0x01DA (0x0003B4) 0x2934-       f:00024 d: 308 | OR[308] = A                   
0x01DB (0x0003B6) 0x1800-0x00A6 f:00014 d:   0 | A = 166 (0x00A6)              
0x01DD (0x0003BA) 0x2935-       f:00024 d: 309 | OR[309] = A                   
0x01DE (0x0003BC) 0x2118-       f:00020 d: 280 | A = OR[280]                   
0x01DF (0x0003BE) 0x2936-       f:00024 d: 310 | OR[310] = A                   
0x01E0 (0x0003C0) 0x212C-       f:00020 d: 300 | A = OR[300]                   
0x01E1 (0x0003C2) 0x2937-       f:00024 d: 311 | OR[311] = A                   
0x01E2 (0x0003C4) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x01E3 (0x0003C6) 0x2938-       f:00024 d: 312 | OR[312] = A                   
0x01E4 (0x0003C8) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x01E5 (0x0003CA) 0x2939-       f:00024 d: 313 | OR[313] = A                   
0x01E6 (0x0003CC) 0x1003-       f:00010 d:   3 | A = 3 (0x0003)                
0x01E7 (0x0003CE) 0x293A-       f:00024 d: 314 | OR[314] = A                   
0x01E8 (0x0003D0) 0x1134-       f:00010 d: 308 | A = 308 (0x0134)              
0x01E9 (0x0003D2) 0x5800-       f:00054 d:   0 | B = A                         
0x01EA (0x0003D4) 0x1800-0x3918 f:00014 d:   0 | A = 14616 (0x3918)            
0x01EC (0x0003D8) 0x7C09-       f:00076 d:   9 | R = OR[9]                     

0x01ED (0x0003DA) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x01EE (0x0003DC) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x01EF (0x0003DE) 0x8602-       f:00103 d:   2 | P = P + 2 (0x01F1), A # 0     
0x01F0 (0x0003E0) 0x7002-       f:00070 d:   2 | P = P + 2 (0x01F2)            
0x01F1 (0x0003E2) 0x72FC-       f:00071 d: 252 | P = P - 252 (0x00F5)          
0x01F2 (0x0003E4) 0x0200-       f:00001 d:   0 | EXIT                          
0x01F3 (0x0003E6) 0x0000-       f:00000 d:   0 | PASS                          
0x01F4 (0x0003E8) 0x0000-       f:00000 d:   0 | PASS                          
0x01F5 (0x0003EA) 0x0000-       f:00000 d:   0 | PASS                          
0x01F6 (0x0003EC) 0x0000-       f:00000 d:   0 | PASS                          
0x01F7 (0x0003EE) 0x0000-       f:00000 d:   0 | PASS                          
