@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@ Gets loaded to 0x49a4 (0x49aa)
@@ START0: Cray deadstart driver
@@ Offset number: 0x00e2
@@ Input:
@@    OR[280]: pointer to first command-line argument (boot image)
@@    OR[281]: pointer to second command-line argument (parameters file)
@@    OR[282]: number of parameters? (must be 2 to invoke the editor)

@@    OR[283]: return code
@@    OR[284]: pointer to internal buffer of 24 words
@@    OR[285]: these two form some sort of a 32-bit counter, but I'm not sure what they're couting.
@@    OR[286]:
0x0000 (0x000000) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0001 (0x000002) 0x291B-       f:00024 d: 283 | OR[283] = A                   
0x0002 (0x000004) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0003 (0x000006) 0x291C-       f:00024 d: 284 | OR[284] = A                   
0x0004 (0x000008) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0005 (0x00000A) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x0006 (0x00000C) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0007 (0x00000E) 0x291E-       f:00024 d: 286 | OR[286] = A                   
@ Call overlay function 24 - allocate memory
0x0008 (0x000010) 0x1018-       f:00010 d:  24 | A = 24 (0x0018)               
0x0009 (0x000012) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x000A (0x000014) 0x1018-       f:00010 d:  24 | A = 24 (0x0018)               @ Memory size
0x000B (0x000016) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x000C (0x000018) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x000D (0x00001A) 0x2928-       f:00024 d: 296 | OR[296] = A                   
0x000E (0x00001C) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x000F (0x00001E) 0x2929-       f:00024 d: 297 | OR[297] = A                   
0x0010 (0x000020) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0011 (0x000022) 0x292A-       f:00024 d: 298 | OR[298] = A                   
0x0012 (0x000024) 0x111C-       f:00010 d: 284 | A = 284 (0x011C)              @ Where to return memory
0x0013 (0x000026) 0x292B-       f:00024 d: 299 | OR[299] = A                   
0x0014 (0x000028) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x0015 (0x00002A) 0x5800-       f:00054 d:   0 | B = A                         
0x0016 (0x00002C) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0017 (0x00002E) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
0x0018 (0x000030) 0x291B-       f:00024 d: 283 | OR[283] = A                   
0x0019 (0x000032) 0x211B-       f:00020 d: 283 | A = OR[283]                   
0x001A (0x000034) 0x8602-       f:00103 d:   2 | P = P + 2 (0x001C), A # 0     
0x001B (0x000036) 0x700B-       f:00070 d:  11 | P = P + 11 (0x0026)           
@ Wait for interrupt and retry
0x001C (0x000038) 0x1007-       f:00010 d:   7 | A = 7 (0x0007)                
0x001D (0x00003A) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x001E (0x00003C) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x001F (0x00003E) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x0020 (0x000040) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x0021 (0x000042) 0x5800-       f:00054 d:   0 | B = A                         
0x0022 (0x000044) 0x1800-0x1D18 f:00014 d:   0 | A = 7448 (0x1D18)             
0x0024 (0x000048) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
0x0025 (0x00004A) 0x721D-       f:00071 d:  29 | P = P - 29 (0x0008)           
@ Succeeded in function 24 - zero out returned buffer
0x0026 (0x00004C) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0027 (0x00004E) 0x290E-       f:00024 d: 270 | OR[270] = A                   
0x0028 (0x000050) 0x1018-       f:00010 d:  24 | A = 24 (0x0018)               
0x0029 (0x000052) 0x290D-       f:00024 d: 269 | OR[269] = A                   
0x002A (0x000054) 0x210D-       f:00020 d: 269 | A = OR[269]                   
0x002B (0x000056) 0x8406-       f:00102 d:   6 | P = P + 6 (0x0031), A = 0     
0x002C (0x000058) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x002D (0x00005A) 0x390E-       f:00034 d: 270 | (OR[270]) = A                 
0x002E (0x00005C) 0x2F0D-       f:00027 d: 269 | OR[269] = OR[269] - 1         
0x002F (0x00005E) 0x2D0E-       f:00026 d: 270 | OR[270] = OR[270] + 1         
0x0030 (0x000060) 0x7206-       f:00071 d:   6 | P = P - 6 (0x002A)            
@ Read CIA channel number
0x0031 (0x000062) 0x3082-       f:00030 d: 130 | A = (OR[130])                 
0x0032 (0x000064) 0x13FF-       f:00011 d: 511 | A = A & 511 (0x01FF)          
0x0033 (0x000066) 0x5800-       f:00054 d:   0 | B = A                         
0x0034 (0x000068) 0xEC00-       f:00166 d:   0 | IOB , fn006                   @ Clear channel interrupt enable flag
@ Decide if we have to wait for interrupts?
0x0035 (0x00006A) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x0036 (0x00006C) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x0037 (0x00006E) 0x211F-       f:00020 d: 287 | A = OR[287]                   
0x0038 (0x000070) 0x8412-       f:00102 d:  18 | P = P + 18 (0x004A), A = 0    
0x0039 (0x000072) 0x2082-       f:00020 d: 130 | A = OR[130]                   
0x003A (0x000074) 0x140A-       f:00012 d:  10 | A = A + 10 (0x000A)           
0x003B (0x000076) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x003C (0x000078) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x003D (0x00007A) 0x291F-       f:00024 d: 287 | OR[287] = A                   
0x003E (0x00007C) 0x8602-       f:00103 d:   2 | P = P + 2 (0x0040), A # 0     
0x003F (0x00007E) 0x700A-       f:00070 d:  10 | P = P + 10 (0x0049)           
@ Wait for interrupt
0x0040 (0x000080) 0x1007-       f:00010 d:   7 | A = 7 (0x0007)                
0x0041 (0x000082) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x0042 (0x000084) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x0043 (0x000086) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x0044 (0x000088) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x0045 (0x00008A) 0x5800-       f:00054 d:   0 | B = A                         
0x0046 (0x00008C) 0x1800-0x1D18 f:00014 d:   0 | A = 7448 (0x1D18)             
0x0048 (0x000090) 0x7C09-       f:00076 d:   9 | R = OR[9]                     

0x0049 (0x000092) 0x7212-       f:00071 d:  18 | P = P - 18 (0x0037)           
@ Done waiting - clear the MSB of (OR[131]) - that is the COA channel number
0x004A (0x000094) 0x3083-       f:00030 d: 131 | A = (OR[131])                 
0x004B (0x000096) 0x0E01-       f:00007 d:   1 | A = A << 1 (0x0001)           
0x004C (0x000098) 0x0A01-       f:00005 d:   1 | A = A < 1 (0x0001)            
0x004D (0x00009A) 0x1400-       f:00012 d:   0 | A = A + 0 (0x0000)            
0x004E (0x00009C) 0x0C02-       f:00006 d:   2 | A = A >> 2 (0x0002)           
0x004F (0x00009E) 0x3883-       f:00034 d: 131 | (OR[131]) = A                 
@ Set bit 12 in (OR[131] - that is the COA channel number
0x0050 (0x0000A0) 0x3083-       f:00030 d: 131 | A = (OR[131])                 
0x0051 (0x0000A2) 0x0E04-       f:00007 d:   4 | A = A << 4 (0x0004)           
0x0052 (0x0000A4) 0x0A01-       f:00005 d:   1 | A = A < 1 (0x0001)            
0x0053 (0x0000A6) 0x1401-       f:00012 d:   1 | A = A + 1 (0x0001)            
0x0054 (0x0000A8) 0x0C05-       f:00006 d:   5 | A = A >> 5 (0x0005)           
0x0055 (0x0000AA) 0x3883-       f:00034 d: 131 | (OR[131]) = A                 
@ Call MFINIT
0x0056 (0x0000AC) 0x1028-       f:00010 d:  40 | A = 40 (0x0028)               
0x0057 (0x0000AE) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x0058 (0x0000B0) 0x1800-0x002E f:00014 d:   0 | A = 46 (0x002E)               
0x005A (0x0000B4) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x005B (0x0000B6) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x005C (0x0000B8) 0x5800-       f:00054 d:   0 | B = A                         
0x005D (0x0000BA) 0x1800-0x1D18 f:00014 d:   0 | A = 7448 (0x1D18)             
0x005F (0x0000BE) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
@ Read COA channel number
0x0060 (0x0000C0) 0x3083-       f:00030 d: 131 | A = (OR[131])                 
0x0061 (0x0000C2) 0x13FF-       f:00011 d: 511 | A = A & 511 (0x01FF)          
0x0062 (0x0000C4) 0x5800-       f:00054 d:   0 | B = A                         
0x0063 (0x0000C6) 0xE000-       f:00160 d:   0 | IOB , fn000                   @ Clear channel
0x0064 (0x0000C8) 0xEC00-       f:00166 d:   0 | IOB , fn006                   @ Clear interrupt enable flag
0x0065 (0x0000CA) 0xE600-       f:00163 d:   0 | IOB , fn003                   @ Clear channel error flag
0x0066 (0x0000CC) 0x1800-0xC000 f:00014 d:   0 | A = 49152 (0xC000)            
0x0068 (0x0000D0) 0xE800-       f:00164 d:   0 | IOB , fn004                   @ put both I/O and CPU in master-clear
0x0069 (0x0000D2) 0x1800-0x1000 f:00014 d:   0 | A = 4096 (0x1000)             @ a delay loop of 4096 iterations
0x006B (0x0000D6) 0x8403-       f:00102 d:   3 | P = P + 3 (0x006E), A = 0     
0x006C (0x0000D8) 0x1601-       f:00013 d:   1 | A = A - 1 (0x0001)            
0x006D (0x0000DA) 0x7202-       f:00071 d:   2 | P = P - 2 (0x006B)            
0x006E (0x0000DC) 0x1800-0x8000 f:00014 d:   0 | A = 32768 (0x8000)            
0x0070 (0x0000E0) 0xE800-       f:00164 d:   0 | IOB , fn004                   @ remove I/O from master-clear, keep CPU in master-clear
0x0071 (0x0000E2) 0x2118-       f:00020 d: 280 | A = OR[280]                   
0x0072 (0x0000E4) 0x2920-       f:00024 d: 288 | OR[288] = A                   
0x0073 (0x0000E6) 0x74E2-       f:00072 d: 226 | R = P + 226 (0x0155)          @ Decide which deadstart method to use and optionally call the editor
0x0074 (0x0000E8) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x0075 (0x0000EA) 0x290F-       f:00024 d: 271 | OR[271] = A                   
0x0076 (0x0000EC) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x0077 (0x0000EE) 0x1608-       f:00013 d:   8 | A = A - 8 (0x0008)            
0x0078 (0x0000F0) 0x291E-       f:00024 d: 286 | OR[286] = A                   
0x0079 (0x0000F2) 0x8202-       f:00101 d:   2 | P = P + 2 (0x007B), C # 0     
0x007A (0x0000F4) 0x2F1D-       f:00027 d: 285 | OR[285] = OR[285] - 1         
0x007B (0x0000F6) 0x0810-       f:00004 d:  16 | A = A > 16 (0x0010)           
0x007C (0x0000F8) 0x230F-       f:00021 d: 271 | A = A & OR[271]               
@ Fill-in the first 4 entries in our local buffer: 0x0000 0x0000 OR[285] OR[286]
0x007D (0x0000FA) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x007E (0x0000FC) 0x391C-       f:00034 d: 284 | (OR[284]) = A                 
0x007F (0x0000FE) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0080 (0x000100) 0x1401-       f:00012 d:   1 | A = A + 1 (0x0001)            
0x0081 (0x000102) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x0082 (0x000104) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0083 (0x000106) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
0x0084 (0x000108) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0085 (0x00010A) 0x1402-       f:00012 d:   2 | A = A + 2 (0x0002)            
0x0086 (0x00010C) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x0087 (0x00010E) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x0088 (0x000110) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
0x0089 (0x000112) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x008A (0x000114) 0x1403-       f:00012 d:   3 | A = A + 3 (0x0003)            
0x008B (0x000116) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x008C (0x000118) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x008D (0x00011A) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
@ Overlay function 35
0x008E (0x00011C) 0x1023-       f:00010 d:  35 | A = 35 (0x0023)               
0x008F (0x00011E) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x0090 (0x000120) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0091 (0x000122) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x0092 (0x000124) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0093 (0x000126) 0x2928-       f:00024 d: 296 | OR[296] = A                   
0x0094 (0x000128) 0x100C-       f:00010 d:  12 | A = 12 (0x000C)               
0x0095 (0x00012A) 0x2929-       f:00024 d: 297 | OR[297] = A                   
0x0096 (0x00012C) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0097 (0x00012E) 0x292A-       f:00024 d: 298 | OR[298] = A                   
0x0098 (0x000130) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x0099 (0x000132) 0x292B-       f:00024 d: 299 | OR[299] = A                   
0x009A (0x000134) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x009B (0x000136) 0x292C-       f:00024 d: 300 | OR[300] = A                   
0x009C (0x000138) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x009D (0x00013A) 0x5800-       f:00054 d:   0 | B = A                         
0x009E (0x00013C) 0x1800-0x1D18 f:00014 d:   0 | A = 7448 (0x1D18)             
0x00A0 (0x000140) 0x7C09-       f:00076 d:   9 | R = OR[9]                     

0x00A1 (0x000142) 0x2119-       f:00020 d: 281 | A = OR[281]                   
0x00A2 (0x000144) 0x2920-       f:00024 d: 288 | OR[288] = A                   
0x00A3 (0x000146) 0x74B2-       f:00072 d: 178 | R = P + 178 (0x0155)          @ Decide which deadstart method to use and optionally call the editor

@ Fill-in the first 4 entries in our local buffer: 0x0000 0x0000 OR[285] OR[286]
0x00A4 (0x000148) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x00A5 (0x00014A) 0x391C-       f:00034 d: 284 | (OR[284]) = A                 
0x00A6 (0x00014C) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00A7 (0x00014E) 0x1401-       f:00012 d:   1 | A = A + 1 (0x0001)            
0x00A8 (0x000150) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x00A9 (0x000152) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x00AA (0x000154) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
0x00AB (0x000156) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00AC (0x000158) 0x1402-       f:00012 d:   2 | A = A + 2 (0x0002)            
0x00AD (0x00015A) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x00AE (0x00015C) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x00AF (0x00015E) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
0x00B0 (0x000160) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00B1 (0x000162) 0x1403-       f:00012 d:   3 | A = A + 3 (0x0003)            
0x00B2 (0x000164) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x00B3 (0x000166) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x00B4 (0x000168) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
@ Overlay function 35
0x00B5 (0x00016A) 0x1023-       f:00010 d:  35 | A = 35 (0x0023)               
0x00B6 (0x00016C) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x00B7 (0x00016E) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x00B8 (0x000170) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x00B9 (0x000172) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x00BA (0x000174) 0x2928-       f:00024 d: 296 | OR[296] = A                   
0x00BB (0x000176) 0x100F-       f:00010 d:  15 | A = 15 (0x000F)               
0x00BC (0x000178) 0x2929-       f:00024 d: 297 | OR[297] = A                   
0x00BD (0x00017A) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00BE (0x00017C) 0x292A-       f:00024 d: 298 | OR[298] = A                   
0x00BF (0x00017E) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x00C0 (0x000180) 0x292B-       f:00024 d: 299 | OR[299] = A                   
0x00C1 (0x000182) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x00C2 (0x000184) 0x292C-       f:00024 d: 300 | OR[300] = A                   
0x00C3 (0x000186) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x00C4 (0x000188) 0x5800-       f:00054 d:   0 | B = A                         
0x00C5 (0x00018A) 0x1800-0x1D18 f:00014 d:   0 | A = 7448 (0x1D18)             
0x00C7 (0x00018E) 0x7C09-       f:00076 d:   9 | R = OR[9]                     

0x00C8 (0x000190) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00C9 (0x000192) 0x1402-       f:00012 d:   2 | A = A + 2 (0x0002)            
0x00CA (0x000194) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x00CB (0x000196) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x00CC (0x000198) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
0x00CD (0x00019A) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00CE (0x00019C) 0x1403-       f:00012 d:   3 | A = A + 3 (0x0003)            
0x00CF (0x00019E) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x00D0 (0x0001A0) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x00D1 (0x0001A2) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
0x00D2 (0x0001A4) 0x3082-       f:00030 d: 130 | A = (OR[130])                 @ Load CIA address
0x00D3 (0x0001A6) 0x13FF-       f:00011 d: 511 | A = A & 511 (0x01FF)          
0x00D4 (0x0001A8) 0x5800-       f:00054 d:   0 | B = A                         
0x00D5 (0x0001AA) 0xE000-       f:00160 d:   0 | IOB , fn000                   @ Clear channel
0x00D6 (0x0001AC) 0xE800-       f:00164 d:   0 | IOB , fn004                   @ Clear ready-waiting
0x00D7 (0x0001AE) 0xE600-       f:00163 d:   0 | IOB , fn003                   @ Clear error flags
0x00D8 (0x0001B0) 0x3083-       f:00030 d: 131 | A = (OR[131])                 @ Load COA address
0x00D9 (0x0001B2) 0x13FF-       f:00011 d: 511 | A = A & 511 (0x01FF)          
0x00DA (0x0001B4) 0x5800-       f:00054 d:   0 | B = A                         
0x00DB (0x0001B6) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x00DC (0x0001B8) 0xE800-       f:00164 d:   0 | IOB , fn004                   @ Release CPU from master-clear
@ Wait for interrupt
0x00DD (0x0001BA) 0x1007-       f:00010 d:   7 | A = 7 (0x0007)                
0x00DE (0x0001BC) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x00DF (0x0001BE) 0x1008-       f:00010 d:   8 | A = 8 (0x0008)                
0x00E0 (0x0001C0) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x00E1 (0x0001C2) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x00E2 (0x0001C4) 0x5800-       f:00054 d:   0 | B = A                         
0x00E3 (0x0001C6) 0x1800-0x1D18 f:00014 d:   0 | A = 7448 (0x1D18)             
0x00E5 (0x0001CA) 0x7C09-       f:00076 d:   9 | R = OR[9]                     

0x00E6 (0x0001CC) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00E7 (0x0001CE) 0x1403-       f:00012 d:   3 | A = A + 3 (0x0003)            
0x00E8 (0x0001D0) 0x2913-       f:00024 d: 275 | OR[275] = A                   
0x00E9 (0x0001D2) 0x2032-       f:00020 d:  50 | A = OR[50]                    
0x00EA (0x0001D4) 0x1401-       f:00012 d:   1 | A = A + 1 (0x0001)            
0x00EB (0x0001D6) 0x2914-       f:00024 d: 276 | OR[276] = A                   
0x00EC (0x0001D8) 0x2032-       f:00020 d:  50 | A = OR[50]                    
0x00ED (0x0001DA) 0x1407-       f:00012 d:   7 | A = A + 7 (0x0007)            
0x00EE (0x0001DC) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x00EF (0x0001DE) 0x2114-       f:00020 d: 276 | A = OR[276]                   
0x00F0 (0x0001E0) 0x2708-       f:00023 d: 264 | A = A - OR[264]               
0x00F1 (0x0001E2) 0x8407-       f:00102 d:   7 | P = P + 7 (0x00F8), A = 0     
0x00F2 (0x0001E4) 0x3114-       f:00030 d: 276 | A = (OR[276])                 
0x00F3 (0x0001E6) 0x3913-       f:00034 d: 275 | (OR[275]) = A                 
0x00F4 (0x0001E8) 0x1004-       f:00010 d:   4 | A = 4 (0x0004)                
0x00F5 (0x0001EA) 0x2B13-       f:00025 d: 275 | OR[275] = A + OR[275]         
0x00F6 (0x0001EC) 0x2D14-       f:00026 d: 276 | OR[276] = OR[276] + 1         
0x00F7 (0x0001EE) 0x720B-       f:00071 d:  11 | P = P - 11 (0x00EC)           
0x00F8 (0x0001F0) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x00F9 (0x0001F2) 0x140B-       f:00012 d:  11 | A = A + 11 (0x000B)           
0x00FA (0x0001F4) 0x2913-       f:00024 d: 275 | OR[275] = A                   
0x00FB (0x0001F6) 0x1800-0x076C f:00014 d:   0 | A = 1900 (0x076C)             
0x00FD (0x0001FA) 0x3B13-       f:00035 d: 275 | (OR[275]) = A + (OR[275])     
0x00FE (0x0001FC) 0x3083-       f:00030 d: 131 | A = (OR[131])                 @ Load COA address
0x00FF (0x0001FE) 0x13FF-       f:00011 d: 511 | A = A & 511 (0x01FF)          
0x0100 (0x000200) 0x5800-       f:00054 d:   0 | B = A                         
0x0101 (0x000202) 0x1018-       f:00010 d:  24 | A = 24 (0x0018)               
0x0102 (0x000204) 0xE400-       f:00162 d:   0 | IOB , fn002                   @ Parcel count 24: that's 6 QWORDS of info - this is incidentally the date-time structure size that the mainframe is waiting for
0x0103 (0x000206) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0104 (0x000208) 0xE200-       f:00161 d:   0 | IOB , fn001                   @ Buffer location, start transfer
0x0105 (0x00020A) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0106 (0x00020C) 0x2921-       f:00024 d: 289 | OR[289] = A                   
0x0107 (0x00020E) 0x2121-       f:00020 d: 289 | A = OR[289]                   
0x0108 (0x000210) 0x160A-       f:00013 d:  10 | A = A - 10 (0x000A)           
0x0109 (0x000212) 0x8413-       f:00102 d:  19 | P = P + 19 (0x011C), A = 0    
0x010A (0x000214) 0x3083-       f:00030 d: 131 | A = (OR[131])                 
0x010B (0x000216) 0x13FF-       f:00011 d: 511 | A = A & 511 (0x01FF)          
0x010C (0x000218) 0x5800-       f:00054 d:   0 | B = A                         
0x010D (0x00021A) 0x4400-       f:00042 d:   0 | C = 1, IOB = DN               
0x010E (0x00021C) 0x8202-       f:00101 d:   2 | P = P + 2 (0x0110), C = 1     
0x010F (0x00021E) 0x7002-       f:00070 d:   2 | P = P + 2 (0x0111)            
0x0110 (0x000220) 0x7010-       f:00070 d:  16 | P = P + 16 (0x0120)           
@ Wait for interrupt
0x0111 (0x000222) 0x1007-       f:00010 d:   7 | A = 7 (0x0007)                
0x0112 (0x000224) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x0113 (0x000226) 0x1001-       f:00010 d:   1 | A = 1 (0x0001)                
0x0114 (0x000228) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x0115 (0x00022A) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x0116 (0x00022C) 0x5800-       f:00054 d:   0 | B = A                         
0x0117 (0x00022E) 0x1800-0x1D18 f:00014 d:   0 | A = 7448 (0x1D18)             
0x0119 (0x000232) 0x7C09-       f:00076 d:   9 | R = OR[9]                     

0x011A (0x000234) 0x2D21-       f:00026 d: 289 | OR[289] = OR[289] + 1         
0x011B (0x000236) 0x7214-       f:00071 d:  20 | P = P - 20 (0x0107)           
@ Return from overlay with exit code 1617
0x011C (0x000238) 0x1800-0x0651 f:00014 d:   0 | A = 1617 (0x0651)             
0x011E (0x00023C) 0x291B-       f:00024 d: 283 | OR[283] = A                   
0x011F (0x00023E) 0x7019-       f:00070 d:  25 | P = P + 25 (0x0138)           
@ Successfully transferred date(?) structure
0x0120 (0x000240) 0x3083-       f:00030 d: 131 | A = (OR[131])                 @ Load COA address
0x0121 (0x000242) 0x13FF-       f:00011 d: 511 | A = A & 511 (0x01FF)          
0x0122 (0x000244) 0x5800-       f:00054 d:   0 | B = A                         
0x0123 (0x000246) 0xE000-       f:00160 d:   0 | IOB , fn000                   @ Clear channel
0x0124 (0x000248) 0xEE00-       f:00167 d:   0 | IOB , fn007                   @ Enable channel interrupts
0x0125 (0x00024A) 0x3082-       f:00030 d: 130 | A = (OR[130])                 @ Load CIA address
0x0126 (0x00024C) 0x13FF-       f:00011 d: 511 | A = A & 511 (0x01FF)          
0x0127 (0x00024E) 0x5800-       f:00054 d:   0 | B = A                         
0x0128 (0x000250) 0xE000-       f:00160 d:   0 | IOB , fn000                   @ Clear channel
0x0129 (0x000252) 0xEE00-       f:00167 d:   0 | IOB , fn007                   @ Enable channel interrupts
0x012A (0x000254) 0x3083-       f:00030 d: 131 | A = (OR[131])                 @ Load COA address
0x012B (0x000256) 0x1A00-0xEFFF f:00015 d:   0 | A = A & 61439 (0xEFFF)        @ Clear MSB
0x012D (0x00025A) 0x3883-       f:00034 d: 131 | (OR[131]) = A                 @ And write it back - apparently thre's a bit there saying if the channel is initialized and ready for normal communication with the mainframe
@ Calling overlay CRAY
0x012E (0x00025C) 0x1028-       f:00010 d:  40 | A = 40 (0x0028)               
0x012F (0x00025E) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x0130 (0x000260) 0x1800-0x0017 f:00014 d:   0 | A = 23 (0x0017)               
0x0132 (0x000264) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x0133 (0x000266) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x0134 (0x000268) 0x5800-       f:00054 d:   0 | B = A                         
0x0135 (0x00026A) 0x1800-0x1D18 f:00014 d:   0 | A = 7448 (0x1D18)             
0x0137 (0x00026E) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
@ Return from overlay, but free memory first
0x0138 (0x000270) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x0139 (0x000272) 0x8602-       f:00103 d:   2 | P = P + 2 (0x013B), A # 0     
0x013A (0x000274) 0x7009-       f:00070 d:   9 | P = P + 9 (0x0143)            
@ Calling overlay function 25 - free memory
0x013B (0x000276) 0x1019-       f:00010 d:  25 | A = 25 (0x0019)               
0x013C (0x000278) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x013D (0x00027A) 0x211C-       f:00020 d: 284 | A = OR[284]                   
0x013E (0x00027C) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x013F (0x00027E) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x0140 (0x000280) 0x5800-       f:00054 d:   0 | B = A                         
0x0141 (0x000282) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0142 (0x000284) 0x7C09-       f:00076 d:   9 | R = OR[9]                     

0x0143 (0x000286) 0x211B-       f:00020 d: 283 | A = OR[283]                   
0x0144 (0x000288) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0146), A = 0     
0x0145 (0x00028A) 0x7005-       f:00070 d:   5 | P = P + 5 (0x014A)            
0x0146 (0x00028C) 0x3083-       f:00030 d: 131 | A = (OR[131])                 @ Load COA address
0x0147 (0x00028E) 0x1A00-0xEFFF f:00015 d:   0 | A = A & 61439 (0xEFFF)        @ Clear MSB
0x0149 (0x000292) 0x3883-       f:00034 d: 131 | (OR[131]) = A                 @ And writing it back - well, we've done that just before, above
@ Return from overlay, return value is comming from OR[283]
0x014A (0x000294) 0x2005-       f:00020 d:   5 | A = OR[5]                     
0x014B (0x000296) 0x1406-       f:00012 d:   6 | A = A + 6 (0x0006)            
0x014C (0x000298) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x014D (0x00029A) 0x211B-       f:00020 d: 283 | A = OR[283]                   
0x014E (0x00029C) 0x3908-       f:00034 d: 264 | (OR[264]) = A                 
0x014F (0x00029E) 0x102A-       f:00010 d:  42 | A = 42 (0x002A)               
0x0150 (0x0002A0) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x0151 (0x0002A2) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x0152 (0x0002A4) 0x5800-       f:00054 d:   0 | B = A                         
0x0153 (0x0002A6) 0x1000-       f:00010 d:   0 | A = 0 (0x0000)                
0x0154 (0x0002A8) 0x7C09-       f:00076 d:   9 | R = OR[9]                     

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@ Decide which deadstart method to use, and optionally call the editor
@@ Input: OR[288] - pointer to boot device string
@@        OR[281] - ???
@@        OR[282] - ???
0x0155 (0x0002AA) 0x2120-       f:00020 d: 288 | A = OR[288]                   
0x0156 (0x0002AC) 0x2719-       f:00023 d: 281 | A = A - OR[281]               
0x0157 (0x0002AE) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0159), A = 0     
0x0158 (0x0002B0) 0x701A-       f:00070 d:  26 | P = P + 26 (0x0172)           
0x0159 (0x0002B2) 0x211A-       f:00020 d: 282 | A = OR[282]                   
0x015A (0x0002B4) 0x1602-       f:00013 d:   2 | A = A - 2 (0x0002)            
0x015B (0x0002B6) 0x8402-       f:00102 d:   2 | P = P + 2 (0x015D), A = 0     
0x015C (0x0002B8) 0x7016-       f:00070 d:  22 | P = P + 22 (0x0172)           
@ Calling overlay EDIT1
0x015D (0x0002BA) 0x1028-       f:00010 d:  40 | A = 40 (0x0028)               
0x015E (0x0002BC) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x015F (0x0002BE) 0x1800-0x00C7 f:00014 d:   0 | A = 199 (0x00C7)              
0x0161 (0x0002C2) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x0162 (0x0002C4) 0x2120-       f:00020 d: 288 | A = OR[288]                   
0x0163 (0x0002C6) 0x2928-       f:00024 d: 296 | OR[296] = A                   
0x0164 (0x0002C8) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x0165 (0x0002CA) 0x5800-       f:00054 d:   0 | B = A                         
0x0166 (0x0002CC) 0x1800-0x1D18 f:00014 d:   0 | A = 7448 (0x1D18)             
0x0168 (0x0002D0) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
@ If edit returned a non-0 return code, exit from overlay with that return code
0x0169 (0x0002D2) 0x291B-       f:00024 d: 283 | OR[283] = A                   
0x016A (0x0002D4) 0x211B-       f:00020 d: 283 | A = OR[283]                   
0x016B (0x0002D6) 0x8602-       f:00103 d:   2 | P = P + 2 (0x016D), A # 0     
0x016C (0x0002D8) 0x7002-       f:00070 d:   2 | P = P + 2 (0x016E)            
0x016D (0x0002DA) 0x7235-       f:00071 d:  53 | P = P - 53 (0x0138)           
@ Edit was successful
0x016E (0x0002DC) 0x1800-0x00E3 f:00014 d:   0 | A = 227 (0x00E3)              @ overlay E3 is START1 - deadstart from MOS
0x0170 (0x0002E0) 0x2923-       f:00024 d: 291 | OR[291] = A                   
0x0171 (0x0002E2) 0x7014-       f:00070 d:  20 | P = P + 20 (0x0185)           
@ Read boot device name and decide which overlay to load
0x0172 (0x0002E4) 0x3120-       f:00030 d: 288 | A = (OR[288])                 
0x0173 (0x0002E6) 0x2922-       f:00024 d: 290 | OR[290] = A                   
0x0174 (0x0002E8) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x0175 (0x0002EA) 0x1E00-0x4D54 f:00017 d:   0 | A = A - 19796 (0x4D54)        @ Compare to string 'MT'
0x0177 (0x0002EE) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0179), A = 0     
0x0178 (0x0002F0) 0x7005-       f:00070 d:   5 | P = P + 5 (0x017D)            
0x0179 (0x0002F2) 0x1800-0x00E4 f:00014 d:   0 | A = 228 (0x00E4)              @ overlay E4 is START2 - deadstart from TAPE
0x017B (0x0002F6) 0x2923-       f:00024 d: 291 | OR[291] = A                   
0x017C (0x0002F8) 0x7009-       f:00070 d:   9 | P = P + 9 (0x0185)            
0x017D (0x0002FA) 0x2122-       f:00020 d: 290 | A = OR[290]                   
0x017E (0x0002FC) 0x1E00-0x444B f:00017 d:   0 | A = A - 17483 (0x444B)        @ Compare to string 'DK'
0x0180 (0x000300) 0x8402-       f:00102 d:   2 | P = P + 2 (0x0182), A = 0     
0x0181 (0x000302) 0x7004-       f:00070 d:   4 | P = P + 4 (0x0185)            
0x0182 (0x000304) 0x1800-0x00E5 f:00014 d:   0 | A = 229 (0x00E5)              @ overlay E5 is START3 - deadstart from DISK
0x0184 (0x000308) 0x2923-       f:00024 d: 291 | OR[291] = A                   
@ Calling overlay STARTxx
0x0185 (0x00030A) 0x1028-       f:00010 d:  40 | A = 40 (0x0028)               
0x0186 (0x00030C) 0x2926-       f:00024 d: 294 | OR[294] = A                   
0x0187 (0x00030E) 0x2123-       f:00020 d: 291 | A = OR[291]                   
0x0188 (0x000310) 0x2927-       f:00024 d: 295 | OR[295] = A                   
0x0189 (0x000312) 0x2120-       f:00020 d: 288 | A = OR[288]                   
0x018A (0x000314) 0x2928-       f:00024 d: 296 | OR[296] = A                   
0x018B (0x000316) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x018C (0x000318) 0x2929-       f:00024 d: 297 | OR[297] = A                   
0x018D (0x00031A) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x018E (0x00031C) 0x292A-       f:00024 d: 298 | OR[298] = A                   
0x018F (0x00031E) 0x1126-       f:00010 d: 294 | A = 294 (0x0126)              
0x0190 (0x000320) 0x5800-       f:00054 d:   0 | B = A                         
0x0191 (0x000322) 0x1800-0x1D18 f:00014 d:   0 | A = 7448 (0x1D18)             
0x0193 (0x000326) 0x7C09-       f:00076 d:   9 | R = OR[9]                     
@ If STARTxx returned with a non-0 return code, pass that on and return from overlay
0x0194 (0x000328) 0x291B-       f:00024 d: 283 | OR[283] = A                   
0x0195 (0x00032A) 0x211B-       f:00020 d: 283 | A = OR[283]                   
0x0196 (0x00032C) 0x8602-       f:00103 d:   2 | P = P + 2 (0x0198), A # 0     
0x0197 (0x00032E) 0x7002-       f:00070 d:   2 | P = P + 2 (0x0199)            
0x0198 (0x000330) 0x7260-       f:00071 d:  96 | P = P - 96 (0x0138)           
@ STARTxx was successful
0x0199 (0x000332) 0x2120-       f:00020 d: 288 | A = OR[288]                   
0x019A (0x000334) 0x1412-       f:00012 d:  18 | A = A + 18 (0x0012)           
0x019B (0x000336) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x019C (0x000338) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x019D (0x00033A) 0x2924-       f:00024 d: 292 | OR[292] = A                   
0x019E (0x00033C) 0x2120-       f:00020 d: 288 | A = OR[288]                   
0x019F (0x00033E) 0x1413-       f:00012 d:  19 | A = A + 19 (0x0013)           
0x01A0 (0x000340) 0x2908-       f:00024 d: 264 | OR[264] = A                   
0x01A1 (0x000342) 0x3108-       f:00030 d: 264 | A = (OR[264])                 
0x01A2 (0x000344) 0x2925-       f:00024 d: 293 | OR[293] = A                   
0x01A3 (0x000346) 0x211D-       f:00020 d: 285 | A = OR[285]                   
0x01A4 (0x000348) 0x2524-       f:00022 d: 292 | A = A + OR[292]               
0x01A5 (0x00034A) 0x291D-       f:00024 d: 285 | OR[285] = A                   
0x01A6 (0x00034C) 0x211E-       f:00020 d: 286 | A = OR[286]                   
0x01A7 (0x00034E) 0x2525-       f:00022 d: 293 | A = A + OR[293]               
0x01A8 (0x000350) 0x291E-       f:00024 d: 286 | OR[286] = A                   
0x01A9 (0x000352) 0x8002-       f:00100 d:   2 | P = P + 2 (0x01AB), C = 0     
0x01AA (0x000354) 0x2D1D-       f:00026 d: 285 | OR[285] = OR[285] + 1         
0x01AB (0x000356) 0x0200-       f:00001 d:   0 | EXIT                          
0x01AC (0x000358) 0x0000-       f:00000 d:   0 | PASS                          
0x01AD (0x00035A) 0x0000-       f:00000 d:   0 | PASS                          
0x01AE (0x00035C) 0x0000-       f:00000 d:   0 | PASS                          
0x01AF (0x00035E) 0x0000-       f:00000 d:   0 | PASS                          
