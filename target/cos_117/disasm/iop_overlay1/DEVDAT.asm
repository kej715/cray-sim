0x0000 (0x000000) 0x2104-       f:00020 d: 260 | A = OR[260]                   
0x0001 (0x000002) 0x290D-       f:00024 d: 269 | OR[269] = A                   
0x0002 (0x000004) 0x2104-       f:00020 d: 260 | A = OR[260]                   
0x0003 (0x000006) 0x1403-       f:00012 d:   3 | A = A + 3 (0x0003)            
0x0004 (0x000008) 0x1A00-0xFFFC f:00015 d:   0 | A = A & 65532 (0xFFFC)        
0x0006 (0x00000C) 0x2904-       f:00024 d: 260 | OR[260] = A                   
0x0007 (0x00000E) 0x2104-       f:00020 d: 260 | A = OR[260]                   
0x0008 (0x000010) 0x2924-       f:00024 d: 292 | OR[292] = A                   
0x0009 (0x000012) 0x100C-       f:00010 d:  12 | A = 12 (0x000C)               
0x000A (0x000014) 0x2B04-       f:00025 d: 260 | OR[260] = A + OR[260]         
0x000B (0x000016) 0x2104-       f:00020 d: 260 | A = OR[260]                   
0x000C (0x000018) 0x2705-       f:00023 d: 261 | A = A - OR[261]               
0x000D (0x00001A) 0xB234-       f:00131 d:  52 | R = OR[52], C = 1             
0x000E (0x00001C) 0x000B-       f:00000 d:  11 | PASS                           | **** non-standard encoding with D:0x000B ****
0x000F (0x00001E) 0x210D-       f:00020 d: 269 | A = OR[269]                   
0x0010 (0x000020) 0x3904-       f:00034 d: 260 | (OR[260]) = A                 
0x0011 (0x000022) 0x2D04-       f:00026 d: 260 | OR[260] = OR[260] + 1         
0x0012 (0x000024) 0x2035-       f:00020 d:  53 | A = OR[53]                    
0x0013 (0x000026) 0x2922-       f:00024 d: 290 | OR[290] = A                   
0x0014 (0x000028) 0x7528-       f:00072 d: 296 | R = P + 296 (0x013C)          
0x0015 (0x00002A) 0x3122-       f:00030 d: 290 | A = (OR[290])                 
0x0016 (0x00002C) 0x2923-       f:00024 d: 291 | OR[291] = A                   
0x0017 (0x00002E) 0x2123-       f:00020 d: 291 | A = OR[291]                   
0x0018 (0x000030) 0x1402-       f:00012 d:   2 | A = A + 2 (0x0002)            
0x0019 (0x000032) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x001A (0x000034) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x001B (0x000036) 0x291C-       f:00024 d: 284 | OR[284] = A                   
0x001C (0x000038) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x001D (0x00003A) 0x84C2-       f:00102 d: 194 | P = P + 194 (0x00DF), A = 0   
0x001E (0x00003C) 0x102A-       f:00010 d:  42 | A = 42 (0x002A)               
0x001F (0x00003E) 0x291C-       f:00024 d: 284 | OR[284] = A                   
0x0020 (0x000040) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0021 (0x000042) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x0022 (0x000044) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0023 (0x000046) 0x12FF-       f:00011 d: 255 | A = A & 255 (0x00FF)          
0x0024 (0x000048) 0x290D-       f:00024 d: 269 | OR[269] = A                   
0x0025 (0x00004A) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0026 (0x00004C) 0x0801-       f:00004 d:   1 | A = A > 1 (0x0001)            
0x0027 (0x00004E) 0x2524-       f:00022 d: 292 | A = A + OR[292]               
0x0028 (0x000050) 0x290E-       f:00024 d: 270 | OR[270] = A                   
0x0029 (0x000052) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x002A (0x000054) 0x1201-       f:00011 d:   1 | A = A & 1 (0x0001)            
0x002B (0x000056) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x002C (0x000058) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x002D (0x00005A) 0x2708-       f:00023 d: 264 | A = A - OR[264]               
0x002E (0x00005C) 0x8607-       f:00103 d:   7 | P = P + 7 (0x0035), A # 0     
0x002F (0x00005E) 0x310E-       f:00030 d: 270 | A = (OR[270])                 
0x0030 (0x000060) 0x0A09-       f:00005 d:   9 | A = A < 9 (0x0009)            
0x0031 (0x000062) 0x250D-       f:00022 d: 269 | A = A + OR[269]               
0x0032 (0x000064) 0x0C09-       f:00006 d:   9 | A = A >> 9 (0x0009)           
0x0033 (0x000066) 0x390E-       f:00034 d: 270 | (OR[270]) = A                 
0x0034 (0x000068) 0x7006-       f:00070 d:   6 | P = P + 6 (0x003A)            
0x0035 (0x00006A) 0x310E-       f:00030 d: 270 | A = (OR[270])                 
0x0036 (0x00006C) 0x1A00-0xFF00 f:00015 d:   0 | A = A & 65280 (0xFF00)        
0x0038 (0x000070) 0x250D-       f:00022 d: 269 | A = A + OR[269]               
0x0039 (0x000072) 0x390E-       f:00034 d: 270 | (OR[270]) = A                 
0x003A (0x000074) 0x1040-       f:00010 d:  64 | A = 64 (0x0040)               
0x003B (0x000076) 0x291C-       f:00024 d: 284 | OR[284] = A                   
0x003C (0x000078) 0x1004-       f:00010 d:   4 | A = 4 (0x0004)                
0x003D (0x00007A) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x003E (0x00007C) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x003F (0x00007E) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0040 (0x000080) 0x12FF-       f:00011 d: 255 | A = A & 255 (0x00FF)          
0x0041 (0x000082) 0x290D-       f:00024 d: 269 | OR[269] = A                   
0x0042 (0x000084) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0043 (0x000086) 0x0801-       f:00004 d:   1 | A = A > 1 (0x0001)            
0x0044 (0x000088) 0x2524-       f:00022 d: 292 | A = A + OR[292]               
0x0045 (0x00008A) 0x290E-       f:00024 d: 270 | OR[270] = A                   
0x0046 (0x00008C) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0047 (0x00008E) 0x1201-       f:00011 d:   1 | A = A & 1 (0x0001)            
0x0048 (0x000090) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x0049 (0x000092) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x004A (0x000094) 0x2708-       f:00023 d: 264 | A = A - OR[264]               
0x004B (0x000096) 0x8607-       f:00103 d:   7 | P = P + 7 (0x0052), A # 0     
0x004C (0x000098) 0x310E-       f:00030 d: 270 | A = (OR[270])                 
0x004D (0x00009A) 0x0A09-       f:00005 d:   9 | A = A < 9 (0x0009)            
0x004E (0x00009C) 0x250D-       f:00022 d: 269 | A = A + OR[269]               
0x004F (0x00009E) 0x0C09-       f:00006 d:   9 | A = A >> 9 (0x0009)           
0x0050 (0x0000A0) 0x390E-       f:00034 d: 270 | (OR[270]) = A                 
0x0051 (0x0000A2) 0x7006-       f:00070 d:   6 | P = P + 6 (0x0057)            
0x0052 (0x0000A4) 0x310E-       f:00030 d: 270 | A = (OR[270])                 
0x0053 (0x0000A6) 0x1A00-0xFF00 f:00015 d:   0 | A = A & 65280 (0xFF00)        
0x0055 (0x0000AA) 0x250D-       f:00022 d: 269 | A = A + OR[269]               
0x0056 (0x0000AC) 0x390E-       f:00034 d: 270 | (OR[270]) = A                 
0x0057 (0x0000AE) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0058 (0x0000B0) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x0059 (0x0000B2) 0x1004-       f:00010 d:   4 | A = 4 (0x0004)                
0x005A (0x0000B4) 0x291E-       f:00024 d: 286 | OR[286] = A                   
0x005B (0x0000B6) 0x2123-       f:00020 d: 291 | A = OR[291]                   
0x005C (0x0000B8) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x005D (0x0000BA) 0x1003-       f:00010 d:   3 | A = 3 (0x0003)                
0x005E (0x0000BC) 0x2920-       f:00024 d: 288 | OR[288] = A                   
0x005F (0x0000BE) 0x74A2-       f:00072 d: 162 | R = P + 162 (0x0101)          
0x0060 (0x0000C0) 0x2123-       f:00020 d: 291 | A = OR[291]                   
0x0061 (0x0000C2) 0x140B-       f:00012 d:  11 | A = A + 11 (0x000B)           
0x0062 (0x0000C4) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x0063 (0x0000C6) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x0064 (0x0000C8) 0x0804-       f:00004 d:   4 | A = A > 4 (0x0004)            
0x0065 (0x0000CA) 0x120F-       f:00011 d:  15 | A = A & 15 (0x000F)           
0x0066 (0x0000CC) 0x291C-       f:00024 d: 284 | OR[284] = A                   
0x0067 (0x0000CE) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0068 (0x0000D0) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x0069 (0x0000D2) 0x8402-       f:00102 d:   2 | P = P + 2 (0x006B), A = 0     
0x006A (0x0000D4) 0x7006-       f:00070 d:   6 | P = P + 6 (0x0070)            
0x006B (0x0000D6) 0x1800-0x0169 f:00014 d:   0 | A = 361 (0x0169)              
0x006D (0x0000DA) 0x2403-       f:00022 d:   3 | A = A + OR[3]                 
0x006E (0x0000DC) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x006F (0x0000DE) 0x7005-       f:00070 d:   5 | P = P + 5 (0x0074)            
0x0070 (0x0000E0) 0x1800-0x0168 f:00014 d:   0 | A = 360 (0x0168)              
0x0072 (0x0000E4) 0x2403-       f:00022 d:   3 | A = A + OR[3]                 
0x0073 (0x0000E6) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x0074 (0x0000E8) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0075 (0x0000EA) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x0076 (0x0000EC) 0x1009-       f:00010 d:   9 | A = 9 (0x0009)                
0x0077 (0x0000EE) 0x291E-       f:00024 d: 286 | OR[286] = A                   
0x0078 (0x0000F0) 0x1002-       f:00010 d:   2 | A = 2 (0x0002)                
0x0079 (0x0000F2) 0x2920-       f:00024 d: 288 | OR[288] = A                   
0x007A (0x0000F4) 0x7487-       f:00072 d: 135 | R = P + 135 (0x0101)          
0x007B (0x0000F6) 0x2123-       f:00020 d: 291 | A = OR[291]                   
0x007C (0x0000F8) 0x140D-       f:00012 d:  13 | A = A + 13 (0x000D)           
0x007D (0x0000FA) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x007E (0x0000FC) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x007F (0x0000FE) 0x291C-       f:00024 d: 284 | OR[284] = A                   
0x0080 (0x000100) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0081 (0x000102) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0083), A = 0     
0x0082 (0x000104) 0x7006-       f:00070 d:   6 | P = P + 6 (0x0088)            
0x0083 (0x000106) 0x1800-0x016A f:00014 d:   0 | A = 362 (0x016A)              
0x0085 (0x00010A) 0x2403-       f:00022 d:   3 | A = A + OR[3]                 
0x0086 (0x00010C) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x0087 (0x00010E) 0x7005-       f:00070 d:   5 | P = P + 5 (0x008C)            
0x0088 (0x000110) 0x1800-0x016D f:00014 d:   0 | A = 365 (0x016D)              
0x008A (0x000114) 0x2403-       f:00022 d:   3 | A = A + OR[3]                 
0x008B (0x000116) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x008C (0x000118) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x008D (0x00011A) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x008E (0x00011C) 0x100C-       f:00010 d:  12 | A = 12 (0x000C)               
0x008F (0x00011E) 0x291E-       f:00024 d: 286 | OR[286] = A                   
0x0090 (0x000120) 0x1005-       f:00010 d:   5 | A = 5 (0x0005)                
0x0091 (0x000122) 0x2920-       f:00024 d: 288 | OR[288] = A                   
0x0092 (0x000124) 0x746F-       f:00072 d: 111 | R = P + 111 (0x0101)          
0x0093 (0x000126) 0x2123-       f:00020 d: 291 | A = OR[291]                   
0x0094 (0x000128) 0x1408-       f:00012 d:   8 | A = A + 8 (0x0008)            
0x0095 (0x00012A) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x0096 (0x00012C) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x0097 (0x00012E) 0x291C-       f:00024 d: 284 | OR[284] = A                   
0x0098 (0x000130) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0099 (0x000132) 0x8442-       f:00102 d:  66 | P = P + 66 (0x00DB), A = 0    
0x009A (0x000134) 0x2123-       f:00020 d: 291 | A = OR[291]                   
0x009B (0x000136) 0x140C-       f:00012 d:  12 | A = A + 12 (0x000C)           
0x009C (0x000138) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x009D (0x00013A) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x009E (0x00013C) 0x291C-       f:00024 d: 284 | OR[284] = A                   
0x009F (0x00013E) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00A0 (0x000140) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00A2), A = 0     
0x00A1 (0x000142) 0x7005-       f:00070 d:   5 | P = P + 5 (0x00A6)            
0x00A2 (0x000144) 0x1800-0x0173 f:00014 d:   0 | A = 371 (0x0173)              
0x00A4 (0x000148) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x00A5 (0x00014A) 0x702C-       f:00070 d:  44 | P = P + 44 (0x00D1)           
0x00A6 (0x00014C) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00A7 (0x00014E) 0x1E00-0x5054 f:00017 d:   0 | A = A - 20564 (0x5054)        
0x00A9 (0x000152) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00AB), A = 0     
0x00AA (0x000154) 0x7005-       f:00070 d:   5 | P = P + 5 (0x00AF)            
0x00AB (0x000156) 0x1800-0x0172 f:00014 d:   0 | A = 370 (0x0172)              
0x00AD (0x00015A) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x00AE (0x00015C) 0x7023-       f:00070 d:  35 | P = P + 35 (0x00D1)           
0x00AF (0x00015E) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00B0 (0x000160) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x00B1 (0x000162) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00B3), A = 0     
0x00B2 (0x000164) 0x7005-       f:00070 d:   5 | P = P + 5 (0x00B7)            
0x00B3 (0x000166) 0x1800-0x0170 f:00014 d:   0 | A = 368 (0x0170)              
0x00B5 (0x00016A) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x00B6 (0x00016C) 0x701B-       f:00070 d:  27 | P = P + 27 (0x00D1)           
0x00B7 (0x00016E) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00B8 (0x000170) 0x1602-       f:00013 d:   2 | A = A - 2 (0x0002)            
0x00B9 (0x000172) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00BB), A = 0     
0x00BA (0x000174) 0x7005-       f:00070 d:   5 | P = P + 5 (0x00BF)            
0x00BB (0x000176) 0x1800-0x0171 f:00014 d:   0 | A = 369 (0x0171)              
0x00BD (0x00017A) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x00BE (0x00017C) 0x7013-       f:00070 d:  19 | P = P + 19 (0x00D1)           
0x00BF (0x00017E) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00C0 (0x000180) 0x1603-       f:00013 d:   3 | A = A - 3 (0x0003)            
0x00C1 (0x000182) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00C3), A = 0     
0x00C2 (0x000184) 0x7005-       f:00070 d:   5 | P = P + 5 (0x00C7)            
0x00C3 (0x000186) 0x1800-0x0174 f:00014 d:   0 | A = 372 (0x0174)              
0x00C5 (0x00018A) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x00C6 (0x00018C) 0x700B-       f:00070 d:  11 | P = P + 11 (0x00D1)           
0x00C7 (0x00018E) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00C8 (0x000190) 0x1604-       f:00013 d:   4 | A = A - 4 (0x0004)            
0x00C9 (0x000192) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00CB), A = 0     
0x00CA (0x000194) 0x7005-       f:00070 d:   5 | P = P + 5 (0x00CF)            
0x00CB (0x000196) 0x1800-0x0175 f:00014 d:   0 | A = 373 (0x0175)              
0x00CD (0x00019A) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x00CE (0x00019C) 0x7003-       f:00070 d:   3 | P = P + 3 (0x00D1)            
0x00CF (0x00019E) 0x7C34-       f:00076 d:  52 | R = OR[52]                    
0x00D0 (0x0001A0) 0x0000-       f:00000 d:   0 | PASS                          
0x00D1 (0x0001A2) 0x211F-       f:00020 d: 287 | A = OR[287]                   
0x00D2 (0x0001A4) 0x2403-       f:00022 d:   3 | A = A + OR[3]                 
0x00D3 (0x0001A6) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x00D4 (0x0001A8) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x00D5 (0x0001AA) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x00D6 (0x0001AC) 0x1012-       f:00010 d:  18 | A = 18 (0x0012)               
0x00D7 (0x0001AE) 0x291E-       f:00024 d: 286 | OR[286] = A                   
0x00D8 (0x0001B0) 0x1002-       f:00010 d:   2 | A = 2 (0x0002)                
0x00D9 (0x0001B2) 0x2920-       f:00024 d: 288 | OR[288] = A                   
0x00DA (0x0001B4) 0x7427-       f:00072 d:  39 | R = P + 39 (0x0101)           
0x00DB (0x0001B6) 0x211A-       f:00020 d: 282 | A = OR[282]                   
0x00DC (0x0001B8) 0x1401-       f:00012 d:   1 | A = A + 1 (0x0001)            
0x00DD (0x0001BA) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x00DE (0x0001BC) 0x746B-       f:00072 d: 107 | R = P + 107 (0x0149)          
0x00DF (0x0001BE) 0x745D-       f:00072 d:  93 | R = P + 93 (0x013C)           
0x00E0 (0x0001C0) 0x2D1A-       f:00026 d: 282 | OR[282] = OR[282] + 1         
0x00E1 (0x0001C2) 0x2D22-       f:00026 d: 290 | OR[290] = OR[290] + 1         
0x00E2 (0x0001C4) 0x3122-       f:00030 d: 290 | A = (OR[290])                 
0x00E3 (0x0001C6) 0x8ECE-       f:00107 d: 206 | P = P - 206 (0x0015), A # 0   
0x00E4 (0x0001C8) 0x211A-       f:00020 d: 282 | A = OR[282]                   
0x00E5 (0x0001CA) 0x1401-       f:00012 d:   1 | A = A + 1 (0x0001)            
0x00E6 (0x0001CC) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x00E7 (0x0001CE) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x00E8 (0x0001D0) 0x271B-       f:00023 d: 283 | A = A - OR[283]               
0x00E9 (0x0001D2) 0x8404-       f:00102 d:   4 | P = P + 4 (0x00ED), A = 0     
0x00EA (0x0001D4) 0x745F-       f:00072 d:  95 | R = P + 95 (0x0149)           
0x00EB (0x0001D6) 0x2D1A-       f:00026 d: 282 | OR[282] = OR[282] + 1         
0x00EC (0x0001D8) 0x7208-       f:00071 d:   8 | P = P - 8 (0x00E4)            
0x00ED (0x0001DA) 0x2F04-       f:00027 d: 260 | OR[260] = OR[260] - 1         
0x00EE (0x0001DC) 0x3104-       f:00030 d: 260 | A = (OR[260])                 
0x00EF (0x0001DE) 0x2904-       f:00024 d: 260 | OR[260] = A                   
0x00F0 (0x0001E0) 0x2104-       f:00020 d: 260 | A = OR[260]                   
0x00F1 (0x0001E2) 0x2706-       f:00023 d: 262 | A = A - OR[262]               
0x00F2 (0x0001E4) 0x8007-       f:00100 d:   7 | P = P + 7 (0x00F9), C = 0     
0x00F3 (0x0001E6) 0x2104-       f:00020 d: 260 | A = OR[260]                   
0x00F4 (0x0001E8) 0x2705-       f:00023 d: 261 | A = A - OR[261]               
0x00F5 (0x0001EA) 0x8003-       f:00100 d:   3 | P = P + 3 (0x00F8), C = 0     
0x00F6 (0x0001EC) 0x8402-       f:00102 d:   2 | P = P + 2 (0x00F8), A = 0     
0x00F7 (0x0001EE) 0x7002-       f:00070 d:   2 | P = P + 2 (0x00F9)            
0x00F8 (0x0001F0) 0x7003-       f:00070 d:   3 | P = P + 3 (0x00FB)            
0x00F9 (0x0001F2) 0x7C34-       f:00076 d:  52 | R = OR[52]                    
0x00FA (0x0001F4) 0x000B-       f:00000 d:  11 | PASS                           | **** non-standard encoding with D:0x000B ****
0x00FB (0x0001F6) 0x102A-       f:00010 d:  42 | A = 42 (0x002A)               
0x00FC (0x0001F8) 0x2925-       f:00024 d: 293 | OR[293] = A                   
0x00FD (0x0001FA) 0x1125-       f:00010 d: 293 | A = 293 (0x0125)              
0x00FE (0x0001FC) 0x5800-       f:00054 d:   0 | B = A                         
0x00FF (0x0001FE) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0100 (0x000200) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
0x0101 (0x000202) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0102 (0x000204) 0x0801-       f:00004 d:   1 | A = A > 1 (0x0001)            
0x0103 (0x000206) 0x251F-       f:00022 d: 287 | A = A + OR[287]               
0x0104 (0x000208) 0x290D-       f:00024 d: 269 | OR[269] = A                   
0x0105 (0x00020A) 0x310D-       f:00030 d: 269 | A = (OR[269])                 
0x0106 (0x00020C) 0x290D-       f:00024 d: 269 | OR[269] = A                   
0x0107 (0x00020E) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0108 (0x000210) 0x1201-       f:00011 d:   1 | A = A & 1 (0x0001)            
0x0109 (0x000212) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x010A (0x000214) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x010B (0x000216) 0x2708-       f:00023 d: 264 | A = A - OR[264]               
0x010C (0x000218) 0x8604-       f:00103 d:   4 | P = P + 4 (0x0110), A # 0     
0x010D (0x00021A) 0x210D-       f:00020 d: 269 | A = OR[269]                   
0x010E (0x00021C) 0x0808-       f:00004 d:   8 | A = A > 8 (0x0008)            
0x010F (0x00021E) 0x290D-       f:00024 d: 269 | OR[269] = A                   
0x0110 (0x000220) 0x210D-       f:00020 d: 269 | A = OR[269]                   
0x0111 (0x000222) 0x12FF-       f:00011 d: 255 | A = A & 255 (0x00FF)          
0x0112 (0x000224) 0x2921-       f:00024 d: 289 | OR[289] = A                   
0x0113 (0x000226) 0x2D1D-       f:00026 d: 285 | OR[285] = OR[285] + 1         
0x0114 (0x000228) 0x2121-       f:00020 d: 289 | A = OR[289]                   
0x0115 (0x00022A) 0x1620-       f:00013 d:  32 | A = A - 32 (0x0020)           
0x0116 (0x00022C) 0x8007-       f:00100 d:   7 | P = P + 7 (0x011D), C = 0     
0x0117 (0x00022E) 0x2121-       f:00020 d: 289 | A = OR[289]                   
0x0118 (0x000230) 0x165F-       f:00013 d:  95 | A = A - 95 (0x005F)           
0x0119 (0x000232) 0x8003-       f:00100 d:   3 | P = P + 3 (0x011C), C = 0     
0x011A (0x000234) 0x8402-       f:00102 d:   2 | P = P + 2 (0x011C), A = 0     
0x011B (0x000236) 0x7002-       f:00070 d:   2 | P = P + 2 (0x011D)            
0x011C (0x000238) 0x7003-       f:00070 d:   3 | P = P + 3 (0x011F)            
0x011D (0x00023A) 0x1020-       f:00010 d:  32 | A = 32 (0x0020)               
0x011E (0x00023C) 0x2921-       f:00024 d: 289 | OR[289] = A                   
0x011F (0x00023E) 0x2121-       f:00020 d: 289 | A = OR[289]                   
0x0120 (0x000240) 0x12FF-       f:00011 d: 255 | A = A & 255 (0x00FF)          
0x0121 (0x000242) 0x290D-       f:00024 d: 269 | OR[269] = A                   
0x0122 (0x000244) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x0123 (0x000246) 0x0801-       f:00004 d:   1 | A = A > 1 (0x0001)            
0x0124 (0x000248) 0x2524-       f:00022 d: 292 | A = A + OR[292]               
0x0125 (0x00024A) 0x290E-       f:00024 d: 270 | OR[270] = A                   
0x0126 (0x00024C) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x0127 (0x00024E) 0x1201-       f:00011 d:   1 | A = A & 1 (0x0001)            
0x0128 (0x000250) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x0129 (0x000252) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x012A (0x000254) 0x2708-       f:00023 d: 264 | A = A - OR[264]               
0x012B (0x000256) 0x8607-       f:00103 d:   7 | P = P + 7 (0x0132), A # 0     
0x012C (0x000258) 0x310E-       f:00030 d: 270 | A = (OR[270])                 
0x012D (0x00025A) 0x0A09-       f:00005 d:   9 | A = A < 9 (0x0009)            
0x012E (0x00025C) 0x250D-       f:00022 d: 269 | A = A + OR[269]               
0x012F (0x00025E) 0x0C09-       f:00006 d:   9 | A = A >> 9 (0x0009)           
0x0130 (0x000260) 0x390E-       f:00034 d: 270 | (OR[270]) = A                 
0x0131 (0x000262) 0x7006-       f:00070 d:   6 | P = P + 6 (0x0137)            
0x0132 (0x000264) 0x310E-       f:00030 d: 270 | A = (OR[270])                 
0x0133 (0x000266) 0x1A00-0xFF00 f:00015 d:   0 | A = A & 65280 (0xFF00)        
0x0135 (0x00026A) 0x250D-       f:00022 d: 269 | A = A + OR[269]               
0x0136 (0x00026C) 0x390E-       f:00034 d: 270 | (OR[270]) = A                 
0x0137 (0x00026E) 0x2D1E-       f:00026 d: 286 | OR[286] = OR[286] + 1         
0x0138 (0x000270) 0x2F20-       f:00027 d: 288 | OR[288] = OR[288] - 1         
0x0139 (0x000272) 0x2120-       f:00020 d: 288 | A = OR[288]                   
0x013A (0x000274) 0x8E39-       f:00107 d:  57 | P = P - 57 (0x0101), A # 0    
0x013B (0x000276) 0x0200-       f:00001 d:   0 | EXIT                          
0x013C (0x000278) 0x2124-       f:00020 d: 292 | A = OR[292]                   
0x013D (0x00027A) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x013E (0x00027C) 0x2124-       f:00020 d: 292 | A = OR[292]                   
0x013F (0x00027E) 0x140C-       f:00012 d:  12 | A = A + 12 (0x000C)           
0x0140 (0x000280) 0x291E-       f:00024 d: 286 | OR[286] = A                   
0x0141 (0x000282) 0x1800-0x2020 f:00014 d:   0 | A = 8224 (0x2020)             
0x0143 (0x000286) 0x391D-       f:00034 d: 285 | (OR[285]) = A                 
0x0144 (0x000288) 0x2D1D-       f:00026 d: 285 | OR[285] = OR[285] + 1         
0x0145 (0x00028A) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0146 (0x00028C) 0x271E-       f:00023 d: 286 | A = A - OR[286]               
0x0147 (0x00028E) 0x8E06-       f:00107 d:   6 | P = P - 6 (0x0141), A # 0     
0x0148 (0x000290) 0x0200-       f:00001 d:   0 | EXIT                          
0x0149 (0x000292) 0x1028-       f:00010 d:  40 | A = 40 (0x0028)               
0x014A (0x000294) 0x2925-       f:00024 d: 293 | OR[293] = A                   
0x014B (0x000296) 0x1800-0x0123 f:00014 d:   0 | A = 291 (0x0123)              
0x014D (0x00029A) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x014E (0x00029C) 0x1800-0x0005 f:00014 d:   0 | A = 5 (0x0005)                
0x0150 (0x0002A0) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x0151 (0x0002A2) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0152 (0x0002A4) 0x2928-       f:00024 d: 296 | OR[296] = A                   
0x0153 (0x0002A6) 0x2118-       f:00020 d: 280 | A = OR[280]                   
0x0154 (0x0002A8) 0x2929-       f:00024 d: 297 | OR[297] = A                   
0x0155 (0x0002AA) 0x2124-       f:00020 d: 292 | A = OR[292]                   
0x0156 (0x0002AC) 0x292A-       f:00024 d: 298 | OR[298] = A                   
0x0157 (0x0002AE) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0158 (0x0002B0) 0x292B-       f:00024 d: 299 | OR[299] = A                   
0x0159 (0x0002B2) 0x2119-       f:00020 d: 281 | A = OR[281]                   
0x015A (0x0002B4) 0x292C-       f:00024 d: 300 | OR[300] = A                   
0x015B (0x0002B6) 0x1125-       f:00010 d: 293 | A = 293 (0x0125)              
0x015C (0x0002B8) 0x5800-       f:00054 d:   0 | B = A                         
0x015D (0x0002BA) 0x1800-0x1B18 f:00014 d:   0 | A = 6936 (0x1B18)             
0x015F (0x0002BE) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
0x0160 (0x0002C0) 0x0200-       f:00001 d:   0 | EXIT                          
0x0161 (0x0002C2) 0x0000-       f:00000 d:   0 | PASS                          
0x0162 (0x0002C4) 0x5550-       f:00052 d: 336 | A = A + B                      | **** non-standard encoding with D:0x0150 ****
0x0163 (0x0002C6) 0x444E-       f:00042 d:  78 | C = 1, IOB = DN                | **** non-standard encoding with D:0x004E ****
0x0164 (0x0002C8) 0x4652-       f:00043 d:  82 | C = 1, IOB = BZ                | **** non-standard encoding with D:0x0052 ****
0x0165 (0x0002CA) 0x4545-       f:00042 d: 325 | C = 1, IOB = DN                | **** non-standard encoding with D:0x0145 ****
0x0166 (0x0002CC) 0x2020-       f:00020 d:  32 | A = OR[32]                    
0x0167 (0x0002CE) 0x5253-       f:00051 d:  83 | A = A & B                      | **** non-standard encoding with D:0x0053 ****
0x0168 (0x0002D0) 0x5256-       f:00051 d:  86 | A = A & B                      | **** non-standard encoding with D:0x0056 ****
0x0169 (0x0002D2) 0x4420-       f:00042 d:  32 | C = 1, IOB = DN                | **** non-standard encoding with D:0x0020 ****
0x016A (0x0002D4) 0x5244-       f:00051 d:  68 | A = A & B                      | **** non-standard encoding with D:0x0044 ****
0x016B (0x0002D6) 0x5752-       f:00053 d: 338 | A = A - B                      | **** non-standard encoding with D:0x0152 ****
0x016C (0x0002D8) 0x5054-       f:00050 d:  84 | A = B                          | **** non-standard encoding with D:0x0054 ****
0x016D (0x0002DA) 0x414C-       f:00040 d: 332 | C = 1, io 0514 = DN           
0x016E (0x0002DC) 0x494F-       f:00044 d: 335 | A = A > B                      | **** non-standard encoding with D:0x014F ****
0x016F (0x0002DE) 0x494E-       f:00044 d: 334 | A = A > B                      | **** non-standard encoding with D:0x014E ****
0x0170 (0x0002E0) 0x0000-       f:00000 d:   0 | PASS                          
0x0171 (0x0002E2) 0x0000-       f:00000 d:   0 | PASS                          
0x0172 (0x0002E4) 0x0000-       f:00000 d:   0 | PASS                          
0x0173 (0x0002E6) 0x0000-       f:00000 d:   0 | PASS                          
