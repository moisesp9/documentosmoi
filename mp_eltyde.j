#!/bin/csh
#                                 SPECTRUM: CSH
# Copyright (C) Siemens AG 1992-2014 All Rights Reserved.Confidential
#
# $NewRev$
# 220721 krue: element types 3154 added
# 220615 krue: element types 3012,3039 deleted
# 220408 krue: element types 3036..3042 for GAS commands inserted
# 220406 krue: element types 3027..3035 for GAS messages inserted
# 220119 krue: element types 2809,3026,3148 added for E,G,A calcs
# 220117 krue: element types 2810,3025,3149 added for E,G,A dummy messages
# 211117 krue: element type 3180 deleted
# 211102 krue: new element types 3134,3059,3058,3057,3056,3055,3054,3053
#              3052,3051,3050
# 210906 krue: element type 2999 as reduced block mark
# 210818 krue: element type 2905 as duplicate of 2342 inserted for PHASE2
# 210604 krue: insert write-clear statements at end of each element type
# 210428 krue: element types 2495,2496,2497,2498,2499,2500,2501 inserted
# 210427 krue: element types 2491,2492,2493,2494 inserted
# 210427 krue: element types 1617,1637,1657,1677,1697,1717,1737 inserted
# 201209 krue: element type 2000 OMSnc inserted
# 210130 krue: element type 3024 inserted
# 210126 krue: element types 2209..2213 inserted
# 201120 krue: element types 3018..3023 inserted
# 201119 frim: element type 2900 - 2904: swType back to original
# 201001 krue: element type 3017 inserted
# 200930 krue: element types 3008,3016 inserted
# 200709 gief: new types: 1950-1951, 2390, 3311-3376
# 200625 gief: new types: 1614-1616,1634-1436,1654-1656,1674-1676,
#                         1694-1696,1714-1716,1734-1736,2421-2490
# 200605 krue: element type 3015 inserted
# 200528 krue: element types 3155..3160,3165..3170,3175..3180 added
# 200423 krue: element types 3133 added
# 200302 krue: element types 2881,2885 corrected
# 200227 krue: element types 2881,2885 inserted
# 200211 krue: element type 3009 inserted
#              element type 3009,3010 noSwitch
# 191203 krue: element types 2000,2001,2010,2011,2012,2013,2014,
#              2075,2076,2077,2078,2079,2711,2712,2713,2723 deleted
# 191118 krue: element types 3154 deleted
# 191104 krue: element types 3530..3538 deleted
# 191016 krue: element types tSPME-01..06,2811..2816 inserted
#              element type  tALM1-01..06,2821..2826 inserted
#              element types tALM2-01..06,2831..2836 inserted
#              element types tALM3-01..06,2841..2846 inserted
#              element types tALM4-01..06,2851..2856 inserted
#              element types tALM5-01..06,2861..2866 inserted
#              element types tALM6-01..06,2871..2876 inserted
# 191001 krue: element types defined as not topological:
#              3530, 3531, 3533, 3534, 3535, 3536, 3537, 3538
#              3135, 3136, 3138, 3139, 3140, 3141, 3142, 3143, 3150
# 190930 krue: element type 3154 for calculated distubed
# 190830 krue: element types 3530..3538 without monitor
# 190826 krue: new WATER element type 3012..3014 for valve switches
# 190722 krue: new WATER element type 3153 ValvVirNG
# 190716 krue: new WATER element type 3132 W6sOpPar
# 190627 krue: take out delete comments
# 190603 bark: new element types 2020..2023 for program alarm indication
# 190508 krue: elem types 3150..3152 for necessary internal calculations
# 190528 hisc sp7-scada_v.02.20_df_ems00095974_eltyde_vie: brackets
# 190326 tens: for MRedes dublicate some el.types but use noSwitch while
#              they are not topologically correct connected. Has to be
#              switched back when they get correct topology.      te04
# 190121 tens: WATER final changes
# 181114 bark: EPM: ET 2208 von Breaker auf noSwitch geaendert
# 180823 tens: EPM: Water-messages 3060..3090
# 180725 tens: EPM: Gas-messages 3000..3050
# 180412 bark: New ETypes 2010..2014 and 2075..2079
# 180411 bark: New ETypes for grounding devices 2400..2410
# 180308 bark: EPM Project Area starts with 2000
# 180405 ggraves sp7-iccp_v02.20_df_ems00100821_comm_alarms_msp Pick up EMS00091223
# 180402 ggraves: sp7-iccp_v02.10_df_ems00091223_comm_alarms_msp
# 160906 schg: sp7-scada_v02.10_fu_ems00078189_new_devices_vie TopoBatt(433)
# 160722 avafaei sp7-ifs_v02.10_fu_ems00072260_scan_group_relation_msp Pick up EMS00072260
# 160621 avafaei:sp7-ifs_v02.00_fu_ems00072260_scan_group_relation_msp
#               Added IFS_SG element 685, and supporting information
# 160318 Venkat: sp7-any_v02.00_fu_ems00069358_snmp_rel_blr
#                 Added new element type SNMPStat(954)
#  7Aug2015 CReimann: sp7-immgtw_v01.30_df_ems00064524_agc_xfr_msp
#      New elements, types and infos from MGMS ems00054331, some for AGC.
# 150706 Vikas :sp7-base_v01.30_fu_ems00060169_alarm_ta_blr
#                TA for oracle redundancy monitoring
# 150114 heiner: sp7-baps_v01.20_df_ems00057776_nbg
#                add comment for InRefmax
# 150113 tens: ems58605 add element type equivalent injection CpEquivInj
# 141208 dlundber:spc-iccp_v01.20_df_ems00058071_clui_msp
# 141208 dlundber:spc-iccp_v01.00_df_ems00040093_iccp_pseudo_msp
# 10May2013 CReimann: sp7-ots_v01.00_fu_ems00037328_ots_alarms_msp
#      Add new alarm element type AlrmDNGR (# 469) as neMessage5.
# 130610 schg: sp7-data_v01.10_df_ems00040612_fuse_vie add swtype fuse
# 121211 dimm: sp7-om_v01.10_fu_ems00034842_wp_311_1_vie add key 1741 for OM List
# 120416 schg: sp7-data_v01.00_fu_ems735_tm-scada-param_vie  adapt types
#              neAlarm2 used for fault indicator / direction (CDNA)
# 120926 mdehnnix sp7-any_v01.00_fu_ems00001028_msp: Add load shed
# 120307 aturke bof-any_v01.00_fu_ems271_secmon_msp
# 120102 tens: BestOf disk monitor support
# 110817 Team bof-any_v01.00_fu_ems223_base_110810_vie: P470 merge
# 110804 tens: BestOf ems007 Power 3 web server
# 110411 tens: MultiPhase ems178 types added
# 110303 Klein: bf-sh_his : add eltype 477, EnhSyStat for HIS
# 110302 SRo feat-SR47_pe1003_IFS: Added IFSState eltype 480
# 071129 wolff: feat-ui_6873_autodisp: Elemtype=476 added (OPswitch)
# 070904 Christa: feat-oa_4722_truck_location: element typ 961 'Ev Truck'
# 060406 kopp: bf-35109: new elementtyps 188,189,190 for sectioners
# 060310 stefkz: spr35109, sw_sectioner added to ELTYDE.
# 050302 hagl: feat-SR45_09_32593_disp: Elemtype = 952 added
# 040713 ashaqiri: Element type=51  CBFdH added.
# 040121 kien feat-tci-iec101_dial :
#   shift Elemtype=1160 TcMgrDUP from Projectarea to
#         Elemtype=960 in Standardarea
# 040115 butke : modified to keep standard compatible
# 020604 fahrig: add Elemtype = 1160 TcMgrDUP
# 020304 grohmann: update TCI status informations for IBERDROLA
# 020114 sche spr-26818: Element types 950 and 951 added.
# 011218 grohmann: Additional TCI status informations for IBERDROLA
# 011009 grohmann: SPR27212 - Elemtype=491 TcLru101 added for IEC101
# 010925 Neidhardt: Elemtype=490 TcLruTG8 for TG800 Protocol added
# 000412 hara spr23360: ElemtypL=48: SwType changed: Breaker->noSwitch
# 000208 hara : Elemtype=620: SwType = Breaker -> noSwitch
# 991125 hara : Comment for new element types inserted (find attention)
# 991015 form : spr-21694 : Change CpHauseSupply to CpCoupling
# 990623 Klein: bf-20714 add SWpseu type 457.
# 980629 kamm: Elementtyp for TCI modified:
#              . TcLruSYC=488 RTU-Server Fa. SYCOMP;
#                Parameter .CmpType = noComponent added
# 980625 kamm: Elementtyp for TCI added:
#              Type for Lru-statusinformations
#              TcLruSYC=488 RTU-Server Fa. SYCOMP
# 980415 kamm: Elementtyp for TCI added:
#              Type for Dev-statusinformations
#              TcDevTra=486 Transport Connection (WAN)
# 980323 hara spr-15691: 'clear' inserted after elementtype 6,431
#                        because of parameter cmptype
# $NewRevEnd$
#
# Attention!!!
# Please insert for new or changed element types also a 'long comment'
# description in ..$SPECPATH/src/param/baps/odb/fillrel/eltyde_longcom.sql
#
#

set RELNAME = "ELTYDE"

source $SPECPATH/src/param/param_scripts/JOB_PART1


$P/bq >>& $JL                        <<BQEND

rel ELTYDE
exe job $0

x
BQEND

set JOBST = $status
source $SPECPATH/src/param/param_scripts/JOB_PART2

exit

$BQ
rel ELTYDE
open
clear

rel ELTYDE
.Elemtype=   1 { Name= 'LK State'                     }
.NoElType  = neRTXstat    { standard element type                   }
.InfoRef   = 1            { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   2 { Name= 'DevState                      }
.NoElType  = neDevice     { standard element type                   }
.InfoRef   = 2            { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   3 { Name= 'ComState'                     }
.NoElType  = neCompStat   { standard element type                   }
.InfoRef   = 3            { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   4 { Name= 'RTxState'                     }
.NoElType  = neRTXstat    { standard element type                   }
.InfoRef   = 4            { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   5 { Name= 'BlocTags'                     }
.NoElType  = neUnivers    { standard element type                   }
.InfoRef   = 5            { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   6 { Name= 'TopElem '                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 6            { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { type of component                       }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;
clear

.Elemtype=   7 { Name= 'BlocStat'                     }
.NoElType  = neUnivers    { standard element type                   }
.InfoRef   = 7            { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  38 { Name= 'DataSave'                     }
.NoElType  = neEnhSyStat  { standard element type                   }
.InfoRef   = 38           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  39 { Name= 'RTX SB  '  TCI/RTU state      }
.NoElType  = neRTXstat    { standard element type                   }
.InfoRef   = 39           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  40 { Name= 'CB      '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 40           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  41 { Name= 'CB LRel '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 41           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  42 { Name= 'CB muAb '                      }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 42           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  43 { Name= 'CB GENtc'          }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 43           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  44 { Name= 'CB LR Ab'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 44           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  45 { Name= 'Iso     '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 45           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  47 { Name= 'Iso ts  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 47           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  48 { Name= 'Sli tc  '      slider             fm,fs        }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =  48          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_sectioner = false     { element switch to sectioner             }
.sw_earth  = false
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  49 { Name= 'Sw noTop'    switch with no topology  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 49           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_sectioner = false     { element switch to sectioner             }
.sw_earth  = false
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  50 { Name= 'Iso tsAl'    isolator           fm    Alarm }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 50           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 51 { Name= 'CBFdH   '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 51           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 57 { Name= 'DskMon  '                     }
.NoElType  = neDevice     { standard element type                   }
.InfoRef   = 57           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  58 { Name= 'M1Int   '                     }
.NoElType  = neMessage1   { standard element type                   }
.InfoRef   = 58           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  59 { Name= 'M1IntLim'                     }
.NoElType  = neMessage1   { standard element type                   }
.InfoRef   = 59           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  60 { Name= 'TapCh Vc'    with Voltage control  }
.NoElType  = neTapChan    { standard element type                   }
.InfoRef   = 60           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  61 { Name= 'TapCh   '                     }
.NoElType  = neTapChan    { standard element type                   }
.InfoRef   = 61           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  62 { Name= 'TapChGen'          generators }
.NoElType  = neTapChan    { standard element type                   }
.InfoRef   = 62           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  63 { Name= 'BlocT1BB'                     }
.NoElType  = neUnivers    { standard element type                   }
.InfoRef   = 63           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  64 { Name= 'BlocT2BB'                     }
.NoElType  = neUnivers    { standard element type                   }
.InfoRef   = 64           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  65 { Name= 'BlocT3BB'                     }
.NoElType  = neUnivers    { standard element type                   }
.InfoRef   = 65           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  66 { Name= 'Dst Prot'                     }
.NoElType  = neProtect    { standard element type                   }
.InfoRef   = 66           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  67 { Name= 'Fus  ts '                              }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 67           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  69 { web server application status       }
.NoElType  = neDevice     { standard element type                   }
.InfoRef   = 69           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  70 { Name= 'Logon/of'                     }
.NoElType  = neDevice     { standard element type                   }
.InfoRef   = 70           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  71 { Name= 'EaFlt 1 '                     }
.NoElType  = neAlarm1     { standard element type                   }
.InfoRef   = 71           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  72 { Name= 'SP Mess '  mess.setpoint contr}
.NoElType  = neMessage1   { standard element type                   }
.InfoRef   = 72           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  75 { Name= 'TraMo123'                     }
.NoElType  = neMessage1   { standard element type                   }
.InfoRef   = 75           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  76 { Name= 'TraMo12 '                     }
.NoElType  = neMessage1   { standard element type                   }
.InfoRef   = 76           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  77 { Name= 'AGC Mess'                     }
.NoElType  = neMessage2   { standard element type                   }
.InfoRef   = 77           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;


.Elemtype=  79 { Name= 'SYNC dev'                     }
.NoElType  = neMessage1   { standard element type                   }
.InfoRef   = 79           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  188 { Name= 'SecIs tc'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 188          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  189 { Name= 'SecIs ts'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 189          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 190 { Name= 'SecIs mu'                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 190          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   416 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 416          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = noComponent  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   417 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 417          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   418 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 418          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpConnNode   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   419 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 419          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGround     { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   420 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 420          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpBusbar     { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   421 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 421          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpAuxiBusbar { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   422 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 422          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCombiBusbar { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   423 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 423          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGenerator  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   424 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 424          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpInjection  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   425 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 425          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   426 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 426          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCoupling   { Component type of operational devices   }    {21694}
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   427 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 427          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCompensator { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   428 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 428          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpPetersenCoil { Component type of operational devices }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   429 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 429          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   430 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 430          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   431 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 431          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpThreeWindings { Component type of operational devices}
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;
clear

.Elemtype=   432 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 432          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpEquivInj   { Component type of operational devices }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   433 { Topologic area                     }
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 433          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpBattery    { Component type of operational devices }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 457 { Name= 'SWpseu  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 457          { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 280 { Name= 'LB tc   '       Load break sw      ts,tc    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 280          { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 281 { Name= 'LB ts   '       Load break sw      ts       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 281          { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 282 { Name= 'LB muAb '       Load break sw      mu   Abno}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 282          { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 283 { Name= 'Sw muAb '       switch             mu   Abno}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 283          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 284 { Name= 'SGT tc  '       switchgear truck   ts,tc    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 284          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 285 { Name= 'SGT ts  '       switchgear truck   ts       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 285          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 286 { Name= 'Earth mu'       earth              mu       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 286          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 287 { Name= 'CB mu   '       C. Breaker         mu       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 287          { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 288 { Name= 'LB mu   '       Load breaker       mu       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 288          { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 289 { Name= 'Sw mu   '       switch             mu       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 289          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

                                     { fleet - events               }
                                     { NoElType = neMessage5        }
.Elemtype= 290 { Name= 'Fl GS   '       Fleet                       }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 290          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

                                  { NoElType = neMessage3           }
.Elemtype= 295 { Name= 'SCd 1   '       Cmd single pole    GS       }
.NoElType  = neMessage3   { standard element type                   }
.InfoRef   = 295          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 297 { Name= 'DCd OnOf'       Cmd double pole    GS on/off }
.NoElType  = neMessage3   { standard element type                   }
.InfoRef   = 297          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;


.Elemtype= 440 { Name= 'CB ts   '       CB                 ts       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =440           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 441 { Name= 'Fus tsAb'     fusible breaker 1 pole ts Abn }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =441           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 444 { Name= 'CB tcAb '       CB              ts,tc Abno  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =444           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 445 { Name= 'LB-tcAb '       load break sw      ts,tc,Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =445           { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 446 { Name= 'SGT tsAl'       switchgear truck   ts    Ala}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =446           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 447 { Name= 'Earth tc'       earth              ts,tc    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =447           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 448 { Name= 'Earth ts'       earth              ts       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =448           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 449 { Name= 'CB tsAb '       CB                 ts,   Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =449           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 450 { Name= 'LB tsAb '       Load-break sw      ts,   Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =450           { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 451 { Name= 'Iso tcAb'       iso                ts,tc Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =451           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 452 { Name= 'Iso tsAb'       iso                ts,   Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =452           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 453 { Name= 'SGT tcAb'       switchgear truck   ts,tc Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =453           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 454 { Name= 'SGT tsAb'       switchgear truck   ts,   Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =454           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 455 { Name= 'Compens1'       Compensator                 }
.NoElType  = neTapChan    { standard element type                   }
.InfoRef   =455           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 456 { Name= 'Iso mu  '       iso                mu       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 456          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 461 { Name= 'EaDir 1 '       e. fault direction ts GS Gr }
.NoElType  = neAlarm1     { standard element type                   }
.InfoRef   =461           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 462 { Name= 'pEaFlt  '      persistent efault ts GS,L3Q GrQQ}
.NoElType  = neAlarm1     { standard element type                   }
.InfoRef   =462           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 465 { Name= 'DiffProt'     protection device             }
.NoElType  = neProtect    { standard element type                   }
.InfoRef   =465           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 466 { Name= 'PhasProt'       Protection device           }
.NoElType  = neProtect    { standard element type                   }
.InfoRef   =466           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 467 { Name= 'BusbProt'     Protection device             }
.NoElType  = neProtect    { standard element type                   }
.InfoRef   = 467          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 468 { Name= 'GenProt '     Protection device appear/disapp}
.NoElType  = neProtect    { standard element type                   }
.InfoRef   = 468          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;


.Elemtype= 469 { Name= 'AlrmDNGR'       General alarms     ts       }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   =469           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 470 { Name= 'Ax-ts   '       Auxiliary devices  ts       }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   =470           { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;


.Elemtype= 474 { Name= 'TimeProt'     Protection device             }
.NoElType  = neProtect    { standard element type                   }
.InfoRef   = 474          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 476 { Name= 'OPswitch'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 476          { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 477 { Name= 'HIS     '                     }
.NoElType  = neEnhSyStat  { standard element type                   }
.InfoRef   = 477          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;
                          {     Elementtypes for IFS-function       }
                          { --------------------------------------- }
.Elemtype  = 480 {Name= 'IFSState'                                  }
.NoElType  = neElcStat    { standard element type                   }
.InfoRef   =  480         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = noComponent  { Component type of operational devices   }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;


.Elemtype  = 481 {Name= 'IFSSgSta'                                  }
.NoElType  = neElcStat    { standard element type                   }
.InfoRef   =  481         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = noComponent  { Component type of operational devices   }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;


.Elemtype=   498 { Name= 'ElcState'       ELCOM connections         }
.NoElType  = neElcStat    { standard element type                   }
.InfoRef   = 498          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   499 { Name= 'SysState'       subsystem status          }
.NoElType  = neEnhSyStat  { standard element type                   }
.InfoRef   = 499          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType  = 649          { IccpStat, Data Link Status - Oper       }
.NoElType  = neAlarm3     { standard element type                   }
.InfoRef   = 649          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.NetstatLim= false        { element is network station limit        }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ 180402 }
.ElemType  = 650          { IccpAdmi, Data Link Status - Admin      }
.NoElType  = neAlarm3     { standard element type                   }
.InfoRef   = 650          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.NetstatLim= false        { element is network station limit        }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 700 { Name= 'CBE     '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 700          { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 701 { Name= 'CBEmuAb '                      }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 701          { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 702 { Name= 'IsoEtsAl'    isolator           fm    Alarm }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 702          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 703 { Name= 'SwEmuAb '       switch             mu   Abno}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 703          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 704 { Name= 'CBEmu   '       C. Breaker         mu       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 704          { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 705 { Name= 'SwEmu   '       switch             mu       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 705          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 706 { Name= 'CBEts   '       CB                 ts       }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =706           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 707 { Name= 'CBEtsAb '       CB                 ts,   Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =707           { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 708 { Name= 'IsoEtcAb'       iso                ts,tc Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =708           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 709 { Name= 'IsoEtsAb'       iso                ts,   Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =709           { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;


.Elemtype= 880 { Name='AGCStat ' AGC Status                ts tc    }
.NoElType  = neALARM3     { standard element type                   }
.InfoRef   = 880          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 881 { Name='AGCLocRm' AGC Local Remote state    ts tc    }
.NoElType  = neALARM3     { standard element type                   }
.InfoRef   = 881          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 882 { Name='AGCUnStU' AGC Unit Start-Up command ts tc    }
.NoElType  = neALARM3     { standard element type                   }
.InfoRef   = 882          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 883 { Name='AGCUnShD' AGC Unit Shut-Down commnd ts tc    }
.NoElType  = neALARM3     { standard element type                   }
.InfoRef   = 883          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 884 { Name='AGCUnMWR' AGC Unit MW               ts tc    }
               {                    Local/Remote control            }
.NoElType  = neALARM3     { standard element type                   }
.InfoRef   = 884          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 885 { Name='AGCUnMVR' AGC Unit MVAR             ts tc    }
               {                    Local/Remote control            }
.NoElType  = neALARM3     { standard element type                   }
.InfoRef   = 885          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 886 { Name='AGCUnVRT' AGC Unit Low-Voltage      ts tc    }
               {         Ride-Through enable/disable switch control }
.NoElType  = neALARM3     { standard element type                   }
.InfoRef   = 886          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 887 { Name='AGCUnFRT' AGC Unit Frequency        ts tc    }
               {         Ride-Through enable/disable switch control }
.NoElType  = neALARM3     { standard element type                   }
.InfoRef   = 887          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 888 { Name='AGCArCtS' AGC Area Control Switch  ts tc     }
.NoElType  = neALARM3     { standard element type                   }
.InfoRef   = 888          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{Elemtype=889..894                     RESERVED for AGC alarms         }

{Elemtype=895..899                     AGC analogs, see mv_etypname.j  }


.Elemtype=  942 { Name= 'OFI_F   '                     }
.NoElType  = neAlarm2     { standard element type                   }
.InfoRef   = 942          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquOCFltInd  { type of equipment                       }
.EquLocType= LocBegin     { location, if required for e.g. equipment}
write; clear;
clear

.Elemtype=  943 { Name= 'OFI_T   '                     }
.NoElType  = neAlarm2     { standard element type                   }
.InfoRef   = 943          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquOCFltInd  { type of equipment                       }
.EquLocType= LocEnd       { location, if required for e.g. equipment}
write; clear;
clear

.Elemtype=  944 { Name= 'OFDir_F '                     }
.NoElType  = neAlarm2     { standard element type                   }
.InfoRef   = 944          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquOCFltDir  { type of equipment                       }
.EquLocType= LocBegin     { location, if required for e.g. equipment}
write; clear;
clear

.Elemtype=  945 { Name= 'OFDir_T '                     }
.NoElType  = neAlarm2     { standard element type                   }
.InfoRef   = 945          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquOCFltDir  { type of equipment                       }
.EquLocType= LocEnd       { location, if required for e.g. equipment}
write; clear;

.Elemtype=  946 { Name= 'EFI_F   '                     }
.NoElType  = neAlarm2     { standard element type                   }
.InfoRef   = 946          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquEthFltInd { type of equipment                       }
.EquLocType= LocBegin     { location, if required for e.g. equipment}
write; clear;
clear

.Elemtype=  947 { Name= 'EFI_T   '                     }
.NoElType  = neAlarm2     { standard element type                   }
.InfoRef   = 947          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquEthFltInd { type of equipment                       }
.EquLocType= LocEnd       { location, if required for e.g. equipment}
write; clear;
clear

.Elemtype=  948 { Name= 'EFDir_F '                     }
.NoElType  = neAlarm2     { standard element type                   }
.InfoRef   = 948          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquEthFltDir { type of equipment                       }
.EquLocType= LocBegin     { location, if required for e.g. equipment}
write; clear;
clear

.Elemtype=  949 { Name= 'EFDir_T '                     }
.NoElType  = neAlarm2     { standard element type                   }
.InfoRef   = 949          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquEthFltDir { type of equipment                       }
.EquLocType= LocEnd       { location, if required for e.g. equipment}
write; clear;


.Elemtype=   950 { Name= 'CcStatus'                                    }
.NoElType  = neCcStatus   { standard element type                   }
.InfoRef   = 950          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   951 { Name= 'NcReport'                                    }
.NoElType  = neNcReports  { standard element type                   }
.InfoRef   = 951          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype  = 952  { Name= 'Dispatch'                                }
.NoElType  = neTeArea     { standard element type                   }
.InfoRef   = 952          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype  = 953 { Name= 'DbState ' oracle redundancy monitoring    }
.NoElType  = neDevice     { standard element type                   }
.InfoRef   = 953          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype  = 954  { Name= 'SNMPStat'  SNMP client status information}
.NoElType  = neEnhSyStat  { standard element type                   }
.InfoRef   = 954          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype  = 961 {Name= 'Ev Truck'  Event for truck location        }
.NoElType  = neMessage4   { standard element type                   }
.InfoRef   = 961          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype  = 998 {Name= 'ULELE   'Underfrequency Load Shed message  }
.NoElType  = neMessage4   { standard element type                   }
.InfoRef   = 998          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
write; clear;

.Elemtype  = 999 {Name= 'LSELE   'Load Shed message                 }
.NoElType  = neMessage4   { standard element type                   }
.InfoRef   = 999          { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
write; clear;

{**********************************************************************}
{             Multiphase area 1000 ... 1800                            }
{ For networks which contain switches which can be controlled          }
{ individually for each phase.                                         }
{                                                                      }
{Switches                                                              }
{  1001 ... 1050    3-phase switch ganged                              }
{  1051 ... 1100    3-phase switch not ganged                          }
{  1101 ... 1150    1-phase switch A                                   }
{  1151 ... 1200    1-phase switch B                                   }
{  1201 ... 1250    1-phase switch C                                   }
{  1251 ... 1300    2-phase switch AB ganged                           }
{  1301 ... 1350    2-phase switch AB not ganged                       }
{  1351 ... 1400    2-phase switch AC ganged                           }
{  1401 ... 1450    2-phase switch AC not ganged                       }
{  1451 ... 1500    2-phase switch BC ganged                           }
{  1501 ... 1550    2-phase switch BC not ganged                       }
{                                                                      }
{Topological Elements                                                  }
{  1601 ... 1620    3-phase                                            }
{  1621 ... 1640    1-phase A                                          }
{  1641 ... 1660    1-phase B                                          }
{  1661 ... 1680    1-phase C                                          }
{  1681 ... 1700    2-phase AB                                         }
{  1701 ... 1720    2-phase AC                                         }
{  1721 ... 1740    2-phase BC                                         }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 3-phase-ganged switch                                             }
.Elemtype=  1001 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1001         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 3-phase-ganged switch                                             }
.Elemtype=  1002 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1002         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 3-phase-ganged switch                                             }
.Elemtype=  1003 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1003         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu Abno}
{ 3-phase-ganged switch                                             }
.Elemtype= 1006 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1006         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 3-phase-ganged switch                                             }
.Elemtype=  1007 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1007         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 3-phase-ganged switch                                             }
.Elemtype=  1008 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1008         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu Abno}
{ 3-phase-ganged switch                                             }
.Elemtype= 1010 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1010         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 3-phase-ganged switch                                             }
.Elemtype= 1011 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1011         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 3-phase-ganged switch                                             }
.Elemtype= 1012 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1012         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 3-phase-ganged switch                                             }
.Elemtype=  1015 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1015         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 3-phase-ganged switch                                             }
.Elemtype=  1016 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1016         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 3-phase-ganged switch                                             }
.Elemtype= 1017 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1017         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 3-phase-ganged switch                                             }
.Elemtype= 1018 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1018         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 3-phase-ganged switch                                             }
.Elemtype= 1019 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1019         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 3-phase-ganged switch                                             }
.Elemtype= 1020 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1020         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmug  '          FUSE manualupd ganged phas ABC          }
.Elemtype= 1023 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1023         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1051 ... 1100    3-phase switch not ganged                          }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 3-phase-not-ganged switch                                         }
.Elemtype=  1051 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1051         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 3-phase-not-ganged switch                                         }
.Elemtype=  1052 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1052         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 3-phase-not-ganged switch                                         }
.Elemtype=  1053 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1053         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu Abno}
{ 3-phase-not-ganged switch                                         }
.Elemtype= 1056 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1056         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 3-phase-not-ganged switch                                         }
.Elemtype=  1057 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1057         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 3-phase-not-ganged switch                                         }
.Elemtype=  1058 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1058         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu Abno}
{ 3-phase-not-ganged switch                                         }
.Elemtype= 1060 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1060         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 3-phase-not-ganged switch                                         }
.Elemtype= 1061 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1061         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 3-phase-not-ganged switch                                         }
.Elemtype= 1062 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1062         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 3-phase-not-ganged switch                                         }
.Elemtype=  1065 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1065         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 3-phase-not-ganged switch                                         }
.Elemtype=  1066 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1066         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 3-phase-not-ganged switch                                         }
.Elemtype= 1067 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1067         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 3-phase-not-ganged switch                                         }
.Elemtype= 1068 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1068         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 3-phase-not-ganged switch                                         }
.Elemtype= 1069 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1069         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 3-phase-not-ganged switch                                         }
.Elemtype= 1070 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1070         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmun  '          FUSE manualupd not ganged  ABC          }
.Elemtype= 1073 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1073         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1101 ... 1150    1-phase switch A                                   }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 1-phase switch   phase A                                          }
.Elemtype=  1101 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1101         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 1-phase switch   phase A                                          }
.Elemtype=  1102 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1102         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 1-phase switch   phase A                                          }
.Elemtype=  1103 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1103         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu Abno}
{ 1-phase switch   phase A                                          }
.Elemtype= 1106 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1106         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 1-phase switch   phase A                                          }
.Elemtype=  1107 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1107         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 1-phase switch   phase A                                          }
.Elemtype=  1108 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1108         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu Abno}
{ 1-phase switch   phase A                                          }
.Elemtype= 1110 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1110         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 1-phase switch   phase A                                          }
.Elemtype= 1111 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1111         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 1-phase switch   phase A                                          }
.Elemtype= 1112 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1112         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 1-phase switch   phase A                                          }
.Elemtype=  1115 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1115         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 1-phase switch   phase A                                          }
.Elemtype=  1116 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1116         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 1-phase switch   phase A                                          }
.Elemtype= 1117 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1117         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 1-phase switch   phase A                                          }
.Elemtype= 1118 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1118         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 1-phase switch   phase A                                          }
.Elemtype= 1119 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1119         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 1-phase switch   phase A                                          }
.Elemtype= 1120 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1120         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmug A'          FUSE manualupd ganged phas A            }
.Elemtype= 1123 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1123         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1151 ... 1200    1-phase switch B                                   }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 1-phase switch   phase B                                          }
.Elemtype=  1151 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1151         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 1-phase switch   phase B                                          }
.Elemtype=  1152 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1152         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 1-phase switch   phase B                                          }
.Elemtype=  1153 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1153         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu Abno}
{ 1-phase switch   phase B                                          }
.Elemtype= 1156 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1156         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 1-phase switch   phase B                                          }
.Elemtype=  1157 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1157         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 1-phase switch   phase B                                          }
.Elemtype=  1158 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1158         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu Abno}
{ 1-phase switch   phase B                                          }
.Elemtype= 1160 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1160         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 1-phase switch   phase B                                          }
.Elemtype= 1161 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1161         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 1-phase switch   phase B                                          }
.Elemtype= 1162 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1162         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 1-phase switch   phase B                                          }
.Elemtype=  1165 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1165         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 1-phase switch   phase B                                          }
.Elemtype=  1166 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1166         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 1-phase switch   phase B                                          }
.Elemtype= 1167 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1167         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 1-phase switch   phase B                                          }
.Elemtype= 1168 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1168         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 1-phase switch   phase B                                          }
.Elemtype= 1169 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1169         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 1-phase switch   phase B                                          }
.Elemtype= 1170 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1170         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmug B'          FUSE manualupd ganged phas B            }
.Elemtype= 1173 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1173         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1201 ... 1250    1-phase switch C                                   }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 1-phase switch   phase C                                          }
.Elemtype=  1201 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1201         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 1-phase switch   phase C                                          }
.Elemtype=  1202 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1202         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 1-phase switch   phase C                                          }
.Elemtype=  1203 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1203         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu Abno}
{ 1-phase switch   phase C                                          }
.Elemtype= 1206 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1206         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 1-phase switch   phase C                                          }
.Elemtype=  1207 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1207         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 1-phase switch   phase C                                          }
.Elemtype=  1208 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1208         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu Abno}
{ 1-phase switch   phase C                                          }
.Elemtype= 1210 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1210         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 1-phase switch   phase C                                          }
.Elemtype= 1211 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1211         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 1-phase switch   phase C                                          }
.Elemtype= 1212 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1212         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 1-phase switch   phase C                                          }
.Elemtype=  1215 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1215         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 1-phase switch   phase C                                          }
.Elemtype=  1216 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1216         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 1-phase switch   phase C                                          }
.Elemtype= 1217 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1217         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 1-phase switch   phase C                                          }
.Elemtype= 1218 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1218         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 1-phase switch   phase C                                          }
.Elemtype= 1219 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1219         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 1-phase switch   phase C                                          }
.Elemtype= 1220 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1220         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmug C'          FUSE manualupd ganged phas C            }
.Elemtype= 1223 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1223         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1251 ... 1300    2-phase switch AB ganged                           }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1251 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1251         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1252 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1252         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1253 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1253         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu Abno}
{ 2-phase switch   phase AB                                         }
.Elemtype= 1256 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1256         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1257 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1257         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1258 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1258         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu Abno}
{ 2-phase switch   phase AB                                         }
.Elemtype= 1260 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1260         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 2-phase switch   phase AB                                         }
.Elemtype= 1261 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1261         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 2-phase switch   phase AB                                         }
.Elemtype= 1262 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1262         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1265 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1265         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1266 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1266         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 2-phase switch   phase AB                                         }
.Elemtype= 1267 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1267         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 2-phase switch   phase AB                                         }
.Elemtype= 1268 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1268         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 2-phase switch   phase AB                                         }
.Elemtype= 1269 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1269         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 2-phase switch   phase AB                                         }
.Elemtype= 1270 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1270         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmugAB'          FUSE manualupd ganged phas AB           }
.Elemtype= 1273 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1273         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1301 ... 1350    2-phase switch AB not ganged                       }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1301 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1301         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1302 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1302         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1303 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1303         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu Abno}
{ 2-phase switch   phase AB                                         }
.Elemtype= 1306 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1306         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1307 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1307         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1308 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1308         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu Abno}
{ 2-phase switch   phase AB                                         }
.Elemtype= 1310 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1310         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 2-phase switch   phase AB                                         }
.Elemtype= 1311 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1311         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 2-phase switch   phase AB                                         }
.Elemtype= 1312 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1312         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1315 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1315         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 2-phase switch   phase AB                                         }
.Elemtype=  1316 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1316         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 2-phase switch   phase AB                                         }
.Elemtype= 1317 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1317         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 2-phase switch   phase AB                                         }
.Elemtype= 1318 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1318         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 2-phase switch   phase AB                                         }
.Elemtype= 1319 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1319         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 2-phase switch   phase AB                                         }
.Elemtype= 1320 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1320         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmunAB'          FUSE manualupd not ganged  AB           }
.Elemtype= 1323 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1323         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1351 ... 1400    2-phase switch AC ganged                           }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1351 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1351         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1352 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1352         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1353 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1353         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu ACno}
{ 2-phase switch   phase AC                                         }
.Elemtype= 1356 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1356         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1357 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1357         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1358 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1358         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu ACno}
{ 2-phase switch   phase AC                                         }
.Elemtype= 1360 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1360         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 2-phase switch   phase AC                                         }
.Elemtype= 1361 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1361         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 2-phase switch   phase AC                                         }
.Elemtype= 1362 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1362         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1365 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1365         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1366 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1366         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 2-phase switch   phase AC                                         }
.Elemtype= 1367 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1367         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 2-phase switch   phase AC                                         }
.Elemtype= 1368 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1368         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 2-phase switch   phase AC                                         }
.Elemtype= 1369 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1369         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 2-phase switch   phase AC                                         }
.Elemtype= 1370 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1370         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmugAC'          FUSE manualupd ganged phas AC           }
.Elemtype= 1373 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1373         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1401 ... 1450    2-phase switch AC not ganged                       }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1401 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1401         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1402 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1402         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1403 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1403         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu ACno}
{ 2-phase switch   phase AC                                         }
.Elemtype= 1406 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1406         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1407 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1407         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1408 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1408         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu ACno}
{ 2-phase switch   phase AC                                         }
.Elemtype= 1410 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1410         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 2-phase switch   phase AC                                         }
.Elemtype= 1411 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1411         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 2-phase switch   phase AC                                         }
.Elemtype= 1412 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1412         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1415 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1415         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 2-phase switch   phase AC                                         }
.Elemtype=  1416 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1416         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 2-phase switch   phase AC                                         }
.Elemtype= 1417 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1417         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 2-phase switch   phase AC                                         }
.Elemtype= 1418 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1418         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 2-phase switch   phase AC                                         }
.Elemtype= 1419 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1419         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 2-phase switch   phase AC                                         }
.Elemtype= 1420 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1420         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmunAC'          FUSE manualupd not ganged  AC           }
.Elemtype= 1423 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1423         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1451 ... 1500    2-phase switch BC ganged                           }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1451 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1451         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1452 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1452         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1453 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1453         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu BCno}
{ 2-phase switch   phase BC                                         }
.Elemtype= 1456 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1456         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1457 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1457         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1458 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1458         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu BCno}
{ 2-phase switch   phase BC                                         }
.Elemtype= 1460 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1460         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 2-phase switch   phase BC                                         }
.Elemtype= 1461 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1461         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 2-phase switch   phase BC                                         }
.Elemtype= 1462 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1462         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1465 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1465         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1466 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1466         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 2-phase switch   phase BC                                         }
.Elemtype= 1467 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1467         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 2-phase switch   phase BC                                         }
.Elemtype= 1468 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1468         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 2-phase switch   phase BC                                         }
.Elemtype= 1469 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1469         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 2-phase switch   phase BC                                         }
.Elemtype= 1470 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1470         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmugBC'          FUSE manualupd ganged phas BC           }
.Elemtype= 1473 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1473         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1501 ... 1550    2-phase switch BC not ganged                       }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype  40         'CB '           }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1501 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1501         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  67         'Fus ts '       }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1502 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1502         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = true         { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = ScSK         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  42         'CB muAb '      }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1503 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1503         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 283 'Sw muAb 'switch mu BCno}
{ 2-phase switch   phase BC                                         }
.Elemtype= 1506 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1506         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  45         'Iso          ' }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1507 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1507         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  47         'Iso ts '       }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1508 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1508         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 282 'LB muAb ' LB sw mu BCno}
{ 2-phase switch   phase BC                                         }
.Elemtype= 1510 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1510         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 280 'LB tc 'Load br.sw ts,tc}
{ 2-phase switch   phase BC                                         }
.Elemtype= 1511 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1511         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 281 'LB ts 'Load br.  sw ts }
{ 2-phase switch   phase BC                                         }
.Elemtype= 1512 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1512         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  188         'SecIs tc'     }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1515 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1515         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype  189  'SecIs ts'            }
{ 2-phase switch   phase BC                                         }
.Elemtype=  1516 {                                                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1516         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype= 190         'SecIs mu'     }
{ 2-phase switch   phase BC                                         }
.Elemtype= 1517 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1517         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46  Elemtype 286 'Earth mu'    earth mu }
{ 2-phase switch   phase BC                                         }
.Elemtype= 1518 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1518         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 447 'Earth tc'  earth ts,tc }
{ 2-phase switch   phase BC                                         }
.Elemtype= 1519 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1519         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 448 'Earth ts'     earth ts }
{ 2-phase switch   phase BC                                         }
.Elemtype= 1520 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1520         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Name= 'FUSmunBC'          FUSE manualupd not ganged  BC           }
.Elemtype= 1523 {                                                   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 1523         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1601 ... 1620    topologic element types 3-phase                    }
{  1621 ... 1640    topologic element types 1-phase A                  }
{  1641 ... 1660    topologic element types 1-phase B                  }
{  1661 ... 1680    topologic element types 1-phase C                  }
{  1681 ... 1700    topologic element types 2-phase AB                 }
{  1701 ... 1720    topologic element types 2-phase AC                 }
{  1721 ... 1740    topologic element types 2-phase BC                 }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype 418                         }
.Elemtype=   1601
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1601         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpConnNode   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 420                         }
.Elemtype=   1602
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1602         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpBusbar     { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 421                         }
.Elemtype=   1603
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1603         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpAuxiBusbar { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 423                         }
.Elemtype=   1604
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1604         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGenerator  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1605
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1605         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpInjection  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1606
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1606         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 426                         }
.Elemtype=   1607
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1607         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCoupling   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 427                         }
.Elemtype=   1608
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1608         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCompensator { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1609
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1609         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 430                         }
.Elemtype=   1610
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1610         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - voltage regulator                     ABC  }
.Elemtype=   1611
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1611         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquTrafoVReg { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - distribution transformer              ABC  }
.Elemtype=   1612
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1612         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquDistrTrafo{ type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1613
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1613         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpEquivInj   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1614
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1614         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1615
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1615         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 430                         }
.Elemtype=   1616
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1616         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1617
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1617         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_ABC  { phase A+B+C                             }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;



{**********************************************************************}
{  1621 ... 1640    topologic element types 1-phase A                  }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype 418                         }
.Elemtype=   1621
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1621         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpConnNode   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 420                         }
.Elemtype=   1622
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1622         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpBusbar     { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 421                         }
.Elemtype=   1623
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1623         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpAuxiBusbar { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 423                         }
.Elemtype=   1624
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1624         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGenerator  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1625
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1625         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpInjection  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1626
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1626         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 426                         }
.Elemtype=   1627
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1627         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCoupling   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 427                         }
.Elemtype=   1628
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1628         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCompensator { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1629
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1629         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 430                         }
.Elemtype=   1630
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1630         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - voltage regulator                     A    }
.Elemtype=   1631
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1631         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquTrafoVReg { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - distribution transformer              A    }
.Elemtype=   1632
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1632         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquDistrTrafo{ type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1633
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1633         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpEquivInj   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1634
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1634         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 426                         }
.Elemtype=   1635
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1635         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 426                         }
.Elemtype=   1636
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1636         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1637
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1637         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_A    { phase A only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1641 ... 1660    topologic element types 1-phase B                  }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype 418                         }
.Elemtype=   1641
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1641         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpConnNode   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 420                         }
.Elemtype=   1642
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1642         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpBusbar     { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 421                         }
.Elemtype=   1643
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1643         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpAuxiBusbar { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 423                         }
.Elemtype=   1644
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1644         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGenerator  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1645
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1645         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpInjection  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1646
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1646         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 426                         }
.Elemtype=   1647
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1647         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCoupling   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 427                         }
.Elemtype=   1648
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1648         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCompensator { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1649
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1649         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 430                         }
.Elemtype=   1650
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1650         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - voltage regulator                     B    }
.Elemtype=   1651
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1651         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquTrafoVReg { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - distribution transformer              B    }
.Elemtype=   1652
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1652         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquDistrTrafo{ type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1653
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1653         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpEquivInj   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1654
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1654         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1655
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1655         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1656
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1656         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1657
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1657         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_B    { phase B only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1661 ... 1680    topologic element types 1-phase C                  }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype 418                         }
.Elemtype=   1661
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1661         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpConnNode   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 420                         }
.Elemtype=   1662
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1662         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpBusbar     { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 421                         }
.Elemtype=   1663
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1663         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpAuxiBusbar { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 423                         }
.Elemtype=   1664
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1664         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGenerator  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1665
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1665         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpInjection  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1666
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1666         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 426                         }
.Elemtype=   1667
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1667         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCoupling   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 427                         }
.Elemtype=   1668
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1668         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCompensator { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1669
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1669         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 430                         }
.Elemtype=   1670
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1670         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - voltage regulator                     C    }
.Elemtype=   1671
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1671         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquTrafoVReg { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - distribution transformer              C    }
.Elemtype=   1672
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1672         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquDistrTrafo{ type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1673
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1673         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpEquivInj   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1674
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1674         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1675
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1675         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1676
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1676         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1677
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1677         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_C    { phase C only                            }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1681 ... 1700    topologic element types 2-phase AB                 }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype 418                         }
.Elemtype=   1681
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1681         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpConnNode   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 420                         }
.Elemtype=   1682
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1682         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpBusbar     { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 421                         }
.Elemtype=   1683
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1683         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpAuxiBusbar { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 423                         }
.Elemtype=   1684
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1684         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGenerator  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1685
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1685         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpInjection  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1686
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1686         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 426                         }
.Elemtype=   1687
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1687         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCoupling   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 427                         }
.Elemtype=   1688
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1688         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCompensator { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1689
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1689         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 430                         }
.Elemtype=   1690
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1690         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - voltage regulator                     AB   }
.Elemtype=   1691
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1691         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquTrafoVReg { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - distribution transformer              AB   }
.Elemtype=   1692
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1692         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquDistrTrafo{ type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1693
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1693         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpEquivInj   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1694
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1694         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1695
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1695         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1696
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1696         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1697
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1697         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_AB   { phase A+B                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1701 ... 1720    topologic element types 2-phase AC                 }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype 418                         }
.Elemtype=   1701
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1701         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpConnNode   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 420                         }
.Elemtype=   1702
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1702         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpBusbar     { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 421                         }
.Elemtype=   1703
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1703         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpAuxiBusbar { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 423                         }
.Elemtype=   1704
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1704         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGenerator  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1705
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1705         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpInjection  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1706
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1706         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 426                         }
.Elemtype=   1707
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1707         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCoupling   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 427                         }
.Elemtype=   1708
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1708         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCompensator { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1709
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1709         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 430                         }
.Elemtype=   1710
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1710         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - voltage regulator                     AC   }
.Elemtype=   1711
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1711         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquTrafoVReg { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - distribution transformer              AC   }
.Elemtype=   1712
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1712         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquDistrTrafo{ type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1713
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1713         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpEquivInj   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1714
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1714         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1715
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1715         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 430                         }
.Elemtype=   1716
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1716         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1717
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1717         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_AC   { phase A+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{**********************************************************************}
{  1721 ... 1740    topologic element types 2-phase BC                 }
{**********************************************************************}

{ Multiphase extension of SR46 Elemtype 418                         }
.Elemtype=   1721
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1721         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpConnNode   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 420                         }
.Elemtype=   1722
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1722         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpBusbar     { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 421                         }
.Elemtype=   1723
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1723         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpAuxiBusbar { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 423                         }
.Elemtype=   1724
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1724         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGenerator  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1725
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1725         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpInjection  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1726
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1726         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 426                         }
.Elemtype=   1727
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1727         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCoupling   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 427                         }
.Elemtype=   1728
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1728         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpCompensator { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1729
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1729         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 430                         }
.Elemtype=   1730
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1730         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - voltage regulator                     BC   }
.Elemtype=   1731
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1731         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquTrafoVReg { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ TopElem  transformer - distribution transformer              BC   }
.Elemtype=   1732
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1732         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpTransformer { Component type of operational devices  }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquDistrTrafo{ type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 424                         }
.Elemtype=   1733
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1733         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpEquivInj   { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1734
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1734         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1735
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1735         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 429                         }
.Elemtype=   1736
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1736         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLine       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ Multiphase extension of SR46 Elemtype 425                         }
.Elemtype=   1737
.NoElType  = neTopElem    { standard element type                   }
.InfoRef   = 1737         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpLoad       { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_BC   { phase B+C                               }
.sw_none_ganged = false   {                                         }
.EquType   = EquComponent { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 1741           { Name= 'OM LiEl' Element for OM List     }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 1741         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=   1750         { Last standard element type              }
.NoElType  = neUnivers    { standard element type                   }
.InfoRef   = 1750         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = noComponent  { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       {  0 = switch for phase A+B+C             }
.sw_none_ganged = false   {                                         }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;


{=====================================================================}

{**********************************************************************}
{Project area                                                          }
{Projektbereich                                                        }
{System Limit for elementtypes is 1800 (InRefmax = 1800 in tec_c.h)    }
{When elementtypes beyond this limit is needed, increase InRefmax,     }
{compile mepr, mpu and nimch and adapt relation size of eltyde,        }
{etypname and infodef in corresponding dbu files                       }
{**********************************************************************}


{**********************************************************************}
{Project area   1950.. for EPM                                         }
{**********************************************************************}

{----------------------------------------------------------------------}
{ Elementype 1950 .. 1999 reserved for Dx - DMS PHASE-2 global types   }
{----------------------------------------------------------------------}

.Elemtype=1950 { Name= 'dBlocTag'                     }
.NoElType  = neUnivers    { standard element type                   }
.InfoRef   = 1950         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=1951 { Name= 'dBlocSta'                     }
.NoElType  = neUnivers    { standard element type                   }
.InfoRef   = 1951         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{----------------------------------------------------------------------}
{ Elementype 2000 .. 2120 reserved for messages                        }
{----------------------------------------------------------------------}

.Elemtype=2000      { Name= 'OMSnc   '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2000         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2002 {                                                      }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2002         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2020 { AlarmPA                                              }
.NoElType  = neAlarm5     { standard element type                   }
.InfoRef   = 2020         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2021 { AlarmRT                                              }
.NoElType  = neAlarm5     { standard element type                   }
.InfoRef   = 2021         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2022 { AlarmSA                                              }
.NoElType  = neAlarm5     { standard element type                   }
.InfoRef   = 2022         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2023 { AlarmSE                                              }
.NoElType  = neAlarm5     { standard element type                   }
.InfoRef   = 2023         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{----------------------------------------------------------------------}
{ Elementype 2121 .. 2160 reserved for measured values                 }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elementype 2161 .. 2200 reserved for accumulators                    }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elementype 2201 .. 2300 reserved for miscellaneous elements (msg)    }
{----------------------------------------------------------------------}

.Elemtype= 2207 { Name='DAS-TIF '                                      }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2207         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2208 {  Name= 'GruProt '                                    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2208         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2209 {  Name= 'GrPro-02'                                    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2209         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2210 {  Name= 'GrPro-03'                                    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2210         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2211 {  Name= 'GrPro-04'                                    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2211         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2212 {  Name= 'GrPro-05'                                    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2212         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2213 {  Name= 'GrPro-06'                                    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2213         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2218 { Name='msgAvail'                                      }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2218         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2219 { Name='AvailRes'                                      }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2219         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2221 { Name='msgOracl'                                      }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2221         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{----------------------------------------------------------------------}
{ Elementype 1301 .. 1350 reserved for DMS messages                    }
{----------------------------------------------------------------------}

.Elemtype= 2301 { Name='TrobCa01'                                      }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2301         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{----------------------------------------------------------------------}
{ Elementype 2341 .. 2420 reserved for Dx, Gx and Tx (Switches)        }
{----------------------------------------------------------------------}

{---------------------}
{ EMS Tx Switch Types }
{---------------------}

.Elemtype= 2341 { Name= 'tCB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2341         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2342 { Name= 'tCB muAb'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2342         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2343 { Name= 'tCB tcAb'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2343         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2344 { Name= 'tCB tsAb'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2344         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2345 { Name= 'tLB mu'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2345         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2346 { Name= 'tLB tcAb'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2346         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2347 { Name= 'tLB tsAb'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2347         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2348 { Name= 'tIso'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2348         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2349 { Name= 'tIsomu'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2349         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2350 { Name= 'tIsotcAb'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2350         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2351 { Name= 'tIsotsAb'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2351         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;


{---------------------}
{ EMS Gx Switch Types }
{---------------------}

.Elemtype= 2361 { Name= 'gCB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2361         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2363 { Name= 'gCB tcAb'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2363         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2364 { Name= 'gCB tsAb'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2364         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2369 { Name= 'gIsomu'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2369         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2371 { Name= 'gIsotsAb'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2371         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{---------------------}
{ EMS Tx Tap Changers }
{---------------------}

.Elemtype= 2380 { tTapGen }
.NoElType  = neTapChan    { standard element type                   }
.InfoRef   = 2380         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2381 { tTapVc }
.NoElType  = neTapChan    { standard element type                   }
.InfoRef   = 2381         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{---------------------------------}
{--- Dx DMS PHASE-2 TapChangers --}
{---------------------------------}

.Elemtype= 2390 { dTapVc }
.NoElType  = neTapChan    { standard element type                   }
.InfoRef   = 2390         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{---------------------}
{ Grounding Devices   }
{---------------------}

.Elemtype= 2400  { Name= 'Iso tcAE'       iso              ts,tc Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =2400          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2401  { Name= 'Iso tsAE'       iso              ts,   Abn}
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   =2401          { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2402 { Name= 'tCB tcAE'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2402         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2403 { Name= 'tLB tcAE'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2403         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2404 { Name= 'tLB tsAE'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2404         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2405 { Name= 'tIsoE'                    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2405         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2406 { Name= 'tIsomuE'                    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2406         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2407 { Name= 'tIsotcAE'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2407         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2408 { Name= 'tIsotsAE'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2408         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2409 { Name= 'gIsomuE'                    }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2409         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2410 { Name= 'gIsotsAE'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2410         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = true
.sw_sectioner = false
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{----------------------------------------------------------------------}
{ Elementype 2421 .. 2500 SWITCHES of DMS PHASE-2                      }
{----------------------------------------------------------------------}

.Elemtype=  2421 { Name= 'INT   tc'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2421         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=  2422 { Name= 'INTFdHtc'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2422         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2423 { Name= 'INTtcg A'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2423         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2424 { Name= 'INTtcg B'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2424         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2425 { Name= 'INTtcg C'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2425         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2426 { Name= 'INTtcgAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2426         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2427 { Name= 'INTtcgAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2427         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2428 { Name= 'INTtcgBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2428         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2429 { Name= 'INTtcg  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2429         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2430 { Name= 'AIFmug A'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2430         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2431 { Name= 'AIFmug B'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2431         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2432 { Name= 'AIFmug C'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2432         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2433 { Name= 'AIFmunAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2433         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2434 { Name= 'AIFmunAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2434         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2435 { Name= 'AIFmunBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2435         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2436 { Name= 'AIFmun  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2436         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2437 { Name= 'CESmug A'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2437         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2438 { Name= 'CESmug B'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2438         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2439 { Name= 'CESmug C'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2439         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2440 { Name= 'CESmunAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2440         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2441 { Name= 'CESmunAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2441         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2442 { Name= 'CESmunBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2442         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2443 { Name= 'CESmun  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2443         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2444 { Name= 'SECmug A'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2444         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2445 { Name= 'SECmug B'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2445         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2446 { Name= 'SECmug C'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2446         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2447 { Name= 'SECmugAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2447         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2448 { Name= 'SECmugAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2448         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2449 { Name= 'SECmugBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2449         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2450 { Name= 'SECmug  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2450         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2451 { Name= 'SECmunAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2451         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2452 { Name= 'SECmunAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2452         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2453 { Name= 'SECmunBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2453         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2454 { Name= 'SECmun  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2454         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2455 { Name= 'SMRtcg A'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2455         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2456 { Name= 'SMRtcg B'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2456         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2457 { Name= 'SMRtcg C'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2457         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2458 { Name= 'SMRtcnAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2458         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2459 { Name= 'SMRtcnAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2459         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2460 { Name= 'SMRtcnBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2460         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2461 { Name= 'SMRtcn  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2461         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2462 { Name= 'RECtcg A'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2462         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2463 { Name= 'RECtcg B'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2463         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2464 { Name= 'RECtcg C'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2464         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2465 { Name= 'RECtcgAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2465         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2466 { Name= 'RECtcgAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2466         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2467 { Name= 'RECtcgBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2467         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2468 { Name= 'RECtcg  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2468         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2469 { Name= 'DOFmug A'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2469         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2470 { Name= 'DOFmug B'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2470         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2471 { Name= 'DOFmug C'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2471         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2472 { Name= 'DOFmugAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2472         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2473 { Name= 'DOFmugAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2473         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2474 { Name= 'DOFmugBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2474         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2475 { Name= 'DOFmug  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2475         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2476 { Name= 'SUBmug A'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2476         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2477 { Name= 'SUBmug B'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2477         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2478 { Name= 'SUBmug C'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2478         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2479 { Name= 'SUBmugAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2479         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase AB                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2480 { Name= 'SUBmugAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2480         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase AC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2481 { Name= 'SUBmugBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2481         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase BC                     }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2482 { Name= 'SUBmug  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2482         { reference to the info description       }
.SwType    = LoadBrSw     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2483 { Name= 'COFmug A'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2483         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_A         { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2484 { Name= 'COFmug B'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2484         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_B         { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2485 { Name= 'COFmug C'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2485         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_C         { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2486 { Name= 'COFmugAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2486         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AB        { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2487 { Name= 'COFmugAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2487         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_AC        { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2488 { Name= 'COFmugBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2488         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_BC        { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2489 { Name= 'COFmug  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2489         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2490 { Name= 'SLB tcg '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2490         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = true      { serial busbar connection                }
.sw_phase  = ph_ABC       { switch for phase A+B+C                  }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;



.ElemType=  2491 { Name= 'COFmunAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2491         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_AB   { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2492 { Name= 'COFmunAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2492         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_AC   { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2493 { Name= 'COFmunBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2493         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_BC   { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2494 { Name= 'COFmun  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2494         { reference to the info description       }
.SwType    = Fuse         { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_ABC  { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2495 { Name= 'REGmug A'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2495         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_A    { switch for phase A only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2496 { Name= 'REGmug B'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2496         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_B    { switch for phase B only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2497 { Name= 'REGmug C'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2497         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_C    { switch for phase C only                 }
.sw_none_ganged = false   { phases of the switch are ganged         }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2498 { Name= 'REGmunAB'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2498         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_AB   { switch for phase AB                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2499 { Name= 'REGmunAC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2499         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_AC   { switch for phase AC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2500 { Name= 'REGmunBC'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2500         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_BC   { switch for phase BC                     }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.ElemType=  2501 { Name= 'REGmun  '                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2501         { reference to the info description       }
.SwType    = Isolator     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner   = false   { element switch to sectioner             }
.sw_phase       = ph_ABC  { switch for phase A+B+C                  }
.sw_none_ganged = true    { phases of the switch are not ganged     }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{----------------------------------------------------------------------}
{ Elements 2502 .. 2600 reserved for MV of EMS (Tx and Gx)             }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elementype 2601 .. 2700 for CV of EMS (Tx,Gx)                        }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elementype 2701 .. 3000 for MP of EMS (Tx,Gx)                        }
{----------------------------------------------------------------------}

{----------------------}
{ EMS Gx Element Types }
{----------------------}

{----------------------}
{ EMS Tx Element Types }
{----------------------}

.Elemtype= 2809 { EMxcME5  }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2809         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2810 { tALM1-DU }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2810         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2811 { tSPME-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2811         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2812 { tSPME-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2812         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2813 { tSPME-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2813         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2814 { tSPME-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2814         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2815 { tSPME-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2815         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2816 { tSPME-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2816         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2821 { tALM1-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2821         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2822 { tALM1-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2822         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2823 { tALM1-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2823         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2824 { tALM1-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2824         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2825 { tALM1-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2825         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2826 { tALM1-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2826         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2831 { tALM2-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2831         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2832 { tALM2-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2832         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2833 { tALM2-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2833         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2834 { tALM2-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2834         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2835 { tALM2-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2835         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2836 { tALM2-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2836         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2841 { tALM3-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2841         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2842 { tALM3-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2842         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2843 { tALM3-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2843         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2844 { tALM3-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2844         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2845 { tALM3-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2845         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2846 { tALM3-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2846         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2851 { tALM4-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2851         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2852 { tALM4-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2852         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2853 { tALM4-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2853         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2854 { tALM4-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2854         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2855 { tALM4-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2855         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2856 { tALM4-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2856         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2861 { tALM5-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2861         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2862 { tALM5-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2862         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2863 { tALM5-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2863         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2864 { tALM5-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2864         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2865 { tALM5-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2865         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2866 { tALM5-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2866         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2871 { tALM6-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2871         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2872 { tALM6-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2872         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2873 { tALM6-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2873         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2874 { tALM6-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2874         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2875 { tALM6-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2875         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2876 { tALM6-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2876         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2881 { tALM1-D3 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2881         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2885 { tALM5-D3 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 2885         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2999 { Name= 'BlTagRed'                     }
.NoElType  = neUnivers    { standard element type                   }
.InfoRef   = 2999         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{-------------------------------------------------------------------}
{ Elementype 3000 .. 3049 for Gas messages     (InfRefmax=3500)     }
{-------------------------------------------------------------------}

.Elemtype= 3000 { prio.1, MeCl21, GenSum+AI7, 1=app/0=dis not in WM }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3000         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3001 { prio.1, MeCl21, GenSum+AI7, 1=app   /0=dis  in WM }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3001         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{ the following two element types are still comming=1 and going=0   }
{ alarm types, but the vaName is inverted (ONLY status in list is   }
{ named different, processing is as usual (1 is alarmed, 0 means    }
{ alarm is gone)).                                                  }

.Elemtype= 3002 { prio.1, MeCl21, GenSum+AI7, 0=app/1=dis not in WM }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3002         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3003 { prio.1, MeCl21, GenSum+AI7, 1=dis/0=app   in WM   }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3003         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3004 { prio.2, MeCl22, GenSum+AI8, 1=app/0=dis not in WM }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3004         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3005 { prio.2, MeCl22, GenSum+AI8, 1=app/0=dis in WM     }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3005         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3006 { prio.3, MeCl23, GenSum+AI9, 1=app/0=dis not in WM }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3006         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3007 { prio.3, MeCl23, GenSum+AI9, 1=app/0=dis in WM     }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3007         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3008 { prio.2, MeCl22, GenSum+AI8, 1=loc/0=rem in WM     }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3008         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3009 { Gas command single pole remote/local              }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3009         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3010 { Gas command single pole habilitar/inhabilitar     }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3010         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3011 { Gas DC abrir/cerrar                               }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3011         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3013 { Gas double pole indication GASV1-7                }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3013         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3014 { Gas double pole indication for compressor valve   }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3014         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3015 { Gas DC habilitar/inhabilitar                      }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3015         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3016 { prio.2, MeCl22, GenSum+AI8, 1=man/0=auto not in WM}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3016         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3017 { prio.2, MeCl22, GenSum+AI8, 1=act/0=desact in WM  }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3017         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3018 { Gas ts cerrado/abierto P1                         }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3018         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3019 { Gas ts cerrado/abierto P2                         }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3019         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3020 { Gas ts cerrado/abierto P3                         }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3020         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3021 { Gas man cerrado/abierto P1                        }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3021         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3022 { Gas man cerrado/abierto P2                        }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3022         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3023 { Gas man cerrado/abierto P3                        }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3023         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3024 { Gas DC desenergizar/energizar                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 3024         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3025 { GAS1apDU                                          }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3025         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3026 { GMxcAL4                                           }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3026         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3027 { GAS3anWM                                          }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3027         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3028 { GAS3aeWM                                          }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3028         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3029 { GAS3an                                            }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3029         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3030 { GAS3hd                                            }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3030         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3031 { GAS2an                                            }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3031         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3032 { GAS1hd                                            }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3032         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3033 { GAS3ca                                            }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3033         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3034 { GAS3ae                                            }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3034         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3035 { GAS3ac                                            }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3035         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3036 { Gas SC pr3 encender/apagar                        }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3036         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3037 { Gas SC pr1 habilitar/deshabilitar                 }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3037         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3038 { Gas SC pr1 encender/apagar                        }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3038         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3040 { Gas SC pr1 activar/desactivar                     }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3040         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3041 { Gas SC pr1 remoto/local                           }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3041         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3042 { Gas SC pr1 deshabilitar/habilitar                 }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3042         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{-------------------------------------------------------------------}
{ Elementype 3050 .. 3131 for Water messages   (InfRefmax=3500)     }
{-------------------------------------------------------------------}

.Elemtype=3050; {W6RemNop; InfoTyp 1949; REMOTO/NOPERA    AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3050         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3051; {W6ManNop; InfoTyp 1948; MANUAL/NOPERA    AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3051         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3052; {W6ActNor; InfoTyp 1947; ACTIVO/NORMAL    AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3052         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3053; {W6CeNoCe; InfoTyp 1946; CERRADO/NOCERRAD AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3053         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3054; {W4AbNoAb; InfoTyp 1945; ABIERTO/NOABIERT AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3054         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3055; {W4NookOk; InfoTyp 1944; NOOK/OK         AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3055         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3056; {W6TexNop; InfoTyp     ; TEXT/NBOPERA    AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3056         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3057; {W6AParNop InfoTyp 1942; PARADO/NOPERA   AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3057         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3058; {W4VacNor;  InfoTyp 1941; VACIO/NORMAL    AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3058         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3059; {W4ParOpe; InfoTyp 1956; PARADO/OPERANDO AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3059         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3060; {W4AbiCer;  InfoTyp 1924; ABIERTA/CERRADA AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3060         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3061; {W4AbiCer;  InfoTyp 1851; ABIERTA/NOOPERA AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3061         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3062; {W4ActDes;  InfoTyp 1852; ACTIVO/DESACTIV AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3062         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3063; {W4AlrNor; InfoTyp 1853; ALARMA/NORMAL  AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3063         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3064; {W4ApeCie; InfoTyp 1854; APERTURA/CIERRE AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3064         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3065; {W4AutLoc; InfoTyp 1855; AUTOMATI/LOCAL  AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3065         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3066; {W4AutMan; InfoTyp 1856; AUTOMATI/MANUAL AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3066         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3067; {W4AutRem; InfoTyp 1857; AUTOMATI/REMOTO AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3067         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3068; {W4BloNob; InfoTyp 1858; BLOQUEO/NOBLOQUE AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3068         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3069; {W4CerAbi; InfoTyp 1859; CERRADA/ABIERTA AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3069         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3070; {W4CerNop; InfoTyp 1860; CERRADA/NOPERA  AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3070         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3071; {W4DesNor; InfoTyp 1861; DESACTIV/NORMAL AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3071         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3072; {W4DisNor; InfoTyp 1862; DISPARO/NORMAL  AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3072         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3073; {W4FalNor; InfoTyp 1863; FALLA/NORMAL    AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3073         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3074; {W4GraBom; InfoTyp 1864; GRAVEDAD/BOMBEO AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3074         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3075; {W4LocNop; InfoTyp 1865; LOCAL/NOPERA    AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3075         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3076; {W4ManPer; InfoTyp 1866; MANUAL/PERFIL   AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3076         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3077; {W4NookOk; InfoTyp 1867; NOOK/OK         AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3077         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3078; {W4NorFal; InfoTyp 1868; NORMAL/FALLA    AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3078         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3079; {W4OkNook; InfoTyp 1869; OK/NOOK         AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3079         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3080; {W4OpePar; InfoTyp 1870; OPERANDO/PARADO AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3080         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3081; {W4PreNor; InfoTyp 1871; PREFALLO/NORMAL AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3081         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3082; {W4RemLoc; InfoTyp 1872; REMOTO/LOCAL    AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3082         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3083; {W4RotNor; InfoTyp 1873; ROTA/NORMAL     AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3083         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3084; {W5AbiCer; InfoTyp 1874; ABIERTA/CERRADA AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3084         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3085; {W5AbiNop; InfoTyp 1875; ABIERTA/NOPERA  AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3085         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3086; {W5ActDes; InfoTyp 1876; ACTIVO/DESACTIV AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3086         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3087; {W5AlrNor; InfoTyp 1877; ALARMA/NORMAL   AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3087         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3088; {W5ApeCie; InfoTyp 1878; APERTURA/CIERRE AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3088         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3089; {W5AutLoc; InfoTyp 1879; AUTOMATI/LOCAL  AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3089         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3090; {W5AutMan; InfoTyp 1880; AUTOMATI/MANUAL AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3090         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3091; {W5AutRem; InfoTyp 1881; AUTOMATI/REMOTO AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3091         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3092; {W5BloNob; InfoTyp 1882; BLOQUEO/NOBLOQUE AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3092         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3093; {W5CerAbi; InfoTyp 1883; CERRADA/ABIERTA AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3093         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3094; {W5CerNop; InfoTyp 1884; CERRADA/NOPERA  AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3094         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3095; {W5DesNor; InfoTyp 1885; DESACTIV/NORMAL AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3095         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3096; {W5DisNor; InfoTyp 1886; DISPARO/NORMAL  AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3096         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3097; {W5FalNor; InfoTyp 1887; FALLA/NORMAL    AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3097         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3098; {W5GraBom; InfoTyp 1888; GRAVEDAD/BOMBEO AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3098         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3099; {W5LocNop; InfoTyp 1889; LOCAL/NOPERA    AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3099         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3100; {W5ManPer; InfoTyp 1890; MANUAL/PERFIL   AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3100         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3101; {W5NookOk; InfoTyp 1891; NOOK/OK         AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3101         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3102; {W5NorFal; InfoTyp 1892; NORMAL/FALLA    AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3102         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3103; {W5OkNook; InfoTyp 1893; OK/NOOK         AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3103         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3104; {W5OpePar; InfoTyp 1894; OPERANDO/PARADO AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3104         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3105; {W5PreNor; InfoTyp 1895; PREFALLO/NORMAL AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3105         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3106; {W5RemLoc; InfoTyp 1896; REMOTO/LOCAL    AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3106         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3107; {W5RotNor; InfoTyp 1897; ROTA/NORMAL     AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3107         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3108; {W6AbiCer; InfoTyp 1898; ABIERTA/CERRADA AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3108         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3109; {W6AbiNop; InfoTyp 1899; ABIERTA/NOPERA  AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3109         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3110; {W6ActDes; InfoTyp 1900; ACTIVO/DESACTIV AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3110         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3111; {W6AlrNor; InfoTyp 1901; ALARMA/NORMAL   AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3111         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3112; {W6ApeCie; InfoTyp 1902; APERTURA/CIERRE AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3112         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3113; {W6AutLoc; InfoTyp 1903; AUTOMATI/LOCAL  AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3113         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3114; {W6AutMan; InfoTyp 1904; AUTOMATI/MANUAL AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3114         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3115; {W6AutRem; InfoTyp 1905; AUTOMATI/REMOTO AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3115         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3116; {W6BloNob; InfoTyp 1906; BLOQUEO/NOBLOQUE AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3116         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3117; {W6CerAbi; InfoTyp 1907; CERRADA/ABIERTA AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3117         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3118; {W6CerNop; InfoTyp 1908; CERRADA/NOPERA  AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3118         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3119; {W6DesNor; InfoTyp 1909; DESACTIV/NORMAL AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3119         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3120; {W6DisNor; InfoTyp 1910; DISPARO/NORMAL  AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3120         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3121; {W6FalNor; InfoTyp 1911; FALLA/NORMAL    AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3121         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3122; {W6GraBom; InfoTyp 1912; GRAVEDAD/BOMBEO AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3122         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3123; {W6LocNop; InfoTyp 1913; LOCAL/NOPERA    AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3123         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3124; {W6ManPer; InfoTyp 1914; MANUAL/PERFIL   AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3124         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3125; {W6NookOk; InfoTyp 1915; NOOK/OK         AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3125         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3126; {W6NorFal; InfoTyp 1916; NORMAL/FALLA    AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3126         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3127; {W6OkNook; InfoTyp 1917; OK/NOOK         AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3127         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3128; {W6OpePar; InfoTyp 1918; OPERANDO/PARADO AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3128         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3129; {W6PreNor; InfoTyp 1919; PREFALLO/NORMAL AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3129         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3130; {W6RemLoc; InfoTyp 1920; REMOTO/LOCAL    AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3130         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3131; {W6RotNor; InfoTyp 1921; ROTA/NORMAL     AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3131         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3132 { WaterDP switch  Ope/Par InTy: 1918 AL 6 W6sOpPar }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3132         { reference to the info description       }
.SwType   = Breaker      { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype=3133; {W5AppDis; InfoTyp 1922; Appear/Disapp   AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3133         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3134; {W6ActFal; InfoTyp 1934; ACTIVO/Falla    AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3134         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{-------------------------------------------------------------------}
{ EPM Water double pole commands 3060 .. 3131  (InfRefmax=3500)     }
{-------------------------------------------------------------------}

.Elemtype= 3135 { Water DP command ACTIVO/DESACTIV InTy: 1925   }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3135         { reference to the info description       }
.SwType   = noSwitch     { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3136 { Water DP command ACTIVO/NO OPERA InTy: 1926   }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3136         { reference to the info description       }
.SwType   = noSwitch     { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3137 { Water DP command APERTURA/CIERRE InTy: 1927   }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3137         { reference to the info description       }
.SwType   = Breaker      { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3138 { Water DP command AUTOMATI/MANUAL InTy: 1928   }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3138         { reference to the info description       }
.SwType   = noSwitch     { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3139 { Water DP command DESACT/NORMAL InTy: 1929   }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3139         { reference to the info description       }
.SwType   = noSwitch     { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3140 { Water DP command ESTAC1/ESTAC2 InTy: 1930   }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3140         { reference to the info description       }
.SwType   = noSwitch     { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3141 { Water DP command HABILITAR/DESACTIV InTy: 1931   }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3141         { reference to the info description       }
.SwType   = noSwitch     { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3142 { Water DP command MANUAL/PERFIL InTy: 1932   }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3142         { reference to the info description       }
.SwType   = noSwitch     { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3143 { Water DP command SILENCIAR/DESACTIV InTy: 1933   }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3143         { reference to the info description       }
.SwType   = noSwitch     { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

{                                                           te04   }
{ dublicates of element  types which are used in MRede for         }
{ switches with command direction. Currently the topology is       }
{ inconsient in this "Bordernet" and therefore the element type    }
{ has been changed to noSwitch, so that network control does not   }
{ check topology  (changes in network control were necessary)      }

.Elemtype=2900 { duplicate of 40 (Name= 'CB ')                      }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2900         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2901 { duplicate of 43 (Name= 'CB GENtc'                  }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2901         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2902 { duplicate of 444 (Name= 'CB tcAb '                 }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2902         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2903 { duplicate of 2208 (Name= 'GruProt '                }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2903         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=2904 { duplicate of 2343 (Name= 'tCB tcAb'                }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2904         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 2905 { Name= 'tCBmuAbn'                     }
.NoElType  = neSwitch     { standard element type                   }
.InfoRef   = 2905         { reference to the info description       }
.SwType    = Breaker      { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = EquSwitch    { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3148; {AMxcAL4                                           }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3148         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3149; {W4apDU                                            }
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3149         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3150 { Water Indicator medidor bidirectional            }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3150         { reference to the info description       }
.SwType   = noSwitch     { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3151 { Water Estado valvula con sonsigna                }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3151         { reference to the info description       }
.SwType   = Breaker      { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3152 { Water Estado valvula con 2 commandos             }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3152         { reference to the info description       }
.SwType   = Breaker      { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3153 { Virtual valve for netgroup coloring              }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3153         { reference to the info description       }
.SwType   = Breaker      { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3154 { Water Estado valvula MANUAL                      }
.NoElType = neSwitch     { standard element type                   }
.InfoRef  = 3154         { reference to the info description       }
.SwType   = Breaker      { switch type (for NCO)                   }
.CalVal   = false        { element has also calculation values     }
.ScVal    = false        { element has also short circuit calcul   }
.MvSort   = noMv         { type of measured value (if  'MeasVal')  }
.CvSort   = noCv         { type of counter  value (if  'CountVal') }
.ScSort   = noSc         { type of short circuit value             }
.CmpType  = CpGeneral    { Component type of operational devices   }
.sw_earth = false
.sw_sectioner = false    { element switch to sectioner             }
.EquType  = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc   { location, if required for e.g. equipment}
write; clear;

.Elemtype=3155; {W4DesAct; InfoTyp 1954; DESACTIV/ACTIVO AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3155         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3156; {W4ParOpe; InfoTyp 1956; PARADO/OPERANDO AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3156         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3157; {W4NopCer; InfoTyp 1957; NOPERA/CERRADO  AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3157         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3158; {W4ManAut; InfoTyp 1958; MANUAL/AUTOMATI AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3158         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3159; {W4NopAbi; InfoTyp 1959; NOPERA/ABIERTO  AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3159         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3160; {W4ActNor; InfoTyp 1960; ACTIVO/NORMAL   AlrmList 4}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3160         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3165; {W5DesAct; InfoTyp 1965; DESACTIV/ACTIVO AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3165         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3166; {W5ParOpe; InfoTyp 1966; PARADO/OPERANDO AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3166         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3167; {W5NopCer; InfoTyp 1967; NOPERA/CERRADO  AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3167         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3168; {W5ManAut; InfoTyp 1968; MANUAL/AUTOMATI AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3168         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3169; {W5NopAbi; InfoTyp 1969; NOPERA/ABIERTO  AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3169         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3170; {W5ActNor; InfoTyp 1970; ACTIVO/NORMAL   AlrmList 5}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3170         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3175; {W6DesAct; InfoTyp 1975; DESACTIV/ACTIVO AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3175         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3176; {W6ParOpe; InfoTyp 1975; PARADO/OPERANDO AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3176         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3177; {W6NopCer; InfoTyp 1977; NOPERA/CERRADO  AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3177         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3178; {W6ManAut; InfoTyp 1978; MANUAL/AUTOMATI AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3178         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype=3179; {W6NopAbi; InfoTyp 1979; NOPERA/ABIERTO  AlrmList 6}
.NoElType  = neAlarm4     { standard element type                   }
.InfoRef   = 3179         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment                       }
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

{-----------------------------------------}
{ DMS PHASE-2 Dx Element-Types (Messages) }
{-----------------------------------------}

.Elemtype= 3311 { dSPME-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3311         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3312 { dSPME-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3312         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3313 { dSPME-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3313         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3314 { dSPME-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3314         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3315 { dSPME-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3315         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3316 { dSPME-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3316         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3321 { dALM1-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3321         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3322 { dALM1-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3322         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3323 { dALM1-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3323         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3324 { dALM1-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3324         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3325 { dALM1-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3325         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3326 { dALM1-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3326         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3331 { dALM2-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3331         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3332 { dALM2-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3332         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3333 { dALM2-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3333         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3334 { dALM2-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3334         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3335 { dALM2-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3335         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3336 { dALM2-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3336         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3341 { dALM3-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3341         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3342 { dALM3-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3342         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3343 { dALM3-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3343         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3344 { dALM3-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3344         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3345 { dALM3-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3345         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3346 { dALM3-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3346         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3351 { dALM4-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3351         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3352 { dALM4-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3352         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3353 { dALM4-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3353         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3354 { dALM4-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3354         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3355 { dALM4-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3355         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3356 { dALM4-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3356         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3361 { dALM5-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3361         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3362 { dALM5-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3362         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3363 { dALM5-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3363         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3364 { dALM5-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3364         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3365 { dALM5-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3365         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3366 { dALM5-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3366         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3371 { dALM6-01 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3371         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3372 { dALM6-02 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3372         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3373 { dALM6-03 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3373         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3374 { dALM6-04 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3374         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3375 { dALM6-05 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3375         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;

.Elemtype= 3376 { dALM6-06 }
.NoElType  = neMessage5   { standard element type                   }
.InfoRef   = 3376         { reference to the info description       }
.SwType    = noSwitch     { switch type (for NCO)                   }
.CalVal    = false        { element has also calculation values     }
.ScVal     = false        { element has also short circuit calcul.  }
.MvSort    = noMv         { type of measured value (if  'MeasVal')  }
.CvSort    = noCv         { type of counter  value (if  'CountVal') }
.ScSort    = noSc         { type of short circuit value             }
.CmpType   = CpGeneral    { Component type of operational devices   }
.sw_earth  = false
.sw_sectioner = false     { element switch to sectioner             }
.EquType   = noSpecEquip  { type of equipment
.EquLocType= noSpecLoc    { location, if required for e.g. equipment}
write; clear;


closedb
$EOJ
