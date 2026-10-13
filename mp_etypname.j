#!/bin/csh
#                                 SPECTRUM: CSH
# Copyright (C) Siemens AG 1992-2014 All Rights Reserved.Confidential
#
# $NewRev$
# 220721 krue: element types 3012,3039 deleted
# 220616 krue: element type3154 added
# 220408 krue: element types 3036..3042 for GAS commands
# 220406 krue: element types 3027..3035 for GAS messages
# 220119 krue: element types 2809,3026,3148 added for E,G,W calcs
# 220117 krue: element types 2810,3025,3149 added for E,G,W message dummies
# 211117 krue: element type 3180 deleted
# 211102 krue: new element types 3134,3059,3058,3057,3056,3055,3054,3053,3052
#              3051,3050
# 210906 krue: element type 2999 as reduced Block Mark
# 210818 krue: element type 2905 as duplicate of 2342 for PHASE2 inserted
# 210428 krue: element types 2495,2496,2497,2498,2499,2500,2501 inserted
# 210427 krue: element types 2491,2492,2493,2494 inserted
# 210427 krue: element types 1617,1637,1657,1677,1697,1717,1737 inserted
# 201209 krue: element type 2000 OMSnc inserted
# 210130 krue: element type  3024 inserted
# 210126 krue: element types 2209..2213 inserted
# 201120 krue: element types 3018..3021 inserted
# 201001 krue: element type 3017 inserted
# 200930 krue: element types 3008,3016 inserted
# 200709 gief: new types: 1950-1951, 2390, 3311-3376
# 200625 gief: new types: 1614-1616,1634-1436,1654-1656,1674-1676,
#                         1694-1696,1714-1716,1734-1736,2421-2490
# 200605 krue: element type 3015 inserted
# 200528 krue: element types 3155..3160,3165..3170,3175..3180 added
# 200423 krue: element types 3133 added
# 200227 krue: element types 2881,2885 inserted
# 200211 krue: element type 3009 inserted
# 191203 krue: element types 2000,2001,2010,2011,2012,2013,2014,
#              2075,2076,2077,2078,2079,2711,2712,2713,2723 deleted
# 191118 krue: element type 3154 deleted
# 191104 krue: element types 3530..3538 deleted
# 191016 krue: element types tSPME-01..06,2811..2816 inserted
#              element type  tALM1-06..06,2821..2826 inserted
#              element types tALM2-05..06,2835..2836 inserted
#              element types tALM3-04..06,2844..2846 inserted
#              element types tALM4-01..06,2851..2856 inserted
#              element types tALM5-01..06,2861..2866 inserted
#              element types tALM6-01..06,2861..2866 inserted
# 190930 krue: new WATER element type 3154 for calculatd disturbed
# 190830 krue: new WATER element type 3530..3538 for commands without monitor
# 190826 krue: new WATER element type 3012..3014 valve switches
# 190722 krue: new WATER element type 3153 ValvViNG
# 190716 krue: new WATER element type 3132 W6sOpPar
# 190508 krue: elem types 3150..3152 for necessary internal calculations
# 190603 bark: new element types 2020..2023 for program alarm indication
# 190326 tens: for MRedes dublicate some el.types but use noSwitch while
#              they are not topologically correct connected. Has to be
#              switched back when they get correct topology.      te04
# 190214 krue: delete comments taken out
# 190213 krue: elemtypes renamed W4,W5,W6
# 190121 tens: WATER final changes
# 181210 tens: EPM Gas messages changed
# 181114 bark: ElementTyp 2208 Name von Reclos01 auf GruProt geaendert
# 181015 spc : ad-parametrisation_3: jobfile correction
# 180824 tens: EPM: Water-messages 3060..3081
# 180725 tens: EPM: Gas-messages 3000..3020
# 180412 bark: New ETypes 2010..2014 and 2075..2079
# 180411 bark: New ETypes for grounding devices 2400..2410
# 180308 bark: EPM Project Area starts with 2000
# 180405 ggraves sp7-iccp_v02.20_df_ems00100821_comm_alarms_msp Pick up EMS00091223
# 180402 ggraves: sp7-iccp_v02.10_df_ems00091223_comm_alarms_msp
# 160906 schg: sp7-scada_v02.10_fu_ems00078189_new_devices_vie TopoBatt(433)
# 160722 avafaei sp7-ifs_v02.10_fu_ems00072260_scan_group_relation_msp Pick up EMS00072260
# 160621 avafaei:sp7-ifs_v02.00_fu_ems00072260_scan_group_relation_msp
#               Added IFS_SG element 685, and supporting information
# 160409 Venkat:sp7-base_v02.00_df_ems00069345_nlstag1_blr Adapted NLS Tag
# 160318 Venkat: sp7-any_v02.00_fu_ems00069358_snmp_rel_blr
#                Added new element type(954)
#  7Aug2015 CReimann: sp7-immgtw_v01.30_df_ems00064524_agc_xfr_msp
#      New elements, types and infos from MGMS ems00054331, some for AGC.
# 150706 Vikas :sp7-base_v01.30_fu_ems00060169_alarm_ta_blr
#                TA for oracle redundancy monitoring
# 150428 dchen: sp7-pa_v01.30_fu_ems00060854_msp - add comment for JOP
#               (Elemtype=195,196).
# 150113 tens: ems58605 add element type equivalent injection
# 141208 dlundber:spc-iccp_v01.00_df_ems00040093_iccp_pseudo_msp
# 10May2013 CReimann: sp7-ots_v01.00_fu_ems00037328_ots_alarms_msp
#      Add new alarm element type AlrmDNGR (# 469) as neMessage5.
# 130610 schg: sp7-data_v01.10_df_ems00040612_fuse_vie add swtype fuse
# 121211 dimm: sp7-om_v01.10_fu_ems00034842_wp_311_1_vie add key 1741 for OM
# 121021 schg: sp7-data_v01.00_fu_ems735_tm-scada-param_vie
#              change special characters for IMM and xml
# 120416 schg: sp7-data_v01.00_fu_ems735_tm-scada-param_vie  adapt types
#              neAlarm2 used for fault indicator / direction (CDNA)
# 120926 mdehnnix sp7-any_v01.00_fu_ems00001028_msp: Add load shed
# 120531 Team bof-any_v01.01_df_ems1260_base_120512: upmerge P470 (BOFBASE-120512)
# 120102 mure bf-42439_oox3_47: changed dsm/oox reservation comment
# 120307 aturke bof-any_v01.00_fu_ems271_secmon_msp
# 120102 tens: BestOf disk monitor support
# 110831 Team bof-cfe_v01.00_fu_ems56_rtds_exts_msp
# 110805 tens: BestOf ems007 Power 3 web server
# 110411 tens: MultiPhase ems178 types added
# 110303 Klein: bf-sh_his: add eltype 477, EnhSyStat for HIS
# 110302 SRo feat-SR47_pe1003_IFS: Added IFSState 480
# 071129 wolff: feat-ui_6873_autodisp: Elemtype=476 added (OPswitch)
# 070904 Christa: feat-oa_4722_truck_location: element typ 961 'Ev Truck'
# 060406 kopp: bf-35109: new elementtyps 188,189,190 for sectioners
# 050302 hagl: feat-SR45_09_32593_disp: Elemtype = 952 added
# 040713 ashaqiri:  add Elemtype=51 CBFdH
# 040121 kien feat-tci-iec101_dial :
#   shift Elemtype=1160 TcMgrDUP from Projectarea to
#         Elemtype=960 in Standardarea
# 040115 butke : modified to keep standard compatible
# 020604 fahrig: add Elemtype=1160 TcMgrDUP
# 020304 grohmann: update TCI status informations for IBERDROLA
# 020114 sche spr-26818: Element types 950 and 951 added.
# 011218 grohmann: Additional TCI status informations for IBERDROLA
# 011009 grohmann: SPR27212 - Elemtype=491 TcLru101 added for protocol IEC101
# 010925 Neidhardt: Elemtype=490 TcLruTG8 for TG800 Protocol added
# 991125 hara : Attention for new element types inserted (find attention)
# 991015 form : Change elem type 426 to TopoCpl
# 990623 Klein: bf-20714 add SWpseu type 457.
# 980512 Pilny:
# Pilny: CB muAb -> CB muAB (DMS Integration)
# CB ts   -> CB nrc  (DMS Integration) DMS
# 980624 kamm: Elementtyp for TCI added:
#              Type for LRU-statusinformations
#              TcLruSYC=488 (RTU-Server Fa. SYCOMP)
# 980415 kamm: Elementtyp for TCI added:
#              Type for Dev-statusinformations
#              TcDevTra=486 (Transport Connection)
# $NewRevEnd$
#
# Attention!!!
# Please insert for new or changed element types also a 'long comment'
# description in ..$SPECPATH/src/param/baps/odb/fillrel/eltyde_longcom.sql
#
#

set RELNAME = "ETYPNAME"

source $SPECPATH/src/param/param_scripts/JOB_PART1


$P/bq >>& $JL                        <<BQEND

rel ETYPNAME
exe job $0

x
BQEND

set JOBST = $status
source $SPECPATH/src/param/param_scripts/JOB_PART2

exit

$BQ
rel ETYPNAME
open
clear
{ abbrevations:                                                        }
{ ts   : telesignalled                                                 }
{ tc   : telecontrolled                                                }
{ mu   : manually updated                                              }
{ Abno : deviation from normal state message displayed                 }
{ GS   : general summary list                                          }
{ Al   : alarm list                                                    }
{ Q    : acknowledge                                                   }

                                     { system types                    }
.Elemtype=  1; .Name= 'LK State'; wr { Lk State              neRTXSTA  }            {NLS_Translate}
.Elemtype=  2; .Name= 'DevState'; wr { Device                neDEVICE  }            {NLS_Translate}
.Elemtype=  3; .Name= 'ComState'; wr { Computer              neCOMPSTAT}            {NLS_Translate}
.Elemtype=  4; .Name= 'RTxState'; wr { TCI/RTU state         neRTXSTAT }            {NLS_Translate}
.Elemtype=  5; .Name= 'BlocTags'; wr { Block mark            neUNIVERS }            {NLS_Translate}
.Elemtype=  6; .Name= 'TopElem '; wr { Topology Element      neTOPELEM }            {NLS_Translate}
.Elemtype=  7; .Name= 'BlocStat'; wr { Block mark f. station neUNIVERS }            {NLS_Translate}
.Elemtype= 63; .Name= 'BlocT1BB'; wr { Block mark feeder with 1 BB     }            {NLS_Translate}
.Elemtype= 64; .Name= 'BlocT2BB'; wr { Block mark feeder with 2 BB     }            {NLS_Translate}
.Elemtype= 65; .Name= 'BlocT3BB'; wr { Block mark feeder with 3 BB     }            {NLS_Translate}

{Elemtype=  8..37                      see   mv_etypname               }

.Elemtype= 38; .Name= 'DataSave'; wr { Data Save                       }            {NLS_Translate}

.Elemtype= 39; .Name= 'RTX SB  '; wr { TCI/RTU state                   }            {NLS_Translate}

.Elemtype= 70; .Name= 'Logon-of'; wr { Logon/off element               }            {NLS_Translate}

                                     { switches part 1                 }
.Elemtype= 40; .Name= 'CB      '; wr { Circuit Breaker    ts,tc        }            {NLS_Translate}
.Elemtype= 41; .Name= 'CB LRel '; wr { CB with latching relay ts,tc    }            {NLS_Translate}
.Elemtype= 42; .Name= 'CB muAB '; wr { CB                 mu   Abno    }            {NLS_Translate}
.Elemtype= 43; .Name= 'CB GENtc'; wr { CB Generator       ts tc        }            {NLS_Translate}
.Elemtype= 44; .Name= 'CB LR Ab'; wr { CB w.latching rel. ts tc Abno   }            {NLS_Translate}
.Elemtype= 45; .Name= 'Iso     '; wr { Isolator           ts,tc        }            {NLS_Translate}
{Elemtype= 46; .Name= 'res046  '; wr   free                            }            {NLS_Translate}
.Elemtype= 47; .Name= 'Iso ts  '; wr { Isolator           ts           }            {NLS_Translate}
.Elemtype= 48; .Name= 'Sli tc  '; wr { slider             ts,tc        }            {NLS_Translate}
.Elemtype= 49; .Name= 'Sw noTop'; wr { switch with no topology         }            {NLS_Translate}
.Elemtype= 50; .Name= 'Iso tsAl'; wr { isolator           ts    Alarm  }            {NLS_Translate}
.Elemtype= 67; .Name= 'Fus  ts '; wr { Fusible Breaker    ts           }            {NLS_Translate}
.Elemtype=188; .Name= 'SecIs tc'; wr { busbar sectioner   ts,tc        }            {NLS_Translate}
.Elemtype=189; .Name= 'SecIs ts'; wr { busbar sectioner   ts           }            {NLS_Translate}
.Elemtype=190; .Name= 'SecIs mu'; wr { busbar sectioner   mu           }            {NLS_Translate}
.Elemtype=280; .Name= 'LB tc   '; wr { Load break sw      ts,tc        }            {NLS_Translate}
.Elemtype=281; .Name= 'LB ts   '; wr { Load break sw      ts           }            {NLS_Translate}
.Elemtype=282; .Name= 'LB muAb '; wr { Load break sw      mu   Abno    }            {NLS_Translate}
.Elemtype=283; .Name= 'Sw muAb '; wr { switch             mu   Abno    }            {NLS_Translate}
.Elemtype=284; .Name= 'SGT tc  '; wr { switchgear truck   ts,tc        }            {NLS_Translate}
.Elemtype=285; .Name= 'SGT ts  '; wr { switchgear truck   ts           }            {NLS_Translate}
.Elemtype=286; .Name= 'IsoE  mu'; wr { earth              mu           }            {NLS_Translate}
.Elemtype=287; .Name= 'CB mu   '; wr { C. Breaker         mu           }            {NLS_Translate}
.Elemtype=288; .Name= 'LB mu   '; wr { Load breaker       mu           }            {NLS_Translate}
.Elemtype=289; .Name= 'Sw mu   '; wr { switch             mu           }            {NLS_Translate}

                                     { Fleetings                       }
                                     { NoElType = message5             }
.Elemtype=290; .Name= 'Fl GS   '; wr { Fleet                 GS        }
.Elemtype=295; .Name= 'SCd 1   '; wr { Cmd single pole    GS           }
.Elemtype=297; .Name= 'DCd OnOf'; wr { Cmd double pole    GS on/off    }


.Elemtype= 51; .Name= 'CBFdH   '; wr { CB DMS Feederhead  ts,tc        }            {NLS_Translate}

{Elemtype= 52; .Name= 'res052  '; wr}{ free                            }            {NLS_Translate}
{Elemtype= 53; .Name= 'res053  '; wr}{ free                            }            {NLS_Translate}
{Elemtype= 54; .Name= 'res054  '; wr}{ free                            }            {NLS_Translate}
{Elemtype= 55; .Name= 'res055  '; wr}{ free                            }            {NLS_Translate}
{Elemtype= 56; .Name= 'res056  '; wr}{ free                            }            {NLS_Translate}
.Elemtype= 57; .Name= 'DskMon  '; wr { Disk Monitor Status element ty. }            {NLS_Translate}
.Elemtype= 58; .Name= 'M1Int   '; wr { Element M1intern                }            {NLS_Translate}
.Elemtype= 59; .Name= 'M1IntLim'; wr { Element M1IntLim                }            {NLS_Translate}

                                     {Transformer                      }
.Elemtype= 60; .Name= 'TapCh Vc'; wr { Tap changer with Voltage control}            {NLS_Translate}
.Elemtype= 61; .Name= 'TapCh   '; wr { Tap changer                     }            {NLS_Translate}
.Elemtype= 62; .Name= 'TapChGen'; wr { Tap changer            generator}            {NLS_Translate}
.Elemtype=455; .Name= 'Compens1'; wr { compensator                     }            {NLS_Translate}

{Elemtype= 63..65                      refer to systemtypes            }

{Elemtype= 66                          refer to protection alarms      }
{Elemtype= 67                          refer to switches               }
{Elemtype= 68; .Name= 'res068  '; wr   free                            }            {NLS_Translate}
.Elemtype= 69; .Name= 'WebApp  '; wr { web server application status   }            {NLS_Translate}
{Elemtype= 70;                         see system types                }
{Elemtype= 71                          refer earth fault               }
.Elemtype= 72; .Name= 'SP Mess '; wr { Messages Setpoint control       }            {NLS_Translate}
{Elemtype= 73;                         see   mv_etypname.j             }
{Elemtype= 74;                         see   mv_etypname.j             }
.Elemtype= 75; .Name= 'TraMo123'; wr { Transformer mode 1//2//3        }            {NLS_Translate}
.Elemtype= 76; .Name= 'TraMo12 '; wr { Transformer mode 1//2           }            {NLS_Translate}

.Elemtype= 77; .Name= 'AGC Mess'; wr { AGC messages                    }            {NLS_Translate}

{Elemtype= 78                          see   pa                        }

.Elemtype= 79; .Name= 'SYNC dev'; wr { syncronisation device           }            {NLS_Translate}

{Elemtype= 80..99                      see   na                        }
{Elemtype=100..111                     see   pa                        }
{Elemtype=112..171                     see   na                        }
{Elemtype=172..174                     see   pa                        }
{Elemtype=175..176                     see   na                        }
{Elemtype=177..179                     see   pa                        }
{Elemtype=180..181                     free                            }
{Elemtype=182..183                     see   pa                        }
{Elemtype=188..190                     free                            }
{Elemtype=193..196                     pa                              }
{Elemtype=191..192 and 197..208        see   sa                        }
{Elemtype=209..212                     see   pa                        }
{Elemtype=213..214                     see   sa                        }
{Elemtype=215..216                     see   pa                        }
{Elemtype=217..219                     see   sa                        }
{Elemtype=220..237                     see   pa                        }
{Elemtype=238..243                     see   pa                        }
{Elemtype=244..249                     free                            }
{Elemtype=250..267                     see   cv                        }
{Elemtype=268..269                     see   pa                        }
{Elemtype=270..279                     see   cv                        }

{Elemtype=280..289                     see   switches                  }

{Elemtype=290..299                     see   removed                   }

{Elemtype=300..349                     free                            }
{Elemtype=350..352 analog DNA / FLOC   see   mv_etypname               }
{Elemtype=352..399                     free                            }
{Elemtype=400..403                     free                            }
{Elemtype=404..407                     see   pa                        }
{Elemtype=408..415                     free                            }

.Elemtype=416; .Name= 'TopoElem'; wr { Topological elements            }            {NLS_Translate}
.Elemtype=417; .Name= 'TopoOpDv'; wr { Operational device general      }            {NLS_Translate}
.Elemtype=418; .Name= 'TopoConn'; wr { Topological connection point    }            {NLS_Translate}
.Elemtype=419; .Name= 'TopoGrnd'; wr { Grounding (the Earth)           }            {NLS_Translate}
.Elemtype=420; .Name= 'TopoBB  '; wr { Busbar                          }            {NLS_Translate}
.Elemtype=421; .Name= 'TopoABb '; wr { Auxiliary Busbar                }            {NLS_Translate}
.Elemtype=422; .Name= 'TopoCmBB'; wr { Busbar combination              }            {NLS_Translate}
.Elemtype=423; .Name= 'TopoGen '; wr { Generator                       }            {NLS_Translate}
.Elemtype=424; .Name= 'TopoInj '; wr { Injection                       }            {NLS_Translate}
.Elemtype=425; .Name= 'TopoLoad'; wr { Load                            }            {NLS_Translate}
.Elemtype=426; .Name= 'TopoCpl '; wr { Coupling                        }            {NLS_Translate}
.Elemtype=427; .Name= 'TopoComp'; wr { Compensator                     }            {NLS_Translate}
.Elemtype=428; .Name= 'TopoStar'; wr { Petersen coil                   }            {NLS_Translate}
.Elemtype=429; .Name= 'TopoLine'; wr { Line section                    }            {NLS_Translate}
.Elemtype=430; .Name= 'TopoTraf'; wr { Transformer                     }            {NLS_Translate}
.Elemtype=431; .Name= 'Topo3W  '; wr { Three Winding Transformer       }            {NLS_Translate}
.Elemtype=432; .Name= 'TopoEquI'; wr { Equivalent Injection            }            {NLS_Translate}
.Elemtype=433; .Name= 'TopoBatt'; wr { Battery                         }            {NLS_Translate}
{Elemtype=434; .Name= 'res434  '; wr   free                            }            {NLS_Translate}
{Elemtype=435; .Name= 'res435  '; wr   free                            }            {NLS_Translate}
{Elemtype=436; .Name= 'res436  '; wr   free                            }            {NLS_Translate}
{Elemtype=437; .Name= 'res437  '; wr   free                            }            {NLS_Translate}
{Elemtype=438; .Name= 'res438  '; wr   free                            }            {NLS_Translate}
{Elemtype=439; .Name= 'res439  '; wr   free                            }            {NLS_Translate}

                                     { switches, part 2                }
.Elemtype=440; .Name= 'CB nrc  '; wr { CB                 ts           }            {NLS_Translate}
.Elemtype=441; .Name= 'Fus tsAb'; wr { fusible breaker 1 pole ts Abno  }            {NLS_Translate}
{Elemtype=442; .Name= 'res442  '; wr   Reserve                         }            {NLS_Translate}
{Elemtype=443; .Name= 'res443  '; wr   Reserve                         }            {NLS_Translate}
.Elemtype=444; .Name= 'CB tcAb '; wr { CB                 ts,tc Abno   }            {NLS_Translate}
.Elemtype=445; .Name= 'LB tcAb '; wr { Load break sw      ts,tc Abno   }            {NLS_Translate}
.Elemtype=446; .Name= 'SGT tsAl'; wr { switchgear truck   ts    Alarm  }            {NLS_Translate}
.Elemtype=447; .Name= 'IsoE  tc'; wr { earth              ts,tc        }            {NLS_Translate}
.Elemtype=448; .Name= 'IsoE  ts'; wr { earth              ts           }            {NLS_Translate}
.Elemtype=449; .Name= 'CB tsAb '; wr { CB                 ts,   Abno   }            {NLS_Translate}
.Elemtype=450; .Name= 'LB tsAb '; wr { Load-break sw      ts,   Abno   }            {NLS_Translate}
.Elemtype=451; .Name= 'Iso tcAb'; wr { iso                ts,tc Abno   }            {NLS_Translate}
.Elemtype=452; .Name= 'Iso tsAb'; wr { iso                ts,   Abno   }            {NLS_Translate}
.Elemtype=453; .Name= 'SGT tcAb'; wr { switchgear truck   ts,tc Abno   }            {NLS_Translate}
.Elemtype=454; .Name= 'SGT tsAb'; wr { switchgear truck   ts,   Abno   }            {NLS_Translate}
{Elemtype=455                          see tranformer                  }
.Elemtype=456; .Name= 'Iso mu  '; wr { iso                mu           }            {NLS_Translate}
.Elemtype=457; .Name= 'SWpseu  '; wr { switch: no message in lists     }            {NLS_Translate}
{Elemtype=458; .Name= 'res458  '; wr   free                            }            {NLS_Translate}
{Elemtype=459; .Name= 'res459  '; wr   free                            }            {NLS_Translate}
{Elemtype=460; .Name= 'res460  '; wr   free                            }            {NLS_Translate}

                                     { Earth Fault                     }
.Elemtype= 71; .Name= 'EaFlt 1 '; wr { earth fault                     }            {NLS_Translate}
.Elemtype=461; .Name= 'EaDir 1 '; wr { e. fault direction ts GS     Gr }            {NLS_Translate}
.Elemtype=462; .Name= 'pEaFlt  '; wr { persistent e.fault ts GS,L3Q GrQ}            {NLS_Translate}
{Elemtype=463; .Name= 'res463  '; wr   free                            }            {NLS_Translate}
{Elemtype=464; .Name= 'res464  '; wr   free                            }            {NLS_Translate}

                                     { protection alarms
.Elemtype= 66; .Name= 'Dst Prot'; wr { distance prot.    GS      Li3   }            {NLS_Translate}
.Elemtype=465; .Name= 'DiffProt'; wr { differential prot.GS      Li3   }            {NLS_Translate}
.Elemtype=466; .Name= 'PhasProt'; wr { phase protection  GS      Li3   }            {NLS_Translate}
.Elemtype=467; .Name= 'BusbProt'; wr { busbar protection GS      Li3   }            {NLS_Translate}
.Elemtype=468; .Name= 'GenProt '; wr { generator.prot.   GS      Li3   }            {NLS_Translate}
.Elemtype=474; .Name= 'TimeProt'; wr { indip.time prot.  GS      Li3   }            {NLS_Translate}

                                     { Auxiliary devices               }
                                     { Noeltype = message5             }
.Elemtype=469; .Name= 'AlrmDNGR'; wr { General alarms ts GS,Misc       }            {NLS_Translate}
.Elemtype=470; .Name= 'Ax ts   '; wr {                ts GS Gr         }            {NLS_Translate}
{Elemtype=471..473                     see   removed                   }

{Elemtype=475                          see mv                          }

.Elemtype=476; .Name= 'OPswitch'; wr { open point switch       Abno    }            {NLS_Translate}

.Elemtype=477; .Name= 'HIS     '; wr { status of sh component HIS      }            {NLS_Translate}

{Elemtype=478..479                     free                            }

.Elemtype=480; .Name= 'IFSState'; wr { IFS status and control          }            {NLS_Translate}

.Elemtype=481; .Name= 'IFSSgSta'; wr { IFS SG status and control       }            {NLS_Translate}

{Elemtype=482..497                     see   removed                   }

.Elemtype=498; .Name= 'ElcState'; wr { ELCOM connections               }            {NLS_Translate}
.Elemtype=499; .Name= 'SysState'; wr { subsystem status                }            {NLS_Translate}

{Elemtype=500..549                     see   mv_etypname               }

{Elemtype=550, 551                     see   removed                   }
{Elemtype=552..559                     see   mv_etypname               }
{Elemtype=560..569                     see   cv_etypname               }

{Elemtype=570..589                     see   removed                   }

{Elemtype=600, 601                     see   removed                   }
{Elemtype=602..609                     see   mv_etypname               }
{Elemtype=610..619                     see   cv_etypname               }

{Elemtype=620..639                     see   removed                   }

.ElemType= 649; .Name= 'IccpStat'; wr { Data Link Status - Oper        }            {NLS_Translate}

.ElemType= 650; .Name= 'IccpAdmi'; wr { Data Link Status - Admin       }            {NLS_Translate}

{Elemtype=651                          see   removed                   }

{Elemtype=670..689                     see   removed                   }

.Elemtype=700; .Name= 'CBE     '; wr { Circuit Breaker    ts,tc        }            {NLS_Translate}
.Elemtype=701; .Name= 'CBEmuAb '; wr { CB                 mu   Abno    }            {NLS_Translate}
.Elemtype=702; .Name= 'IsoEtsAl'; wr { isolator           ts    Alarm  }            {NLS_Translate}
.Elemtype=703; .Name= 'SwEmuAb '; wr { switch             mu   Abno    }            {NLS_Translate}
.Elemtype=704; .Name= 'CBEmu   '; wr { C. Breaker         mu           }            {NLS_Translate}
.Elemtype=705; .Name= 'SwEmu   '; wr { switch             mu           }            {NLS_Translate}
.Elemtype=706; .Name= 'CBEts   '; wr { CB                 ts           }            {NLS_Translate}
.Elemtype=707; .Name= 'CBEtsAb '; wr { CB                 ts,   Abno   }            {NLS_Translate}
.Elemtype=708; .Name= 'IsoEtcAb'; wr { iso                ts,tc Abno   }            {NLS_Translate}
.Elemtype=709; .Name= 'IsoEtsAb'; wr { iso                ts,   Abno   }            {NLS_Translate}

{Elemtype=710..749                     reserve                         }
{Elemtype=750..799                     reserve                         }

{Elemtype=800..879                     see   removed                   }

     { AGC controllable alarms, NoElType = neALARM3                    }
.Elemtype=880; .Name= 'AGCStat '; wr { AGC Status                      }            {NLS_Translate}
.Elemtype=881; .Name= 'AGCLocRm'; wr { AGC Local / Remote state        }            {NLS_Translate}
.Elemtype=882; .Name= 'AGCUnStU'; wr { AGC Unit Start-Up command       }            {NLS_Translate}
.Elemtype=883; .Name= 'AGCUnShD'; wr { AGC Unit Shut-Down command      }            {NLS_Translate}
.Elemtype=884; .Name= 'AGCUnMWR'; wr { AGC Unit MW Local/Remote control}            {NLS_Translate}
.Elemtype=885; .Name= 'AGCUnMVR'; wr { AGC Unit MVAR Local/Remote ctrl }            {NLS_Translate}
.Elemtype=886; .Name= 'AGCUnVRT'; wr { AGC Unit Low-Voltage Ride-      }            {NLS_Translate}
                              { Through enable/disable switch control  }
.Elemtype=887; .Name= 'AGCUnFRT'; wr { AGC Unit Frequency Ride-Through }            {NLS_Translate}
                              { enable/disable switch control          }
.Elemtype=888; .Name= 'AGCArCtS'; wr { AGC Area Control Switch,        }            {NLS_Translate}
                              { between Connected to Grid and Islanded }

{Elemtype=889..894                     RESERVED for AGC alarms         }

{Elemtype=895..899                     AGC analogs, see mv_etypname.j  }


{Elemtype=900..941                     refer to dsm                    }

.Elemtype=942; .Name= 'OFI_F   '; wr { overcurrent fault indicator from}            {NLS_Translate}
.Elemtype=943; .Name= 'OFI_T   '; wr { overcurrent fault indicator to  }            {NLS_Translate}
.Elemtype=944; .Name= 'OFDir_F '; wr { overcurrent fault direction from}            {NLS_Translate}
.Elemtype=945; .Name= 'OFDir_T '; wr { overcurrent fault direction to  }            {NLS_Translate}
.Elemtype=946; .Name= 'EFI_F   '; wr { earth fault indicator from      }            {NLS_Translate}
.Elemtype=947; .Name= 'EFI_T   '; wr { earth fault indicator to        }            {NLS_Translate}
.Elemtype=948; .Name= 'EFDir_F '; wr { earth fault direction from      }            {NLS_Translate}
.Elemtype=949; .Name= 'EFDir_T '; wr { earth fault direction to        }            {NLS_Translate}

.Elemtype=950; .Name= 'CcStatus'; wr { Control center status           }            {NLS_Translate}
.Elemtype=951; .Name= 'NcReport'; wr { network control report          }            {NLS_Translate}
.Elemtype=952; .Name= 'Dispatch'; wr { dispatcher shift change         }            {NLS_Translate}
.Elemtype=953; .Name= 'DbState '; wr { oracle redundancy monitoring    }            {NLS_Translate}
.Elemtype=954; .Name= 'SNMPStat'; wr { SNMP status informations        }            {NLS_Translate}

{Elemtype=955..959                     free                            }
{Elemtype=960                          see   removed                   }

.Elemtype=961; .Name= 'Ev Truck'; wr { Truck Location                 }             {NLS_Translate}

{Elemtype=962                          free                            }

{Elemtype=963..967                     used by CFE                     }

{Elemtype=968..997                     free                            }

.Elemtype=998; .Name= 'UL ELE  '; wr { Underfrequency load shed message}            {NLS_Translate}
.Elemtype=999; .Name= 'LS ELE  '; wr { Load shed message               }            {NLS_Translate}

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

.Elemtype=1001; .Name= 'CB tcg  '; wr {CB telecontr ganged  phase ABC }             {NLS_Translate}
.Elemtype=1002; .Name= 'CB tsg  '; wr {CB telesigna ganged  phase ABC }             {NLS_Translate}
.Elemtype=1003; .Name= 'CB mug  '; wr {CB manualupd ganged  phase ABC }             {NLS_Translate}

.Elemtype=1006; .Name= 'ISOmug  '; wr {ISO manualup ganged  phase ABC }             {NLS_Translate}
.Elemtype=1007; .Name= 'ISOtcg  '; wr {ISO telecont ganged  phase ABC }             {NLS_Translate}
.Elemtype=1008; .Name= 'ISOtsg  '; wr {ISO telesign ganged  phase ABC }             {NLS_Translate}

.Elemtype=1010; .Name= 'LB mug  '; wr {LB manualupd ganged  phase ABC }             {NLS_Translate}
.Elemtype=1011; .Name= 'LB tcg  '; wr {LB telecontr ganged  phase ABC }             {NLS_Translate}
.Elemtype=1012; .Name= 'LB tsg  '; wr {LB telesigna ganged  phase ABC }             {NLS_Translate}

.Elemtype=1015; .Name= 'ISStcg  '; wr {ISO sectio telec gang phas ABC }             {NLS_Translate}
.Elemtype=1016; .Name= 'ISStsg  '; wr {ISO sectio teles gang phas ABC }             {NLS_Translate}
.Elemtype=1017; .Name= 'ISSmug  '; wr {ISO sectio manua gang phas ABC }             {NLS_Translate}

.Elemtype=1018; .Name= 'ISEmug  '; wr {ISO earth manual gang phas ABC }             {NLS_Translate}
.Elemtype=1019; .Name= 'ISEtcg  '; wr {ISO earth teleco gang phas ABC }             {NLS_Translate}
.Elemtype=1020; .Name= 'ISEtsg  '; wr {ISO earth telesi gang phas ABC }             {NLS_Translate}

.Elemtype=1023; .Name= 'FUSmug  '; wr {FUSE manualupd ganged phas ABC }             {NLS_Translate}

.Elemtype=1051; .Name= 'CB tcn  '; wr {CB telecontr not ganged    ABC }             {NLS_Translate}
.Elemtype=1052; .Name= 'CB tsn  '; wr {CB telesigna not ganged    ABC }             {NLS_Translate}
.Elemtype=1053; .Name= 'CB mun  '; wr {CB manualupd not ganged    ABC }             {NLS_Translate}

.Elemtype=1056; .Name= 'ISOmun  '; wr {ISO manualup not ganged    ABC }             {NLS_Translate}
.Elemtype=1057; .Name= 'ISOtcn  '; wr {ISO telecont not ganged    ABC }             {NLS_Translate}
.Elemtype=1058; .Name= 'ISOtsn  '; wr {ISO telesign not ganged    ABC }             {NLS_Translate}

.Elemtype=1060; .Name= 'LB mun  '; wr {LB manualupd not ganged    ABC }             {NLS_Translate}
.Elemtype=1061; .Name= 'LB tcn  '; wr {LB telecontr not ganged    ABC }             {NLS_Translate}
.Elemtype=1062; .Name= 'LB tsn  '; wr {LB telesigna not ganged    ABC }             {NLS_Translate}

.Elemtype=1065; .Name= 'ISStcn  '; wr {ISO sectio telec not gang  ABC }             {NLS_Translate}
.Elemtype=1066; .Name= 'ISStsn  '; wr {ISO sectio teles not gang  ABC }             {NLS_Translate}
.Elemtype=1067; .Name= 'ISSmun  '; wr {ISO sectio manua not gang  ABC }             {NLS_Translate}

.Elemtype=1068; .Name= 'ISEmun  '; wr {ISO earth manual not gang  ABC }             {NLS_Translate}
.Elemtype=1069; .Name= 'ISEtcn  '; wr {ISO earth teleco not gang  ABC }             {NLS_Translate}
.Elemtype=1070; .Name= 'ISEtsn  '; wr {ISO earth telesi not gang  ABC }             {NLS_Translate}

.Elemtype=1073; .Name= 'FUSmun  '; wr {FUSE manualupd not ganged  ABC }             {NLS_Translate}

.Elemtype=1101; .Name= 'CB tcg A'; wr {CB telecontr ganged  phase A   }             {NLS_Translate}
.Elemtype=1102; .Name= 'CB tsg A'; wr {CB telesigna ganged  phase A   }             {NLS_Translate}
.Elemtype=1103; .Name= 'CB mug A'; wr {CB manualupd ganged  phase A   }             {NLS_Translate}

.Elemtype=1106; .Name= 'ISOmug A'; wr {ISO manualup ganged  phase A   }             {NLS_Translate}
.Elemtype=1107; .Name= 'ISOtcg A'; wr {ISO telecont ganged  phase A   }             {NLS_Translate}
.Elemtype=1108; .Name= 'ISOtsg A'; wr {ISO telesign ganged  phase A   }             {NLS_Translate}

.Elemtype=1110; .Name= 'LB mug A'; wr {LB manualupd ganged  phase A   }             {NLS_Translate}
.Elemtype=1111; .Name= 'LB tcg A'; wr {LB telecontr ganged  phase A   }             {NLS_Translate}
.Elemtype=1112; .Name= 'LB tsg A'; wr {LB telesigna ganged  phase A   }             {NLS_Translate}

.Elemtype=1115; .Name= 'ISStcg A'; wr {ISO sectio telec gang phas A   }             {NLS_Translate}
.Elemtype=1116; .Name= 'ISStsg A'; wr {ISO sectio teles gang phas A   }             {NLS_Translate}
.Elemtype=1117; .Name= 'ISSmug A'; wr {ISO sectio manua gang phas A   }             {NLS_Translate}

.Elemtype=1118; .Name= 'ISEmug A'; wr {ISO earth manual gang phas A   }             {NLS_Translate}
.Elemtype=1119; .Name= 'ISEtcg A'; wr {ISO earth teleco gang phas A   }             {NLS_Translate}
.Elemtype=1120; .Name= 'ISEtsg A'; wr {ISO earth telesi gang phas A   }             {NLS_Translate}

.Elemtype=1123; .Name= 'FUSmug A'; wr {FUSE manualupd ganged phas A   }             {NLS_Translate}

.Elemtype=1151; .Name= 'CB tcg B'; wr {CB telecontr ganged  phase B   }             {NLS_Translate}
.Elemtype=1152; .Name= 'CB tsg B'; wr {CB telesigna ganged  phase B   }             {NLS_Translate}
.Elemtype=1153; .Name= 'CB mug B'; wr {CB manualupd ganged  phase B   }             {NLS_Translate}

.Elemtype=1156; .Name= 'ISOmug B'; wr {ISO manualup ganged  phase B   }             {NLS_Translate}
.Elemtype=1157; .Name= 'ISOtcg B'; wr {ISO telecont ganged  phase B   }             {NLS_Translate}
.Elemtype=1158; .Name= 'ISOtsg B'; wr {ISO telesign ganged  phase B   }             {NLS_Translate}

.Elemtype=1160; .Name= 'LB mug B'; wr {LB manualupd ganged  phase B   }             {NLS_Translate}
.Elemtype=1161; .Name= 'LB tcg B'; wr {LB telecontr ganged  phase B   }             {NLS_Translate}
.Elemtype=1162; .Name= 'LB tsg B'; wr {LB telesigna ganged  phase B   }             {NLS_Translate}

.Elemtype=1165; .Name= 'ISStcg B'; wr {ISO sectio telec gang phas B   }             {NLS_Translate}
.Elemtype=1166; .Name= 'ISStsg B'; wr {ISO sectio teles gang phas B   }             {NLS_Translate}
.Elemtype=1167; .Name= 'ISSmug B'; wr {ISO sectio manua gang phas B   }             {NLS_Translate}

.Elemtype=1168; .Name= 'ISEmug B'; wr {ISO earth manual gang phas B   }             {NLS_Translate}
.Elemtype=1169; .Name= 'ISEtcg B'; wr {ISO earth teleco gang phas B   }             {NLS_Translate}
.Elemtype=1170; .Name= 'ISEtsg B'; wr {ISO earth telesi gang phas B   }             {NLS_Translate}

.Elemtype=1173; .Name= 'FUSmug B'; wr {FUSE manualupd ganged phas B   }             {NLS_Translate}

.Elemtype=1201; .Name= 'CB tcg C'; wr {CB telecontr ganged  phase C   }             {NLS_Translate}
.Elemtype=1202; .Name= 'CB tsg C'; wr {CB telesigna ganged  phase C   }             {NLS_Translate}
.Elemtype=1203; .Name= 'CB mug C'; wr {CB manualupd ganged  phase C   }             {NLS_Translate}

.Elemtype=1206; .Name= 'ISOmug C'; wr {ISO manualup ganged  phase C   }             {NLS_Translate}
.Elemtype=1207; .Name= 'ISOtcg C'; wr {ISO telecont ganged  phase C   }             {NLS_Translate}
.Elemtype=1208; .Name= 'ISOtsg C'; wr {ISO telesign ganged  phase C   }             {NLS_Translate}

.Elemtype=1210; .Name= 'LB mug C'; wr {LB manualupd ganged  phase C   }             {NLS_Translate}
.Elemtype=1211; .Name= 'LB tcg C'; wr {LB telecontr ganged  phase C   }             {NLS_Translate}
.Elemtype=1212; .Name= 'LB tsg C'; wr {LB telesigna ganged  phase C   }             {NLS_Translate}

.Elemtype=1215; .Name= 'ISStcg C'; wr {ISO sectio telec gang phas C   }             {NLS_Translate}
.Elemtype=1216; .Name= 'ISStsg C'; wr {ISO sectio teles gang phas C   }             {NLS_Translate}
.Elemtype=1217; .Name= 'ISSmug C'; wr {ISO sectio manua gang phas C   }             {NLS_Translate}

.Elemtype=1218; .Name= 'ISEmug C'; wr {ISO earth manual gang phas C   }             {NLS_Translate}
.Elemtype=1219; .Name= 'ISEtcg C'; wr {ISO earth teleco gang phas C   }             {NLS_Translate}
.Elemtype=1220; .Name= 'ISEtsg C'; wr {ISO earth telesi gang phas C   }             {NLS_Translate}

.Elemtype=1223; .Name= 'FUSmug C'; wr {FUSE manualupd ganged phas C   }             {NLS_Translate}

.Elemtype=1251; .Name= 'CB tcgAB'; wr {CB telecontr ganged  phase AB  }             {NLS_Translate}
.Elemtype=1252; .Name= 'CB tsgAB'; wr {CB telesigna ganged  phase AB  }             {NLS_Translate}
.Elemtype=1253; .Name= 'CB mugAB'; wr {CB manualupd ganged  phase AB  }             {NLS_Translate}

.Elemtype=1256; .Name= 'ISOmugAB'; wr {ISO manualup ganged  phase AB  }             {NLS_Translate}
.Elemtype=1257; .Name= 'ISOtcgAB'; wr {ISO telecont ganged  phase AB  }             {NLS_Translate}
.Elemtype=1258; .Name= 'ISOtsgAB'; wr {ISO telesign ganged  phase AB  }             {NLS_Translate}

.Elemtype=1260; .Name= 'LB mugAB'; wr {LB manualupd ganged  phase AB  }             {NLS_Translate}
.Elemtype=1261; .Name= 'LB tcgAB'; wr {LB telecontr ganged  phase AB  }             {NLS_Translate}
.Elemtype=1262; .Name= 'LB tsgAB'; wr {LB telesigna ganged  phase AB  }             {NLS_Translate}

.Elemtype=1265; .Name= 'ISStcgAB'; wr {ISO sectio telec gang phas AB  }             {NLS_Translate}
.Elemtype=1266; .Name= 'ISStsgAB'; wr {ISO sectio teles gang phas AB  }             {NLS_Translate}
.Elemtype=1267; .Name= 'ISSmugAB'; wr {ISO sectio manua gang phas AB  }             {NLS_Translate}

.Elemtype=1268; .Name= 'ISEmugAB'; wr {ISO earth manual gang phas AB  }             {NLS_Translate}
.Elemtype=1269; .Name= 'ISEtcgAB'; wr {ISO earth teleco gang phas AB  }             {NLS_Translate}
.Elemtype=1270; .Name= 'ISEtsgAB'; wr {ISO earth telesi gang phas AB  }             {NLS_Translate}

.Elemtype=1273; .Name= 'FUSmugAB'; wr {FUSE manualupd ganged phas AB  }             {NLS_Translate}

.Elemtype=1301; .Name= 'CB tcnAB'; wr {CB telecontr not ganged    AB  }             {NLS_Translate}
.Elemtype=1302; .Name= 'CB tsnAB'; wr {CB telesigna not ganged    AB  }             {NLS_Translate}
.Elemtype=1303; .Name= 'CB munAB'; wr {CB manualupd not ganged    AB }              {NLS_Translate}

.Elemtype=1306; .Name= 'ISOmunAB'; wr {ISO manualup not ganged    AB  }             {NLS_Translate}
.Elemtype=1307; .Name= 'ISOtcnAB'; wr {ISO telecont not ganged    AB  }             {NLS_Translate}
.Elemtype=1308; .Name= 'ISOtsnAB'; wr {ISO telesign not ganged    AB  }             {NLS_Translate}

.Elemtype=1310; .Name= 'LB munAB'; wr {LB manualupd not ganged    AB  }             {NLS_Translate}
.Elemtype=1311; .Name= 'LB tcnAB'; wr {LB telecontr not ganged    AB  }             {NLS_Translate}
.Elemtype=1312; .Name= 'LB tsnAB'; wr {LB telesigna not ganged    AB  }             {NLS_Translate}

.Elemtype=1315; .Name= 'ISStcnAB'; wr {ISO sectio telec not gang  AB  }             {NLS_Translate}
.Elemtype=1316; .Name= 'ISStsnAB'; wr {ISO sectio teles not gang  AB  }             {NLS_Translate}
.Elemtype=1317; .Name= 'ISSmunAB'; wr {ISO sectio manua not gang  AB  }             {NLS_Translate}

.Elemtype=1318; .Name= 'ISEmunAB'; wr {ISO earth manual not gang  AB  }             {NLS_Translate}
.Elemtype=1319; .Name= 'ISEtcnAB'; wr {ISO earth teleco not gang  AB  }             {NLS_Translate}
.Elemtype=1320; .Name= 'ISEtsnAB'; wr {ISO earth telesi not gang  AB  }             {NLS_Translate}

.Elemtype=1323; .Name= 'FUSmunAB'; wr {FUSE manualupd not ganged  AB  }             {NLS_Translate}

.Elemtype=1351; .Name= 'CB tcgAC'; wr {CB telecontr ganged  phase AC  }             {NLS_Translate}
.Elemtype=1352; .Name= 'CB tsgAC'; wr {CB telesigna ganged  phase AC  }             {NLS_Translate}
.Elemtype=1353; .Name= 'CB mugAC'; wr {CB manualupd ganged  phase AC  }             {NLS_Translate}

.Elemtype=1356; .Name= 'ISOmugAC'; wr {ISO manualup ganged  phase AC  }             {NLS_Translate}
.Elemtype=1357; .Name= 'ISOtcgAC'; wr {ISO telecont ganged  phase AC  }             {NLS_Translate}
.Elemtype=1358; .Name= 'ISOtsgAC'; wr {ISO telesign ganged  phase AC  }             {NLS_Translate}

.Elemtype=1360; .Name= 'LB mugAC'; wr {LB manualupd ganged  phase AC  }             {NLS_Translate}
.Elemtype=1361; .Name= 'LB tcgAC'; wr {LB telecontr ganged  phase AC  }             {NLS_Translate}
.Elemtype=1362; .Name= 'LB tsgAC'; wr {LB telesigna ganged  phase AC  }             {NLS_Translate}

.Elemtype=1365; .Name= 'ISStcgAC'; wr {ISO sectio telec gang phas AC  }             {NLS_Translate}
.Elemtype=1366; .Name= 'ISStsgAC'; wr {ISO sectio teles gang phas AC  }             {NLS_Translate}
.Elemtype=1367; .Name= 'ISSmugAC'; wr {ISO sectio manua gang phas AC  }             {NLS_Translate}

.Elemtype=1368; .Name= 'ISEmugAC'; wr {ISO earth manual gang phas AC  }             {NLS_Translate}
.Elemtype=1369; .Name= 'ISEtcgAC'; wr {ISO earth teleco gang phas AC  }             {NLS_Translate}
.Elemtype=1370; .Name= 'ISEtsgAC'; wr {ISO earth telesi gang phas AC  }             {NLS_Translate}

.Elemtype=1373; .Name= 'FUSmugAC'; wr {FUSE manualupd ganged phas AC  }             {NLS_Translate}

.Elemtype=1401; .Name= 'CB tcnAC'; wr {CB telecontr not ganged    AC  }             {NLS_Translate}
.Elemtype=1402; .Name= 'CB tsnAC'; wr {CB telesigna not ganged    AC  }             {NLS_Translate}
.Elemtype=1403; .Name= 'CB munAC'; wr {CB manualupd not ganged    AC }              {NLS_Translate}

.Elemtype=1406; .Name= 'ISOmunAC'; wr {ISO manualup not ganged    AC  }             {NLS_Translate}
.Elemtype=1407; .Name= 'ISOtcnAC'; wr {ISO telecont not ganged    AC  }             {NLS_Translate}
.Elemtype=1408; .Name= 'ISOtsnAC'; wr {ISO telesign not ganged    AC  }             {NLS_Translate}

.Elemtype=1410; .Name= 'LB munAC'; wr {LB manualupd not ganged    AC  }             {NLS_Translate}
.Elemtype=1411; .Name= 'LB tcnAC'; wr {LB telecontr not ganged    AC  }             {NLS_Translate}
.Elemtype=1412; .Name= 'LB tsnAC'; wr {LB telesigna not ganged    AC  }             {NLS_Translate}

.Elemtype=1415; .Name= 'ISStcnAC'; wr {ISO sectio telec not gang  AC  }             {NLS_Translate}
.Elemtype=1416; .Name= 'ISStsnAC'; wr {ISO sectio teles not gang  AC  }             {NLS_Translate}
.Elemtype=1417; .Name= 'ISSmunAC'; wr {ISO sectio manua not gang  AC  }             {NLS_Translate}

.Elemtype=1418; .Name= 'ISEmunAC'; wr {ISO earth manual not gang  AC  }             {NLS_Translate}
.Elemtype=1419; .Name= 'ISEtcnAC'; wr {ISO earth teleco not gang  AC  }             {NLS_Translate}
.Elemtype=1420; .Name= 'ISEtsnAC'; wr {ISO earth telesi not gang  AC  }             {NLS_Translate}

.Elemtype=1423; .Name= 'FUSmunAC'; wr {FUSE manualupd not ganged  AC  }             {NLS_Translate}

.Elemtype=1451; .Name= 'CB tcgBC'; wr {CB telecontr ganged  phase BC  }             {NLS_Translate}
.Elemtype=1452; .Name= 'CB tsgBC'; wr {CB telesigna ganged  phase BC  }             {NLS_Translate}
.Elemtype=1453; .Name= 'CB mugBC'; wr {CB manualupd ganged  phase BC  }             {NLS_Translate}

.Elemtype=1456; .Name= 'ISOmugBC'; wr {ISO manualup ganged  phase BC  }             {NLS_Translate}
.Elemtype=1457; .Name= 'ISOtcgBC'; wr {ISO telecont ganged  phase BC  }             {NLS_Translate}
.Elemtype=1458; .Name= 'ISOtsgBC'; wr {ISO telesign ganged  phase BC  }             {NLS_Translate}

.Elemtype=1460; .Name= 'LB mugBC'; wr {LB manualupd ganged  phase BC  }             {NLS_Translate}
.Elemtype=1461; .Name= 'LB tcgBC'; wr {LB telecontr ganged  phase BC  }             {NLS_Translate}
.Elemtype=1462; .Name= 'LB tsgBC'; wr {LB telesigna ganged  phase BC  }             {NLS_Translate}

.Elemtype=1465; .Name= 'ISStcgBC'; wr {ISO sectio telec gang phas BC  }             {NLS_Translate}
.Elemtype=1466; .Name= 'ISStsgBC'; wr {ISO sectio teles gang phas BC  }             {NLS_Translate}
.Elemtype=1467; .Name= 'ISSmugBC'; wr {ISO sectio manua gang phas BC  }             {NLS_Translate}

.Elemtype=1468; .Name= 'ISEmugBC'; wr {ISO earth manual gang phas BC  }             {NLS_Translate}
.Elemtype=1469; .Name= 'ISEtcgBC'; wr {ISO earth teleco gang phas BC  }             {NLS_Translate}
.Elemtype=1470; .Name= 'ISEtsgBC'; wr {ISO earth telesi gang phas BC  }             {NLS_Translate}

.Elemtype=1473; .Name= 'FUSmugBC'; wr {FUSE manualupd ganged phas BC  }             {NLS_Translate}

.Elemtype=1501; .Name= 'CB tcnBC'; wr {CB telecontr not ganged    BC  }             {NLS_Translate}
.Elemtype=1502; .Name= 'CB tsnBC'; wr {CB telesigna not ganged    BC  }             {NLS_Translate}
.Elemtype=1503; .Name= 'CB munBC'; wr {CB manualupd not ganged    BC  }             {NLS_Translate}

.Elemtype=1506; .Name= 'ISOmunBC'; wr {ISO manualup not ganged    BC  }             {NLS_Translate}
.Elemtype=1507; .Name= 'ISOtcnBC'; wr {ISO telecont not ganged    BC  }             {NLS_Translate}
.Elemtype=1508; .Name= 'ISOtsnBC'; wr {ISO telesign not ganged    BC  }             {NLS_Translate}

.Elemtype=1510; .Name= 'LB munBC'; wr {LB manualupd not ganged    BC  }             {NLS_Translate}
.Elemtype=1511; .Name= 'LB tcnBC'; wr {LB telecontr not ganged    BC  }             {NLS_Translate}
.Elemtype=1512; .Name= 'LB tsnBC'; wr {LB telesigna not ganged    BC  }             {NLS_Translate}

.Elemtype=1515; .Name= 'ISStcnBC'; wr {ISO sectio telec not gang  BC  }             {NLS_Translate}
.Elemtype=1516; .Name= 'ISStsnBC'; wr {ISO sectio teles not gang  BC  }             {NLS_Translate}
.Elemtype=1517; .Name= 'ISSmunBC'; wr {ISO sectio manua not gang  BC  }             {NLS_Translate}

.Elemtype=1518; .Name= 'ISEmunBC'; wr {ISO earth manual not gang  BC  }             {NLS_Translate}
.Elemtype=1519; .Name= 'ISEtcnBC'; wr {ISO earth teleco not gang  BC  }             {NLS_Translate}
.Elemtype=1520; .Name= 'ISEtsnBC'; wr {ISO earth telesi not gang  BC  }             {NLS_Translate}

.Elemtype=1523; .Name= 'FUSmunBC'; wr {FUSE manualupd not ganged  BC  }             {NLS_Translate}

.Elemtype=1601; .Name= 'TpConn  '; wr { Toppl. conn. point phase  ABC }             {NLS_Translate}
.Elemtype=1602; .Name= 'TpBB    '; wr { Busbar             phase  ABC }             {NLS_Translate}
.Elemtype=1603; .Name= 'TpABb   '; wr { Auxiliary Busbar   phase  ABC }             {NLS_Translate}
.Elemtype=1604; .Name= 'TpGen   '; wr { Generator          phase  ABC }             {NLS_Translate}
.Elemtype=1605; .Name= 'TpInj   '; wr { Injection          phase  ABC }             {NLS_Translate}
.Elemtype=1606; .Name= 'TpLoad  '; wr { Load EPM owned     phase  ABC }             {NLS_Translate}
.Elemtype=1607; .Name= 'TpCpl   '; wr { Coupling           phase  ABC }             {NLS_Translate}
.Elemtype=1608; .Name= 'TpComp  '; wr { Compensator        phase  ABC }             {NLS_Translate}
.Elemtype=1609; .Name= 'TpLine  '; wr { Line section       phase  ABC }             {NLS_Translate}
.Elemtype=1610; .Name= 'TpTraf  '; wr { Transformer        phase  ABC }             {NLS_Translate}
.Elemtype=1611; .Name= 'TpTrVR  '; wr { Tr. voltage regul. phase  ABC }             {NLS_Translate}
.Elemtype=1612; .Name= 'TpTrDt  '; wr { Distr. transformer phase  ABC }             {NLS_Translate}
.Elemtype=1613; .Name= 'TpEquI  '; wr { Equivalent Inject. phase  ABC }             {NLS_Translate}
.Elemtype=1614; .Name= 'TpLoadEx'; wr { Load EXT owned     phase  ABC }             {NLS_Translate}
.Elemtype=1615; .Name= 'TpCable '; wr { Cable section      phase  ABC }             {NLS_Translate}
.Elemtype=1616; .Name= 'TpCoil  '; wr { Coil section       phase  ABC }             {NLS_Translate}
.Elemtype=1617; .Name= 'TpTROP  '; wr { TR operacion prim  phase  ABC }             {NLS_Translate}

.Elemtype=1621; .Name= 'TpConnA '; wr { Toppl. conn. point phase  A   }             {NLS_Translate}
.Elemtype=1622; .Name= 'TpBB__A '; wr { Busbar             phase  A   }             {NLS_Translate}
.Elemtype=1623; .Name= 'TpABb_A '; wr { Auxiliary Busbar   phase  A   }             {NLS_Translate}
.Elemtype=1624; .Name= 'TpGen_A '; wr { Generator          phase  A   }             {NLS_Translate}
.Elemtype=1625; .Name= 'TpInj_A '; wr { Injection          phase  A   }             {NLS_Translate}
.Elemtype=1626; .Name= 'TpLoadA '; wr { Load EPM owned     phase  A   }             {NLS_Translate}
.Elemtype=1627; .Name= 'TpCpl_A '; wr { Coupling           phase  A   }             {NLS_Translate}
.Elemtype=1628; .Name= 'TpCompA '; wr { Compensator        phase  A   }             {NLS_Translate}
.Elemtype=1629; .Name= 'TpLineA '; wr { Line section       phase  A   }             {NLS_Translate}
.Elemtype=1630; .Name= 'TpTrafA '; wr { Transformer        phase  A   }             {NLS_Translate}
.Elemtype=1631; .Name= 'TpTrVRA '; wr { Tr. voltage regul. phase  A   }             {NLS_Translate}
.Elemtype=1632; .Name= 'TpTrDtA '; wr { Distr. transformer phase  A   }             {NLS_Translate}
.Elemtype=1633; .Name= 'TpEquIA '; wr { Equivalent Inject. phase  A   }             {NLS_Translate}
.Elemtype=1634; .Name= 'TpLoExA '; wr { Load EXT owned     phase  A   }             {NLS_Translate}
.Elemtype=1635; .Name= 'TpCablA '; wr { Cable section      phase  A   }             {NLS_Translate}
.Elemtype=1636; .Name= 'TpCoilA '; wr { Coil section       phase  A   }             {NLS_Translate}
.Elemtype=1637; .Name= 'TpTROPA '; wr { TR operacion prim  phase  A   }             {NLS_Translate}

.Elemtype=1641; .Name= 'TpConnB '; wr { Toppl. conn. point phase  B   }             {NLS_Translate}
.Elemtype=1642; .Name= 'TpBB__B '; wr { Busbar             phase  B   }             {NLS_Translate}
.Elemtype=1643; .Name= 'TpABb_B '; wr { Auxiliary Busbar   phase  B   }             {NLS_Translate}
.Elemtype=1644; .Name= 'TpGen_B '; wr { Generator          phase  B   }             {NLS_Translate}
.Elemtype=1645; .Name= 'TpInj_B '; wr { Injection          phase  B   }             {NLS_Translate}
.Elemtype=1646; .Name= 'TpLoadB '; wr { Load EPM owned     phase  B   }             {NLS_Translate}
.Elemtype=1647; .Name= 'TpCpl_B '; wr { Coupling           phase  B   }             {NLS_Translate}
.Elemtype=1648; .Name= 'TpCompB '; wr { Compensator        phase  B   }             {NLS_Translate}
.Elemtype=1649; .Name= 'TpLineB '; wr { Line section       phase  B   }             {NLS_Translate}
.Elemtype=1650; .Name= 'TpTrafB '; wr { Transformer        phase  B   }             {NLS_Translate}
.Elemtype=1651; .Name= 'TpTrVRB '; wr { Tr. voltage regul. phase  B   }             {NLS_Translate}
.Elemtype=1652; .Name= 'TpTrDtB '; wr { Distr. transformer phase  B   }             {NLS_Translate}
.Elemtype=1653; .Name= 'TpEquIB '; wr { Equivalent Inject. phase  B   }             {NLS_Translate}
.Elemtype=1654; .Name= 'TpLoExB '; wr { Load EXT owned     phase  B   }             {NLS_Translate}
.Elemtype=1655; .Name= 'TpCablB '; wr { Cable section      phase  B   }             {NLS_Translate}
.Elemtype=1656; .Name= 'TpCoilB '; wr { Coil section       phase  B   }             {NLS_Translate}
.Elemtype=1657; .Name= 'TpTROPB '; wr { TR operacion prim  phase  B   }             {NLS_Translate}

.Elemtype=1661; .Name= 'TpConnC '; wr { Toppl. conn. point phase  C   }             {NLS_Translate}
.Elemtype=1662; .Name= 'TpBB__C '; wr { Busbar             phase  C   }             {NLS_Translate}
.Elemtype=1663; .Name= 'TpABb_C '; wr { Auxiliary Busbar   phase  C   }             {NLS_Translate}
.Elemtype=1664; .Name= 'TpGen_C '; wr { Generator          phase  C   }             {NLS_Translate}
.Elemtype=1665; .Name= 'TpInj_C '; wr { Injection          phase  C   }             {NLS_Translate}
.Elemtype=1666; .Name= 'TpLoadC '; wr { Load EPM owned     phase  C   }             {NLS_Translate}
.Elemtype=1667; .Name= 'TpCpl_C '; wr { Coupling           phase  C   }             {NLS_Translate}
.Elemtype=1668; .Name= 'TpCompC '; wr { Compensator        phase  C   }             {NLS_Translate}
.Elemtype=1669; .Name= 'TpLineC '; wr { Line section       phase  C   }             {NLS_Translate}
.Elemtype=1670; .Name= 'TpTrafC '; wr { Transformer        phase  C   }             {NLS_Translate}
.Elemtype=1671; .Name= 'TpTrVRC '; wr { Tr. voltage regul. phase  C   }             {NLS_Translate}
.Elemtype=1672; .Name= 'TpTrDtC '; wr { Distr. transformer phase  C   }             {NLS_Translate}
.Elemtype=1673; .Name= 'TpEquIC '; wr { Equivalent Inject. phase  C   }             {NLS_Translate}
.Elemtype=1674; .Name= 'TpLoExC '; wr { Load EXT owned     phase  C   }             {NLS_Translate}
.Elemtype=1675; .Name= 'TpCablC '; wr { Cable section      phase  C   }             {NLS_Translate}
.Elemtype=1676; .Name= 'TpCoilC '; wr { Coil section       phase  C   }             {NLS_Translate}
.Elemtype=1677; .Name= 'TpTROPC '; wr { TR operacion prim  phase  C   }             {NLS_Translate}

.Elemtype=1681; .Name= 'TpConnAB'; wr { Toppl. conn. point phase  AB  }             {NLS_Translate}
.Elemtype=1682; .Name= 'TpBB__AB'; wr { Busbar             phase  AB  }             {NLS_Translate}
.Elemtype=1683; .Name= 'TpABb_AB'; wr { Auxiliary Busbar   phase  AB  }             {NLS_Translate}
.Elemtype=1684; .Name= 'TpGen_AB'; wr { Generator          phase  AB  }             {NLS_Translate}
.Elemtype=1685; .Name= 'TpInj_AB'; wr { Injection          phase  AB  }             {NLS_Translate}
.Elemtype=1686; .Name= 'TpLoadAB'; wr { Load EPM owned     phase  AB  }             {NLS_Translate}
.Elemtype=1687; .Name= 'TpCpl_AB'; wr { Coupling           phase  AB  }             {NLS_Translate}
.Elemtype=1688; .Name= 'TpCompAB'; wr { Compensator        phase  AB  }             {NLS_Translate}
.Elemtype=1689; .Name= 'TpLineAB'; wr { Line section       phase  AB  }             {NLS_Translate}
.Elemtype=1690; .Name= 'TpTrafAB'; wr { Transformer        phase  AB  }             {NLS_Translate}
.Elemtype=1691; .Name= 'TpTrVRAB'; wr { Tr. voltage regul. phase  AB  }             {NLS_Translate}
.Elemtype=1692; .Name= 'TpTrDtAB'; wr { Distr. transformer phase  AB  }             {NLS_Translate}
.Elemtype=1693; .Name= 'TpEquIAB'; wr { Equivalent Inject. phase  AB  }             {NLS_Translate}
.Elemtype=1694; .Name= 'TpLoExAB'; wr { Load EXT owned     phase  AB  }             {NLS_Translate}
.Elemtype=1695; .Name= 'TpCablAB'; wr { Cable section      phase  AB  }             {NLS_Translate}
.Elemtype=1696; .Name= 'TpCoilAB'; wr { Coil section       phase  AB  }             {NLS_Translate}
.Elemtype=1697; .Name= 'TpTROPAB'; wr { TR operacion prim  phase  AB  }             {NLS_Translate}

.Elemtype=1701; .Name= 'TpConnAC'; wr { Toppl. conn. point phase  AC  }             {NLS_Translate}
.Elemtype=1702; .Name= 'TpBB__AC'; wr { Busbar             phase  AC  }             {NLS_Translate}
.Elemtype=1703; .Name= 'TpACb_AC'; wr { Auxiliary Busbar   phase  AC  }             {NLS_Translate}
.Elemtype=1704; .Name= 'TpGen_AC'; wr { Generator          phase  AC  }             {NLS_Translate}
.Elemtype=1705; .Name= 'TpInj_AC'; wr { Injection          phase  AC  }             {NLS_Translate}
.Elemtype=1706; .Name= 'TpLoadAC'; wr { Load EPM owned     phase  AC  }             {NLS_Translate}
.Elemtype=1707; .Name= 'TpCpl_AC'; wr { Coupling           phase  AC  }             {NLS_Translate}
.Elemtype=1708; .Name= 'TpCompAC'; wr { Compensator        phase  AC  }             {NLS_Translate}
.Elemtype=1709; .Name= 'TpLineAC'; wr { Line section       phase  AC  }             {NLS_Translate}
.Elemtype=1710; .Name= 'TpTrafAC'; wr { Transformer        phase  AC  }             {NLS_Translate}
.Elemtype=1711; .Name= 'TpTrVRAC'; wr { Tr. voltage regul. phase  AC  }             {NLS_Translate}
.Elemtype=1712; .Name= 'TpTrDtAC'; wr { Distr. transformer phase  AC  }             {NLS_Translate}
.Elemtype=1713; .Name= 'TpEquIAC'; wr { Equivalent Inject. phase  AC  }             {NLS_Translate}
.Elemtype=1714; .Name= 'TpLoExAC'; wr { Load EXT owned     phase  AC  }             {NLS_Translate}
.Elemtype=1715; .Name= 'TpCablAC'; wr { Cable section      phase  AC  }             {NLS_Translate}
.Elemtype=1716; .Name= 'TpCoilAC'; wr { Coil section       phase  AC  }             {NLS_Translate}
.Elemtype=1717; .Name= 'TpTROPAC'; wr { TR operacion prim  phase  AC  }             {NLS_Translate}

.Elemtype=1721; .Name= 'TpConnBC'; wr { Toppl. conn. point phase  BC  }             {NLS_Translate}
.Elemtype=1722; .Name= 'TpBB__BC'; wr { Busbar             phase  BC  }             {NLS_Translate}
.Elemtype=1723; .Name= 'TpBCb_BC'; wr { Auxiliary Busbar   phase  BC  }             {NLS_Translate}
.Elemtype=1724; .Name= 'TpGen_BC'; wr { Generator          phase  BC  }             {NLS_Translate}
.Elemtype=1725; .Name= 'TpInj_BC'; wr { Injection          phase  BC  }             {NLS_Translate}
.Elemtype=1726; .Name= 'TpLoadBC'; wr { Load EPM owned     phase  BC  }             {NLS_Translate}
.Elemtype=1727; .Name= 'TpCpl_BC'; wr { Coupling           phase  BC  }             {NLS_Translate}
.Elemtype=1728; .Name= 'TpCompBC'; wr { Compensator        phase  BC  }             {NLS_Translate}
.Elemtype=1729; .Name= 'TpLineBC'; wr { Line section       phase  BC  }             {NLS_Translate}
.Elemtype=1730; .Name= 'TpTrafBC'; wr { Transformer        phase  BC  }             {NLS_Translate}
.Elemtype=1731; .Name= 'TpTrVRBC'; wr { Tr. voltage regul. phase  BC  }             {NLS_Translate}
.Elemtype=1732; .Name= 'TpTrDtBC'; wr { Distr. transformer phase  BC  }             {NLS_Translate}
.Elemtype=1733; .Name= 'TpEquIBC'; wr { Equivalent Inject. phase  BC  }             {NLS_Translate}
.Elemtype=1734; .Name= 'TpLoExBC'; wr { Load EXT owned     phase  BC  }             {NLS_Translate}
.Elemtype=1735; .Name= 'TpCablBC'; wr { Cable section      phase  BC  }             {NLS_Translate}
.Elemtype=1736; .Name= 'TpCoilBC'; wr { Coil section       phase  BC  }             {NLS_Translate}
.Elemtype=1737; .Name= 'TpTROPBC'; wr { TR operacion prim  phase  BC  }             {NLS_Translate}

.Elemtype=1741; .Name= 'OM LiEl '; wr { Element for OM List           }             {NLS_Translate}

{**********************************************************************}
.Elemtype=1750; .Name= 'EndStElt'; wr { last standard element type     }            {NLS_Translate}
{**********************************************************************}


{**********************************************************************}
{Project area   1950.. for EPM                                         }
{**********************************************************************}

{----------------------------------------------------------------------}
{ Elementype 1950 .. 1999 reserved for Dx - DMS PHASE-2 global types   }
{----------------------------------------------------------------------}

.Elemtype=1950;.Name= 'dBlocTag'; wr { Block mark            neUNIVERS }            {NLS_Translate}
.Elemtype=1951;.Name= 'dBlocSta'; wr { Block mark f. station neUNIVERS }            {NLS_Translate}

{----------------------------------------------------------------------}
{ Elementype 2000 .. 2120 reserved for messages                        }
{----------------------------------------------------------------------}
.Elemtype=2000;.Name= 'OMSnc   '; wr { OMS norm check                  }            {NLS_Translate}

{.Elemtype=2000; .Name= 'SPME-01 '; wr  single pole message class 1    }
{.Elemtype=2001; .Name= 'SPME-02 '; wr  single pole message class 1    }
.Elemtype=2002; .Name= 'SPME-03 '; wr { single pole message class 1    }
{.Elemtype=2010; .Name= 'ALM1-01 '; wr  single pole alarm class 2      }
{.Elemtype=2011; .Name= 'ALM1-02 '; wr  single pole alarm class 2      }
{.Elemtype=2012; .Name= 'ALM1-03 '; wr  single pole alarm class 2      }
{.Elemtype=2013; .Name= 'ALM1-04 '; wr  single pole alarm class 2      }
{.Elemtype=2014; .Name= 'ALM1-05 '; wr  single pole alarm class 2      }

.Elemtype=2020; .Name= 'AlarmPA '; wr { singlep.alarm parameter adapt. }
.Elemtype=2021; .Name= 'AlarmRT '; wr { singlep.alarm real time        }
.Elemtype=2022; .Name= 'AlarmSA '; wr { singlep.alarm security analysis}
.Elemtype=2023; .Name= 'AlarmSE '; wr { singlep.alarm real state estim.}

{.Elemtype=2075; .Name= 'FLA1-01 '; wr  fleeting alarm class 2         }
{.Elemtype=2076; .Name= 'FLA1-02 '; wr  fleeting alarm class 2         }
{.Elemtype=2077; .Name= 'FLA1-03 '; wr  fleeting alarm class 2         }
{.Elemtype=2078; .Name= 'FLA1-04 '; wr  fleeting alarm class 2         }
{.Elemtype=2079; .Name= 'FLA1-05 '; wr  fleeting alarm class 2         }

{----------------------------------------------------------------------}
{ Elementype 2121 .. 2160 reserved for measured values                 }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elementype 2161 .. 2200 reserved for accumulators                    }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elementype 2201 .. 2300 reserved for miscellaneous elements          }
{----------------------------------------------------------------------}

.Elemtype=2207; .Name= 'DAS-TIF '; wr { DAS & TIF rectangle            }

.Elemtype=2208; .Name= 'GruProt '; wr { command ab/ce GenSu+Ev+S1 PRI1 }
.Elemtype=2209; .Name= 'GrPro-02'; wr { command ab/ce GenSu+Ev+S1 PRI2 }
.Elemtype=2210; .Name= 'GrPro-03'; wr { command ab/ce GenSu+Ev+S1 PRI3 }
.Elemtype=2211; .Name= 'GrPro-04'; wr { command ab/ce GenSu+Ev+S1 PRI4 }
.Elemtype=2212; .Name= 'GrPro-05'; wr { command ab/ce GenSu+Ev+S1 PRI5 }
.Elemtype=2213; .Name= 'GrPro-06'; wr { command ab/ce GenSu+Ev+S1 PRI6 }

.Elemtype=2218; .Name= 'msgAvail'; wr { availability message           }
.Elemtype=2219; .Name= 'AvailRes'; wr { availability reset message     }
.Elemtype=2221; .Name= 'msgOracl'; wr { Oracle instance message        }

{----------------------------------------------------------------------}
{ Elementype 2301 .. 2340 reserved for DMS elements                    }
{----------------------------------------------------------------------}

.Elemtype=2301; .Name= 'TrCal-01'; wr { trouble call type 1            }

{----------------------------------------------------------------------}
{ Elementype 2341 .. 2420 reserved for Dx, Gx and Tx (Switches)        }
{----------------------------------------------------------------------}

{--- Tx Transmission Switches ---}
.Elemtype=2341; .Name= 'tCB     '; wr { circuit breaker tc,ts       Tx }
.Elemtype=2342; .Name= 'tCB muAb'; wr { circuit breaker mu,Ab       Tx }
.Elemtype=2343; .Name= 'tCB tcAb'; wr { circuit breaker tc,ts,Ab    Tx }
.Elemtype=2344; .Name= 'tCB tsAb'; wr { circuit breaker ts,Ab       Tx }
.Elemtype=2345; .Name= 'tLB mu  '; wr { load breaker mu             Tx }
.Elemtype=2346; .Name= 'tLB tcAb'; wr { load breaker tc,ts,Ab       Tx }
.Elemtype=2347; .Name= 'tLB tsAb'; wr { load breaker ts,Ab          Tx }
.Elemtype=2348; .Name= 'tIso    '; wr { Isolator tc,ts              Tx }
.Elemtype=2349; .Name= 'tIsomu  '; wr { Isolator mu                 Tx }
.Elemtype=2350; .Name= 'tIsotcAb'; wr { Isolator tc,ts,Ab           Tx }
.Elemtype=2351; .Name= 'tIsotsAb'; wr { Isolator ts,Ab              Tx }

{--- Gx Generation Switches ---}
.Elemtype=2361; .Name= 'gCB     '; wr { circuit breaker tc,ts       Gx }
.Elemtype=2363; .Name= 'gCB tcAb'; wr { circuit breaker tc,ts,Ab    Gx }
.Elemtype=2364; .Name= 'gCB tsAb'; wr { circuit breaker ts,Ab       Gx }
.Elemtype=2369; .Name= 'gIsomu  '; wr { Isolator mu                 Gx }
.Elemtype=2371; .Name= 'gIsotsAb'; wr { Isolator ts,Ab              Gx }

{--- Tx Transmission TapChangers --}

.Elemtype=2380; .Name= 'tTapGen '; wr { TapCh for generators        Tx }
.Elemtype=2381; .Name= 'tTapVc  '; wr { TapCh with volt. control    Tx }

{--- Dx DMS PHASE-2 TapChangers --}

.Elemtype=2390; .Name= 'dTapVc  '; wr { TapCh with volt. control    Dx }

{--- Grounding devices           --}

.Elemtype=2400; .Name= 'Iso tcAE'; wr { iso                ts,tc Abno  }
.Elemtype=2401; .Name= 'Iso tsAE'; wr { iso                ts,   Abno  }
.Elemtype=2402; .Name= 'tCB tcAE'; wr { circuit breaker tc,ts,Ab    Tx }
.Elemtype=2403; .Name= 'tLB tcAE'; wr { load breaker tc,ts,Ab       Tx }
.Elemtype=2404; .Name= 'tLB tsAE'; wr { load breaker ts,Ab          Tx }
.Elemtype=2405; .Name= 'tIsoE   '; wr { Isolator tc,ts              Tx }
.Elemtype=2406; .Name= 'tIsomuE '; wr { Isolator mu                 Tx }
.Elemtype=2407; .Name= 'tIsotcAE'; wr { Isolator tc,ts,Ab           Tx }
.Elemtype=2408; .Name= 'tIsotsAE'; wr { Isolator ts,Ab              Tx }

.Elemtype=2409; .Name= 'gIsomuE '; wr { Isolator mu                 Gx }
.Elemtype=2410; .Name= 'gIsotsAE'; wr { Isolator ts,Ab              Gx }


{----------------------------------------------------------------------}
{ Elementype 2421 .. 2500 SWITCHES of DMS PHASE-2                      }
{----------------------------------------------------------------------}

{ Interruptor }
.Elemtype=2421; .Name= 'INT   tc'; wr { Circuit Breaker    ts,tc      }
.Elemtype=2422; .Name= 'INTFdHtc'; wr { CB DMS Feederhead  ts,tc      }
.Elemtype=2423; .Name= 'INTtcg A'; wr {CB telecontr ganged  phase A   }
.Elemtype=2424; .Name= 'INTtcg B'; wr {CB telecontr ganged  phase B   }
.Elemtype=2425; .Name= 'INTtcg C'; wr {CB telecontr ganged  phase C   }
.Elemtype=2426; .Name= 'INTtcgAB'; wr {CB telecontr ganged  phase AB  }
.Elemtype=2427; .Name= 'INTtcgAC'; wr {CB telecontr ganged  phase AC  }
.Elemtype=2428; .Name= 'INTtcgBC'; wr {CB telecontr ganged  phase BC  }
.Elemtype=2429; .Name= 'INTtcg  '; wr {CB telecontr ganged  phase ABC }

{ Aisladero }
.Elemtype=2430; .Name= 'AIFmug A'; wr {FUSE manualup ganged  phase A  }
.Elemtype=2431; .Name= 'AIFmug B'; wr {FUSE manualup ganged  phase B  }
.Elemtype=2432; .Name= 'AIFmug C'; wr {FUSE manualup ganged  phase C  }
.Elemtype=2433; .Name= 'AIFmunAB'; wr {FUSE manualup not ganged   AB  }
.Elemtype=2434; .Name= 'AIFmunAC'; wr {FUSE manualup not ganged   AC  }
.Elemtype=2435; .Name= 'AIFmunBC'; wr {FUSE manualup not ganged   BC  }
.Elemtype=2436; .Name= 'AIFmun  '; wr {FUSE manualup not ganged   ABC }

{ Cuchilla Entrada y Salida de circuito }
.Elemtype=2437; .Name= 'CESmug A'; wr {ISO manualup ganged  phase A   }
.Elemtype=2438; .Name= 'CESmug B'; wr {ISO manualup ganged  phase B   }
.Elemtype=2439; .Name= 'CESmug C'; wr {ISO manualup ganged  phase C   }
.Elemtype=2440; .Name= 'CESmunAB'; wr {ISO manualup not ganged    AB  }
.Elemtype=2441; .Name= 'CESmunAC'; wr {ISO manualup not ganged    AC  }
.Elemtype=2442; .Name= 'CESmunBC'; wr {ISO manualup not ganged    BC  }
.Elemtype=2443; .Name= 'CESmun  '; wr {ISO manualup not ganged    ABC }

{ Seccionalizador }
.Elemtype=2444; .Name= 'SECmug A'; wr {ISO manualup ganged  phase A   }
.Elemtype=2445; .Name= 'SECmug B'; wr {ISO manualup ganged  phase B   }
.Elemtype=2446; .Name= 'SECmug C'; wr {ISO manualup ganged  phase C   }
.Elemtype=2447; .Name= 'SECmugAB'; wr {ISO manualup ganged  phase AB  }
.Elemtype=2448; .Name= 'SECmugAC'; wr {ISO manualup ganged  phase AC  }
.Elemtype=2449; .Name= 'SECmugBC'; wr {ISO manualup ganged  phase BC  }
.Elemtype=2450; .Name= 'SECmug  '; wr {ISO manualup ganged  phase ABC }
.Elemtype=2451; .Name= 'SECmunAB'; wr {ISO manualup not ganged    AB  }
.Elemtype=2452; .Name= 'SECmunAC'; wr {ISO manualup not ganged    AC  }
.Elemtype=2453; .Name= 'SECmunBC'; wr {ISO manualup not ganged    BC  }
.Elemtype=2454; .Name= 'SECmun  '; wr {ISO manualup not ganged    ABC }

{ Suiche Manual / Remoto }
.Elemtype=2455; .Name= 'SMRtcg A'; wr {LB telecontr ganged  phase A   }
.Elemtype=2456; .Name= 'SMRtcg B'; wr {LB telecontr ganged  phase B   }
.Elemtype=2457; .Name= 'SMRtcg C'; wr {LB telecontr ganged  phase C   }
.Elemtype=2458; .Name= 'SMRtcnAB'; wr {LB telecontr not ganged    AB  }
.Elemtype=2459; .Name= 'SMRtcnAC'; wr {LB telecontr not ganged    AC  }
.Elemtype=2460; .Name= 'SMRtcnBC'; wr {LB telecontr not ganged    BC  }
.Elemtype=2461; .Name= 'SMRtcn  '; wr {LB telecontr not ganged    ABC }

{ Reconnectador }
.Elemtype=2462; .Name= 'RECtcg A'; wr {CB telecontr ganged  phase A   }
.Elemtype=2463; .Name= 'RECtcg B'; wr {CB telecontr ganged  phase B   }
.Elemtype=2464; .Name= 'RECtcg C'; wr {CB telecontr ganged  phase C   }
.Elemtype=2465; .Name= 'RECtcgAB'; wr {CB telecontr ganged  phase AB  }
.Elemtype=2466; .Name= 'RECtcgAC'; wr {CB telecontr ganged  phase AC  }
.Elemtype=2467; .Name= 'RECtcgBC'; wr {CB telecontr ganged  phase BC  }
.Elemtype=2468; .Name= 'RECtcg  '; wr {CB telecontr ganged  phase ABC }

{ Dobletiro }
.Elemtype=2469; .Name= 'DOFmug A'; wr {FUSE manualup ganged  phas A   }
.Elemtype=2470; .Name= 'DOFmug B'; wr {FUSE manualup ganged  phas B   }
.Elemtype=2471; .Name= 'DOFmug C'; wr {FUSE manualup ganged  phas C   }
.Elemtype=2472; .Name= 'DOFmugAB'; wr {FUSE manualup ganged  phas AB  }
.Elemtype=2473; .Name= 'DOFmugAC'; wr {FUSE manualup ganged  phas AC  }
.Elemtype=2474; .Name= 'DOFmugBC'; wr {FUSE manualup ganged  phas BC  }
.Elemtype=2475; .Name= 'DOFmug  '; wr {FUSE manualup ganged  phas ABC }

{ Suiche Subterraneo }
.Elemtype=2476; .Name= 'SUBmug A'; wr {LB manualupd ganged  phase A   }
.Elemtype=2477; .Name= 'SUBmug B'; wr {LB manualupd ganged  phase B   }
.Elemtype=2478; .Name= 'SUBmug C'; wr {LB manualupd ganged  phase C   }
.Elemtype=2479; .Name= 'SUBmugAB'; wr {LB manualupd ganged  phase AB  }
.Elemtype=2480; .Name= 'SUBmugAC'; wr {LB manualupd ganged  phase AC  }
.Elemtype=2481; .Name= 'SUBmugBC'; wr {LB manualupd ganged  phase BC  }
.Elemtype=2482; .Name= 'SUBmug  '; wr {LB manualupd ganged  phase ABC }

{ Codo Fusible }
.Elemtype=2483; .Name= 'COFmug A'; wr {FUSE manualupd ganged phas A   }
.Elemtype=2484; .Name= 'COFmug B'; wr {FUSE manualupd ganged phas B   }
.Elemtype=2485; .Name= 'COFmug C'; wr {FUSE manualupd ganged phas C   }
.Elemtype=2486; .Name= 'COFmugAB'; wr {FUSE manualupd ganged phas AB  }
.Elemtype=2487; .Name= 'COFmugAC'; wr {FUSE manualupd ganged phas AC  }
.Elemtype=2488; .Name= 'COFmugBC'; wr {FUSE manualupd ganged phas BC  }
.Elemtype=2489; .Name= 'COFmug  '; wr {FUSE manualupd ganged phas ABC }

{ SLB }
.Elemtype=2490; .Name= 'SLB tcg '; wr {ISO secc.long.barr.gang.ph. ABC}


{ Codo Fusible continuation  }
.Elemtype=2491; .Name= 'COFmunAB'; wr {FUSE manualupd nogang phas AB  }
.Elemtype=2492; .Name= 'COFmunAC'; wr {FUSE manualupd nogang phas AC  }
.Elemtype=2493; .Name= 'COFmunBC'; wr {FUSE manualupd nogang phas BC  }
.Elemtype=2494; .Name= 'COFmun  '; wr {FUSE manualupd nogang phas ABC }

{ Regleta operacion primaria }
.Elemtype=2495; .Name= 'REGmug A'; wr {ISO manualup ganged  phase A   }
.Elemtype=2496; .Name= 'REGmug B'; wr {ISO manualup ganged  phase B   }
.Elemtype=2497; .Name= 'REGmug C'; wr {ISO manualup ganged  phase C   }
.Elemtype=2498; .Name= 'REGmunAB'; wr {ISO manualup not ganged    AB  }
.Elemtype=2499; .Name= 'REGmunAC'; wr {ISO manualup not ganged    AC  }
.Elemtype=2500; .Name= 'REGmunBC'; wr {ISO manualup not ganged    BC  }
.Elemtype=2501; .Name= 'REGmun  '; wr {ISO manualup not ganged    ABC }

{----------------------------------------------------------------------}
{ Elements 2502 .. 2600 reserved for MV of EMS (Tx and Gx)             }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elements 2601 .. 2700 reserved for CV of EMS (Tx and Gx)             }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elements 2701 .. 3000 reserved for MP of EMS (Tx and Gx)             }
{----------------------------------------------------------------------}

{----------------------------------}
{ EMS Gx Element-Types  (Messages) }
{----------------------------------}

{.Elemtype=2711; .Name= 'gALM1-01'; wr  Gx }
{.Elemtype=2712; .Name= 'gALM1-02'; wr  Gx }
{.Elemtype=2713; .Name= 'gALM1-03'; wr  Gx }
{.Elemtype=2723; .Name= 'gALM2-03'; wr  Gx }

{---------------------------------}
{ EMS Tx Element-Types (Messages) }
{---------------------------------}
.Elemtype=2809; .Name= 'EMxcME5 '; wr {ELECTRICITY calc type           }
.Elemtype=2810; .Name= 'tALM1-DU'; wr {ELECTRICITY DUMMY               }

.Elemtype=2811; .Name= 'tSPME-01'; wr { Tx }
.Elemtype=2812; .Name= 'tSPME-02'; wr { Tx }
.Elemtype=2813; .Name= 'tSPME-03'; wr { Tx }
.Elemtype=2814; .Name= 'tSPME-04'; wr { Tx }
.Elemtype=2815; .Name= 'tSPME-05'; wr { Tx }
.Elemtype=2816; .Name= 'tSPME-06'; wr { Tx }

.Elemtype=2821; .Name= 'tALM1-01'; wr { Tx }
.Elemtype=2822; .Name= 'tALM1-02'; wr { Tx }
.Elemtype=2823; .Name= 'tALM1-03'; wr { Tx }
.Elemtype=2824; .Name= 'tALM1-04'; wr { Tx }
.Elemtype=2825; .Name= 'tALM1-05'; wr { Tx }
.Elemtype=2826; .Name= 'tALM1-06'; wr { Tx }

.Elemtype=2831; .Name= 'tALM2-01'; wr { Tx }
.Elemtype=2832; .Name= 'tALM2-02'; wr { Tx }
.Elemtype=2833; .Name= 'tALM2-03'; wr { Tx }
.Elemtype=2834; .Name= 'tALM2-04'; wr { Tx }
.Elemtype=2835; .Name= 'tALM2-05'; wr { Tx }
.Elemtype=2836; .Name= 'tALM2-06'; wr { Tx }

.Elemtype=2841; .Name= 'tALM3-01'; wr { Tx }
.Elemtype=2842; .Name= 'tALM3-02'; wr { Tx }
.Elemtype=2843; .Name= 'tALM3-03'; wr { Tx }
.Elemtype=2844; .Name= 'tALM3-04'; wr { Tx }
.Elemtype=2845; .Name= 'tALM3-05'; wr { Tx }
.Elemtype=2846; .Name= 'tALM3-06'; wr { Tx }

.Elemtype=2851; .Name= 'tALM4-01'; wr { Tx }
.Elemtype=2852; .Name= 'tALM4-02'; wr { Tx }
.Elemtype=2853; .Name= 'tALM4-03'; wr { Tx }
.Elemtype=2854; .Name= 'tALM4-04'; wr { Tx }
.Elemtype=2855; .Name= 'tALM4-05'; wr { Tx }
.Elemtype=2856; .Name= 'tALM4-06'; wr { Tx }

.Elemtype=2861; .Name= 'tALM5-01'; wr { Tx }
.Elemtype=2862; .Name= 'tALM5-02'; wr { Tx }
.Elemtype=2863; .Name= 'tALM5-03'; wr { Tx }
.Elemtype=2864; .Name= 'tALM5-04'; wr { Tx }
.Elemtype=2865; .Name= 'tALM5-05'; wr { Tx }
.Elemtype=2866; .Name= 'tALM5-06'; wr { Tx }

.Elemtype=2871; .Name= 'tALM6-01'; wr { Tx }
.Elemtype=2872; .Name= 'tALM6-02'; wr { Tx }
.Elemtype=2873; .Name= 'tALM6-03'; wr { Tx }
.Elemtype=2874; .Name= 'tALM6-04'; wr { Tx }
.Elemtype=2875; .Name= 'tALM6-05'; wr { Tx }
.Elemtype=2876; .Name= 'tALM6-06'; wr { Tx }

.Elemtype=2881; .Name= 'tALM1-D3'; wr { Tx }
.Elemtype=2885; .Name= 'tALM5-D3'; wr { Tx }

.Elemtype=2999; .Name= 'BlTagRed'; wr { Reduced BlockMark     neUNIVERS }            {NLS_Translate}

{EPM Gas messages}

.Elemtype=3000; .Name= 'GAS1ap  '; wr {pr1,MC21,AI7,1=app/0=disap      }
.Elemtype=3001; .Name= 'GAS1apWM'; wr {pr1,MC21,AI7,1=app/0=disap in WM}
   { the following two   element types are still comming=1 and going=0 }
   { alarm types, but the vaName is inverted (ONLY status in list is   }
   { named different, processing is as usual (1 is alarmed, 0 means    }
   { alarm is gone)).                                                  }
.Elemtype=3002; .Name= 'GAS1da  '; wr {pr1,MC21,AI7,0=app/1=disap      }
.Elemtype=3003; .Name= 'GAS1daWM'; wr {pr1,MC21,AI7,0=app/1=disap in WM}
.Elemtype=3004; .Name= 'GAS2ap  '; wr {pr2,MC22,AI8,1=app/0=disap      }
.Elemtype=3005; .Name= 'GAS2apWM'; wr {pr2,MC22,AI8,1=app/0=disap in WM}
.Elemtype=3006; .Name= 'GAS3ap  '; wr {pr3,MC23,AI9,1=app/0=disap      }
.Elemtype=3007; .Name= 'GAS3apWM'; wr {pr3,MC23,AI9,1=app/0=disap in WM}
.Elemtype=3008; .Name= 'GAS2loWM'; wr {pr2,MC22,AI8,1=loc/0=remot in WM}

.Elemtype=3009; .Name= 'GAScmdRL'; wr {Gas command remote/local        }
.Elemtype=3010; .Name= 'GAS cmd '; wr {Gas command habilitar/inhabilita}
.Elemtype=3011; .Name= 'GAScmdDP'; wr {Gas command DC abrir/cerrar     }

.Elemtype=3013; .Name= 'GASV1-7 '; wr {Gas valve indication double pole}
.Elemtype=3014; .Name= 'GASCompV'; wr {Gas valve compressor double pole}
.Elemtype=3015; .Name= 'GAS DCHI'; wr {Gas command DC habil/inhabil    }
.Elemtype=3016; .Name= 'GAS2ma  '; wr {pr2,MC22,AI8,1=man/0=auto       }
.Elemtype=3017; .Name= 'GAS2acWM'; wr {pr2,MC22,AI8,1=act/0=desact     }

.Elemtype=3018; .Name= 'GAS1tDPc'; wr {pr1,MC21,AI7,1=cer/0=abi ts  top}
.Elemtype=3019; .Name= 'GAS2tDPc'; wr {pr2,MC22,AI8,1=cer/0=abi ts  top}
.Elemtype=3020; .Name= 'GAS3tDPc'; wr {pr3,MC23,AI9,1=cer/0=abi ts  top}

.Elemtype=3021; .Name= 'GAS1mDPc'; wr {pr1,MC21,AI7,1=cer/0=abi man top}
.Elemtype=3022; .Name= 'GAS2mDPc'; wr {pr2,MC22,AI8,1=cer/0=abi man top}
.Elemtype=3023; .Name= 'GAS3mDPc'; wr {pr3,MC23,AI9,1=cer/0=abi man top}

.Elemtype=3024; .Name= 'GAS DCDE'; wr {Gas command DC eseenerg/energ   }

.Elemtype=3025; .Name= 'GAS1apDU'; wr {Gas DUMMY                       }

.Elemtype=3026; .Name= 'GMxcAL4 '; wr {GAS calc type                   }

.Elemtype=3027; .Name= 'GAS3anWM'; wr {GAS pr3 activo/normal      in WM}
.Elemtype=3028; .Name= 'GAS3aeWM'; wr {GAS pr3 apagado/encendido  in WM}
.Elemtype=3029; .Name= 'GAS3an  '; wr {GAS pr3 activo/normal      no WM}
.Elemtype=3030; .Name= 'GAS3hd  '; wr {GAS pr3 habilit/deshabilit no WM}
.Elemtype=3031; .Name= 'GAS2an  '; wr {GAS pr2 activo/normal      no WM}
.Elemtype=3032; .Name= 'GAS1hd  '; wr {GAS pr1 habilit/deshabilit no WM}
.Elemtype=3033; .Name= 'GAS3ca  '; wr {GAS pr3 cerrado/abierto    no WM}
.Elemtype=3034; .Name= 'GAS3ae  '; wr {GAS pr3 apagado/encendido  no WM}
.Elemtype=3035; .Name= 'GAS3ac  '; wr {GAS pr3 abierto/cerrado    no WM}

.Elemtype=3036; .Name= 'GASsc3EA'; wr {Gas SC pr3 encender/apagar      }
.Elemtype=3037; .Name= 'GASsc1HD'; wr {Gas SC pr1 habilit/deshabilit   }
.Elemtype=3038; .Name= 'GASsc1EA'; wr {Gas SC pr1 encender/apagar      }

.Elemtype=3040; .Name= 'GASsc1AD'; wr {Gas SC pr1 activar/desactivar   }
.Elemtype=3041; .Name= 'GASsc1RL'; wr {Gas SC pr1 remoto/local         }
.Elemtype=3042; .Name= 'GASsc1DH'; wr {Gas SC pr1 deshabilit/habilit   }

{EPM Water messages}

.Elemtype=3050; .Name= 'W6RemNop'; wr { 'REMOTO/NOPERA    AlrmList 6}
.Elemtype=3051; .Name= 'W6ManNop'; wr { 'MANUAL/NOPERA    AlrmList 6}
.Elemtype=3052; .Name= 'W6ActNor'; wr { 'ACTIVO/NORMAL    AlrmList 6}
.Elemtype=3053; .Name= 'W6CeNoCe'; wr { 'CERRADO/NOCERRAD AlrmList 6}
.Elemtype=3054; .Name= 'W4AbNoAb'; wr { 'ABIERTO/NOABIERT AlrmList 4}
.Elemtype=3055; .Name= 'W4NookOk'; wr { 'NOOK/OK          AlrmList 4}
.Elemtype=3056; .Name= 'W6TexNop'; wr { 'TEXT/NOPERA      AlrmList 6}
.Elemtype=3057; .Name= 'W6ParNop'; wr { 'PARADO/NOPERA    AlrmList 6}
.Elemtype=3058; .Name= 'W4VacNor'; wr { 'VACIO/NORMAL     AlrmList 4}
.Elemtype=3059; .Name= 'W4ParOpe'; wr { 'PARADO/OPERANDO  AlrmList 4}

.Elemtype=3060; .Name= 'W4AbiCer'; wr { 'ABIERTA/CERRADA' AlrmList 4}
.Elemtype=3061; .Name= 'W4AbiNop'; wr { 'ABIERTA/NOPERA'  AlrmList 4}
.Elemtype=3062; .Name= 'W4ActDes'; wr { 'ACTIVO/DESACTIV' AlrmList 4}
.Elemtype=3063; .Name= 'W4AlrNor'; wr { 'ALARMA/NORMAL'   AlrmList 4}
.Elemtype=3064; .Name= 'W4ApeCie'; wr { 'APERTURA/CIERRE' AlrmList 4}
.Elemtype=3065; .Name= 'W4AutLoc'; wr { 'AUTOMATI/LOCAL'  AlrmList 4}
.Elemtype=3066; .Name= 'W4AutMan'; wr { 'AUTOMATI/MANUAL' AlrmList 4}
.Elemtype=3067; .Name= 'W4AutRem'; wr { 'AUTOMATI/REMOTO' AlrmList 4}
.Elemtype=3068; .Name= 'W4BloNob'; wr { 'BLOQUEO/NOBLOQUE'AlrmList 4}
.Elemtype=3069; .Name= 'W4CerAbi'; wr { 'CERRADA/ABIERTA' AlrmList 4}
.Elemtype=3070; .Name= 'W4CerNop'; wr { 'CERRADA/NOPERA'  AlrmList 4}
.Elemtype=3071; .Name= 'W4DesNor'; wr { 'DESACTIV/NORMAL' AlrmList 4}
.Elemtype=3072; .Name= 'W4DisNor'; wr { 'DISPARO/NORMAL'  AlrmList 4}
.Elemtype=3073; .Name= 'W4FalNor'; wr { 'FALLA/NORMAL'    AlrmList 4}
.Elemtype=3074; .Name= 'W4GraBom'; wr { 'GRAVEDAD/BOMBEO' AlrmList 4}
.Elemtype=3075; .Name= 'W4LocNop'; wr { 'LOCAL/NOPERA'    AlrmList 4}
.Elemtype=3076; .Name= 'W4ManPer'; wr { 'MANUAL/PERFIL'   AlrmList 4}
.Elemtype=3077; .Name= 'W4NookOk'; wr { 'NOOK/OK'         AlrmList 4}
.Elemtype=3078; .Name= 'W4NorFal'; wr { 'NORMAL/FALLA'    AlrmList 4}
.Elemtype=3079; .Name= 'W4OkNook'; wr { 'OK/NOOK'         AlrmList 4}
.Elemtype=3080; .Name= 'W4OpePar'; wr { 'OPERANDO/PARADO' AlrmList 4}
.Elemtype=3081; .Name= 'W4PreNor'; wr { 'PREFALLO/NORMAL' AlrmList 4}
.Elemtype=3082; .Name= 'W4RemLoc'; wr { 'REMOTO/LOCAL'    AlrmList 4}
.Elemtype=3083; .Name= 'W4RotNor'; wr { 'ROTA/NORMAL'     AlrmList 4}
.Elemtype=3084; .Name= 'W5AbiCer'; wr { 'ABIERTA/CERRADA' AlrmList 5}
.Elemtype=3085; .Name= 'W5AbiNop'; wr { 'ABIERTA/NOPERA'  AlrmList 5}
.Elemtype=3086; .Name= 'W5ActDes'; wr { 'ACTIVO/DESACTIV' AlrmList 5}
.Elemtype=3087; .Name= 'W5AlrNor'; wr { 'ALARMA/NORMAL'   AlrmList 5}
.Elemtype=3088; .Name= 'W5ApeCie'; wr { 'APERTURA/CIERRE' AlrmList 5}
.Elemtype=3089; .Name= 'W5AutLoc'; wr { 'AUTOMATI/LOCAL'  AlrmList 5}
.Elemtype=3090; .Name= 'W5AutMan'; wr { 'AUTOMATI/MANUAL' AlrmList 5}
.Elemtype=3091; .Name= 'W5AutRem'; wr { 'AUTOMATI/REMOTO' AlrmList 5}
.Elemtype=3092; .Name= 'W5BloNob'; wr { 'BLOQUEO/NOBLOQUE'AlrmList 5}
.Elemtype=3093; .Name= 'W5CerAbi'; wr { 'CERRADA/ABIERTA' AlrmList 5}
.Elemtype=3094; .Name= 'W5CerNop'; wr { 'CERRADA/NOPERA'  AlrmList 5}
.Elemtype=3095; .Name= 'W5DesNor'; wr { 'DESACTIV/NORMAL' AlrmList 5}
.Elemtype=3096; .Name= 'W5DisNor'; wr { 'DISPARO/NORMAL'  AlrmList 5}
.Elemtype=3097; .Name= 'W5FalNor'; wr { 'FALLA/NORMAL'    AlrmList 5}
.Elemtype=3098; .Name= 'W5GraBom'; wr { 'GRAVEDAD/BOMBEO' AlrmList 5}
.Elemtype=3099; .Name= 'W5LocNop'; wr { 'LOCAL/NOPERA'    AlrmList 5}
.Elemtype=3100; .Name= 'W5ManPer'; wr { 'MANUAL/PERFIL'   AlrmList 5}
.Elemtype=3101; .Name= 'W5NookOk'; wr { 'NOOK/OK'         AlrmList 5}
.Elemtype=3102; .Name= 'W5NorFal'; wr { 'NORMAL/FALLA'    AlrmList 5}
.Elemtype=3103; .Name= 'W5OkNook'; wr { 'OK/NOOK'         AlrmList 5}
.Elemtype=3104; .Name= 'W5OpePar'; wr { 'OPERANDO/PARADO' AlrmList 5}
.Elemtype=3105; .Name= 'W5PreNor'; wr { 'PREFALLO/NORMAL' AlrmList 5}
.Elemtype=3106; .Name= 'W5RemLoc'; wr { 'REMOTO/LOCAL'    AlrmList 5}
.Elemtype=3107; .Name= 'W5RotNor'; wr { 'ROTA/NORMAL'     AlrmList 5}
.Elemtype=3108; .Name= 'W6AbiCer'; wr { 'ABIERTA/CERRADA' AlrmList 6}
.Elemtype=3109; .Name= 'W6AbiNop'; wr { 'ABIERTA/NOPERA'  AlrmList 6}
.Elemtype=3110; .Name= 'W6ActDes'; wr { 'ACTIVO/DESACTIV' AlrmList 6}
.Elemtype=3111; .Name= 'W6AlrNor'; wr { 'ALARMA/NORMAL'   AlrmList 6}
.Elemtype=3112; .Name= 'W6ApeCie'; wr { 'APERTURA/CIERRE' AlrmList 6}
.Elemtype=3113; .Name= 'W6AutLoc'; wr { 'AUTOMATI/LOCAL'  AlrmList 6}
.Elemtype=3114; .Name= 'W6AutMan'; wr { 'AUTOMATI/MANUAL' AlrmList 6}
.Elemtype=3115; .Name= 'W6AutRem'; wr { 'AUTOMATI/REMOTO' AlrmList 6}
.Elemtype=3116; .Name= 'W6BloNob'; wr { 'BLOQUEO/NOBLOQUE'AlrmList 6}
.Elemtype=3117; .Name= 'W6CerAbi'; wr { 'CERRADA/ABIERTA' AlrmList 6}
.Elemtype=3118; .Name= 'W6CerNop'; wr { 'CERRADA/NOPERA'  AlrmList 6}
.Elemtype=3119; .Name= 'W6DesNor'; wr { 'DESACTIV/NORMAL' AlrmList 6}
.Elemtype=3120; .Name= 'W6DisNor'; wr { 'DISPARO/NORMAL'  AlrmList 6}
.Elemtype=3121; .Name= 'W6FalNor'; wr { 'FALLA/NORMAL'    AlrmList 6}
.Elemtype=3122; .Name= 'W6GraBom'; wr { 'GRAVEDAD/BOMBEO' AlrmList 6}
.Elemtype=3123; .Name= 'W6LocNop'; wr { 'LOCAL/NOPERA'    AlrmList 6}
.Elemtype=3124; .Name= 'W6ManPer'; wr { 'MANUAL/PERFIL'   AlrmList 6}
.Elemtype=3125; .Name= 'W6NookOk'; wr { 'NOOK/OK'         AlrmList 6}
.Elemtype=3126; .Name= 'W6NorFal'; wr { 'NORMAL/FALLA'    AlrmList 6}
.Elemtype=3127; .Name= 'W6OkNook'; wr { 'OK/NOOK'         AlrmList 6}
.Elemtype=3128; .Name= 'W6OpePar'; wr { 'OPERANDO/PARADO' AlrmList 6}
.Elemtype=3129; .Name= 'W6PreNor'; wr { 'PREFALLO/NORMAL' AlrmList 6}
.Elemtype=3130; .Name= 'W6RemLoc'; wr { 'REMOTO/LOCAL'    AlrmList 6}
.Elemtype=3131; .Name= 'W6RotNor'; wr { 'ROTA/NORMAL'     AlrmList 6}
.Elemtype=3132; .Name= 'W6sOpPar'; wr { 'OPERANDO/PARADO' AlrmList 6}
.Elemtype=3133; .Name= 'W5AppDis'; wr { 'Appear/Disapp'   AlrmList 5}
.Elemtype=3134; .Name= 'W6ActFal'; wr { 'Activo/Falla '   AlrmList 6}

{EPM Water commands}

.Elemtype=3135; .Name= 'WcACTDES'; wr {Water DP cmd ACTIVO/DESACTIV}
.Elemtype=3136; .Name= 'WcACTNO '; wr {Water DP cmd ACTIVO/NO OPERA}
.Elemtype=3137; .Name= 'WcAPECIE'; wr {Water DP cmd APERTURA/CIERRE}
.Elemtype=3138; .Name= 'WcAUTMAN'; wr {Water DP cmd AUTOMATI/MANUAL}
.Elemtype=3139; .Name= 'WcDESNOR'; wr {Water DP cmd DESACT/NORMAL}
.Elemtype=3140; .Name= 'WcESTEST'; wr {Water DP cmd ESTAC1/ESTAC2}
.Elemtype=3141; .Name= 'WcHABDES'; wr {Water DP cmd HABILITAR/DESACTIV}
.Elemtype=3142; .Name= 'WcMANPER'; wr {Water DP cmd MANUAL/PERFIL}
.Elemtype=3143; .Name= 'WcSILDES'; wr {Water DP cmd SILENCIAR/DESACTIV}

{                                                           te04   }
{ dublicates of element  types which are used in MRede for         }
{ switches with command direction. Currently the topology is       }
{ inconsient in this "Bordernet" and therefore the element type    }
{ has been changed to noSwitch, so that network control does not   }
{ check topology  (changes in network control were necessary)      }
.Elemtype=2900; .Name= 'CBnS    '; wr {dublicate of CB       Switch}
.Elemtype=2901; .Name= 'CBGENtcn'; wr {dubl. of CB GEN tc    Switch}
.Elemtype=2902; .Name= 'CBtcAbnS'; wr {dubl. of CB tcAb      Switch}
.Elemtype=2903; .Name= 'GruProtn'; wr {dubl. of GruProt      Switch}
.Elemtype=2904; .Name= 'tCBtcAbn'; wr {dubl. of tCB tcAb     Switch}
.Elemtype=2905; .Name= 'tCBmuAbn'; wr {dubl. of tCB muAb     Switch}


.Elemtype=3148; .Name= 'WMxcAL4 '; wr {WATER alc type                  }

.Elemtype=3149; .Name= 'W4adDU  '; wr {WATER DUMMY                     }

{EPM Water internal calculations}

.Elemtype=3150; .Name= 'MedBidir'; wr {Indicator Medidor Bidirectional}
.Elemtype=3151; .Name= 'ValvSP  '; wr {Estado valvula con consigna    }
.Elemtype=3152; .Name= 'ValvOnOf'; wr {Estado valvula con 2 commandos }
.Elemtype=3153; .Name= 'ValvViNG'; wr {virtual valve for netgroup col }
.Elemtype=3154; .Name= 'ValvMAN '; wr {Estado valvula MANUAL          }

.Elemtype=3155; .Name= 'W4DesAct'; wr { DESACTIV/ACTIVO  AlrmList 4   }
.Elemtype=3156; .Name= 'W4ParOpe'; wr { PARADO/OPERANDO  AlrmList 4   }
.Elemtype=3157; .Name= 'W4NopCer'; wr { NOPERA/CERRADO   AlrmList 4   }
.Elemtype=3158; .Name= 'W4ManAut'; wr { MANUAL/AUTOMATI  AlrmList 4   }
.Elemtype=3159; .Name= 'W4NopAbi'; wr { NOPERA/ABIERTO   AlrmList 4   }
.Elemtype=3160; .Name= 'W4ActNor'; wr { ACTIVO/NORMAL    AlrmList 4   }

.Elemtype=3165; .Name= 'W5DesAct'; wr { DESACTIV/ACTIVO  AlrmList 5   }
.Elemtype=3166; .Name= 'W5ParOpe'; wr { PARADO/OPERANDO  AlrmList 5   }
.Elemtype=3167; .Name= 'W5NopCer'; wr { NOPERA/CERRADO   AlrmList 5   }
.Elemtype=3168; .Name= 'W5ManAut'; wr { MANUAL/AUTOMATI  AlrmList 5   }
.Elemtype=3169; .Name= 'W5NopAbi'; wr { NOPERA/ABIERTO   AlrmList 5   }
.Elemtype=3170; .Name= 'W5ActNor'; wr { ACTIVO/NORMAL    AlrmList 5   }

.Elemtype=3175; .Name= 'W6DesAct'; wr { DESACTIV/ACTIVO  AlrmList 6   }
.Elemtype=3176; .Name= 'W6ParOpe'; wr { PARADO/OPERANDO  AlrmList 6   }
.Elemtype=3177; .Name= 'W6NopCer'; wr { NOPERA/CERRADO   AlrmList 6   }
.Elemtype=3178; .Name= 'W6ManAut'; wr { MANUAL/AUTOMATI  AlrmList 6   }
.Elemtype=3179; .Name= 'W6NopAbi'; wr { NOPERA/ABIERTO   AlrmList 6   }

{-----------------------------------------}
{ DMS PHASE-2 Dx Element-Types (Messages) }
{-----------------------------------------}

.Elemtype=3311; .Name= 'dSPME-01'; wr { Dx }
.Elemtype=3312; .Name= 'dSPME-02'; wr { Dx }
.Elemtype=3313; .Name= 'dSPME-03'; wr { Dx }
.Elemtype=3314; .Name= 'dSPME-04'; wr { Dx }
.Elemtype=3315; .Name= 'dSPME-05'; wr { Dx }
.Elemtype=3316; .Name= 'dSPME-06'; wr { Dx }

.Elemtype=3321; .Name= 'dALM1-01'; wr { Dx }
.Elemtype=3322; .Name= 'dALM1-02'; wr { Dx }
.Elemtype=3323; .Name= 'dALM1-03'; wr { Dx }
.Elemtype=3324; .Name= 'dALM1-04'; wr { Dx }
.Elemtype=3325; .Name= 'dALM1-05'; wr { Dx }
.Elemtype=3326; .Name= 'dALM1-06'; wr { Dx }

.Elemtype=3331; .Name= 'dALM2-01'; wr { Dx }
.Elemtype=3332; .Name= 'dALM2-02'; wr { Dx }
.Elemtype=3333; .Name= 'dALM2-03'; wr { Dx }
.Elemtype=3334; .Name= 'dALM2-04'; wr { Dx }
.Elemtype=3335; .Name= 'dALM2-05'; wr { Dx }
.Elemtype=3336; .Name= 'dALM2-06'; wr { Dx }

.Elemtype=3341; .Name= 'dALM3-01'; wr { Dx }
.Elemtype=3342; .Name= 'dALM3-02'; wr { Dx }
.Elemtype=3343; .Name= 'dALM3-03'; wr { Dx }
.Elemtype=3344; .Name= 'dALM3-04'; wr { Dx }
.Elemtype=3345; .Name= 'dALM3-05'; wr { Dx }
.Elemtype=3346; .Name= 'dALM3-06'; wr { Dx }

.Elemtype=3351; .Name= 'dALM4-01'; wr { Dx }
.Elemtype=3352; .Name= 'dALM4-02'; wr { Dx }
.Elemtype=3353; .Name= 'dALM4-03'; wr { Dx }
.Elemtype=3354; .Name= 'dALM4-04'; wr { Dx }
.Elemtype=3355; .Name= 'dALM4-05'; wr { Dx }
.Elemtype=3356; .Name= 'dALM4-06'; wr { Dx }

.Elemtype=3361; .Name= 'dALM5-01'; wr { Dx }
.Elemtype=3362; .Name= 'dALM5-02'; wr { Dx }
.Elemtype=3363; .Name= 'dALM5-03'; wr { Dx }
.Elemtype=3364; .Name= 'dALM5-04'; wr { Dx }
.Elemtype=3365; .Name= 'dALM5-05'; wr { Dx }
.Elemtype=3366; .Name= 'dALM5-06'; wr { Dx }

.Elemtype=3371; .Name= 'dALM6-01'; wr { Dx }
.Elemtype=3372; .Name= 'dALM6-02'; wr { Dx }
.Elemtype=3373; .Name= 'dALM6-03'; wr { Dx }
.Elemtype=3374; .Name= 'dALM6-04'; wr { Dx }
.Elemtype=3375; .Name= 'dALM6-05'; wr { Dx }
.Elemtype=3376; .Name= 'dALM6-06'; wr { Dx }

close
$EOJ
