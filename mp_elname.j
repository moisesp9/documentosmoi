#!/bin/csh
#                                 SPECTRUM: CSH
# Copyright (C) Siemens AG 1992-2014 All Rights Reserved.Confidential
#
# $NewRev$
# 20241007 jcvl: SE crean elementos 1287 a 1291. P1_86 P2_86 CTR_18 CTR_19 CTR_20
# 290424 jcvl: SE crean elementos 1186 a 1189, 1286 a 1287, y numero nuevos 4100 a 4155
# 230808 krue: Elems 1277,1278,1281,1282 taken out because twice
#              Elem 1938 renamed to P1_83 (was lost)
# 230323 jcvl / jmcv: Se adicionan elementos nuevos 1255 a 1284
# 220813 krue: merge corrections
#              Elems 1938...1942 inserted
# 220615 krue: Elems 3966,3967 deleted
# 220407 krue: Elems 3961..3977 for new GAS single commands
#              Elems 2062,2065 now single commands
# 220405 krue: Elems 2101...2139, 1973..1999, 2026..2028, 3960 inserted
# 220131 krue: Elem 1781 corrected, elems 1186,1187,1188,1189 deleted
#            : Elems 3126,3163 renamed
# 220119 krue: Elems 1253,1254,2024,2025,2734,2735 for E,G,A calculations
# 220117 krue: Elems 1252,2023,2733 E-G-ADumMe inserted
# 220110 krue: Elems 3855..3858 inserted, ValvSPx for 1..4% setpoint
# 211029 krue: Elems 3058...3151 inserted
#              Elems 3154...3199 inserted
#              Elems 2140...2249 inserted
# 211006 krue: Elems 1776...1782 inserted
# 211006 krue: Elems 1186...1251 inserted
# 210712 krue: Elems 848,849 of type neSWITCH for carga/equipo fuses
# 210427 krue: Elem 1938 deleted because twice
# 210218 krue: Elems 2072,2100 neSwitch
# 210130 krue: new Elem 2100 Recificador command
# 210126 krue: new Elems 1770..1775
# 210113 krue: new Elems FACTS_01..09, SA_23..24, BAR_19..20, TR_40
# 201299 krue: Elem 1914 OMSnc created
# 201120 krue: Elems 2039,    2041,  2042,   2044,   2052,  2073 neSWITCH
#                    VAlivio, VEntr, VHiCat, VLoCat, VSlam, PVManual
# 201029 krue: Elements 2021,2022 inserted
# 201027 krue: Elements 2082 corrected
# 201001 krue: Elements 2074..2089 inserted
# 200928 krue: Elements 2021..2028 deleted
# 200603 krue: Element 2043 IEDStatu deleted
# 200602 krue: Elements 2072,2073 inserted
# 200427 krue: Element 2043 renamed IEDStatu->GFacom
#              Element 2071 renamed VCTRL->Vmod
#              Element 2025 renamed IEDSent->IEDSend
# 200427 krue: Elements 2029,2030,2038,2040,2046,2096..2099 added
# 200423 krue: Element 2398 added
# 200406 krue: Elements 2029,2030,2038,2040,2046 deleted
# 191201 krue: Element 2277 renamed BRK.112->BRK.120
# 191114 krue: Element 3934 deleted
# 191107 krue: Element 2047 renamed
# 191104 krue: Elements 3900..3933 deleted
# 191031 krue: Element 3034 inserted
# 191028 krue: Element 850 ResetE inserted
#              Element 1766 Extcarro, 1767 Man_Aut inserted
# 191022 krue: Elements 1024,1025,1026 shifted from mp to mv because analogs
# 191016 krue: element  1151, NoEl MESSAGE5 RF_08 inserted
#              elements 1160,1161 NoEl MESSAGE5 INT_30,INT_31 inserted
#              elements 1162,1163 NoEl MESSAGE5 TR_40,TR_41 inserted
#              elements 1164.,1173 NoEl MESSAGE5 GRAL_15..GRAL_24 inserted
#              elements 1144.,1185 NoEl MESSAGE5 CTR_01..CTR_12 inserted
# 191007 krue: elements 685 NoEl=neElcStat, ElemType=0
# 190930 krue: elements 3934 inserted for calculated disturbed
# 190830 krue: elements 3900..3933 inserted for possible separate command monitor
# 190826 krue: element VMod/2046  neAlarm4->neSwitch
#              elements V5,V6,V7 2090,2091,2092 neAlarm4->neSwitch
#              elements V1,V2,V3,V4 2056,2057,2058,2059 neAlarm4->neSwitch
#              element ValvCOMP 3870 for resulting compressor valve switch
# 190725 krue: element 2957 VN.E->VN.ESC
#              element 2353 BRK.SETHA->BRK.STHA
#              element 2504 FT.PA15M->FT.A15MA
#              element 2940 VASVI->VASVIN
#              element 2949 VBSVI->VBSVIN
# 190722 krue: new element 3854 for netgroup coloring
# 190717 krue: element 2535 element type changed neAlarm4->neSwitch
# 190603 bark: new elements 1921-1924 for NA-alarms
# 190508 krue: elems 3850..3853 for necessary internal calculations
               elem  2071 VCTRL is a neSWITCH!
# 190506 krue: elems 3833 RESET.B added
# 190418 krue: elems 2398 deleted
# 190403 krue: elems 2797,2966,2967,2968,2969,2970,2971,2972,2973 new
# 190403 krue: elems 2627,2733..2737,2766,2787,2797,2799,2966..2976,2978..2982,
#                    2984..2986,3035,3039,3040 deleted - command monitor address
#              elem 3023 renamed ZT.LO -> ZT.LOOP
# 190326 krue: elems 2778 ZT.SE, 2983 SEL.EX
# 190312 krue: elems 2778 2983 3034 deleted
# 190304 krue: adaptions 2021..2028 new, 2046 modified, 2047 deleted
#              2034,2067 renamed
# 190226 krue: elements 2001,2003,2009,2018,2037,2043,2045 deleted
# 190204 krue: corrections
# 190121 tens: WATER final changes
# 190115 zimm: lower voltage level 3 winding transformers elements
# 181206 tens: EPM: correction Gas-messages 2000..
# 181120 krue: For all element names / exchanged by -
# 181017 spc:  ad-element_chec_cens_1: adding elements for CHEC and CENS
# 181011 spc:  ad-parametrisation_3: rem 706-711
# 180824 tens: EPM: Water-messages 2250..
# 180725 tens: EPM: Gas-messages   2000..
# 180316 bark: El711-729 moved to 1751-1769
# 180223 tens: takeover 4.1 project
# 160901 schg: sp7-data_v02.10_fu_ems00078663_elem_batt_vie battery elems
# 160722 avafaei sp7-ifs_v02.10_fu_ems00072260_scan_group_relation_msp Pick up EMS00072260
# 160621 avafaei:sp7-ifs_v02.00_fu_ems00072260_scan_group_relation_msp
#               Added IFS_SG element 685, and supporting information
# 160318 Venkat:sp7-any_v02.00_fu_ems00069358_snmp_rel_blr:
#               Added new snmp element(389) for snmp status
# 151111 Vikas :sp7-base_v01.30_df_ems00068033_oracleta_elemrange_vie
#                elem number changed outof range ( changed 953 to 796 )
# 11Aug2015 CReimann: sp7-immgtw_v01.30_df_ems00064524_agc_xfr_msp
#      Add element #360 AGCLocRm (AGC Local/Remote).
#  9Aug2015 CReimann: sp7-immgtw_v01.30_df_ems00064524_agc_xfr_msp
#      Move element #953 to end to be in numerical order.
#  7Aug2015 CReimann: sp7-immgtw_v01.30_df_ems00064524_agc_xfr_msp
#      New elements, types and infos from MGMS ems00054331, some for AGC.
# 150706 Vikas :sp7-base_v01.30_fu_ems00060169_alarm_ta_blr
#                TA for oracle redundancy monitoring
# 150504 schg: sp7-data_v01.30_df_ems00061616_usetpabc_vie USetpabc(325)
# 150428 dchen: sp7-pa_v01.30_fu_ems00060854_msp - add comment for JOP
#               (Elem=213,214).
# 150114 heiner: sp7-baps_v01.20_df_ems00057776_nbg - add comment for Elmax
# 141208 dlundber:spc-iccp_v01.00_df_ems00040093_iccp_pseudo_msp
# 2Oct2013 CReimann: sp7-ots_v01.00_fu_ems00037328_ots_alarms_corr_msp
#      Add new neMessage5 alarm elements 396, 397, 398, 399.
# 130719 mdehnnix: sp7-baps_v01.00_df_ems00041461_msp - Move LS Elems
# 10May2013 CReimann: sp7-ots_v01.00_fu_ems00037328_ots_alarms_msp
#      Add new neMessage5 alarm elements 396, 397, 398, 399.
# 121021 schg: sp7-data_v01.00_fu_ems735_tm-scada-param_vie
#              change special characters for IMM and xml
# 120416 schg: sp7-data_v01.00_fu_ems735_tm-scada-param_vie  adapt types
#              neAlarm2 used for fault indicator / direction (CDNA)
# 120926 mdehnnix sp7-any_v01.00_fu_ems00001028_msp: Add load shed
# 120531 Team bof-any_v01.01_df_ems1260_base_120512: upmerge P470 (BOFBASE-120512)
# 120102 mure bf-42439_oox3_47: changed dsm/oox reservation comments
# 120307 aturke bof-any_v01.00_fu_ems271_secmon_msp
# 120102 tens: BestOf disk monitor support
# 111107 tens: BestOf Multiphase ems178  ElemType=418 for elem 15..24
# 110928 tens: BestOf MultiPhase ems178  ElemType=0 for elem 15..24
# 110831 Team bof-cfe_v01.00_fu_ems56_rtds_exts_msp
# 110805 tens: BestOf ems007 Power 3 web server
# 110303 scuc: bf-sh_his: add mv elements for SSHIS (200-206,247-249)
#        Klein: add elem 638 EnhSyStat for SHHIS
# 110302 SRo: Added IFS elements 640 and 641
# 110221 tens clocks use NTP instaed of SINEC time protocol
# 091007 schg: bf-data_40804_rm_topconn_46: remove elem 'Top Conn'(652)
# 080228 Klein: feat-gis_6871_gisimp_data : add elem 636 (OPswitch)
# 070904 Christa: feat-oa_4722_truck_location: Elem 631 neMessage4
# 050302 hagl: feat-SR45_09_32593_disp: Elem = 644 added for neTeArea
# 040121 kien feat-tci-iec101_dial :
#   shift Elem=920 TcMgrSta (Projectarea !!) to Elem=645 (Standard Area)
# 020604 fahrig feat-tci-iec101_dial :
#   add Elem=920 TcMgrSta
# 030120 hara spr-27187: Elements 76,77: Iso Lin1, Iso Lin2
#                        changed to      IsoLine1, IsoLine2
# 020114 sche spr-26818: Elements 646 and 647 added.
# 991015 form : spr-21694 : Change Elem 660 to Top Coup
# 981118 Jakobs: NEW: Elements 681-699 for dsm
# $NewRevEnd$

set RELNAME = "ELNAME"

source $SPECPATH/src/param/param_scripts/JOB_PART1


$P/bq >>& $JL                        <<BQEND

rel ELNAME
exe job $0

x
BQEND

set JOBST = $status
source $SPECPATH/src/param/param_scripts/JOB_PART2

exit

$BQ
rel ELNAME
open
clear

{Fixed System Elements                                                 }

{These are used for system status (devices, computers, etc.).          }
{The numbers of these elements are fixed as program constants          }
{(see (def)tec).                                                       }
{For these elements the numbers 1 to 10 are foreseen.                  }

.Elem=  0;  .NoElTyp= neFirst ;  .Name= 'Block   ';  write
.Elem=  1;  .NoElTyp= neUNIVERS; .Name= 'Bl Spec '; write
.Elem=  2;  .NoElTyp= neDEVICE ; .Name= 'Dev St  ';  write
.Elem=  3;  .NoElTyp= neCOMPST ; .Name= 'Com St  ';  write
.Elem=  4;  .NoElTyp= neRTXSTA ; .Name= 'RTx St-F';  write
.Elem=  5;  .NoElTyp= neRTXSTA ; .Name= 'LK Stat ';  write
.Elem=  6;  .NoElTyp= neTOPELEM; .Name= 'Topo Cmp'; write { component }
.Elem=  7;  .NoElTyp= neTOPELEM; .Name= 'Topo Sta'; write { station   }
.Elem=  8;  .NoElTyp= neTOPELEM; .Name= 'Topo MV '; write { meas.value}
.Elem=  9;  .NoElTyp= neElcStat; .Name= 'Elc St  '; write
.Elem= 10;  .NoElTyp= neDEVICE ; .Name= 'LogOn-Of';  write { pass      }
.Elem= 11;  .NoElTyp= neDsStatus; .Name= 'DsDevSta'; write
.Elem= 12;  .NoElTyp= neDsStatus; .Name= 'DsLruSta'; write
.Elem= 13;  .NoElTyp= neRTXSTA ; .Name= 'RTX SB  '; write

{ Data Save            }
.Elem= 14;  .NoElTyp=neEnhSyStat; .Name='DataSave'; .ElemType=38; wr
clear

{Project specific Elements                                             }

{These elements are used by the respective project. The amount and     }
{assignment to the norm element type depends on the project. The       }
{following element description is ordered by norm elements.            }

{Topological Elements "TOPELEM"                                        }

{These elements represent the galvanic connections between particular  }
{switching elements within a feeder. They are used or the topological  }
{description (micro topology).                                         }

.NoElTyp= neTopElem;
.ElemType=418;
{ ElementType 418 is necessary for cursor c_get_CN. In a multiphase    }
{ system the actual element type will not be 418                       }
.Elem= 15;  .Name= 'Topo 1  '; wr {conn.node for connection of switches}
.Elem= 16;  .Name= 'Topo 2  '; wr {conn.node for connection of switches}
.Elem= 17;  .Name= 'Topo 3  '; wr {conn.node for connection of switches}
.Elem= 18;  .Name= 'Topo 4  '; wr {conn.node for connection of switches}
.Elem= 19;  .Name= 'Topo 5  '; wr {conn.node for connection of switches}
.Elem= 20;  .Name= 'Topo 6  '; wr {conn.node for connection of switches}
.Elem= 21;  .Name= 'Topo 7  '; wr {conn.node for connection of switches}
.Elem= 22;  .Name= 'Topo 8  '; wr {conn.node for connection of switches}
.Elem= 23;  .Name= 'Topo 9  '; wr {conn.node for connection of switches}
.Elem= 24;  .Name= 'Topo 10 '; wr {conn.node for connection of switches}
clear

{ ELEMS 25..55 used in mv_elname }

{Switching Elements "SWITCH"                                           }

{These elements represent the switching elements of the network. The   }
{name of the element describes the function of the represented element.}

.NoElTyp= neSwitch;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 56;  .Name= 'IsoBypas'; wr { SF6-Iso for bypass                 }
.Elem= 57;  .Name= 'Iso Bb 1'; wr { isolator busbar 1                  }
.Elem= 58;  .Name= 'Iso Bb 2'; wr { isolator busbar 2                  }
.Elem= 59;  .Name= 'Iso Bb 3'; wr { isolator busbar 3                  }
.Elem= 60;  .Name= 'CB      '; wr { circuit breaker                    }
.Elem= 61;  .Name= 'Iso Line'; wr { isolator line                      }
.Elem= 62;  .Name= 'Iso Eth '; wr { isolator earth                     }
.Elem= 63;  .Name= 'Sect Bb1'; wr { sectioner busbar 1                 }
.Elem= 64;  .Name= 'Sect Bb2'; wr { sectioner busbar 2                 }
.Elem= 65;  .Name= 'Sect Bb3'; wr { sectioner busbar 3                 }
.Elem= 66;  .Name= 'Iso ABb '; wr { isolator auxiliary bubar           }
.Elem= 67;  .Name= 'Iso Eth1'; wr { isolator earth (busbar 1)          }
.Elem= 68;  .Name= 'Iso Eth2'; wr { isolator earth (busbar 2)          }
.Elem= 69;  .Name= 'Iso Eth3'; wr { isolator earth (busbar 3)          }

{Elements for "One and a half - coupling"                              }

.Elem= 70;  .Name= 'CB 1    '; wr {Circuit breaker (busbar 1)          }
.Elem= 71;  .Name= 'CB 2    '; wr {Circuit breaker (busbar 2)          }
.Elem= 72;  .Name= 'Iso CB 1'; wr { Isolator to CB 1                   }
.Elem= 73;  .Name= 'Iso CB 2'; wr { Isolator to CB 2                   }
.Elem= 74;  .Name= 'Iso1 CB '; wr { Isolator 1 to CB                   }
.Elem= 75;  .Name= 'Iso2 CB '; wr { Isolator 2 to CB                   }
.Elem= 76;  .Name= 'IsoLine1'; wr { Isolator Line 1                    }
.Elem= 77;  .Name= 'IsoLine2'; wr { Isolator Line 2                    }
.Elem= 78;  .Name= 'IsoLEth1'; wr { Isolator Line to earth 1           }
.Elem= 79;  .Name= 'IsoLEth2'; wr { Isolator Line to earth 2           }

.Elem= 80;  .Name= 'JMP     '; wr { Isolator jumper                    }

.NoElTyp= neTapChan;
.ElemType=0;
.Elem= 81;  .Name= 'Tap Chan'; wr { transformer tap position           }

{ ELEMS 82..84 used in mv_elname }

.NoElTyp= neProtect;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 85;  .Name= 'Dst Prot'; wr { distance protection                }

.NoElTyp= neAlarm1;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 86;  .Name= 'EarthFlt'; wr { earth fault                        }

.NoElTyp= neMessage1;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 87;  .Name= 'Tra Para'; wr { transformer parallel               }
.Elem= 88;  .Name= 'M1intern'; wr { internal combined messages         }
.Elem= 89;  .Name= 'M1IntLim'; wr { int. comb. limit violation messages}

.NoElTyp= neAlarm2;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 90;  .Name= 'Elem A2a'; wr { alarm 2  : spare                   }

.NoElTyp= neMessage2;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 91;  .Name= 'AGC Mess'; wr { messages for AGC                   }

.NoElTyp= neMessage3;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 92;  .Name= 'Elem M3a'; wr { message 3  : spare                 }

.NoElTyp= neAlarm3;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 93;  .Name= 'Elem A3a'; wr { alarm 3  : spare                   }

.NoElTyp= neAlarm4;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 94;  .Name= 'Elem A4a'; wr { alarm 4  : spare                   }

.NoElTyp= neAlarm5;
.ElemType=0;                      {top-spec transferred element 70-79 }
.Elem= 95;  .Name= 'Elem A5a'; wr { alarm 5  : spare                  }

.NoElTyp= neMessage1;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 96;  .Name= 'Setpoint'; wr { messages for setpoint control      }

.NoElTyp= neMessage4;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 97;  .Name= 'Elem M4a'; wr { message 4  : spare                 }

.NoElTyp= neMessage5;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 98;  .Name= 'Elem M5a'; wr { message 5  : spare                 }

.NoElTyp= neMessage1;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 99;  .Name= 'SYNC    '; wr { syncronisation device for CB       }

{ ELEMS 100..104 not used yet }
{ ELEM  105 used in pa/odb/fillrel/elname }
{ ELEMS 106..114 not used yet }
{ ELEM  115 used in pa/odb/fillrel/elname }
{ ELEMS 116..119 not used yet }
{ ELEMS 120..123 used in pa/odb/fillrel/elname }
{ ELEM  124 used in mv_elname }
{ ELEMS 125..128 used in pa/odb/fillrel/elname }

{ subsystem status     }
.NoElTyp= neMessage5;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem=129;  .NoElTyp=neEnhSyStat; .Name='Sys St  '; .ElemType=499; wr
clear

{ ELEMS 130..131 used in pa/odb/fillrel/elname }
{ ELEMS 132..134 not used yet }
{ ELEMS 135 used in pa/odb/fillrel/elname }
{ ELEMS 136..138 not used yet }
{ ELEMS 139 used in pa/odb/fillrel/elname }
{ ELEMS 140..191 not used yet }
{ ELEMS 192..193 used in pa/odb/fillrel/elname }
{ ELEMS 194..196 not used yet }
{ ELEMS 197..198 used in pa/odb/fillrel/elname }
{ ELEM  199 not used yet }
{ ELEMS 200..206 used in mv_elname }
{ ELEMS 207..214 used in pa/odb/fillrel/elname }
{ ELEMS 215..228 used in mv_elname }

.NoElTyp=  neDEVICE ;
.ElemType= 69;                     { web server application status }
.Elem=229;  .Name= 'WebAppEl'; wr

{ ELEMS 230..235 used in pa/odb/fillrel/elname }
{ ELEMS 236..237 not used yet }
{ ELEMS 238..245 used in pa/odb/fillrel/elname }
{ ELEM  246 not used yet }
{ ELEMS 247..249 used in mv_elname }
{ ELEMS 250..267 not used yet }
{ ELEMS 268..269 used in pa/odb/fillrel/elname }
{ ELEMS 270..291 used in cv_elname }

.NoElTyp = neSwitch;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 292; .Name= 'SLI-fw  '; wr { slider                             }

{ ELEMS 293..294 used in cv_elname }
{ ELEMS 295..297 used in mv_elname }
{ ELEMS 298..299 used in cv_elname }
{ ELEMS 300..337 used in mv_elname }
{ ELEMS 338..349 not yet used }
{ ELEMS 350..351 used in mv_elname }

{      352 - 364 AGC Alarm elements }
clear
.NoElTyp = neALARM3
.Elem=352;  .Name= 'AGCUnStU'     { AGC Unit Start-Up command          }
            .Elemtype = 882;  wr

.Elem=353;  .Name= 'AGCUnShD'     { AGC Unit Shut-Down command         }
            .Elemtype = 883;  wr

.Elem=354;  .Name= 'AGCUnMWR'     { AGC Unit MW Local/Remote w/ ctrl   }
            .Elemtype = 884;  wr

.Elem=355;  .Name= 'AGCUnMVR'     { AGC Unit MVAR Local/Remote w/ ctrl }
            .Elemtype = 885;  wr

.Elem=356;  .Name= 'AGCUnVRT'     { AGC Unit Low-Voltage Ride-Through  }
            .Elemtype = 886;  wr  {    enable/disable switch control   }

.Elem=357;  .Name= 'AGCUnFRT'     { AGC Unit Frequency Ride-Through    }
            .Elemtype = 887;  wr  {    enable/disable switch control   }

.Elem=358;  .Name= 'AGCArCtS'     { AGC Area Control Switch, between   }
            .Elemtype = 888;  wr  {    Connected to Grid and Islanded  }

.Elem=359;  .Name= 'AGCStat ';    { AGC Status                         }
            .Elemtype = 880;  wr

.Elem=360;  .Name= 'AGCLocRm'     { AGC Local/Remote with control      }
            .Elemtype = 881;  wr

{ ELEMS 361..369 not yet used }

clear

{ ELEMS 370..381 used in mv_elname }
{ ELEMS 382..388 not yet used }

.NoElTyp=neEnhSyStat;
.ElemType=954;
.Elem=389;  .Name= 'SNMPStat'; wr {SNMP status informations           }
clear

{390 - 395 Load Shed }
.NoElTyp= neMessage4;
.ElemType=998;
.Elem=390;  .Name= 'ULELEM  '; wr {underfrequency load shed           }
clear

.NoElTyp= neMessage4;
.ElemType=999;
.Elem=391;  .Name= 'LSELEM  '; wr { load shed                         }
clear

{ ELEMS 392..395 not yet used }

{ 396 - 399 Alarm elements }
clear
.NoElTyp = neMessage5
.ElemType=0;
.Elem=396;  .Name= 'BrkrGasT'; wr { Breaker gas temperature alarm      }
.Elem=397;  .Name= 'SF6Press'; wr { Breaker SF6 gas pressure alarm     }
.Elem=398;  .Name= 'TrBuch  '; wr { Transformer Bucholz alarm          }
.Elem=399;  .Name= 'TrTempAl'; wr { Transformer Tempurature alarm      }
clear


{Binary Logic Combination elements}

.NoElTyp= neSwitch;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem=400; .ElemType=49;  .Name= 'SwitcSum'; wr { Sum of Switch Elems. }
.Elem=401; .ElemType=49;  .Name= 'EarthSum'; wr { Sum of Earth Elems.  }

.NoElTyp= neUnivers;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem=402; .ElemType=5;   .Name= 'TagSum  '; wr { Sum of Tag Elems.    }

.NoElTyp= neTopElem;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem=403; .ElemType=6;   .Name= 'TopoSum '; wr { Sum of Topo Elems.   }

{ ELEMS 404..407 used in pa/odb/fillrel/elname }
{ ELEM  408 not yet used }

.Noeltyp=neSwitch;  {from top-spec}
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 409; .Name= 'Fuse    '; wr { fuse                               }
.Elem= 410; .Name= 'LBS     '; wr { load break switch                  }
.Elem= 411; .Name= 'LBS1    '; wr { load break switch 1                }
.Elem= 412; .Name= 'LBS2    '; wr { load break switch 2                }

.Elem= 413; .Name= 'IsoEth 4'; wr { isolator earth (busbar 4)          }
.Elem= 414; .Name= 'IsoEth A'; wr { aux busbar earth 1                 }

.Elem= 415; .Name= 'LBS R   '; wr { load break switch right branch     }
.Elem= 416; .Name= 'ECB     '; wr { earth breaker                      }
.Elem= 417; .Name= 'ECB1    '; wr { earth breaker 1                    }
.Elem= 418; .Name= 'Sect Bb4'; wr { bus sectioner 4                    }
.Elem= 419; .Name= 'Sect Bb5'; wr { bus sectioner 5                    }
.Elem= 420; .Name= 'Sec LBS1'; wr { bus section load breaker 1         }
.Elem= 421; .Name= 'Sec LBS2'; wr { bus section load breaker 2         }
.Elem= 422; .Name= 'Sec LBS3'; wr { bus section load breaker 3         }
.Elem= 423; .Name= 'Sec LBS4'; wr { bus section load breaker 4         }
.Elem= 424; .Name= 'Sec LBS5'; wr { bus section load breaker 5         }
.Elem= 425; .Name= 'BLB1    '; wr { bus load breaker 1                 }
.Elem= 426; .Name= 'BLB2    '; wr { bus load breaker 2                 }
.Elem= 427; .Name= 'BLB3    '; wr { bus load breaker 3                 }
.Elem= 428; .Name= 'BLB4    '; wr { bus load breaker 4                 }
.Elem= 429; .Name= 'BLB5    '; wr { bus load breaker 5                 }
.Elem= 430; .Name= 'BLB1 R  '; wr { bus load breaker 1 right branch    }
.Elem= 431; .Name= 'BLB2 R  '; wr { bus load breaker 2 right branch    }
.Elem= 432; .Name= 'BLB3 R  '; wr { bus load breaker 3 right branch    }
.Elem= 433; .Name= 'BLB4 R  '; wr { bus load breaker 4 right branch    }
.Elem= 434; .Name= 'BLB5 R  '; wr { bus load breaker 5 right branch    }

{ ELEMS 435..437 not yet used }

.Elem= 438; .Name= 'Iso Bb 4'; wr { busbar isolator 4                  }
.Elem= 439; .Name= 'Iso Bb 5'; wr { busbar isolator 5                  }
.Elem= 440; .Name= 'IsoBb 1R'; wr { busbar isolator 1 right branch     }
.Elem= 441; .Name= 'IsoBb 2R'; wr { busbar isolator 2 right branch     }
.Elem= 442; .Name= 'IsoBb 3R'; wr { busbar isolator 3 right branch     }
.Elem= 443; .Name= 'IsoBb 4R'; wr { busbar isolator 4 right branch     }
.Elem= 444; .Name= 'RIso    '; wr { ring isolator DMS                  }
.Elem= 445; .Name= 'SGT     '; wr { switchgear truck                   }
.Elem= 446; .Name= 'SGT1    '; wr { switchgear truck busbar 1          }
.Elem= 447; .Name= 'SGT2    '; wr { switchgear truck busbar 2          }

.Elem= 448; .Name= 'FE      '; wr { field earth                        }
.Elem= 449; .Name= 'FE1     '; wr { field earth 1                      }
.Elem= 450; .Name= 'FE2     '; wr { field earth 2                      }
.Elem= 451; .Name= 'FER     '; wr { field earth   right branch         }
.Elem= 452; .Name= 'FER1    '; wr { field earth 1 right branch         }
.Elem= 453; .Name= 'FER2    '; wr { field earth 2 right branch         }

.Elem= 454; .Name= 'CCB     '; wr { coupl circuit breaker              }
.Elem= 455; .Name= 'CCB1    '; wr { coupl circuit breaker 1            }
.Elem= 456; .Name= 'CCB2    '; wr { coupl circuit breaker 2            }
.Elem= 457; .Name= 'CCBR    '; wr { coupl circuit breaker   right bran }
.Elem= 458; .Name= 'CCBR1   '; wr { coupl circuit breaker 1 right bran }
.Elem= 459; .Name= 'CCBR2   '; wr { coupl circuit breaker 2 right bran }

{ ELEM 460 not yet used }

.NoElTyp= neMessage3                           {top-spec}
{single and double pole commands without reply}
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem=461;  .Name= 'Cmd     '; wr { command                            }
.Elem=462;  .Name= 'RemAck  '; wr { remote acknowledge                 }
.Elem=463;  .Name= 'Cmd3    '; wr { command                            }
.Elem=464;  .Name= 'Cmd4    '; wr { command                            }
.Elem=465;  .Name= 'Cmd5    '; wr { command                            }
.Elem=466;  .Name= 'Cmd6    '; wr { command                            }
.Elem=467;  .Name= 'Cmd7    '; wr { command                            }
.Elem=468;  .Name= 'Cmd8    '; wr { command                            }
.Elem=469;  .Name= 'Cmd9    '; wr { command                            }

.NoElTyp= neMessage5                           {top-spec}
{message elements with one alarm per element      }

{Don't change elements 470..490.                  }
{These elements are only taken down by protocoll. }
{These elements are only defined by elementtext.  }
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem=470;  .Name= 'Messag  '; wr {                                    }
.Elem=471;  .Name= 'Messag01'; wr {                                    }
.Elem=472;  .Name= 'Messag02'; wr {                                    }
.Elem=473;  .Name= 'Messag03'; wr {                                    }
.Elem=474;  .Name= 'Messag04'; wr {                                    }
.Elem=475;  .Name= 'Messag05'; wr {                                    }
.Elem=476;  .Name= 'Messag06'; wr {                                    }
.Elem=477;  .Name= 'Messag07'; wr {                                    }
.Elem=478;  .Name= 'Messag08'; wr {                                    }
.Elem=479;  .Name= 'Messag09'; wr {                                    }
.Elem=480;  .Name= 'Messag10'; wr {                                    }
.Elem=481;  .Name= 'Messag11'; wr {                                    }
.Elem=482;  .Name= 'Messag12'; wr {                                    }
.Elem=483;  .Name= 'Messag13'; wr {                                    }
.Elem=484;  .Name= 'Messag14'; wr {                                    }
.Elem=485;  .Name= 'Messag15'; wr {                                    }
.Elem=486;  .Name= 'Messag16'; wr {                                    }
.Elem=487;  .Name= 'Messag17'; wr {                                    }
.Elem=488;  .Name= 'Messag18'; wr {                                    }
.Elem=489;  .Name= 'Messag19'; wr {                                    }
.Elem=490;  .Name= 'Messag20'; wr {                                    }

{message-elements for optim e/g/w }            {top-spec}
{elements 491..510 with fixed names - displayed in graphic displays    }
.Elem=491;  .Name= 'Intrusn '; wr { facility intrusion                 }
.Elem=492;  .Name= 'FacProt '; wr { facility protection (door alarm)   }
.Elem=493;  .Name= 'Msg23   '; wr {                                    }
.Elem=494;  .Name= 'Cp Dist '; wr { compensator control disturbed      }
.Elem=495;  .Name= 'Cp Run  '; wr { compensator control working        }
.Elem=496;  .Name= 'Cp Res  '; wr { compensator reson.loop working     }
.Elem=497;  .Name= 'CpLpDist'; wr { compensator loop disturbed         }
.Elem=498;  .Name= 'Msg28   '; wr {                                    }
.Elem=499;  .Name= 'Msg29   '; wr {                                    }
.Elem=500;  .Name= 'Msg30   '; wr {                                    }
.Elem=501;  .Name= 'ShortCt '; wr { short circuit detection            }
.Elem=502;  .Name= 'Msg32   '; wr {                                    }
.Elem=503;  .Name= 'Msg33   '; wr {                                    }
.Elem=504;  .Name= 'Msg34   '; wr {                                    }
.Elem=505;  .Name= 'Msg35   '; wr {                                    }
.Elem=506;  .Name= 'Loc-Rem '; wr { switching state: local/remote      }
.Elem=507;  .Name= 'Msg37   '; wr {                                    }
.Elem=508;  .Name= 'Msg38   '; wr {                                    }
.Elem=509;  .Name= 'Msg39   '; wr {                                    }
.Elem=510;  .Name= 'Msg40   '; wr {                                    }

{generic messages for project use }            {top-spec}
.Elem=511;  .Name= 'Msg41   '; wr {                                    }
.Elem=512;  .Name= 'Msg42   '; wr {                                    }
.Elem=513;  .Name= 'Msg43   '; wr {                                    }
.Elem=514;  .Name= 'Msg44   '; wr {                                    }
.Elem=515;  .Name= 'Msg45   '; wr {                                    }
.Elem=516;  .Name= 'Msg46   '; wr {                                    }
.Elem=517;  .Name= 'Msg47   '; wr {                                    }
.Elem=518;  .Name= 'Msg48   '; wr {                                    }
.Elem=519;  .Name= 'Msg49   '; wr {                                    }
.Elem=520;  .Name= 'Msg50   '; wr {                                    }
.Elem=521;  .Name= 'Msg51   '; wr {                                    }
.Elem=522;  .Name= 'Msg52   '; wr {                                    }
.Elem=523;  .Name= 'Msg53   '; wr {                                    }
.Elem=524;  .Name= 'Msg54   '; wr {                                    }
.Elem=525;  .Name= 'Msg55   '; wr {                                    }
.Elem=526;  .Name= 'Msg56   '; wr {                                    }
.Elem=527;  .Name= 'Msg57   '; wr {                                    }
.Elem=528;  .Name= 'Msg58   '; wr {                                    }
.Elem=529;  .Name= 'Msg59   '; wr {                                    }
.Elem=530;  .Name= 'Msg60   '; wr {                                    }
.Elem=531;  .Name= 'Msg61   '; wr {                                    }
.Elem=532;  .Name= 'Msg62   '; wr {                                    }
.Elem=533;  .Name= 'Msg63   '; wr {                                    }
.Elem=534;  .Name= 'Msg64   '; wr {                                    }
.Elem=535;  .Name= 'Msg65   '; wr {                                    }
.Elem=536;  .Name= 'Msg66   '; wr {                                    }
.Elem=537;  .Name= 'Msg67   '; wr {                                    }
.Elem=538;  .Name= 'Msg68   '; wr {                                    }
.Elem=539;  .Name= 'Msg69   '; wr {                                    }
.Elem=540;  .Name= 'Msg70   '; wr {                                    }
.Elem=541;  .Name= 'Msg71   '; wr {                                    }
.Elem=542;  .Name= 'Msg72   '; wr {                                    }
.Elem=543;  .Name= 'Msg73   '; wr {                                    }
.Elem=544;  .Name= 'Msg74   '; wr {                                    }
.Elem=545;  .Name= 'Msg75   '; wr {                                    }
.Elem=546;  .Name= 'Msg76   '; wr {                                    }
.Elem=547;  .Name= 'Msg77   '; wr {                                    }
.Elem=548;  .Name= 'Msg78   '; wr {                                    }
.Elem=549;  .Name= 'Msg79   '; wr {                                    }
.Elem=550;  .Name= 'Msg80   '; wr {                                    }
.Elem=551;  .Name= 'Msg81   '; wr {                                    }
.Elem=552;  .Name= 'Msg82   '; wr {                                    }
.Elem=553;  .Name= 'Msg83   '; wr {                                    }
.Elem=554;  .Name= 'Msg84   '; wr {                                    }
.Elem=555;  .Name= 'Msg85   '; wr {                                    }
.Elem=556;  .Name= 'Msg86   '; wr {                                    }
.Elem=557;  .Name= 'Msg87   '; wr {                                    }
.Elem=558;  .Name= 'Msg88   '; wr {                                    }
.Elem=559;  .Name= 'Msg89   '; wr {                                    }
.Elem=560;  .Name= 'Msg90   '; wr {                                    }

.NoElTyp= neTapChan;                 {top-spec}
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem=561;.Name= 'Compens ';.Elemtype=0;wr{ compensator                }

.NoElTyp= neProtect;                 {top-spec}
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem=562;  .Name= 'DiffProt'; wr { diff. protection (transformer)     }
.Elem=563;  .Name= 'TimeProt'; wr { time protection (independant)      }
.Elem=564;  .Name= 'Protect '; wr { protection                         }
.Elem=565;  .Name= 'PhasProt'; wr { phase difference protection        }
.Elem=566;  .Name= 'BusbProt'; wr { busbar protection                  }
.Elem=567;  .Name= 'GenProt '; wr { generator protection               }

.NoElTyp= neAlarm1;                  {top-spec}
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem=568;  .Name= 'res 568 '; wr {                                    }
.Elem=569;  .Name= 'PersEth '; wr { persistent earth fault             }

{ ELEMS 570..579 used in mv_elname }

{e/g/w slider pumps}
.NoElTyp = neSwitch;                 {top-spec}
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem=580;  .Name= 'S1      '; wr { Slider                             }
.Elem=581;  .Name= 'S2      '; wr { Slider                             }
.Elem=582;  .Name= 'S3      '; wr { Slider                             }
.Elem=583;  .Name= 'S4      '; wr { Slider                             }
.Elem=584;  .Name= 'S5      '; wr { Slider                             }
.Elem=585;  .Name= 'S6      '; wr { Slider                             }
.Elem=586;  .Name= 'S7      '; wr { Slider                             }
.Elem=587;  .Name= 'S8      '; wr { Slider                             }
.Elem=588;  .Name= 'S9      '; wr { Slider                             }
.Elem=589;  .Name= 'S10     '; wr { Slider                             }

.Elem=590;  .Name= 'P1      '; wr { pump                               }
.Elem=591;  .Name= 'P2      '; wr { pump                               }
.Elem=592;  .Name= 'P3      '; wr { pump                               }
.Elem=593;  .Name= 'P4      '; wr { pump                               }
.Elem=594;  .Name= 'P5      '; wr { pump                               }
.Elem=595;  .Name= 'P595    '; wr { pump                               }
.Elem=596;  .Name= 'P596    '; wr { pump                               }
.Elem=597;  .Name= 'P597    '; wr { pump                               }
.Elem=598;  .Name= 'P598    '; wr { pump                               }
.Elem=599;  .Name= 'P599    '; wr { pump                               }

{ ELEMS 600..601 not yet used }
{ ELEMS 602..620 used in mv_elname }

.NoElTyp = neSwitch;              {top-spec trensferred element 400-409}
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 621; .Name= 'ECB2    '; wr { earth breaker 2                    }
.Elem= 622; .Name= 'ECB3    '; wr { earth breaker 3                    }
.Elem= 623; .Name= 'ECB    R'; wr { earth breaker right branch         }
.Elem= 624; .Name= 'ECB1   R'; wr { earth breaker 1 right branch       }
.Elem= 625; .Name= 'ECB2   R'; wr { earth breaker 2 right branch       }
.Elem= 626; .Name= 'ECB3   R'; wr { earth breaker 3 right branch       }
.Elem= 627; .Name= 'ELBS    '; wr { earth load break switch            }
.Elem= 628; .Name= 'CB1A    '; wr { circuit breaker 1                  }
.Elem= 629; .Name= 'CB2A    '; wr { circuit breaker 2                  }
.Elem= 630; .Name= 'CB R    '; wr { circuit breaker right branch       }

.NoElTyp= neMessage4;
.ElemType=0;
.Elem= 631; .Name= 'Truck   '; wr { Truck Location                     }

{ ELEMS 632..635 used in mv_elname }

.NoElTyp = neSwitch;              {top-spec trensferred element 400-409}
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 636; .Name= 'OPswitch'; wr { opent point switch, DMS            }

{ ELEM 637 used in mv_elname }

.NoElTyp=neEnhSyStat;
.Elem=638;  .Name='HIS     '; .ElemType=477; wr

{ ELEMS 639 used in pa/odb/fillrel/elname }

.NoElTyp= neElcStat;
.ElemType=0;
.Elem= 640;  .Name= 'IFS-CHAN'; wr { Status element IFS CHANNELS       }
                                   {was in 4.1 system elem 646         }
.Elem= 641;  .Name= 'IFS-RTU '; wr { Status element IFS RTUs           }
                                   {was in 4.1 system elem 647         }

{ ELEMS 642 used in pa/odb/fillrel/elname }

.NoElTyp= neDEVICE ;
.Elem= 643; .Name= 'NTP Serv'; wr { NTP server (time source)           }

.NoElTyp= neTeArea;
.ElemType=952;
.Elem= 644; .Name= 'Diobserv'; wr { Dispatcher Shift Change            }

.NoElTyp= neModemGrp;
.ElemType=0;
.Elem= 645; .Name= 'TcMgrSta'; wr { Modem Group Status Information    }

.NoElTyp = neCcStatus;
.Elem= 646; .Name= 'CcStatus'; wr { control center status              }
.NoElTyp = neNcReports;
.Elem= 647; .Name= 'NcReport'; wr { network controll report            }

                                  {     Elements for TCI-function      }
                                  { ---------------------------------- }
.NoElTyp= neTcStatus;
.ElemType=0;
.Elem= 648; .Name= 'TcDevSta'; wr { TCI-element: Dev-statusinformat.   }

.NoElTyp= neTcStatus;
.ElemType=0;
.Elem= 649; .Name= 'TcLruSta'; wr { TCI-element: LRU-statusinformat.   }


{Elements of operating devices                                         }

.Elem=650;  .NoElTyp= neTopElem; .ElemType=416; .Name= 'Top Elem'; write
.Elem=651;  .NoElTyp= neTopElem; .ElemType=417; .Name= 'Top OpDv'; write
.Elem=652;  .NoElTyp= neTopElem; .ElemType=416; .Name= 'Top rs02'; write
.Elem=653;  .NoElTyp= neTopElem; .ElemType=419; .Name= 'Top Grnd'; write
.Elem=654;  .NoElTyp= neTopElem; .ElemType=420; .Name= 'Top BB  '; write
.Elem=655;  .NoElTyp= neTopElem; .ElemType=421; .Name= 'Top ABb '; write
.Elem=656;  .NoElTyp= neTopElem; .ElemType=422; .Name= 'Top CmBB'; write
.Elem=657;  .NoElTyp= neTopElem; .ElemType=423; .Name= 'Top Gen '; write
.Elem=658;  .NoElTyp= neTopElem; .ElemType=424; .Name= 'Top Inj '; write
.Elem=659;  .NoElTyp= neTopElem; .ElemType=425; .Name= 'Top Load'; write
.Elem=660;  .NoElTyp= neTopElem; .ElemType=426; .Name= 'Top Coup'; write
.Elem=661;  .NoElTyp= neTopElem; .ElemType=427; .Name= 'Top Comp'; write
.Elem=662;  .NoElTyp= neTopElem; .ElemType=428; .Name= 'Top Star'; write
.Elem=663;  .NoElTyp= neTopElem; .ElemType=429; .Name= 'Top Line'; write
.Elem=664;  .NoElTyp= neTopElem; .ElemType=430; .Name= 'Top Traf'; write
.Elem=665;  .NoElTyp= neTopElem; .ElemType=431; .Name= 'Top 3W  '; write
.Elem=666;  .NoElTyp= neTopElem; .ElemType=416; .Name= 'Top rs16'; write
.Elem=667;  .NoElTyp= neTopElem; .ElemType=416; .Name= 'Top rs17'; write
.Elem=668;  .NoElTyp= neTopElem; .ElemType=416; .Name= 'Top rs18'; write
.Elem=669;  .NoElTyp= neTopElem; .ElemType=416; .Name= 'Top rs19'; write
.Elem=670;  .NoElTyp= neTopElem; .ElemType=416; .Name= 'Top rs20'; write

.NoElTyp = neSwitch;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 671; .Name= 'EF      '; wr { earth fixed                        }
.Elem= 672; .Name= 'EF 1    '; wr { earth fixed 1                      }
.Elem= 673; .Name= 'EF 2    '; wr { earth fixed 2                      }

.Elem= 674; .Name= 'IsoLin1 '; wr { Iso exit 1                         }
.Elem= 675; .Name= 'IsoLin2 '; wr { Iso exit 2                         }
.Elem= 676; .Name= 'IsoLin3 '; wr { Iso exit 3                         }
.Elem= 677; .Name= 'IsoLin R'; wr { Iso exit right branch              }
.Elem= 678; .Name= 'IsoLin1R'; wr { Iso exit 1 right branch            }
.Elem= 679; .Name= 'IsoLin2R'; wr { Iso exit 2 right branch            }
.Elem= 680; .Name= 'IsoLin3R'; wr { Iso exit 3 right branch            }

.NoElTyp= neDEVICE ;
.ElemType=57;
.Elem= 681; .Name= 'DskMonEl'; wr { Disk Monitor status                }

{ ELEMS 682..684 used in mv_elname }

.NoElTyp= neElcStat;
.ElemType=0;
.Elem= 685;  .Name= 'IFS-SG  '; wr { Status element IFS RTU SGs        }

{ ELEMS 686..691 not yet used }

.NoElTyp= neAlarm2;
.ElemType=0;
.Elem= 692; .Name= 'OFI_F   '; wr { overcurrent fault indicator from   }
.Elem= 693; .Name= 'OFI_T   '; wr { overcurrent fault indicator to     }
.Elem= 694; .Name= 'OFDir_F '; wr { overcurrent fault direction from   }
.Elem= 695; .Name= 'OFDir_T '; wr { overcurrent fault direction to     }
.Elem= 696; .Name= 'EFI_F   '; wr { earth fault indicator from         }
.Elem= 697; .Name= 'EFI_T   '; wr { earth fault indicator to           }
.Elem= 698; .Name= 'EFDir_F '; wr { earth fault direction from         }
.Elem= 699; .Name= 'EFDir_T '; wr { earth fault direction to           }

{ ELEM  700 not yet used }

.NoElTyp= neMessage5;
.ElemType=0;                      {top-spec transferred element 70-79  }
.Elem= 701; .Name= 'OM LiEl '; wr { Element for OM Liste               }

.NoElTyp= neMessage5;
.ElemType=0;
.Elem=702;  .Name= 'DAS-TIF '; wr { DAS & TIF rectangle                }

.NoElTyp= neMessage3;
.ElemType=0;
.Elem=703; .Name= 'LastChng'; wr  {last change of capacitor bank       }

.NoElTyp= neSwitch;
.ElemType=0;
.Elem=704;  .Name= 'AbDiRele'; wr { able / disable rele                }

{ ELEM  705..709 not yet used }
{ ELEMS 710..730 used in mv_elname }

.NoElTyp= neSwitch;
.ElemType=0;
.Elem=731;  .Name= 'Reclos  '; wr { recloser                           }
                                  {  was elem 701 in 4.1 system !      }

{ ELEMS 732..735 used in mv_elname }
{ ELEMS 736..789 not yet used }

.NoElType = neAlarm3;                {   Generating ICCP Status Alarms }
.Elem= 790; .Name= 'SiteAdm ' ; wr  { Site On/Off State               }
.Elem= 791; .Name= 'LinkAdm ' ; wr  { Link On/Off State               }
.Elem= 792; .Name= 'GrpAdm  ' ; wr  { Group On/Off State              }
.Elem= 793; .Name= 'LinkOper' ; wr  { Link Up/Down State              }
.Elem= 794; .Name= 'GrpOper ' ; wr  { Group Up/Down State             }
.Elem= 795; .Name= 'SiteWarn' ; wr  { Site Warning                    }

.NoElTyp= neDEVICE ;
.ElemType=953;
.Elem= 796; .Name= 'Db St   '; wr { Oracle Redundancy Monitoring       }

{ ELEMS 797..799 not yet used }

.ElemType=0;
.Elem= 800; .Name= 'EndStEle'; wr { last standard element              }

{**********************************************************************}
{Project area                                                          }
{System Limit for elements is 4000 (Elmax = 4000 in tec_c.h)           }
{When elements beyond this limit is needed, increase Elmax and execute }
{a complete system compilation                                         }
{**********************************************************************}

{ ELEMS 801..812 used in cv_elname }
{ ELEMS 813..847 not yet used }

.Noeltyp=neSwitch;
.ElemType=0;
.Elem= 848; .Name= 'Carga   '; wr { fuse of type carga                 }
.Elem= 849; .Name= 'Equipo  '; wr { fuse of type equipo                }

.NoElTyp= neMessage3
.ElemType=0;
.Elem=850;  .Name= 'ResetE  '; wr { command, copy of eleme 461         }

.NoElTyp= neMessage5;
.ElemType=0;
.Elem=851;  .Name= 'P1_02   '; wr {loss of power message               }
.Elem=852;  .Name= 'FaRelRep'; wr {Falla reles repetidores             }
.Elem=853;  .Name= 'INT_01  '; wr {Falla mecanismo interruptor         }
.Elem=854;  .Name= 'INT_02  '; wr {Baja presion SF6 nivel 1-2          }
.Elem=855;  .Name= 'FaPotenc'; wr {Falta potenciales                   }
.Elem=856;  .Name= 'GRAL_05 '; wr {No disponi equipo en Tablero Comuni }
.Elem=857;  .Name= 'INT_18  '; wr {Disparo con bloqueo                 }
.Elem=858;  .Name= 'INT_10  '; wr {Falla circuito de disparo bobina 1  }
.Elem=859;  .Name= 'INT_11  '; wr {Falla circuito de disparo bobina 2  }
.Elem=860;  .Name= 'RecDispT'; wr {Recibo disparo transferido          }
.Elem=861;  .Name= 'EnvDispT'; wr {Envio disparo transferido           }
.Elem=862;  .Name= 'INT_21  '; wr {Falta condicion de sincronismo      }
.Elem=863;  .Name= 'P1_03   '; wr {Disparo monofasico distancia        }
.Elem=864;  .Name= 'DispTriD'; wr {Disparo trifasico distancia         }
.Elem=865;  .Name= 'P1_05   '; wr {Zona 1                              }
.Elem=866;  .Name= 'P1_07   '; wr {Zona 2                              }
.Elem=867;  .Name= 'P1_09   '; wr {Zona 3                              }
.Elem=868;  .Name= 'ZonaInvV'; wr {Zona inversa                        }
.Elem=869;  .Name= 'NDisDist'; wr {No disponible rele distancia        }
.Elem=870;  .Name= 'NExiRec '; wr {No exitoso recierre                 }
.Elem=871;  .Name= 'ReDiAcTr'; wr {Recibo disparo acelerado transferido}
.Elem=872;  .Name= 'EnDiAcTr'; wr {Envio disparo acelerado transferido }
.Elem=873;  .Name= 'P1_42   '; wr {Oscilacion de potencia              }
.Elem=874;  .Name= 'DS-C Tri'; wr {Disparo S/C trifasico               }
.Elem=875;  .Name= 'DS-C Mon'; wr {Disparo S/C monofasico              }
.Elem=876;  .Name= 'P1_39   '; wr {Recibo-Permiso disparo transferido  }
.Elem=877;  .Name= 'P1_38   '; wr {Envio-Permiso disparo transferido   }
.Elem=878;  .Name= 'P1_15   '; wr {Disparo respaldo S/C fases o neutro }
.Elem=879;  .Name= 'ReMonTri'; wr {Recierre monofasico trifasico       }
.Elem=880;  .Name= 'P1_13   '; wr {Disparo S/C fases                   }
.Elem=881;  .Name= 'P1_14   '; wr {Disparo S/C neutro                  }
.Elem=882;  .Name= 'FaReF-N '; wr {Falla reles S/C fase neutro         }
.Elem=883;  .Name= 'FaCTOD12'; wr {Falla circuito de disparo bobina 1-2}
.Elem=884;  .Name= 'DisDL-C '; wr {Disparo diferencial Larga / Corta   }
.Elem=885;  .Name= 'P1_04   '; wr {Disparo S/C                auto/44  }
.Elem=886;  .Name= 'FaRDL-C '; wr {Falla reles diferencial Larga/Corta }
.Elem=887;  .Name= 'FaPotB22'; wr {Falla potenciales barra 220kV       }
.Elem=888;  .Name= 'Sincron '; wr {Sincronismo                         }
.Elem=889;  .Name= 'P1_16   '; wr {Disparo 21/87L Disp prot difer func2}
.Elem=890;  .Name= 'P1_17   '; wr {87L Bloqueada prot en linea         }
.Elem=891;  .Name= 'TR_08   '; wr {Alarma Buchholz                     }
.Elem=892;  .Name= 'TR_17   '; wr {Disparo Buchholz                    }
.Elem=893;  .Name= 'TR_07   '; wr {Bajo nivel aceite cambiador         }
.Elem=894;  .Name= 'TR_24   '; wr {Disparo valv sobrepresion cambiador }
.Elem=895;  .Name= 'TR_14   '; wr {Falla alimentacion cambiador        }
.Elem=896;  .Name= 'FaVent  '; wr {Falla ventilacion                   }
.Elem=897;  .Name= 'S-CFases ; wr {Disparo S/C fases                   }
.Elem=898;  .Name= 'P1_06   '; wr {Disparo S/C neutro                  }
.Elem=899;  .Name= 'S-CFasN '; wr {Disparo S/C F-N                     }
.Elem=900;  .Name= 'EnReDiTr'; wr {Env/Rec Disp Transferido            }
.Elem=901;  .Name= 'P1_01   '; wr {Disparo distancia                   }
.Elem=902;  .Name= 'ArranqeR'; wr {Arranque R                          }
.Elem=903;  .Name= 'ArranqeS'; wr {Arranque S                          }
.Elem=904;  .Name= 'ArranqeT'; wr {Arranque T                          }
.Elem=905;  .Name= 'ArranqeN'; wr {Arranque N                          }
.Elem=906;  .Name= 'BqRecier'; wr {Bloqueo recierre                    }
.Elem=907;  .Name= 'Recierre'; wr {Recierre                            }
.Elem=908;  .Name= 'DisTrans'; wr {Disparo transferido                 }
.Elem=909;  .Name= 'Fa125Ann'; wr {Falta 125 CC anunciador             }
.Elem=910;  .Name= 'FaCA Ann'; wr {Falta tension CA anunciador         }
.Elem=911;  .Name= 'S-CTie  '; wr {S/C a Tierra                        }
.Elem=912;  .Name= 'FalCargd'; wr {Falla cargador                      }

.Elem=913;  .Name= 'FaA TiCC'; wr {Falla a tierra en CC                }
.Elem=914;  .Name= 'P1_10   '; wr {Falta CC celdas 13.2kV y SerAux     }
.Elem=915;  .Name= 'FaCCReTa'; wr {Falta CC reles tableros ASEA/BBC    }
.Elem=916;  .Name= 'DispS-C '; wr {Disparo S/C                         }
.Elem=917;  .Name= 'DispBloq'; wr {Disparo con bloqueo                 }
.Elem=918;  .Name= 'P1_33   '; wr {Disparo diferencial                 }
.Elem=919;  .Name= 'DiS-CAli'; wr {Disparo S/C alimentador             }
.Elem=920;  .Name= 'DiDiBarr'; wr {Disparo diferencial barras          }
.Elem=921;  .Name= 'TR_02   '; wr {Alarma temperatura aceite/devanado  }
.Elem=922;  .Name= 'TR_19   '; wr {Disparo temperatura aceite/devanado }
.Elem=923;  .Name= 'TR_06   '; wr {Bajo nivel aceite trafos 1/2        }
.Elem=924;  .Name= 'DiVaSobP'; wr {Disparo valvula sobrepresion tr 1/2 }
.Elem=925;  .Name= 'FaATier '; wr {Falla a tierra                      }
.Elem=926;  .Name= 'DiS-CT12'; wr {Disparo S/C trafos 1/2              }
.Elem=927;  .Name= 'FaTePot '; wr {Falta tension potenciales           }
.Elem=928;  .Name= 'BajVolCC'; wr {Bajo voltaje CC                     }
.Elem=929;  .Name= 'P2_16   '; wr {Disparo 21/87L disp prot difer func2}
.Elem=930;  .Name= 'TR_22   '; wr {Disparo falla cambiador             }
.Elem=931;  .Name= 'FaTePLin'; wr {Falta tension potenciales lineas    }
.Elem=932;  .Name= 'DiDiLin '; wr {Disparo distancia lineas            }
.Elem=933;  .Name= 'FaCTOLA '; wr {Falla cto de disparo lineas, acople }
.Elem=934;  .Name= 'FaCTOT12'; wr {Falla cto de disparo trafo 1/2      }
.Elem=935;  .Name= 'P1_11   '; wr {Falla cto de disparo circuitos      }
.Elem=936;  .Name= 'P1_12   '; wr {Disparo S/C lineas                  }
.Elem=937;  .Name= 'INT_09  '; wr {Discrepancia de polos               }
.Elem=938;  .Name= 'FaCCRel '; wr {Falla CC de reles de proteccion     }
.Elem=939;  .Name= 'FaAirCop'; wr {Falla aire compresion               }
.Elem=940;  .Name= 'FaInvers'; wr {Falla inversor                      }
.Elem=941;  .Name= 'FaTe125C'; wr {Falla tension 125 CC                }
.Elem=942;  .Name= 'P1_18   '; wr {Falla termicos cargador             }
.Elem=943;  .Name= 'FaCC125I'; wr {Falla CC 125 interruptor            }
.Elem=944;  .Name= 'FaSAuxDC'; wr {Falla servicios auxiliares DC       }
.Elem=945;  .Name= 'IntrSegu'; wr {Intruso seguridad                   }
.Elem=946;  .Name= 'Local   '; wr {perilla telemando en local          }
.Elem=947;  .Name= 'BajVoBar'; wr {Bajo voltaje barras                 }
.Elem=948;  .Name= 'BajFrecu'; wr {Baja Frecuencia                     }
                                  { 13kV feeders :                     }
.Elem=949;  .Name= 'ReleFall'; wr {Rele en falla                       }
.Elem=950;  .Name= 'BajoVolt'; wr {Bajo voltaje                        }
.Elem=951;  .Name= 'DiS-CSN '; wr {Disparo S/C secuencia negativa      }
.Elem=952;  .Name= 'P1_19   '; wr {Disparo S/C instantanea fase 1      }
.Elem=953;  .Name= 'P1_22   '; wr {Disparo S/C instantaneo neutro 1    }
.Elem=954;  .Name= 'P1_20   '; wr {Disparo S/C instantanea fase 2      }
.Elem=955;  .Name= 'P1_23   '; wr {Disparo S/C instantaneo neutro 2    }
.Elem=956;  .Name= 'P1_21   '; wr {Disparo S/C instantanea fase 3      }
.Elem=957;  .Name= 'P1_24   '; wr {Disparo S/C instantaneo neutro 3    }
.Elem=958;  .Name= 'DiS-CTPh'; wr {Disparo S/C temperatura fase        }
.Elem=959;  .Name= 'DiS-CTNe'; wr {Disparo S/C temperatura neutro      }
.Elem=960;  .Name= 'DiSobVol'; wr {Disparo sobrevoltaje                }
.Elem=961;  .Name= 'DiS-CDSP'; wr {Disparo S/C direccional sec.positiva}
.Elem=962;  .Name= 'DiS-CDSN'; wr {Disparo S/C direccional sec.negativa}
.Elem=963;  .Name= 'P1_25   '; wr {Deslastre frecuencia primera etapa  }
.Elem=964;  .Name= 'RC1A    '; wr {Restauracion carga primera etapa    }
.Elem=965;  .Name= 'DiVarFre'; wr {Disparo x variacion de frecuencia   }
.Elem=966;  .Name= 'RC2A    '; wr {Restauracion carga segunda etapa    }
.Elem=967;  .Name= 'FaBoDi  '; wr {Falla bobina disparo                }
.Elem=968;  .Name= 'RecDesha'; wr {Recierre deshabilitado              }
.Elem=969;  .Name= 'BlqRecie'; wr {Bloqueo recierre                    }
.Elem=970;  .Name= 'FaIntr  '; wr {Falla interruptor                   }
.Elem=971;  .Name= 'FaFusib1'; wr {Falla fusibile                      }
.Elem=972;  .Name= 'P1_27   '; wr {Disponible 1 IED1                   }
.Elem=973;  .Name= 'P1_30   '; wr {Disponible 2 IED1                   }
.Elem=974;  .Name= 'P1_28   '; wr {Disparo Proteccion Arco             }
.Elem=975;  .Name= 'P1_29   '; wr {No dispon rele Arco                 }
.Elem=976;  .Name= 'FaIED   '; wr {Falla IED                           }

                                  { RTU and cnhannel states            }
.Elem=977;  .Name= 'FaAlGral'; wr {Falla alarma general                }
.Elem=978;  .Name= 'FaRTUCIn'; wr {Falla RTU canal indicator           }
.Elem=979;  .Name= 'FaRTUCAn'; wr {Falla RTU canal analogo             }
.Elem=980;  .Name= 'FaRTUCAD'; wr {Falla RTU canal acumulado digital   }
.Elem=981;  .Name= 'FaRTUCAV'; wr {Falla RTU canal valor acumulado     }
.Elem=982;  .Name= 'FaRTURst'; wr {Falla RTU restart                   }
.Elem=983;  .Name= 'FaCanIn '; wr {Falla canal indicador               }
.Elem=984;  .Name= 'FaCanAna'; wr {Falla canal analogo                 }
.Elem=985;  .Name= 'FaCanVaD'; wr {Falla canal valor digital           }
.Elem=986;  .Name= 'FaCanVaA'; wr {Falla canal valor acumulador        }
.Elem=987;  .Name= 'RTURest '; wr {RTU restarted                       }
.Elem=988;  .Name= 'RTUClea '; wr {RTU cleared                         }
.Elem=989;  .Name= 'RTUErEsA'; wr {RTU error estado analogo            }
.Elem=990;  .Name= 'RTUErEsD'; wr {RTU error estado digital            }
.Elem=991;  .Name= 'RTUArFri'; wr {RTU arranque en frio                }
.Elem=992;  .Name= 'RTUActiv'; wr {RTU activa/inactiva                 }
                                  { further elements for alarms        }
.Elem=993;  .Name= 'PerDeN2 '; wr {Perdida de N2                       }
.Elem=994;  .Name= 'BlqGeSF6'; wr {Bloqueo general SF6                 }
.Elem=995;  .Name= 'FaBlqSec'; wr {Falla bloqueo seccionadores         }
.Elem=996;  .Name= 'FaPlEmer'; wr {Falla planta de emergencia          }
.Elem=997;  .Name= 'P1_36   '; wr {Falla equipo fibreoptica            }
.Elem=998;  .Name= 'ActAlSie'; wr {Activada alarma Siemens             }

{further elements for alarms, see request EPM0019                      }

.Elem=999;  .Name= 'FaRTUPpl'; wr {Falla RTU principal                 }
.Elem=1000; .Name= 'S-CReVol'; wr {S/C Restricc Voltaje                }
.Elem=1001; .Name= 'FaPLCPpl'; wr {Falla PLC principal                 }
.Elem=1002; .Name= 'FaPLCRes'; wr {Falla PLC respaldo                  }
.Elem=1003; .Name= 'DiS-CIPh'; wr {Disparo S/C Instantaneo Fase        }
.Elem=1004; .Name= 'DiS-CINe'; wr {Disparo S/C Instantaneo Neutro      }
.Elem=1005; .Name= 'NoDReFIn'; wr {No dispon. rele falla inter. (50 BF)}
.Elem=1006; .Name= 'NoDReDif'; wr {No disponible rele diferencial      }
.Elem=1007; .Name= 'NoDReS-C'; wr {No disponible rele sobre corriente  }
.Elem=1008; .Name= 'FallaAnu'; wr {Falla anunciador                    }
.Elem=1009; .Name= 'FaCIDiBa'; wr {Falla circuito corriente dif. barras}
.Elem=1010; .Name= 'CoHidFun'; wr {Compresor hidraulico funcionando    }
.Elem=1011; .Name= 'PlaEmGen'; wr {Planta de emergencia funcionando    }
.Elem=1012; .Name= 'AMiSAEse'; wr {Abierto minibreak.serv.aux.Esencial.}
.Elem=1013; .Name= 'AMiSANoE'; wr {Abierto minibreak.serv.aux.no.Esenc.}
.Elem=1014; .Name= 'DiTemTSA'; wr {Disparo temperatura trafo serv.aux. }
.Elem=1015; .Name= 'DiS-CTSA'; wr {Disparo sobre corr. trafo serv.aux. }
.Elem=1016; .Name= 'FaSAuxCA'; wr {Falla serv.aux corriente alterna    }
.Elem=1017; .Name= 'P2_17   '; wr {87L Bloqueada prot difr linea       }
.Elem=1018; .Name= 'TR_30   '; wr {Discrepancia posicion de tap        }
.Elem=1019; .Name= 'TR_03   '; wr {Alarma temperatura aceite           }
.Elem=1020; .Name= 'TR_04   '; wr {Alarma temperatura devanados        }
.Elem=1021; .Name= 'TR_21   '; wr {Disparo temperatura aceite          }
.Elem=1022; .Name= 'TR_20   '; wr {Disparo temperatura devanados       }
.Elem=1023; .Name= 'DisReFlu'; wr {Disparo rele flujo                  }
.Elem=1027; .Name= 'L1TAAlFR'; wr {alarma fase R                       }
.Elem=1028; .Name= 'L2TAAlFS'; wr {alarma fase S                       }
.Elem=1029; .Name= 'L3TAAlFT'; wr {alarma fase T                       }

{further elements for alarms, see request EPMxxxx 28 May 1998          }

.Elem=1030; .Name= 'SubImped'; wr {SubImpedancia                       }
.Elem=1031; .Name= 'SobPSF6 '; wr {Sobre presion SF6                   }
.Elem=1032; .Name= 'BajPSF62'; wr {Baja presion SF6 nivel 2            }
.Elem=1033; .Name= 'AbBrTaEs'; wr {Abierto breaker tablero S/A esencial}
.Elem=1034; .Name= 'AbBrTNoE'; wr {Abierto breaker tablero S/A no esenc}
.Elem=1035; .Name= 'AbBrTaCC'; wr {Abierto breaker tablero S/A CC      }
.Elem=1036; .Name= 'NDRReS-C'; wr {No disponible rele respaldo S/C     }
.Elem=1037; .Name= 'NoDisOsc'; wr {No disponible osciloperturbografo   }
.Elem=1038; .Name= 'FaTeAC  '; wr {Falta tension AC                    }
.Elem=1039; .Name= 'AlTaSAux'; wr {Alarma en tableros SerAux           }
.Elem=1040; .Name= 'DisBuCam'; wr {Disparo Buchholz cambiador          }
.Elem=1041; .Name= 'BAH_09  '; wr {Alarma Buchholz cambiador           }
.Elem=1042; .Name= 'NoDiRRec'; wr {No disponible rele recierre         }
.Elem=1043; .Name= 'DiS-CDiN'; wr {Disparo S/C direccional neutro      }
.Elem=1044; .Name= 'NDS-CDiN'; wr {No dispon rele' S/C direccional neut}
.Elem=1045; .Name= 'P1_37   '; wr {Falta CC circuito de apertura       }
.Elem=1046; .Name= 'PotInv  '; wr {Potencia Inversa                    }
.Elem=1047; .Name= 'INT_03  '; wr {Bloqueo baja presion SF6/N2         }
.Elem=1048; .Name= 'P1_48   '; wr {Onda presion                        }
.Elem=1049; .Name= 'OpeInSec'; wr {Operacion incompleta seccionador    }
.Elem=1050; .Name= 'SobFrec '; wr {Sobre Frecuencia                    }
.Elem=1051; .Name= 'P1_08   '; wr {Zona 4                              }
.Elem=1052; .Name= 'AFaBiTri'; wr {Arranque falla bifasica trifasica   }
.Elem=1053; .Name= 'DisDiLar'; wr {Disparo diferencial larga           }
.Elem=1054; .Name= 'DisDiCor'; wr {Disparo diferencial corta           }
.Elem=1055; .Name= 'P1_49   '; wr {Falta CC cto de apertura interrupto2}
.Elem=1056; .Name= 'P1_50   '; wr {Falta CC Cto de apertura interrupto3}
.Elem=1057; .Name= 'INT_08  '; wr {Falta CC alimentacion motores       }
.Elem=1058; .Name= 'FaCCFaIn'; wr {Falta CC falla interruptor          }
.Elem=1059; .Name= 'FaCCMed '; wr {Falta CC medida                     }
.Elem=1060; .Name= 'P1_53   '; wr {Falta CC alarmas SF6                }
.Elem=1061; .Name= 'FaCCSinc'; wr {Falta CC verificadores Sincronismos }
.Elem=1062; .Name= 'FaCCIndi'; wr {Falta CC Indicacion                 }
.Elem=1063; .Name= 'FaMeInt2'; wr {Falla mecanismo interruptor 2       }
.Elem=1064; .Name= 'S-EAtend'; wr {Subestacion Atendida                }
.Elem=1065; .Name= 'PR_01   '; wr {Falla circuito de disp. interruptor2}
.Elem=1066; .Name= 'PR_02   '; wr {Falla circuito de disp. interruptor3}
.Elem=1067; .Name= 'DisFaIn2'; wr {Disparo falla interruptor 2         }
.Elem=1068; .Name= 'PR_03   '; wr {Disparo falla interruptor 3         }
.Elem=1069; .Name= 'PR_04   '; wr {Bloqueo baja presion SF6 interrup1  }
.Elem=1070; .Name= 'PR_05   '; wr {Bloqueo baja presion SF6 interrup2  }
.Elem=1071; .Name= 'PR_06   '; wr {Bloqueo baja presion SF6 interrup3  }
.Elem=1072; .Name= 'P1_44   '; wr {Rele en prueba                      }
.Elem=1073; .Name= 'FaModEnt'; wr {Falla modulo de Entrada             }
.Elem=1074; .Name= 'P2_44   '; wr {Rele en prueba                      }
.Elem=1075; .Name= 'AbBMotIn'; wr {Abierto minibreaker motor interrupto}
.Elem=1076; .Name= 'FaBaDTUR'; wr {Falla bateria equipo en la fase R   }
.Elem=1077; .Name= 'INT_05  '; wr {Abierto minibreaker mando interrupt }

{further elements for alarms, see request EPMxxxx 04 June 1998         }

.Elem=1078; .Name= 'FalDTUFR'; wr {Falla fase R DTU                    }
.Elem=1079; .Name= 'FalDTUFS'; wr {Falla fase S DTU                    }
.Elem=1080; .Name= 'FalDTUFT'; wr {Falla fase T DTU                    }
.Elem=1081; .Name= 'RepFalla'; wr {Reposicion falla DTU                }
.Elem=1082; .Name= 'FaTeDTU '; wr {Falla Tension DTU                   }
.Elem=1083; .Name= 'BaPSF6SW'; wr {Baja presion SF6 SW                 }
.Elem=1084; .Name= 'AbierDTU'; wr {Puerta DTU abierta                  }
.Elem=1085; .Name= 'FaBatDTU'; wr {Falla bateria DTU                   }
.Elem=1086; .Name= 'INT_06  '; wr {Presencia alimentacion radios       }
.Elem=1087; .Name= 'AlTemp  '; wr {Alarma temperatura                  }
.Elem=1088; .Name= 'ComunDTU'; wr {Estado comunicaciones DTU           }
.Elem=1089; .Name= 'MemBaRD3'; wr {Memoria insuficiente BD-RD3         }
.Elem=1090; .Name= 'BlCierre'; wr {Bloqueo al cierre                   }
.Elem=1091; .Name= 'P1_52   '; wr {Falla recepcion mensaje GOOSE       }

{further elements for alarms, see request EPMxxxx 08 June 1998         }

.Elem=1092; .Name= 'DisMoDiR'; wr {Disparo monofasico distanc. (fase R)}
.Elem=1093; .Name= 'DisMoDiS'; wr {Disparo monofasico distanc. (fase S)}
.Elem=1094; .Name= 'DisMoDiT'; wr {Disparo monofasico distanc. (fase T)}
.Elem=1095; .Name= 'DS-CMonR'; wr {Disparo monofasico S/C (fase R)     }
.Elem=1096; .Name= 'DS-CMonS'; wr {Disparo monofasico S/C (fase S)     }
.Elem=1097; .Name= 'DS-CMonT'; wr {Disparo monofasico S/C (fase T)     }
.Elem=1098; .Name= 'INT_07  '; wr {Disparo S/C Direcci Temporiz(fase R)}
.Elem=1099; .Name= 'DS-CDTeS'; wr {Disparo S/C Direcci Temporiz(fase S)}
.Elem=1100; .Name= 'INT_14  '; wr {Disparo S/C Direcci Temporiz(fase T)}
.Elem=1101; .Name= 'INT_19  '; wr {Disparo S/C Direcci Temporiz(Neutro)}
.Elem=1102; .Name= 'DisProMe'; wr {Disparo protecciones mecanicas      }
.Elem=1103; .Name= 'Tens-ED '; wr {Presencia de tension entradas digit.}
.Elem=1104; .Name= 'FaTeReSe'; wr {Falta tension reles senal (USM)     }
.Elem=1105; .Name= 'FaTeReOr'; wr {Falta tension reles ordenes         }
.Elem=1106; .Name= 'AlTemCha'; wr {Alarma temperatura chasis principal }
.Elem=1107; .Name= 'FaCanal1'; wr {Falla comunicaciones canal 1        }
.Elem=1108; .Name= 'FaCanal2'; wr {Falla comunicaciones canal 2        }
.Elem=1109; .Name= 'FaCoADLP'; wr {Falla comunicaciones ADLP           }
.Elem=1110; .Name= 'ADTempAc'; wr {Alarma/Disparo temperatura Aceite   }
.Elem=1111; .Name= 'ADTempDe'; wr {Alarma/Disparo temperatura Devanad  }
.Elem=1112; .Name= 'ADTeAcDe'; wr {Alarma/Disparo temperatura Ace/Dev  }
.Elem=1113; .Name= 'Arranque'; wr {Arranque                            }
.Elem=1114; .Name= 'PerAlDTU'; wr {Permiso alarmas espontaneas DTU     }
.Elem=1115; .Name= 'PerDFDTU'; wr {Permiso deteccion de falla DTU      }
.Elem=1116; .Name= 'ManInDTU'; wr {Mando inhibido DTU                  }
.Elem=1117; .Name= 'BAH_01  '; wr {Activa DTU                          }
.Elem=1118; .Name= 'BAH_02  '; wr {Permiso ordenes DDC                 }
.Elem=1119; .Name= 'BAH_03  '; wr {Disparo asistido por teleproteccion }
.Elem=1120; .Name= 'EnTelDiN'; wr {Envio tele-proteccion direc-neu     }
.Elem=1121; .Name= 'FaSisTel'; wr {Falla sistema de tele - proteccion  }
.Elem=1122; .Name= 'BAH_04  '; wr {Disparo direccional neutro          }
.Elem=1123; .Name= 'DiSobPSu'; wr {Disparo Sobrepresion Subita         }
.Elem=1124; .Name= 'A-DBuchh'; wr {Alarma Disparo Buchholz             }

.Elem=1125; .Name= 'msg_aval'; wr {Availability msg (Spectrum internal)}
.Elem=1126; .Name= 'AvailRes'; wr {Availability res.(Spectrum internal)}
.Elem=1127; .Name= 'DS-CReXN'; wr {Disparo S/C Rele X Neutro           }
.Elem=1128; .Name= 'DS-CReYF'; wr {Disparo S/C Rele Y Fases            }
.Elem=1129; .Name= 'DS-CReYN'; wr {Disparo S/C Rele Y Neutro           }
.Elem=1130; .Name= 'DS-CReXF'; wr {Disparo S/C Rele X Fases            }
.Elem=1131; .Name= 'RelojGPS'; wr {Sincronismo Reloj GPS               }
.Elem=1132; .Name= 'FaModSal'; wr {Falla modolos Salida                }
.Elem=1133; .Name= 'Siemens '; wr {Siemens maintainance                }
.Elem=1134; .Name= 'ChOverC1'; wr {change  over computer 1             }
.Elem=1135; .Name= 'ChOverC2'; wr {change  over computer 2             }
.Elem=1136; .Name= 'BAH_05  '; wr {Falta CC control motor Vl           }
.Elem=1137; .Name= 'P1_35   '; wr {Cierre en falla                     }
.Elem=1138; .Name= 'Zona 2-4'; wr {Disparo Zona2 - Zona4               }
.Elem=1139; .Name= 'E-RDiAct'; wr {En/Rec Disparo Transfer             }
.Elem=1140; .Name= 'INT_12  '; wr {Retrip falla interruptor            }
.Elem=1141; .Name= 'MeSpa291'; wr {message spare element 291   !used!  }
.Elem=1142; .Name= 'MeSpa292'; wr {message spare element 292   !used!  }
.Elem=1143; .Name= 'MeSpa293'; wr {message spare element 293   !used!  }
.Elem=1144; .Name= 'MeSpa294'; wr {message spare element 294   !used!  }
.Elem=1145; .Name= 'MeSpa295'; wr {message spare element 295   !used!  }
.Elem=1146; .Name= 'MeSpa296'; wr {message spare element 296   !used!  }
.Elem=1147; .Name= 'MeSpa297'; wr {message spare element 297   !used!  }
.Elem=1148; .Name= 'MeSpa298'; wr {message spare element 298   !used!  }
.Elem=1149; .Name= 'MeSpa299'; wr {message spare element 299   !used!  }
.Elem=1150; .Name= 'MeSpa300'; wr {message spare element 300   !used!  }
.Elem=1151; .Name= 'RF_08   '; wr {                                    }

.Elem=1152; .Name= 'NoDRePro'; wr {No Disponibel Rele de Protecciones  }
.Elem=1153; .Name= 'FalTenDC'; wr {Falla alimentacion DC               }
.Elem=1154; .Name= 'DS-ComDr'; wr {Disparo S/C comparacion direccional }
.Elem=1155; .Name= 'DiReSCDi'; wr {Disparo S/C resp.direc fase o neutro}
.Elem=1156; .Name= 'EnReAcTe'; wr {Envio recibo aceleracion teleprotec }
.Elem=1157; .Name= 'P1_47   '; wr {Falla canal teleproteccion          }
.Elem=1158; .Name= 'BAH_06  '; wr {Falla ventiladores refriger sec RTU }
.Elem=1159; .Name= 'DiProPpl'; wr {Disparo proteccion principal        }

.Elem=1160; .Name= 'INT_30  '; wr {79 Bloqueado Fin Ciclo              }
.Elem=1161; .Name= 'INT_31  '; wr {Bloqueo Cierre                      }
.Elem=1162; .Name= 'TR_40   '; wr {                                    }
.Elem=1163; .Name= 'TR_41   '; wr {                                    }
.Elem=1164; .Name= 'GRAL_15 '; wr {                                    }
.Elem=1165; .Name= 'GRAL_16 '; wr {                                    }
.Elem=1166; .Name= 'GRAL_17 '; wr {                                    }
.Elem=1167; .Name= 'GRAL_18 '; wr {                                    }
.Elem=1168; .Name= 'GRAL_19 '; wr {                                    }
.Elem=1169; .Name= 'GRAL_20 '; wr {                                    }
.Elem=1170; .Name= 'GRAL_21 '; wr {                                    }
.Elem=1171; .Name= 'GRAL_22 '; wr {                                    }
.Elem=1172; .Name= 'GRAL_23 '; wr {                                    }
.Elem=1173; .Name= 'GRAL_24 '; wr {                                    }
.Elem=1174; .Name= 'CTR_01  '; wr {Puerta Abierta                      }
.Elem=1175; .Name= 'CTR_02  '; wr {Bajo Voltaje DC                     }
.Elem=1176; .Name= 'CTR_03  '; wr {Falla Bateria Equipo Fase R         }
.Elem=1177; .Name= 'CTR_04  '; wr {Falla Bateria Equipo Fase S         }
.Elem=1178; .Name= 'CTR_05  '; wr {Falla Bateria Equipo Fase T         }
.Elem=1179; .Name= 'CTR_06  '; wr {Falla Bateria                       }
.Elem=1180; .Name= 'CTR_07  '; wr {Ausencia de Tension Fase R          }
.Elem=1181; .Name= 'CTR_08  '; wr {Ausencia de Tension Fase S          }
.Elem=1182; .Name= 'CTR_09  '; wr {Ausencia de Tension Fase T          }
.Elem=1183; .Name= 'CTR_10  '; wr {Flujo Inverso                       }
.Elem=1184; .Name= 'CTR_11  '; wr {Disparo Por Loop                    }
.Elem=1185; .Name= 'CTR_12  '; wr {Falla Alarma General                }

{ ELEM  1186..1189 used by EPM }

.Elem=1186; .Name= 'CTR_15  '; wr {Disp Fase R                         }
.Elem=1187; .Name= 'CTR_16  '; wr {Disp Fase S                         }
.Elem=1188; .Name= 'CTR_17  '; wr {Disp Fase T                         }
.Elem=1189; .Name= 'BAR_24  '; wr {Disp 50B                            }

.Elem=1190; .Name= 'TR_42   '; wr {Regulador en Local                  }
.Elem=1191; .Name= 'TR_43   '; wr {Falla Comm Regulador                }

.Elem=1192; .Name= 'BAR_18  '; wr {Disparo Con Bloqueo                 }
.Elem=1193; .Name= 'BAR_21  '; wr {FaTen Ponte NucMed1                 }
.Elem=1194; .Name= 'BAR_22  '; wr {FaTen Ponte NucMed2                 }

.Elem=1195; .Name= 'CTR_13  '; wr {Cierre Por Loop                     }
.Elem=1196; .Name= 'CTR_14  '; wr {Disparo I2/I1                       }

.Elem=1197; .Name= 'P1_59   '; wr {Arranque 50                         }
.Elem=1198; .Name= 'P1_60   '; wr {Arranque 50BF                       }
.Elem=1199; .Name= 'P1_61   '; wr {Arranque 51N                        }
.Elem=1200; .Name= 'P1_62   '; wr {Arranque 51                         }
.Elem=1201; .Name= 'P1_63   '; wr {Arranque 50N                        }
.Elem=1202; .Name= 'P1_64   '; wr {Arranque Fase A                     }
.Elem=1203; .Name= 'P1_65   '; wr {Arranque Fase B                     }
.Elem=1204; .Name= 'P1_66   '; wr {Arranque Fase C                     }
.Elem=1205; .Name= 'P1_67   '; wr {Arranque General                    }
.Elem=1206; .Name= 'P1_68   '; wr {Protecciones Transferidas           }
.Elem=1207; .Name= 'P1_69   '; wr {Arranque 67N                        }
.Elem=1208; .Name= 'P1_70   '; wr {Arranque 67                         }
.Elem=1209; .Name= 'P1_71   '; wr {Arranque 21 Zona 1                  }
.Elem=1210; .Name= 'P1_72   '; wr {Arranque 21 Zona 2                  }
.Elem=1211; .Name= 'P1_73   '; wr {Arranque 21 Zona 3                  }
.Elem=1212; .Name= 'P1_74   '; wr {Arranque 21 Zona 5                  }
.Elem=1213; .Name= 'P1_75   '; wr {Arranque General                    }
.Elem=1214; .Name= 'P1_76   '; wr {Arranque Recierre                   }
.Elem=1215; .Name= 'P1_77   '; wr {Arranque 51-1 High Stage            }
.Elem=1216; .Name= 'P1_78   '; wr {Arranque 51-2 High Stage            }
.Elem=1217; .Name= 'P1_79   '; wr {Arranque 51 Low Stage               }
.Elem=1218; .Name= 'P1_80   '; wr {Arranque 81L                        }
.Elem=1219; .Name= 'P1_81   '; wr {Arranque 81R                        }
.Elem=1220; .Name= 'P1_82   '; wr {Arranque 87T                        }

.Elem=1221; .Name= 'P2_59   '; wr {Arranque 50                         }
.Elem=1222; .Name= 'P2_60   '; wr {Arranque 50BF                       }
.Elem=1223; .Name= 'P2_61   '; wr {Arranque 51N                        }
.Elem=1224; .Name= 'P2_62   '; wr {Arranque 51                         }
.Elem=1225; .Name= 'P2_63   '; wr {Arranque 50N                        }
.Elem=1226; .Name= 'P2_64   '; wr {Arranque Fase A                     }
.Elem=1227; .Name= 'P2_65   '; wr {Arranque Fase B                     }
.Elem=1228; .Name= 'P2_66   '; wr {Arranque Fase C                     }
.Elem=1229; .Name= 'P2_67   '; wr {Arranque General                    }
.Elem=1230; .Name= 'P2_68   '; wr {Protecciones Transferidas           }
.Elem=1231; .Name= 'P2_69   '; wr {Arranque 67N                        }
.Elem=1232; .Name= 'P2_70   '; wr {Arranque 67                         }
.Elem=1233; .Name= 'P2_71   '; wr {Arranque 21 Zona 1                  }
.Elem=1234; .Name= 'P2_72   '; wr {Arranque 21 Zona 2                  }
.Elem=1235; .Name= 'P2_73   '; wr {Arranque 21 Zona 3                  }
.Elem=1236; .Name= 'P2_74   '; wr {Arranque 21 Zona 5                  }
.Elem=1237; .Name= 'P2_75   '; wr {Arranque General                    }
.Elem=1238; .Name= 'P2_76   '; wr {Arranque Recierre                   }
.Elem=1239; .Name= 'P2_77   '; wr {Arranque 51-1 High Stage            }
.Elem=1240; .Name= 'P2_78   '; wr {Arranque 51-2 High Stage            }
.Elem=1241; .Name= 'P2_79   '; wr {Arranque 51 Low Stage               }
.Elem=1242; .Name= 'P2_80   '; wr {Arranque 81L                        }
.Elem=1243; .Name= 'P2_81   '; wr {Arranque 81R                        }
.Elem=1244; .Name= 'P2_82   '; wr {Arranque 87T                        }

.Elem=1245; .Name= 'BAH_18  '; wr {Secc. Linea en Local                }
.Elem=1246; .Name= 'BAH_19  '; wr {Secc. Barra 1 en Local              }
.Elem=1247; .Name= 'BAH_20  '; wr {Secc. Barra 2 en Local              }
.Elem=1248; .Name= 'BAH_21  '; wr {Secc. Tierra 1 en Local             }
.Elem=1249; .Name= 'BAH_22  '; wr {Secc. Tierra 2 en Local             }
.Elem=1250; .Name= 'BAH_23  '; wr {Secc. Tierra 3 en Local             }
.Elem=1251; .Name= 'BAH_24  '; wr {Secc. Tierra 4 en Local             }

.Elem=1252; .Name= 'EDumMe  '; wr {Dummy Message for Test ELECTRICITY  }
.Elem=1253; .Name= 'EM1cME5 '; wr {CALC 1 Message for ELECTRICITY      }
.Elem=1254; .Name= 'EM2cME5 '; wr {CALC 2 Message for ELECTRICITY      }

{ ELEMS 1255..1284 used by EPM }

.Elem=1255; .Name= 'BAR_23  '; wr {Falla Goose                         }
.Elem=1256; .Name= 'BAH_17  '; wr {Bahia en local                      }
.Elem=1257; .Name= 'INT_32  '; wr {Disparo Externo                     }
.Elem=1258; .Name= 'MED_01  '; wr {Falla Switch Comunic                }
.Elem=1259; .Name= 'MU1_01  '; wr {Falla Comunic MU1                   }
.Elem=1260; .Name= 'MU1_02  '; wr {Falla Puerto Com1_BP                }
.Elem=1261; .Name= 'MU1_03  '; wr {Falla Puerto Com2_BP                }
.Elem=1262; .Name= 'MU1_04  '; wr {Falla Puerto Com1_BE                }
.Elem=1263; .Name= 'MU1_05  '; wr {Falla Puerto Com2_BE                }
.Elem=1264; .Name= 'MU1_06  '; wr {Indisponible MU                     }
.Elem=1265; .Name= 'MU1_07  '; wr {Falla Goose                         }
.Elem=1266; .Name= 'MU1_08  '; wr {Falla Sinc Tiempo                   }
.Elem=1267; .Name= 'MU1_09  '; wr {MU en Prueba                        }
.Elem=1268; .Name= 'MU2_01  '; wr {Falla Comunicacion MU2              }
.Elem=1269; .Name= 'MU2_02  '; wr {Falla Puerto Com1_BP                }
.Elem=1270; .Name= 'MU2_03  '; wr {Falla Puerto Com2_BP                }
.Elem=1271; .Name= 'MU2_04  '; wr {Falla Puerto Com1_BE                }
.Elem=1272; .Name= 'MU2_05  '; wr {Falla Puerto Com2_BE                }
.Elem=1273; .Name= 'MU2_06  '; wr {Indisponible MU                     }
.Elem=1274; .Name= 'MU2_07  '; wr {Falla Goose                         }
.Elem=1275; .Name= 'MU2_08  '; wr {Falla Sinc de Tiempo                }
.Elem=1276; .Name= 'MU2_09  '; wr {MU en Prueba                        }
.Elem=1279; .Name= 'P1_85   '; wr {Falla SAMPLED VALUE                 }
.Elem=1280; .Name= 'P2_85   '; wr {Falla SAMPLED VALUE                 }
.Elem=1283; .Name= 'TR_45   '; wr {Igual-Sup nominal                   }
.Elem=1284; .Name= 'TR_46   '; wr {Cercana a la nominal                }
.Elem=1285; .Name= 'GRAL_25 '; wr {Falla equipo deteccion incendios    }
.Elem=1286; .Name= 'GRAL_26 '; wr {Alarma Panel deteccion incendios    }
.Elem=1287; .Name= 'P1_86   '; wr {Disp. por minima corriente o potencia }
.Elem=1288; .Name= 'P2_86   '; wr {Disp. por minima corriente o potencia }
.Elem=1289; .Name= 'CTR_18  '; wr {Falla alta impedancia HIF           }
.Elem=1290; .Name= 'CTR_19  '; wr {Falla incipiente 50INC              }
.Elem=1291; .Name= 'CTR_20  '; wr {Disparo 67 Neutro                   }


{ ELEMS 1292..1300 not yet used }

{----------------------------------------------------------------------}
{ Elements 1301 .. 1350 reserved for DMS messages                      }
{----------------------------------------------------------------------}

.NoElTyp= neMessage5;
.ElemType=0;
.Elem=1301; .Name= 'TrobCa01'; wr {trouble call  1                     }
.Elem=1302; .Name= 'TrobCa02'; wr {trouble call  2                     }
.Elem=1303; .Name= 'TrobCa03'; wr {trouble call  3                     }
.Elem=1304; .Name= 'TrobCa04'; wr {trouble call  4                     }
.Elem=1305; .Name= 'TrobCa05'; wr {trouble call  5                     }
.Elem=1306; .Name= 'TrobCa06'; wr {trouble call  6                     }
.Elem=1307; .Name= 'TrobCa07'; wr {trouble call  7                     }
.Elem=1308; .Name= 'TrobCa08'; wr {trouble call  8                     }
.Elem=1309; .Name= 'DMSsp009'; wr {DMS spare element 09                }
.Elem=1310; .Name= 'DMSsp010'; wr {DMS spare element 10                }
.Elem=1311; .Name= 'DMSsp011'; wr {DMS spare element 11                }
.Elem=1312; .Name= 'DMSsp012'; wr {DMS spare element 12                }
.Elem=1313; .Name= 'DMSsp013'; wr {DMS spare element 13                }
.Elem=1314; .Name= 'DMSsp014'; wr {DMS spare element 14                }
.Elem=1315; .Name= 'DMSsp015'; wr {DMS spare element 15                }
.Elem=1316; .Name= 'DMSsp016'; wr {DMS spare element 16                }
.Elem=1317; .Name= 'DMSsp017'; wr {DMS spare element 17                }
.Elem=1318; .Name= 'DMSsp018'; wr {DMS spare element 18                }
.Elem=1319; .Name= 'DMSsp019'; wr {DMS spare element 19                }
.Elem=1320; .Name= 'DMSsp020'; wr {DMS spare element 20                }

{----------------------------------------------------------------------}
{ Elements 1351 .. 1380 reserved for DMS measured values               }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elements 1381 .. 1400 reserved for DMS accumulators                  }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elements 1401 .. 1430 reserved for measured values                   }
{----------------------------------------------------------------------}

{----------------------------------------------------------------------}
{ Elements 1431 .. 1600 reserved for MP of EMS (Tx and Gx)             }
{----------------------------------------------------------------------}

{ ELEMS 1320..1402 not yet used }
{ ELEMS 1403..1429 used in mv_elname }
{ ELEM  1430 not yet used }

{ Tx,Gx: requested on 2003-02-21, Guddat  }
.Elem=1431; .Name= 'BAH_07  '; wr {Arranque Zona 3                     }
.Elem=1432; .Name= 'BAH_08  '; wr {Falla Alim. C+,L+,M+                }
.Elem=1433; .Name= 'FaBaDTUS'; wr {Falla bateria equipo en fase S      }
.Elem=1434; .Name= 'ArrZona1'; wr {Arranque Zona 1                     }
.Elem=1435; .Name= 'ArrZona2'; wr {Arranque Zona 2                     }
.Elem=1436; .Name= 'ArrZona4'; wr {Arranque Zona 4                     }
.Elem=1437; .Name= 'BaPreSF6'; wr {Baja Presion SF6                    }
.Elem=1438; .Name= 'BaVo3AN '; wr {Bajo Volt 3er Armn N                }
.Elem=1439; .Name= 'BPrAcInt'; wr {Bl Pres Aceite Int                  }
.Elem=1440; .Name= 'CCEMS   '; wr {Control Conjunto en EMS             }
.Elem=1441; .Name= 'AlVaSobP'; wr {Alarma valvula sobrepresion         }
.Elem=1442; .Name= 'CtoDisp '; wr {Falla Cto de disparo                }
.Elem=1443; .Name= 'Di67N   '; wr {Disparo 67N                         }
.Elem=1444; .Name= 'Di67N-CD'; wr {Disparo 67N CD                      }
.Elem=1445; .Name= 'DiDiPP1R'; wr {Disp dist Fase R PP1                }
.Elem=1446; .Name= 'DiDiPP1S'; wr {Disp dist Fase S PP1                }
.Elem=1447; .Name= 'DiDiPP1T'; wr {Disp dist Fase T PP1                }
.Elem=1448; .Name= 'DiDiPP2R'; wr {Disp dist Fase R PP2                }
.Elem=1449; .Name= 'DiDiPP2S'; wr {Disp dist Fase S PP2                }
.Elem=1450; .Name= 'DiDiPP2T'; wr {Disp dist Fase T PP2                }
.Elem=1451; .Name= 'DPrAcInt'; wr {Disp Pres Aceite Int                }
.Elem=1452; .Name= 'EDDT50BF'; wr {Env/Rec DDT 50BF                    }
.Elem=1453; .Name= 'EDDTSF6 '; wr {Env/Rec DDT SF6                     }
.Elem=1454; .Name= 'FaCoReSC'; wr {Falla Comunicacion Rele S/C         }
.Elem=1455; .Name= 'FaCoReDf'; wr {Falla Comunicacion Rele Diferencial }
.Elem=1456; .Name= 'FaCoReDs'; wr {Falla Comunicacion Rele Distancia   }
.Elem=1457; .Name= 'FaEleGen'; wr {Falla Electrica                     }
.Elem=1458; .Name= 'FaMecGen'; wr {Falla Mecanica                      }
.Elem=1459; .Name= 'FaTelPP2'; wr {Falla Can.Telep. PP2                }
.Elem=1460; .Name= 'GenCCMvr'; wr {Gen. en C.Conjunto Mvr              }
.Elem=1461; .Name= 'GenCCMw '; wr {Gen. en C.Conjunto MW               }
.Elem=1462; .Name= 'GenCND  '; wr {Generador en CND                    }
.Elem=1463; .Name= 'GenEMS  '; wr {Generador en EMS                    }
.Elem=1464; .Name= 'GenInd  '; wr {Generador en Individual             }
.Elem=1465; .Name= 'GenLoc  '; wr {Generador en local                  }
.Elem=1466; .Name= 'GenRemo '; wr {Generador en Remoto                 }
.Elem=1467; .Name= 'L-RCmp  '; wr {Local/Remoto Campo                  }
.Elem=1468; .Name= 'L-RPnl  '; wr {Local/Remoto Panel                  }
.Elem=1469; .Name= 'L-R-Sw  '; wr {Control en EMS                      }
.Elem=1470; .Name= 'L-R-Tap '; wr {Local/Remoto Tap                    }
.Elem=1471; .Name= 'Freq_Out'; wr {Frec Fuera Rango Normal       }
.Elem=1472; .Name= 'FaTieExc'; wr {Falla Tierra Excitac                }
.Elem=1473; .Name= 'BAH_10  '; wr {Nivel aceite cuba                   }
.Elem=1474; .Name= 'P1_51   '; wr {Rele PP1 No dispon.                 }
.Elem=1475; .Name= 'NoDiPP2 '; wr {Rele PP2 No dispon.                 }
.Elem=1476; .Name= 'NoDReDiC'; wr {No disp. rele dif. Corto            }
.Elem=1477; .Name= 'NoDReDiL'; wr {No disp. rele dif. Largo            }
.Elem=1478; .Name= 'PerdExci'; wr {Perdida Excitacion                  }
.Elem=1479; .Name= 'P1_26   '; wr {R.A. Telep. 67N2/CD                 }
.Elem=1480; .Name= 'SobExcTD'; wr {S/Excitac Tiempo Def                }
.Elem=1481; .Name= 'SobExcTI'; wr {S/Excitac Tiempo Inv                }
.Elem=1482; .Name= 'RecAct  '; wr {Recierre Activado                   }
.Elem=1483; .Name= 'FaBaDTUT'; wr {Falla bateria equipo en fase T      }
.Elem=1484; .Name= 'ReDiTr  '; wr {Recibo Disp. Transf.                }
.Elem=1485; .Name= 'ReleSinc'; wr {Falla rele de sincr.                }
.Elem=1486; .Name= 'Reltrans'; wr {Falla reles de transf.              }
.Elem=1487; .Name= 'Ret50BF '; wr {Rep. Disp. 50BF                     }
.Elem=1488; .Name= 'ReTel21 '; wr {Recibo Telep. 21                    }
.Elem=1489; .Name= 'P1_34   '; wr {R.A. Telep. Z1/Dist                 }
.Elem=1490; .Name= 'SCD2    '; wr {Falla SCD 2                         }
.Elem=1491; .Name= 'Sec1    '; wr {Secuencia 1                         }
.Elem=1492; .Name= 'BAR_07  '; wr {No Disponible Refistrador de Fallas }
.Elem=1493; .Name= 'Sec2    '; wr {Secuencia 2                         }
.Elem=1494; .Name= 'Sec3    '; wr {Secuencia 3                         }
.Elem=1495; .Name= 'FaContrl'; wr {Falla Controlador                   }
.Elem=1496; .Name= 'GRAL_04 '; wr {Falla en HMI CSE GPS                }
.Elem=1497; .Name= 'GRAL_07 '; wr {Falla en tablero concentrado alarmas}
.Elem=1498; .Name= 'Sec7    '; wr {Secuencia 7                         }
.Elem=1499; .Name= 'Sec8    '; wr {Secuencia 8                         }
.Elem=1500; .Name= 'Sec9    '; wr {Secuencia 9                         }
.Elem=1501; .Name= 'SecIntp '; wr {Secuencia Interr.                   }
.Elem=1502; .Name= 'SobTen  '; wr {Sobretension Linea                  }
.Elem=1503; .Name= 'T67N1-CD'; wr {T.A. Telep. 67N1/CD                 }
.Elem=1504; .Name= 'T67N2-CD'; wr {T.A. Telep. 67N2/CD                 }
.Elem=1505; .Name= 'TDD50BF '; wr {Transm. DD 50BF                     }
.Elem=1506; .Name= 'TDDSF6  '; wr {Transm. DD SF6                      }
.Elem=1507; .Name= 'TelepPP2'; wr {Falla Can.Telep. PP2                }
.Elem=1508; .Name= 'TZ1-Dist'; wr {T.A. Telep. Z1/Dist                 }
.Elem=1509; .Name= 'ValMar1 '; wr {Valvula Maiposa 1 cerrada           }
.Elem=1510; .Name= 'ValMar2 '; wr {Valvula Maiposa 2 cerrada           }
.Elem=1511; .Name= 'VaS-Pcub'; wr {Valvula S/P cuba                    }
.Elem=1512; .Name= 'Ventilar'; wr {Falla Ventiladores                  }
.Elem=1513; .Name= 'Z1PP1   '; wr {Disp. dist. Zona 1 PP1              }
.Elem=1514; .Name= 'Z1PP2   '; wr {Disp. dist. Zona 1 PP2              }
.Elem=1515; .Name= 'Z2-4PP1 '; wr {Disp dist Zon2/4 PP1                }
.Elem=1516; .Name= 'Z2-4PP2 '; wr {Disp dist Zon2/4 PP2                }
.Elem=1517; .Name= 'Z2PP1   '; wr {Disp. dist. Zona 2 PP1              }
.Elem=1518; .Name= 'Z2PP2   '; wr {Disp. dist. Zona 2 PP2              }
.Elem=1519; .Name= 'Z3PP1   '; wr {Disp. dist. Zona 3 PP1              }
.Elem=1520; .Name= 'Z3PP2   '; wr {Disp. dist. Zona 3 PP2              }
.Elem=1521; .Name= 'Zona1   '; wr {Arranque Zona 1                     }
.Elem=1522; .Name= 'Zona2   '; wr {Arranque Zona 2                     }
.Elem=1523; .Name= 'Zona4   '; wr {Arranque Zona 4                     }
.Elem=1524; .Name= 'FaAnalog'; wr {Est. entradas analogas backplane    }
.Elem=1525; .Name= 'FaDigita'; wr {Est. entradas digitales backplane   }
.Elem=1526; .Name= 'FaSalida'; wr {Est. salidas digitiales backplane   }
.Elem=1527; .Name= 'FaCom   '; wr {Falla comunication                  }
.Elem=1528; .Name= 'DeslCarg'; wr {Deslastre de carga                  }
.Elem=1529; .Name= 'SelIncPo'; wr {                                    }
.Elem=1530; .Name= 'CNDMW   '; wr {Generador en CND MW                 }
.Elem=1531; .Name= 'CNDMVR  '; wr {Generador en CND MVR                }
.Elem=1532; .Name= 'CNDMWMVR'; wr {Generadoe en CND MW MVR             }
.Elem=1533; .Name= 'EMSMW   '; wr {Generador en EMS MW                 }
.Elem=1534; .Name= 'EMSMVR  '; wr {Generador en EMS MVR                }
.Elem=1535; .Name= 'EMSMWMVR'; wr {Generador en EMS MW MVR             }
.Elem=1536; .Name= 'ValvMar '; wr {Valvua Mariposa abierta/cerrada     }
.Elem=1537; .Name= 'FaCalPot'; wr {Falla Equipo Calidad Potencia       }
.Elem=1538; .Name= 'PosErCTp'; wr {Pos Intm CambTap                    }
.Elem=1539; .Name= 'Fal24Ann'; wr {Falta 24 CC Anunc                   }
.Elem=1540; .Name= 'spa1540 '; wr {                                    }
.Elem=1541; .Name= 'DispDifR'; wr {Disparo Dif Fase R                  }
.Elem=1542; .Name= 'DispDifS'; wr {Disparo Dif Fase S                  }
.Elem=1543; .Name= 'DispDifT'; wr {Disparo Dif Fase T                  }
.Elem=1544; .Name= 'FaRelTra'; wr {Falla Rele Transfer                 }
.Elem=1545; .Name= 'NoDiReSV'; wr {No Disp Rele SobVolt                }
.Elem=1546; .Name= '5ArmDifC'; wr {Quinto Arm DifCorta                 }
.Elem=1547; .Name= '5ArmDifL'; wr {Quinto Arm DifLarga                 }
.Elem=1548; .Name= 'DispExt '; wr {Disparo Externo                     }
.Elem=1549; .Name= 'BlqReDif'; wr {Bloqueo Rele diferen                }
.Elem=1550; .Name= 'ArranqR2'; wr {Arranque_R_Pp2                      }
.Elem=1551; .Name= 'ArranqS2'; wr {Arranque_S_Pp2                      }
.Elem=1552; .Name= 'ArranqT2'; wr {Arranque_T_Pp2                      }
.Elem=1553; .Name= 'DiS-CDi2'; wr {Disparo S/C DirecPp2                }
.Elem=1554; .Name= 'P1_40   '; wr {Env Disp Dir Transf                 }
.Elem=1555; .Name= 'P1_41   '; wr {Rec Disp Dir Transf                 }
.Elem=1556; .Name= 'DiBaPSF6'; wr {Disp BajaPresion SF6                }
.Elem=1557; .Name= 'FaTarj  '; wr {Falla Tarjeta                       }
.Elem=1558; .Name= 'FaCCReRe'; wr {Falta CC Rele Repet                 }
.Elem=1559; .Name= 'FaTePot2'; wr {Falta Ten Potenc N2                 }
.Elem=1560; .Name= 'SobCaMot'; wr {Sobrecarga Motor                    }
.Elem=1561; .Name= 'CtlNoPer'; wr {Control No Permitido                }
.Elem=1562; .Name= 'RetEnerg'; wr {Retorno De Energia                  }
.Elem=1563; .Name= 'TR_31   '; wr {Equipo deshumidificador nodisponible}
.Elem=1564; .Name= 'SA_07   '; wr {Abierto Breaker General AC          }
.Elem=1565; .Name= 'AbMbkrAc'; wr {Abto Mbker AC                       }
.Elem=1566; .Name= 'AbMbkrDc'; wr {Abto Mbker DC                       }
.Elem=1567; .Name= 'AltoNiAc'; wr {Alto Nivel Aceite                   }
.Elem=1568; .Name= 'INT_04  '; wr {Baja Presion Aire                   }
.Elem=1569; .Name= 'FaACMed '; wr {Falta AC Medida                     }
.Elem=1570; .Name= 'TR_32   '; wr {Falla equipo instumentacion trafo   }
.Elem=1571; .Name= 'DiS-CTeR'; wr {Disparo S/C Temporizado Fase R      }
.Elem=1572; .Name= 'DiS-CTeS'; wr {Disparo S/C Temporizado Fase S      }
.Elem=1573; .Name= 'DiS-CTeT'; wr {Disparo S/C Temporizado Fase T      }
.Elem=1574; .Name= 'DiS-CInR'; wr {Disparo S/C Instantaneo Fase R      }
.Elem=1575; .Name= 'DiS-CInS'; wr {Disparo S/C Instantaneo Fase S      }
.Elem=1576; .Name= 'DiS-CInT'; wr {Disparo S/C Instantaneo Fase T      }
.Elem=1577; .Name= 'AlBaVolt'; wr {Alarma Alto/Bajo Voltaje            }
.Elem=1578; .Name= 'Al-BaVAC'; wr {Alarma Alto/Bajo Voltaje AC         }
.Elem=1579; .Name= 'FaPolCC '; wr {Falla Polaridad CC                  }
.Elem=1580; .Name= 'FaEquipo'; wr {Falla Equipo                        }
.Elem=1581; .Name= 'IntAbier'; wr {Interruptor Abierto                 }
.Elem=1582; .Name= 'Desenerg'; wr {Componente Desenergizado            }
.Elem=1583; .Name= 'LoopFunc'; wr {Funcion loop en proceso             }
.Elem=1584; .Name= 'MalFunct'; wr {Reconectador Malfunction            }
.Elem=1585; .Name= 'Warning '; wr {Reconectador Warning                }
.Elem=1586; .Name= 'SecLocal'; wr {Reconectador Warning                }
.Elem=1587; .Name= 'AlPreVac'; wr {Alarma Presion Vacio                }
.Elem=1588; .Name= 'NoDReTen'; wr {No Dispo Regulador Tension          }
.Elem=1589; .Name= 'DiPrMeDi'; wr {Disp Prote mecanica I/O diferencial }
.Elem=1590; .Name= 'AlSiRefr'; wr {Alarma Sistema Refrigeracion        }
.Elem=1591; .Name= 'FaTePoPr'; wr {Falta Tens Pote Nucleo Protecciones }
.Elem=1592; .Name= 'IEDLocal'; wr {IED en Local                        }
.Elem=1593; .Name= 'BaComLoc'; wr {Bahia Compacta en Local             }
.Elem=1594; .Name= 'AbMbkADC'; wr {Abierto Minibreaker AC/DC           }
.Elem=1595; .Name= 'INT_15  '; wr {50BF Etapa 0                        }
.Elem=1596; .Name= 'INT_16  '; wr {50BF Etapa 1                        }
.Elem=1597; .Name= 'INT_17  '; wr {50BF Etapa 2                        }
.Elem=1598; .Name= 'P1_31   '; wr {Disparo Sobretension Etapa 1        }
.Elem=1599; .Name= 'P1_32   '; wr {Disparo Sobretension Etapa 2        }

{ ELEM  1600 not yet used }

.Elem=1601; .Name= 'P2_01   '; wr {P2_01 Disparo 21/67N                }
.Elem=1602; .Name= 'P2_02   '; wr {P2_02 Disparo Fase R                }
.Elem=1603; .Name= 'P2_03   '; wr {P2_03 Disparo Fase S                }
.Elem=1604; .Name= 'P2_04   '; wr {P2_04 Disparo Fase T                }
.Elem=1605; .Name= 'P2_05   '; wr {P2_05 Dispa Distancia Zona1         }
.Elem=1606; .Name= 'P2_06   '; wr {P2_06 DiDistZona2Acelereda          }
.Elem=1607; .Name= 'P2_07   '; wr {P2_07 Dispa DistanciaZona2          }
.Elem=1608; .Name= 'P2_08   '; wr {P2_08 Dispa DistanciaZona4          }
.Elem=1609; .Name= 'P2_09   '; wr {P2_09 Dispa DistanciaZona3          }
.Elem=1610; .Name= 'P2_10   '; wr {P2_10 Dispa 67N Comp_Direc          }
.Elem=1611; .Name= 'P2_11   '; wr {P2_11 Disparo 67 Neutro             }
.Elem=1612; .Name= 'P2_12   '; wr {P2_12 Disparo 67 Fases              }
.Elem=1613; .Name= 'P2_13   '; wr {P2_13 Disparo S/C Fases             }
.Elem=1614; .Name= 'P2_14   '; wr {P2_14 Disparo S/C Neutro            }
.Elem=1615; .Name= 'P2_15   '; wr {P2_15 Disparo respaldo S/C          }
.Elem=1616; .Name= 'P2_18   '; wr {P2_18 S/C tierra restringida        }
.Elem=1617; .Name= 'P2_19   '; wr {P2_19 Disp_S/C_Instan_F1            }
.Elem=1618; .Name= 'P2_20   '; wr {P2_20 Disp_S/C_Instan_F2            }
.Elem=1619; .Name= 'P2_21   '; wr {P2_21 Disp_S/C_Instan_F3            }
.Elem=1620; .Name= 'P2_22   '; wr {P2_22 Disp_S/C_Instan_N1            }
.Elem=1621; .Name= 'P2_23   '; wr {P2_23 Disp_S/C_Instan_N2            }
.Elem=1622; .Name= 'P2_24   '; wr {P2_24 Disp_S/C_Instan_N3            }
.Elem=1623; .Name= 'P2_25   '; wr {P2_25 Disparo baja frecuencia       }
.Elem=1624; .Name= 'P2_26   '; wr {P2_26 Disparo df/dt                 }
.Elem=1625; .Name= 'P2_27   '; wr {P2_27 Disparo Falla a Tierra        }
.Elem=1626; .Name= 'P2_28   '; wr {P2_28 Disp Prot de Arco             }
.Elem=1627; .Name= 'P2_29   '; wr {P2_29 No dis rele Arco              }
.Elem=1628; .Name= 'P2_30   '; wr {P2_30 Baja tension                  }
.Elem=1629; .Name= 'P2_31   '; wr {P2_31 Disp SobreTension 1           }
.Elem=1630; .Name= 'P2_32   '; wr {P2_32 Disp SobreTension 2           }
.Elem=1631; .Name= 'P2_33   '; wr {P2_33 Disparo diferencial           }
.Elem=1632; .Name= 'P2_34   '; wr {P2_34 Disparo baja tension          }
.Elem=1633; .Name= 'P2_35   '; wr {P2_35 Cierre en Falla               }
.Elem=1634; .Name= 'P2_36   '; wr {P2_36 Envio Aceleracion             }
.Elem=1635; .Name= 'P2_37   '; wr {P2_37 Recibo Aceleracion            }
.Elem=1636; .Name= 'P2_38   '; wr {P2_38 Envio Permisivo               }
.Elem=1637; .Name= 'P2_39   '; wr {P2_39 Recibo Permisivo              }
.Elem=1638; .Name= 'P2_40   '; wr {P2_40 Envio Disparo Directo         }
.Elem=1639; .Name= 'P2_41   '; wr {P2_41 Recibo Disparo Directo        }
.Elem=1640; .Name= 'P2_42   '; wr {P2_42 Oscilacion de potencia        }
.Elem=1641; .Name= 'P2_43   '; wr {P2_43 Recierre Operado              }
.Elem=1642; .Name= 'P2_46   '; wr {P2_46 No Condicion Sincronismo      }
.Elem=1643; .Name= 'P2_47   '; wr {P2_47 Falla canal teleproteccion    }
.Elem=1644; .Name= 'P2_48   '; wr {P2_48 Falla Comunicacion            }
.Elem=1645; .Name= 'P2_49   '; wr {P2_49 Falla canal 1                 }
.Elem=1646; .Name= 'P2_50   '; wr {P2_50 Falla canal 2                 }
.Elem=1647; .Name= 'P2_51   '; wr {P2_51 No Disponible rele            }
.Elem=1648; .Name= 'P2_52   '; wr {P2_52 Falla GOOSE                   }
.Elem=1649; .Name= 'P2_53   '; wr {P2_53 Falla Sync Time               }
.Elem=1650; .Name= 'TR_05   '; wr {Al BajoNivelAceite Cambiador o Trafo}
.Elem=1651; .Name= 'TR_10   '; wr {Alarma Valvula Sobre Presion Cuba   }
.Elem=1652; .Name= 'TR_18   '; wr {Disparo Buchholz Cambiador          }
.Elem=1653; .Name= 'TR_29   '; wr {Posicion Intermedia Cambiador       }
.Elem=1654; .Name= 'BAR_01  '; wr {Disparo 87B                         }
.Elem=1655; .Name= 'BAR_02  '; wr {87B Bloqueada                       }
.Elem=1656; .Name= 'BAR_03  '; wr {TC abierto 87B                      }
.Elem=1657; .Name= 'BAR_04  '; wr {Disparo/Bloqueo 87B                 }
.Elem=1658; .Name= 'BAR_05  '; wr {No Disponible Rele 87B              }
.Elem=1659; .Name= 'SA_01   '; wr {Abierto Breaker General 125 VCC     }
.Elem=1660; .Name= 'SA_09   '; wr {Abierto Bker Gral SA No Esenciale AC}
.Elem=1661; .Name= 'SA_11   '; wr {Falla equipo de control             }
.Elem=1662; .Name= 'SA_14   '; wr {Falla DPS                           }
.Elem=1663; .Name= 'SA_16   '; wr {Falla Planta Emergencia             }
.Elem=1664; .Name= 'GRAL_03 '; wr {Abierto MinBreaker Tablero Comunicac}
.Elem=1665; .Name= 'CMP_01  '; wr {Bahia compactos baja presion SF6    }
.Elem=1666; .Name= 'CMP_02  '; wr {Bahia compacta bloq baja presion SF6}
.Elem=1667; .Name= 'INT_23  '; wr {Interruptor Abierto Polo A          }
.Elem=1668; .Name= 'INT_24  '; wr {Interruptor Abierto Polo B          }
.Elem=1669; .Name= 'INT_25  '; wr {Interruptor Abierto Polo C          }
.Elem=1670; .Name= 'TR_33   '; wr {Falla marcha II ATRS                }
.Elem=1671; .Name= 'TR_11   '; wr {Alarma valvula Soobrepresi Cambiador}
.Elem=1672; .Name= 'BCU_01  '; wr {BCU Falla comunicaciones            }
.Elem=1673; .Name= 'BCU_02  '; wr {BCU Falla Canal 1                   }
.Elem=1674; .Name= 'BCU_03  '; wr {BCU Falla Canal 2                   }
.Elem=1675; .Name= 'BCU_04  '; wr {BCU No dispoible BCU                }
.Elem=1676; .Name= 'BCU_05  '; wr {BCU Falla GOOSE                     }
.Elem=1677; .Name= 'BCU_06  '; wr {BCU Falla Sincronizacion de tiempo  }
.Elem=1678; .Name= 'TP_01   '; wr {TP  Falla comunicaciones            }
.Elem=1679; .Name= 'TP_02   '; wr {TP  Falla Canal 1                   }
.Elem=1680; .Name= 'TP_03   '; wr {TP  Falla Canal 2                   }
.Elem=1681; .Name= 'TP_04   '; wr {TP  No dispoible BCU                }
.Elem=1682; .Name= 'TP_05   '; wr {TP  Falla GOOSE                     }
.Elem=1683; .Name= 'TP_06   '; wr {TP  Falla Sincronizacion de tiempo  }
.Elem=1684; .Name= 'MS_01   '; wr {MS Falla comunicacion               }
.Elem=1685; .Name= 'MS_02   '; wr {MS Falla Canal 1                    }
.Elem=1686; .Name= 'MS_03   '; wr {MS Falla Canal 2                    }
.Elem=1687; .Name= 'MS_04   '; wr {MS No disponible                    }
.Elem=1688; .Name= 'MS_05   '; wr {MS Falla GOOSE                      }
.Elem=1689; .Name= 'MS_06   '; wr {MS sincronizacion de tiempo         }
.Elem=1690; .Name= 'MS_07   '; wr {MS Mando Sincronizado OFF           }
.Elem=1691; .Name= 'GRAL_11 '; wr {Falta 125CC tablero comuniaciones   }
.Elem=1692; .Name= 'SA_13   '; wr {Abto Mbker Tabler SACANE No esencia }
.Elem=1693; .Name= 'SA_20   '; wr {Falla Fusible Baterias              }
.Elem=1694; .Name= 'SA_21   '; wr {Anomalia Reles Repetidores          }
.Elem=1695; .Name= 'RF_01   '; wr {No Disponible Registrador de Fallas }
.Elem=1696; .Name= 'BAR_06  '; wr {Abto mbkr Tablero 87B               }
.Elem=1697; .Name= 'BAR_08  '; wr {Abto mbkr Tablero RF                }
.Elem=1698; .Name= 'BAR_09  '; wr {Falla Sync Time                     }
.Elem=1699; .Name= 'BAR_10  '; wr {Disparo Fase R                      }
.Elem=1700; .Name= 'BAR_11  '; wr {Disparo Fase S                      }
.Elem=1701; .Name= 'BAR_12  '; wr {Disparo Fase T                      }
.Elem=1702; .Name= 'BAR_13  '; wr {Rele en prueba                      }
.Elem=1703; .Name= 'BAR_14  '; wr {Falla Comunicacion                  }
.Elem=1704; .Name= 'BAR_15  '; wr {Falla Canal 1                       }
.Elem=1705; .Name= 'BAR_16  '; wr {Falla Canal 2                       }
.Elem=1706; .Name= 'P1_45   '; wr {Disparo STUB                        }
.Elem=1707; .Name= 'P2_45   '; wr {Disparo STUB                        }
.Elem=1708; .Name= 'PI_01   '; wr {Prot Interruptor Falla Comunicacion }
.Elem=1709; .Name= 'PI_02   '; wr {Prot Interruptor Falla Canal 1      }
.Elem=1710; .Name= 'PI_03   '; wr {Prot Interruptor Falla Canal 2      }
.Elem=1711; .Name= 'PI_04   '; wr {Prot Interruptor No Disp Rele Prote }
.Elem=1712; .Name= 'PI_05   '; wr {Prot Interruptor Falla GOOSE        }
.Elem=1713; .Name= 'PI_06   '; wr {Prot Interruptor Falla Sync Time    }
.Elem=1714; .Name= 'PI_07   '; wr {Prot Interruptor Rele en Prueba     }
.Elem=1715; .Name= 'PI_08   '; wr {Prot Interruptor Recierre Operado   }
.Elem=1716; .Name= 'INT_29  '; wr {Bloqueo cierre interruptor temporiz }
.Elem=1717; .Name= 'BAH_15  '; wr {Baja presion SF6 Barrajes           }
.Elem=1718; .Name= 'GIS_01  '; wr {Baja presion SF6 General            }
.Elem=1719; .Name= 'RF_02   '; wr {Falla alimentacion Registra Fallas  }
.Elem=1720; .Name= 'RF_03   '; wr {Falla Sincro Registrador de Fallas  }
.Elem=1721; .Name= 'RF_04   '; wr {Falla puerto1comunica Reg deFallas  }
.Elem=1722; .Name= 'RF_05   '; wr {Falla puerto2comunica Reg deFallas  }
.Elem=1723; .Name= 'RF_06   '; wr {Falla comunicaciones Reg de Fallas  }
.Elem=1724; .Name= 'GRAL_01 '; wr {Falla Concentrador Subestacion      }
.Elem=1725; .Name= 'GRAL_02 '; wr {Abierto Minibreaker Tablero CSE     }
.Elem=1726; .Name= 'BAR_17  '; wr {Alarma en 87B                       }
.Elem=1727; .Name= 'P1_54   '; wr {P1_54 Dispa DistanciaZona5          }
.Elem=1728; .Name= 'P2_54   '; wr {P2_54 Dispa DistanciaZona5          }

{ ELEM  1729 not yet used }
{ ELEMS 1730..1750 used in mv_elname }

.NoElTyp= neSwitch;
.ElemType=0;
.Elem=1751; .Name= 'Iso Traf'; wr { EMS Isolator Transformer           }
.Elem=1752; .Name= 'Iso Acp '; wr { EMS Isolator Acople                }
.Elem=1753; .Name= 'Iso Bp  '; wr { EMS Iso Bypass                     }
.Elem=1754; .Name= 'AjProGr2'; wr { Ajuste Protecciones Grupo 2        }
.Elem=1755; .Name= 'AjProGr1'; wr { Ajuste Protecciones Grupo 1        }
.Elem=1756; .Name= 'AjProGr3'; wr { Ajuste Protecciones Grupo 3        }
.Elem=1757; .Name= 'AjProGr4'; wr { Ajuste Protecciones Grupo 4        }
.Elem=1758; .Name= 'Loop    '; wr { Enable/Disable funcion loop        }
.Elem=1759; .Name= 'Protcion'; wr { Enable/Disable Protecciones        }
.Elem=1760; .Name= 'PrTierra'; wr { Enable/Disable Protec S/C Tierra   }
.Elem=1761; .Name= 'PrBajVol'; wr { Enable/Disable Protec Bajo Voltaje }
.Elem=1762; .Name= 'PrCarFri'; wr { Ena/Dis Proteccion carga fria      }
.Elem=1763; .Name= 'PrLinViv'; wr { Ena/Dis Proteccion Linea Viva      }
.Elem=1764; .Name= 'ResDiBlo'; wr { Reset del disparo con bloqueo      }
.Elem=1765; .Name= 'CtrlBloq'; wr { Control bloqueado                  }
.Elem=1766; .Name= 'Extcarro'; wr { }
.Elem=1767; .Name= 'Man_Aut '; wr { }
.Elem=1768; .Name= 'Spare728'; wr { }
.Elem=1769; .Name= 'Spare729'; wr { }

.Elem=1770; .Name= 'AjBypas '; wr {Modo Bypas Activo                   }
.Elem=1771; .Name= 'AjVoltaj'; wr {Modo Voltaje Fijo Activo            }
.Elem=1772; .Name= 'AjReacta'; wr {Modo Reactancia Fija                }
.Elem=1773; .Name= 'AjCorrie'; wr {Modo Control Corriente Activo       }
.Elem=1774; .Name= 'ParoEmg '; wr {Paro de Emergencia                  }
.Elem=1775; .Name= 'ResetFAC'; wr {Reset                               }

.Elem=1776; .Name= 'Monitor '; wr {Modo Monitor Activo                 }
.Elem=1777; .Name= 'MjVoltaj'; wr {Modo Voltaje Fijo Activo            }
.Elem=1778; .Name= 'MjReacta'; wr {Modo Reactancia Fija Activo         }
.Elem=1779; .Name= 'MjCorrie'; wr {Modo Control Corriente Activo       }
.Elem=1780; .Name= 'ResDiBl1'; wr {Reset disp con bloq 1               }
.Elem=1781; .Name= 'ResDiBl2'; wr {Reset disp con bloq 2               }
.Elem=1782; .Name= 'Iso Eth4'; wr {Iso Eth4                            }

{ ELEMS 1785..1793 used in mv_elname }
{ ELEM  1794 not yet used }
{ ELEMS 1795..1803 used in mv_elname }
{ ELEMS 1804..1807 not yet used }
{ ELEMS 1808..1811 used in mv_elname }
{ ELEMS 1812..1814 not yet used }
{ ELEMS 1815..1817 used in mv_elname }
{ ELEMS 1818..1820 not yet used }
{ ELEMS 1821..1831 used in mv_elname }
{ ELEM  1832 not yet used }
{ ELEMS 1833..1839 used in mv_elname }
{ ELEMS 1840..1849 not yet used }

{**********************************************************************}
{Project area   -  elements for CHEC and CENS                          }
{**********************************************************************}

.NoElTyp= neMessage5;
.ElemType=0;
.Elem=1850; .Name= 'BAH_11  '; wr {Discrep grupo ajuste                }
.Elem=1851; .Name= 'BAH_14  '; wr {Falla Mec SECC                      }
.Elem=1852; .Name= 'BAH_16  '; wr {BajaPresionSF6 E2 CT                }
.Elem=1853; .Name= 'GIS_02  '; wr {Bloq BajaPresionSF6                 }
.Elem=1854; .Name= 'GRAL_06 '; wr {S/E Atendida                        }
.Elem=1855; .Name= 'GRAL_08 '; wr {Falla equip CalidPot                }
.Elem=1856; .Name= 'GRAL_09 '; wr {Abto minibrkCalidPot                }
.Elem=1857; .Name= 'GRAL_10 '; wr {Falla GOOSE                         }
.Elem=1858; .Name= 'GRAL_12 '; wr {CSE en local                        }
.Elem=1859; .Name= 'GRAL_13 '; wr {Sensor humo                         }
.Elem=1860; .Name= 'GRAL_14 '; wr {SE Presenc Intrusos                 }
.Elem=1861; .Name= 'INT_13  '; wr {INT en local                        }
.Elem=1862; .Name= 'INT_20  '; wr {Reserva                             }
.Elem=1863; .Name= 'INT_22  '; wr {Indisp 50BF                         }
.Elem=1864; .Name= 'INT_26  '; wr {INT Cerrado polo R                  }
.Elem=1865; .Name= 'INT_27  '; wr {INT Cerrado polo S                  }
.Elem=1866; .Name= 'INT_28  '; wr {INT Cerrado polo T                  }
.Elem=1867; .Name= 'P1_43   '; wr {79 Ejecutado                        }
.Elem=1868; .Name= 'P1_46   '; wr {Reserva                             }
.Elem=1869; .Name= 'P1_55   '; wr {Disp 21_Z3                          }
.Elem=1870; .Name= 'P1_56   '; wr {Disp 51NC desbalance                }
.Elem=1871; .Name= 'P1_57   '; wr {Disp 59G desbalance                 }
.Elem=1872; .Name= 'P1_58   '; wr {Alarm 55TD Resonan                  }
.Elem=1873; .Name= 'P2_55   '; wr {Disp 21_Z3                          }
.Elem=1874; .Name= 'P2_56   '; wr {Disp 51NC desbalance                }
.Elem=1875; .Name= 'P2_57   '; wr {Disp 59G desbalance                 }
.Elem=1876; .Name= 'P2_58   '; wr {Alarm 55TD Resonan                  }
.Elem=1877; .Name= 'PR_07   '; wr {RELE EN PRUEBA                      }
.Elem=1878; .Name= 'RF_07   '; wr {Alarm gral RegFallas                }
.Elem=1879; .Name= 'SA_02   '; wr {Abto minibrk CC                     }
.Elem=1880; .Name= 'SA_03   '; wr {Abto minibrk Control                }
.Elem=1881; .Name= 'SA_04   '; wr {Falla a tierra CC                   }
.Elem=1882; .Name= 'SA_05   '; wr {Falla Cargador                      }
.Elem=1883; .Name= 'SA_06   '; wr {Alto/Bajo Voltaje CC                }
.Elem=1884; .Name= 'SA_08   '; wr {Abto Brk gral SACAE                 }
.Elem=1885; .Name= 'SA_10   '; wr {Alto/bajo Voltaje AC                }
.Elem=1886; .Name= 'SA_12   '; wr {Abto minibrk SACAE                  }
.Elem=1887; .Name= 'SA_15   '; wr {Planta Emer Operando                }
.Elem=1888; .Name= 'SA_17   '; wr {Falla fusible                       }
.Elem=1889; .Name= 'SA_18   '; wr {Indisp/Bloq transfer                }
.Elem=1890; .Name= 'SA_19   '; wr {Abto minibrk Transf                 }
.Elem=1891; .Name= 'SA_22   '; wr {Abto minibrk AC                     }
.Elem=1892; .Name= 'TR_01   '; wr { Presion/Vacio                      }
.Elem=1893; .Name= 'TR_09   '; wr {Alarm Buchholz Camb                 }
.Elem=1894; .Name= 'TR_12   '; wr {ValvSobre Cuba/Camb                 }
.Elem=1895; .Name= 'TR_13   '; wr {Falla refrigeracion                 }
.Elem=1896; .Name= 'TR_15   '; wr {Cambiador en Manual                 }
.Elem=1897; .Name= 'TR_16   '; wr {Cambiador en Local                  }
.Elem=1898; .Name= 'TR_23   '; wr {DispValvSobrPresCuba                }
.Elem=1899; .Name= 'TR_25   '; wr {DispValSobrCuba/Camb                }
.Elem=1900; .Name= 'TR_26   '; wr {Disp Falla Refrig                   }
.Elem=1901; .Name= 'TR_27   '; wr {Indisp Reg Tension                  }
.Elem=1902; .Name= 'TR_28   '; wr {Falla ventiladores                  }
.Elem=1903; .Name= 'TR_34   '; wr {Reserva                             }
.Elem=1904; .Name= 'TR_35   '; wr {Disp Presion subita                 }

{ ELEMS 1905..1907 used in mv_elname }

.Elem=1908; .Name= 'TR_36   '; wr {Alarm Prot mecanicas                }
.Elem=1909; .Name= 'TR_37   '; wr {Disp Prot mecanicas                 }
.Elem=1910; .Name= 'TR_38   '; wr {Deshumificador Camb                 }
.Elem=1911; .Name= 'TR_39   '; wr {Disp Membrana                       }
.Elem=1912; .Name= 'Desener1'; wr {Componente Desenergizado 3W transf. }
.Elem=1913; .Name= 'Desener2'; wr {Componente Desenergizado 3W transf. }

.NoElTyp= neSwitch;
.ElemType=0;
.Elem=1914; .Name= 'OMSnc   '; wr {OMS normcheck                       }

{ ELEMS 1915..1920 used in mv_elname }

.NoElTyp= neAlarm5;
.ElemType=0;
.Elem=1921; .Name= 'NAPAAlrm'; wr {Alarmes from Parameter Adaption     }
.Elem=1922; .Name= 'NARTAlrm'; wr {Alarmes from Real Time Sequence     }
.Elem=1923; .Name= 'NASAAlrm'; wr {Alarmes from Security Analysis      }
.Elem=1924; .Name= 'NASEAlrm'; wr {Alarmes from State Estimator        }

.NoElTyp= neMessage5;
.ElemType=0;
.Elem=1925; .Name= 'FACTS_01'; wr {Sist. Alta Servidad                 }
.Elem=1926; .Name= 'FACTS_02'; wr {Sist. Media Servidad                }
.Elem=1927; .Name= 'FACTS_03'; wr {Sist. Baja Servidad                 }
.Elem=1928; .Name= 'FACTS_04'; wr {SetPoint Activo                     }
.Elem=1929; .Name= 'FACTS_05'; wr {Local                               }
.Elem=1930; .Name= 'FACTS_06'; wr {Modo Cooperativo                    }
.Elem=1931; .Name= 'FACTS_07'; wr {Modo Bypas                          }
.Elem=1932; .Name= 'FACTS_08'; wr {Modo Iny. Capacitiva                }
.Elem=1933; .Name= 'FACTS_09'; wr {Modo Iny. Inductiva                 }
.Elem=1934; .Name= 'SA_23   '; wr {FalTenAC                            }
.Elem=1935; .Name= 'SA_24   '; wr {FalTenDC                            }
.Elem=1936; .Name= 'BAR_19  '; wr {FaTen Ponte NuPro1                  }
.Elem=1937; .Name= 'BAR_20  '; wr {FaTen Ponte NuPro2                  }

.Elem=1938; .Name= 'P1_83   '; wr {46BC Conductor roto                 }
.Elem=1939; .Name= 'TR_44   '; wr {FaTen Ponte NuPro2                  }
.Elem=1940; .Name= 'P1_84   '; wr {Disparo anti-isla                   }
.Elem=1941; .Name= 'P2_83   '; wr {46BC Conductor roto                 }
.Elem=1942; .Name= 'P2_84   '; wr {Disparo anti-isla                   }

{ ELEM  1943..1952 not yet used }
{ ELEMS 1953..1955 used in mv_elname }

{ *********************************************************************}
{ **              EPM Gas messages 1973..2249                        **}
{ *********************************************************************}

.NoElTyp= neAlarm4;
.ElemType=0;

.Elem=1973; .Name= 'LEL20   '; wr {20% LEL                             }
.Elem=1974; .Name= 'ArranSua'; wr {ARRANQUE SUAVE                      }
.Elem=1975; .Name= 'BaPTAce '; wr {BAJA PRESION DE ACEITE              }
.Elem=1976; .Name= 'BomLubr '; wr {BOMBA DE LUBRICACION                }
.Elem=1977; .Name= 'BtnAperP'; wr {BOTON APERTURA PUERTAS              }
.Elem=1978; .Name= 'BtnDesh '; wr {BOTON DE DESHABILITACION            }
.Elem=1979; .Name= 'BtnHabil'; wr {BOTON DE HABILITACION               }
.Elem=1980; .Name= 'BtnReset'; wr {BOTON DE RESET                      }
.Elem=1981; .Name= 'BtnVeBat'; wr {BOTON VENTEO DE BATERIA             }
.Elem=1982; .Name= 'DetCO2  '; wr {DETECTOR DE CO2                     }
.Elem=1983; .Name= 'Energia '; wr {ENERGIA                             }
.Elem=1984; .Name= 'FaMotPri'; wr {FALLA MOTOR PRINCIPAL               }
.Elem=1985; .Name= 'FaPTgCon'; wr {FALLA PRESION GAS CONTROL           }
.Elem=1986; .Name= 'PulLubri'; wr {PULSO DE LUBRICACION                }
.Elem=1987; .Name= 'RotFaInc'; wr {ROTACION DE FASE INCORRECTA         }
.Elem=1988; .Name= 'SiLuAlar'; wr {SIRENA LUZ DE ALARMA                }
.Elem=1989; .Name= 'SobCarga'; wr {SOBRE CARGA                         }
.Elem=1990; .Name= 'Solenoi '; wr {SOLENOIDE                           }
.Elem=1991; .Name= 'SolBuf  '; wr {SOLENOIDE DE BUFFER                 }
.Elem=1992; .Name= 'SolByp  '; wr {SOLENOIDE DE BYPASS                 }
.Elem=1993; .Name= 'SolByp2 '; wr {SOLENOIDE DE BYPASS 2               }
.Elem=1994; .Name= 'SolPuer '; wr {SOLENOIDE DE PUERTAS                }
.Elem=1995; .Name= 'SuichPT '; wr {SUICHE DE PRESION                   }
.Elem=1996; .Name= 'VDetCO2 '; wr {VALVULA DETECTOR CO2                }
.Elem=1997; .Name= 'VPaEmer '; wr {VALVULA PARADA DE EMERGENCIA        }
.Elem=1998; .Name= 'VVenBat '; wr {VALVULA VENTEO DE BATERIA           }
.Elem=1999; .Name= 'Ventila '; wr {VENTILADOR                          }

                                   { .ElemType=3005; }
.Elem=2000; .Name:= 'CatDer  '; wr {CalentCataliDerEncendido}

                                   { .ElemType=3001; }
.Elem=2001; .Name:= 'FATMxSal'; wr {AltaTempMaximaSalidaCatalitico}

                                   { .ElemType=3005; }
.Elem=2002; .Name:= 'CatIzq  '; wr {CalentCataliIzqEncendido}

                                   { .ElemType=3004; }
.Elem=2003; .Name:= 'AmAbiert'; wr {AlmacenamientoAbiert}

                                   { .ElemType=3001; }
.Elem=2004; .Name:= 'FaAC    '; wr {FallaAlimentacionAC}

                                   { .ElemType=3005; }
.Elem=2005; .Name:= 'FaAGA7  '; wr {FallaAGA7}

                                   { .ElemType=3005; }
.Elem=2006; .Name:= 'FaAGA8  '; wr {FallaAGA8}

                                   { .ElemType=3001; }
.Elem=2007; .Name:= 'FaBat   '; wr {FallaBateria}

                                   { .ElemType=3001; }
.Elem=2008; .Name:= 'FaCat   '; wr {FallaCalent}

                                   { .ElemType=3004; }
.Elem=2009; .Name:= 'FaComp  '; wr {FallaCompressor}

                                   { .ElemType=3001; }
.Elem=2010; .Name:= 'FaCmRio '; wr {FallaComunicacionModuloRio}

                                   { .ElemType=3001; }
.Elem=2011; .Name:= 'FaCmRio2'; wr {FallaComunicacionModuloRio2}

                                   { .ElemType=3007; }
.Elem=2012; .Name:= 'GFaCom  '; wr {FallaComunicacionEstacion  }

                                   { .ElemType=3001; }
.Elem=2013; .Name:= 'FaComMas'; wr {FallaComunicacionMasico}

                                   { .ElemType=3001; }
.Elem=2014; .Name:= 'FaDC    '; wr {FallaDC}

                                   { .ElemType=3001; }
.Elem=2015; .Name:= 'FaModRio'; wr {FallaModuloRio}

                                   { .ElemType=3001; }
.Elem=2016; .Name:= 'FaTermic'; wr {FallaTermico}

                                   { .ElemType=3005; }
.Elem=2017; .Name:= 'FaTTCat '; wr {FallaTemperaturaCatal}

                                   { .ElemType=3004; }
.Elem=2018; .Name:= 'FaPriEDS'; wr {PrioridadEDSViolada}

                                   { .ElemType=3005; }
.Elem=2019; .Name:= 'FaWchDg1'; wr {FalloWatchdogCPU1}

                                   { .ElemType=3001; }
.Elem=2020; .Name:= 'FaWchDg2'; wr {FalloWatchdogCPU2}

                                   { .ElemType=3005; }
.Elem=2021; .Name:= 'NiAceBa '; wr {NivelAceiteBajo  }

                                   { .ElemType=3001; }
.Elem=2022; .Name:= 'NiAceBB '; wr {NivelAceiteBajoBajo }

.Elem=2023; .Name:= 'GDumMe  '; wr {Dummy Message for Test GAS}

.Elem=2024; .Name:= 'GM1cAL4 '; wr {Calc 1 Message for GAS}

.Elem=2025; .Name:= 'GM2cAL4 '; wr {Calc 2 Message for GAS}

.Elem=2026; .Name= 'VoltFRan'; wr {VOLTAJE FUERA DE RANGO              }
.Elem=2027; .Name= 'FaTTMx  '; wr {FALLA TEMPERATURA MAXIMA            }
.Elem=2028; .Name= 'FaTTMn  '; wr {FALLA TEMPERATURA MINIMA            }

                                   { .ElemType=3007; }
.Elem=2029; .Name:= 'FaXiT   '; wr {Falla Fraccion Molar Total}

                                   { .ElemType=3001; }
.Elem=2030; .Name:= 'HabMeMa '; wr {Medidor Masico Habilitado}

                                   { .ElemType=3005; }
.Elem=2031; .Name:= 'IntrP1  '; wr {Puerta1Abierta}

                                   { .ElemType=3005; }
.Elem=2032; .Name:= 'IntrTAl '; wr {PuertaTableroAlimentacionAbierta}

                                   { .ElemType=3005; }
.Elem=2033; .Name:= 'IntrTPp '; wr {PuertaTableroPrincipalAbierta}

                                   { .ElemType=3005; }
.Elem=2034; .Name:= 'LoReSTN '; wr {LocalRemotoSTN}

                                   { .ElemType=3005; }
.Elem=2035; .Name:= 'ParoEmer'; wr {ParoEmergencia}

                                   { .ElemType=3005; }
.Elem=2036; .Name:= 'RCat    '; wr {ResistCataliEncendida}

                                   { .ElemType=3004; }
.Elem=2037; .Name:= 'FaPT    '; wr {FallaTransmisorP}

                                   { .ElemType=3001; }
.Elem=2038; .Name:= 'ManomDif'; wr {Manometro Diferential}


.NoElTyp= neSwitch;
                                   { .ElemType=3002; }
.Elem=2039; .Name:= 'VAlivio '; wr {ValvulaAlivioAbierta}


.NoElTyp= neAlarm4;
                                   { .ElemType=3001; }
.Elem=2040; .Name:= 'HabComan'; wr {Comandos Habilitados}


.NoElTyp= neSwitch;
                                   { .ElemType=3000; }
.Elem=2041; .Name:= 'VEntr   '; wr {ValvulaEntradaCerrada}

                                   { .ElemType=3004; }
.Elem=2042; .Name:= 'VHiCat  '; wr {ValvAltoCataliAbierta}

                                   { .ElemType=3004; }
.Elem=2044; .Name:= 'VLOCat  '; wr {ValvBajoCataliAbierta}


.NoElTyp= neAlarm4;
                                   { .ElemType=3004; }
.Elem=2045; .Name:= 'LogCtrl '; wr {EstadoLogicaCtrl}

                                   { .ElemType=3007; }
.Elem=2046; .Name:= 'FaComPw '; wr {Falla Comunicacion Fuente DC}

                                   { .ElemType=3004; }
.Elem=2047; .Name:= 'AltaPrio'; wr {FAltaPrioridad}

                                   { .ElemType=3004; }
.Elem=2048; .Name:= 'VNOffL  '; wr {ValvNcerroL}

                                   { .ElemType=3004; }
.Elem=2049; .Name:= 'VNOffR  '; wr {ValvNcerroR}

                                   { .ElemType=3004; }
.Elem=2050; .Name:= 'VNOnL   '; wr {ValvNabrioL}

                                   { .ElemType=3004; }
.Elem=2051; .Name:= 'VNOnR   '; wr {ValvNabrioR}


.NoElTyp= neSwitch;
                                   { .ElemType=3004; }
.Elem=2052; .Name:= 'VSlam   '; wr {ValvulaSlamCerrada}


.NoElTyp= neAlarm4;
                                   { .ElemType=3004; }
.Elem=2053; .Name:= 'ManAuto '; wr {ManAuto}

                                   { .ElemType=3004; }
.Elem=2054; .Name:= 'OffEDS  '; wr {CierreEmergenciaEDS}

                                   { .ElemType=3004; }
.Elem=2055; .Name:= 'PrioEDS '; wr {PrioridadEDS}

.NoElTyp= neSwitch;
.ElemType=0;
                                   { .ElemType=3013; }
.Elem=2056; .Name:= 'V1      '; wr {Valvula1}

                                   { .ElemType=3013; }
.Elem=2057; .Name:= 'V2      '; wr {Valvula2}

                                   { .ElemType=3013; }
.Elem=2058; .Name:= 'V3      '; wr {Valvula3}

                                   { .ElemType=3013; }
.Elem=2059; .Name:= 'V4      '; wr {Valvula4}


{ **************  EPM Gas commands   2060..2080  **********************}
{ ************** .ElemType=3010 for singlepole   **********************}

.NoElTyp= neAlarm4;
.ElemType=0;
                                   { .ElemType=3010; single pole cmd }
.Elem=2060; .Name:= 'ActCorr '; wr { Activar CorreccionVolumen       }
                                   { Softkey: Habilitado/Inhabilitado}

                                   { .ElemType=3010; single pole cmd }
.Elem=2061; .Name:= 'ActTotal'; wr { Activar Totalizador             }
                                   { Softkey: Habilitado/Inhabilitado}

                                   {                 single pole cmd }
.Elem=2062; .Name:= 'HabApaCa'; wr { ApagadoxPresionCata Habilitado  }

                                   { .ElemType=3007; single pole mess}
.Elem=2063; .Name:= 'HabCat  '; wr { Calentador Habilitado           }

                                   { .ElemType=3010; single pole cmd }
.Elem=2064; .Name:= 'HabCierE'; wr { Habilitar CierreEstacion        }
                                   { Softkey: Habilitado/Inhabilitado}

                                   {                 single pole cmd }
.Elem=2065; .Name:= 'HabQ0Pok'; wr { Flujo0RangoPresionOK Habilitado }

                                   { .ElemType=3010; single pole cmd }
.Elem=2066; .Name:= 'HLVeloc '; wr {  VelocidadMedidorFlujo          }
                                   { Softkey: Habilitado/Inhabilitado}

                                   { .ElemType=3010; single pole cmd }
.Elem=2067; .Name:= 'LocRemCC'; wr {  LocalRemotoCC                  }
                                   { Softkey: Local/Remote           }

                                   { .ElemType=3010; single pole cmd }
.Elem=2068; .Name:= 'ResetTot'; wr {  Reset Totalizador              }
                                   { Softkey: Habilitado/Inhabilitado}

                                   { .ElemType=3010; single pole cmd }
.Elem=2069; .Name:= 'ReStllos'; wr {  Reset Fallos                   }
                                   { Softkey: Habilitado/Inhabilitado}

                                   { .ElemType=3010; single pole cmd }
.Elem=2070; .Name:= 'TransfXi'; wr {  TransferirComposicion          }
                                   { Softkey: Habilitado/Inhabilitado}

.NoElTyp= neSwitch;
.ElemType=0;
                                   { .ElemType=3011; double pole cmd }
.Elem=2071; .Name:= 'Vmod    '; wr {  Abrir Cerrar Valvula           }
                                   { Softkey: Abir/Cerrar            }

.NoElTyp= neSwitch;
.ElemType=0;
                                   { .ElemType=3010; single pole cmd }
.Elem=2072; .Name:= 'MantEDS '; wr { Habilitar Mantenimiento EDS     }
                                   { Softkey: Habilitado/Inhabilitado}

                                   { .ElemType=3010; single pole cmd }
.Elem=2073; .Name:= 'PVManual'; wr { Habil AbrirCerrar Valvula Manual}
                                   { Softkey: Habilitado/Inhabilitado}


.NoElTyp= neAlarm4;
                                   { .ElemType=3001; single pole mess}
.Elem=2074; .Name:= 'FaQuema '; wr { Falla Quemador                  }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2075; .Name:= 'HabQuema'; wr { Quemador Habilitado             }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2076; .Name:= 'FaComCal'; wr { Falla Comunicacion PLC Caldera  }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2077; .Name:= 'HaB1CalA'; wr { Bomba 1 Encendida Caldera Alta  }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2078; .Name:= 'HaB2CalB'; wr { Bomba 2 Encendida Caldera Baja  }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2079; .Name:= 'FaPresos'; wr { Falla Presostato                }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2080; .Name:= 'FaRectif'; wr { Falla Rectificador              }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2081; .Name:= 'FaEarth '; wr { Falla Tierra                    }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2082; .Name:= 'LowLeH2O'; wr { Bajo Nivel Agua Caldera         }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3017; single pole mess}
.Elem=2083; .Name:= 'DisDPS  '; wr { Disparo DPS                     }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2084; .Name:= 'FaComCat'; wr { Falla Comunicacion PLC Catalitic}
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2085; .Name:= 'FaManDif'; wr { Dalla Manometro Diferencial     }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2086; .Name:= 'FaLgCtrl'; wr { Falla Logica De Control         }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2087; .Name:= 'Resist  '; wr { Resistencia Habilitada          }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2088; .Name:= 'FaResist'; wr { Falla Resistencia               }
                                   { Softkey: appear/disappear       }

                                   { .ElemType=3001; single pole mess}
.Elem=2089; .Name:= 'FaSenAce'; wr { Falla Sensor Aceite             }
                                   { Softkey: appear/disappear       }


{ *********************************************************************}
{ **              EPM further Gas messages                           **}
{ *********************************************************************}

.NoElTyp= neSwitch;
.ElemType=0;
                                   { .ElemType=3013; }
.Elem=2090; .Name:= 'V5      '; wr {Valvula5}

                                   { .ElemType=3013; }
.Elem=2091; .Name:= 'V6      '; wr {Valvula6}

                                   { .ElemType=3013; }
.Elem=2092; .Name:= 'V7      '; wr {Valvula6}

.NoElTyp= neAlarm4;
.ElemType=0;
                                   { .ElemType=3004; }
.Elem=2093; .Name:= 'ValEDSOf'; wr {ValvHaciaEDSCerr}

                                   { .ElemType=3004; }
.Elem=2094; .Name:= 'VBancoHC'; wr {ValvBancoAltaCerr}

                                   { .ElemType=3004; }
.Elem=2095; .Name:= 'VBancoLC'; wr {ValvBancoBajaCerr}

                                   { .ElemType=3001; }
.Elem=2096; .Name:= 'DiCaDeAl'; wr {Diagnostico De Catalitico Derecha De Alta}

                                   { .ElemType=3001; }
.Elem=2097; .Name:= 'DiCaDeBa'; wr {Diagnostico De Catalitico Derecha De Baja}

                                   { .ElemType=3001; }
.Elem=2098; .Name:= 'DiCaIzAl'; wr {Diagnostico De Catalitico Izquierda De Alta}

                                   { .ElemType=3001; }
.Elem=2099; .Name:= 'DiCaIzBa'; wr {Diagnostico De Catalitico Izquierda De Baja}


.NoElTyp= neSwitch;
.ElemType=0;
                                   { .ElemType=3024  double pole cmd }
.Elem=2100; .Name:= 'Rectific'; wr {  1-Desenerg/0-energ Recificador }

.NoElTyp= neAlarm4;
.ElemType=0;

.Elem=2101; .Name= 'PulBaFre'; wr  {PULSOS MEDIDOR BAJA FRECUENCIA             }
.Elem=2102; .Name= 'FaLewRTU'; wr  {FALLA COMUNICACION LEWA RTU                }
.Elem=2103; .Name= 'FaOdo   '; wr  {FALLA ODORANTE                             }
.Elem=2104; .Name= 'Q0Dect  '; wr  {FLUJO CERO DETECTADO                       }
.Elem=2105; .Name= 'FaTT    '; wr  {FALLA TEMPERATURA                          }
.Elem=2106; .Name= 'SResiCat'; wr  {SALIDA RESISTENCIA PANEL                   }
.Elem=2107; .Name= 'VLineoff'; wr  {STD VALVULA LINEA OFF                      }
.Elem=2108; .Name= 'FaGasCat'; wr  {FALLA SUMUNISTRO GAS CATALITICO            }
.Elem=2109; .Name= 'FaCtrCat'; wr  {FALLA CONTROL CATALITICO                   }
.Elem=2110; .Name= 'VEntrCer'; wr  {VALVULA ENTRADA CERRADA                    }
.Elem=2111; .Name= 'VEntrAbi'; wr  {VALVULA ENTRADA ABIERTA                    }
.Elem=2112; .Name= 'BatUPS  '; wr  {FALLA BATERIA UPS                          }
.Elem=2113; .Name= 'FaMeTTAc'; wr  {FALLA MEDICION TEMP ALTA ACEITE            }
.Elem=2114; .Name= 'FaMeTTSa'; wr  {FALLA MEDICION TEMP ALTA SALIDA            }
.Elem=2115; .Name= 'FaReCtrS'; wr  {FALLS RESERVA CONTROL SOLENOIDES           }
.Elem=2116; .Name= 'BloLoMod'; wr  {BLOQUEO LOGICO MODULO                      }
.Elem=2117; .Name= 'QMaxDet '; wr  {FLUJO MAXIMO DETECTADO                     }
.Elem=2118; .Name= 'EntPulMe'; wr  {ENTRADA PULSOS MEDIDOR                     }
.Elem=2119; .Name= 'FaSalLoc'; wr  {FALLA SALIDA LOCAL                         }
.Elem=2120; .Name= 'DetCaPre'; wr  {DETECCION CAIDA PRESION SALIDA             }
.Elem=2121; .Name= 'DetVen  '; wr  {DETECCION VENTEO                           }
.Elem=2122; .Name= 'MeDeten '; wr  {MEDIDOR DETENIDO                           }
.Elem=2123; .Name= 'DisBrePr'; wr  {DISPARO BREAKER PRIMARIO TRANSFORMADO      }
.Elem=2124; .Name= 'FaReSal '; wr  {FALLA REALIMENTACION SALIDA FISICA P       }
.Elem=2125; .Name= 'DisBreGe'; wr  {DISPARO BREAKER GENERAL                    }
.Elem=2126; .Name= 'DisBreSe'; wr  {DISPARO BREAKER SECUNDARIO TRANSFORMA      }
.Elem=2127; .Name= 'FaComPLC'; wr  {FALLA COMUNICACION PLC                     }
.Elem=2128; .Name= 'OperGNL '; wr  {ESTACION OPERANDO CON GNL                  }
.Elem=2129; .Name= 'OperGNC '; wr  {ESTACION OPERANDO CON GNC                  }
.Elem=2130; .Name= 'PaEmerRe'; wr  {PARO EMERGENCIA REMOTO                     }
.Elem=2131; .Name= 'PaEmerLo'; wr  {PARO EMERGENCIA LOCAL                      }
.Elem=2132; .Name= 'FaVarBom'; wr  {FALLA VARIADOR BOMBAS                      }
.Elem=2133; .Name= 'HabVar  '; wr  {HABILITACION VARIADOR                      }
.Elem=2134; .Name= 'Explos  '; wr  {ALARMA EXPLOSIMETRO                        }
.Elem=2135; .Name= 'SelModF '; wr  {COMANDO PULSADOR SELECCION MODULO          }
.Elem=2136; .Name= 'HabBomba'; wr  {HABILITACION ENCENDIDO BOMBAS              }
.Elem=2137; .Name= 'ValBaF  '; wr  {VALVULA BAJO FUEGO                         }
.Elem=2138; .Name= 'ValAlF  '; wr  {VALVULA ALTO FUEGO                         }
.Elem=2139; .Name= 'LEL10   '; wr  {10% LEL                                    }


{ *********************************************************************}
{ **              EPM Water messages 2140..3100                      **}
{ *********************************************************************}
.NoElTyp= neAlarm4;
.ElemType=0;          {not used becaue check only at IMM job execution }

.Elem=2140; .Name= 'T.ABSVID'; wr  {TEMPERATURA AS VOLANTE INERCIA     }
.Elem=2141; .Name= 'T.ADEV  '; wr  {TEMPERATURA DEVANADOS              }
.Elem=2142; .Name= 'T.AF    '; wr  {TEMPERATURA AGUA IMPULSION         }
.Elem=2143; .Name= 'T.ASVIA '; wr  {TEMPERATURA AS VOLANTE INERCIA     }
.Elem=2144; .Name= 'T.BSVIA '; wr  {TEMPERATURA BS VOLANTE INERCIA     }
.Elem=2145; .Name= 'T.CJA   '; wr  {TEMPERATURA COJINETE               }
.Elem=2146; .Name= 'T.CJASBA'; wr  {TEMPERATURA COJINETE AS BOMBA      }
.Elem=2147; .Name= 'T.CJASMA'; wr  {TEMPERATURA COJINETE AS MOTOR      }
.Elem=2148; .Name= 'T.CJBSBA'; wr  {TEMPERATURA COJINETE BS BOMBA      }
.Elem=2149; .Name= 'T.CJBSBD'; wr  {TEMPERATURA COJINETE BS BOMBA      }
.Elem=2150; .Name= 'T.CJBSMA'; wr  {TEMPERATURA COJINETE BS MOTOR      }
.Elem=2151; .Name= 'T.CJBSMD'; wr  {TEMPERATURA COJINETE BS MOTOR      }
.Elem=2152; .Name= 'T.FRMA  '; wr  {TEMPERATURA FASE R MOTOR           }
.Elem=2153; .Name= 'T.FRMF  '; wr  {TEMPERATURA FASE R MOTOR           }
.Elem=2154; .Name= 'T.FRTA  '; wr  {TEMPERATURA FASE R TRAFO           }
.Elem=2155; .Name= 'T.FRTF  '; wr  {TEMPERATURA FASE R TRAFO           }
.Elem=2156; .Name= 'T.FSMA  '; wr  {TEMPERATURA FASE S MOTOR           }
.Elem=2157; .Name= 'T.FSMF  '; wr  {TEMPERATURA FASE S MOTOR           }
.Elem=2158; .Name= 'T.FSTA  '; wr  {TEMPERATURA FASE S TRAFO           }
.Elem=2159; .Name= 'T.FSTF  '; wr  {TEMPERATURA FASE S TRAFO           }
.Elem=2160; .Name= 'T.FTMA  '; wr  {TEMPERATURA FASE T MOTOR           }
.Elem=2161; .Name= 'T.FTMF  '; wr  {TEMPERATURA FASE T MOTOR           }
.Elem=2162; .Name= 'T.FTTA  '; wr  {TEMPERATURA FASE T TRAFO           }
.Elem=2163; .Name= 'T.FTTF  '; wr  {TEMPERATURA FASE T TRAFO           }
.Elem=2164; .Name= 'T.SA500D'; wr  {TEMPERATURA ALTA TRAFO 500 kVA     }
.Elem=2165; .Name= 'T.SAAA  '; wr  {TEMPERATURA ACEITE ALTA            }
.Elem=2166; .Name= 'T.SATD  '; wr  {TEMPERATURA ALTA TRAFO             }
.Elem=2167; .Name= 'TACR.ALM'; wr  {TEMP CLORO FUERA RANGO             }
.Elem=2168; .Name= 'TAC.FAIL'; wr  {TEMP CLORO ESTADO                  }
.Elem=2169; .Name= 'TACR.OSC'; wr  {TEMP CLORO OSCILACION              }
.Elem=2170; .Name= 'TACR.PEG'; wr  {TEMP CLORO PEGADO                  }
.Elem=2171; .Name= 'TADBF   '; wr  {SENSOR TEMPERATURA DEVANADO BOMBA  }
.Elem=2172; .Name= 'TADMA   '; wr  {TEMPERATURA DEVANADO MOTOR         }
.Elem=2173; .Name= 'TADMF   '; wr  {SENSOR TEMPERATURA DEVANADO MOTOR  }
.Elem=2174; .Name= 'TASVIF  '; wr  {TEMPERATURA AS VOLANTE INERCIA     }
.Elem=2175; .Name= 'TAT.ALM '; wr  {TEMP TURBIEDAD FUERA RANGO         }
.Elem=2176; .Name= 'TAT.FAIL'; wr  {TEMP TURBIEDAD ESTADO              }
.Elem=2177; .Name= 'TAT.OSC '; wr  {TEMP TURBIEDAD OSCILACION          }
.Elem=2178; .Name= 'TAT.PEG '; wr  {TEMP TURBIEDAD PEGADO              }
.Elem=2179; .Name= 'TBSVIF  '; wr  {TEMPERATURA BS VOLANTE INERCIA     }
.Elem=2180; .Name= 'TCF     '; wr  {SENSOR TEMPERATURA COJINETE        }
.Elem=2181; .Name= 'TN.ABF  '; wr  {TENSION ALTA/BAJA                  }
.Elem=2182; .Name= 'TOT.PPEA'; wr  {TOTALIZADOR PRINCIPAL ESTADO       }
.Elem=2183; .Name= 'TR.ABUCH'; wr  {RELE BUCHHOLZ GENERAL              }
.Elem=2184; .Name= 'TR.PPA  '; wr  {TRAFO PRIMARIO ESTADO              }
.Elem=2185; .Name= 'TR.PPS  '; wr  {TRAFO SECUNDARIO ESTADO            }
.Elem=2186; .Name= 'TRANS.CI'; wr  {TRANSFERENCIA CIRCUITO             }
.Elem=2187; .Name= 'TRASBA  '; wr  {TEMPERATURA RODAMIENTO AS BOMBA    }
.Elem=2188; .Name= 'TRASBF  '; wr  {SENSOR TEMPERATURA RODAMIENTO AS BOMBA}
.Elem=2189; .Name= 'TRASMA  '; wr  {TEMPERATURA RODAMIENTO AS MOTOR    }
.Elem=2190; .Name= 'TRASMD  '; wr  {TEMPERATURA RODAMIENTO AS MOTOR    }
.Elem=2191; .Name= 'TRASMF  '; wr  {SENSOR TEMPERATURA RODAMIENTO AS MOTOR}
.Elem=2192; .Name= 'TRBSBA  '; wr  {TEMPERATURA RODAMIENTO BS BOMBA    }
.Elem=2193; .Name= 'TRBSBF  '; wr  {SENSOR TEMPERATURA RODAMIENTO BS BOMBA}
.Elem=2194; .Name= 'TRBSMA  '; wr  {TEMPERATURA RODAMIENTO BS MOTOR    }
.Elem=2195; .Name= 'TRBSMD  '; wr  {TEMPERATURA RODAMIENTO BS MOTOR    }
.Elem=2196; .Name= 'TRBSMF  '; wr  {SENSOR TEMPERATURA RODAMIENTO BS MOTOR}
.Elem=2197; .Name= 'U.E     '; wr  {VOLTAJE ESTADO                     }
.Elem=2198; .Name= 'U.A     '; wr  {FALLA VOLTAJE                      }
.Elem=2199; .Name= 'U.ASY   '; wr  {VOLTAJE ASIMETRICO                 }
.Elem=2200; .Name= 'U.LM    '; wr  {VOLTAJE ENTRE LIMITES              }
.Elem=2201; .Name= 'U.MN    '; wr  {VOLTAJE MINIMO                     }
.Elem=2202; .Name= 'U.MNN   '; wr  {VOLTAJE POR DEBAJO MINIMO          }
.Elem=2203; .Name= 'U.MX    '; wr  {VOLTAJE MAXIMO                     }
.Elem=2204; .Name= 'U.MXX   '; wr  {VOLTAJE POR ENCIMA MAXIMO          }
.Elem=2205; .Name= 'U.PFS   '; wr  {VOLTAJE PERDIDA FASE               }
.Elem=2206; .Name= 'U.SIA   '; wr  {VOLTAJE ALTO SALIDA INVERSOR       }
.Elem=2207; .Name= 'U.SIB   '; wr  {VOLTAJE BAJO SALIDA INVERSOR       }
.Elem=2208; .Name= 'UPS.CTR '; wr  {UPS CONTROL                        }
.Elem=2209; .Name= 'UPS.EVA '; wr  {EVENTOS APAGADOS                   }
.Elem=2210; .Name= 'UPS.WAR '; wr  {UPS ADVERTENCIA                    }
.Elem=2211; .Name= 'V.BT    '; wr  {DETECCION BAJO TORQUE              }
.Elem=2212; .Name= 'V.BVLCPA'; wr  {VARIADOR BAJO VOLTAJA CIRCUITO PPAL}
.Elem=2213; .Name= 'V.NMXA  '; wr  {MAXIMO NUMERO DE ARRANQUE          }
.Elem=2214; .Name= 'V.NOCON '; wr  {VARIADOR NO CONFIRMACION           }
.Elem=2215; .Name= 'VASVIA  '; wr  {VIBRACION AS VOLANTE INERCIA       }
.Elem=2216; .Name= 'VASVIF  '; wr  {VIBRACION AS VOLANTE INERCIA       }
.Elem=2217; .Name= 'VAXMA   '; wr  {VIBRACION AXIAL MOTOR              }
.Elem=2218; .Name= 'VAXMF   '; wr  {VIBRACION AXIAL MOTOR              }
.Elem=2219; .Name= 'VBSVIA  '; wr  {VIBRACION BS VOLANTE INERCIA       }
.Elem=2220; .Name= 'VBSVIF  '; wr  {VIBRACION BS VOLANTE INERCIA       }
.Elem=2221; .Name= 'VEL.ALM '; wr  {VELOCIDAD ESTADO                   }
.Elem=2222; .Name= 'VEL.DED '; wr  {DESVIACION EXCESIVA VELOCIDAD DEVANADO}
.Elem=2223; .Name= 'VEL.OSC '; wr  {VELOCIDAD OSCILACION               }
.Elem=2224; .Name= 'VEL.PEG '; wr  {VELOCIDAD PEGADO                   }
.Elem=2225; .Name= 'VEL.VCA '; wr  {VELOCIDAD VACIADO ALTO             }
.Elem=2226; .Name= 'VEL.VCAA'; wr  {VELOCIDAD VACIADO ALTO ALTO        }
.Elem=2227; .Name= 'VPT     '; wr  {VIGILANTE PUESTA A TIERRA          }
.Elem=2228; .Name= 'VRASBA  '; wr  {VIBRACION RODAMIENTOS AS BOMBA     }
.Elem=2229; .Name= 'VRASBD  '; wr  {VIBRACION RODAMIENTOS AS BOMBA     }
.Elem=2230; .Name= 'VRASBF  '; wr  {SENSOR VIBRACION RODAMIENTOS AS BOMBA}
.Elem=2231; .Name= 'VRASMA  '; wr  {VIBRACION RODAMIENTOS AS MOTOR     }
.Elem=2232; .Name= 'VRASMD  '; wr  {VIBRACION RODAMIENTOS AS MOTOR     }
.Elem=2233; .Name= 'VRASMF  '; wr  {SENSOR VIBRACION RODAMIENTOS AS MOTOR}
.Elem=2234; .Name= 'VRBSBA  '; wr  {VIBRACION RODAMIENTOS BS BOMBA     }
.Elem=2235; .Name= 'VRBSBD  '; wr  {VIBRACION RODAMIENTOS BS BOMBA     }
.Elem=2236; .Name= 'VRBSBF  '; wr  {SENSOR VIBRACION RODAMIENTOS BS BOMBA}
.Elem=2237; .Name= 'VRBSMA  '; wr  {VIBRACION RODAMIENTOS BS MOTOR     }
.Elem=2238; .Name= 'VRBSMD  '; wr  {VIBRACION RODAMIENTOS BS MOTOR     }
.Elem=2239; .Name= 'VRBSMF  '; wr  {SENSOR VIBRACION RODAMIENTOS BS MOTOR}
.Elem=2240; .Name= 'VSBCPP  '; wr  {SOBREVOLTAJE CTO PRINCIPAL         }
.Elem=2241; .Name= 'ZT.ALEC '; wr  {VALVULA ALIVIO CERRADA             }
.Elem=2242; .Name= 'ZT.CP   '; wr  {COMPUERTA CANAL                    }
.Elem=2243; .Name= 'ZT.DBLQ '; wr  {VALVULA DESBLOQUEADA               }
.Elem=2244; .Name= 'ZT.ESCO '; wr  {LISTA CONDICIONES VALVULA ESFERICA }
.Elem=2245; .Name= 'ZT.ESFA '; wr  {ESTADO ESFERICA                    }
.Elem=2246; .Name= 'ZT.ESFC '; wr  {ESTADO ESFERICA                    }
.Elem=2247; .Name= 'ZT.ESLO '; wr  {ACTUADOR VALVULA ESFERICA          }
.Elem=2248; .Name= 'ZT.ESRE '; wr  {ACTUADOR VALVULA ESFERICA          }
.Elem=2249; .Name= 'ZT.LOCST'; wr  {ACTUADOR PARO MODO LOCAL           }


.NoElTyp= neAlarm4;
.ElemType=0;          {not used becaue check only at IMM job execution }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2250; .Name= 'ACR.FAIL'; wr  {CLORO ESTADO                       }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2251; .Name= 'ACR.MD  '; wr  {CLORADOR MODO                      }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2252; .Name= 'ACR.OSC '; wr  {CLORO OSCILACION                   }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2253; .Name= 'ACR.PEG '; wr  {CLORO PEGADO                       }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2254; .Name= 'ACR.ZS  '; wr  {CLORO COMANDO RESET                }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2255; .Name= 'AGR.SAL '; wr  {AGRUPAMIENTO ALERTAS               }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2256; .Name= 'AGR.SCR '; wr  {AGRUPAMIENTO ALARMAS CRITICAS      }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2257; .Name= 'AL.120  '; wr  {ALIMENTACION COMUN 120 VAC         }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2258; .Name= 'AL.220  '; wr  {ALIMENTACION COMUN 220 VAC         }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2259; .Name= 'AL.24   '; wr  {ALIMENTACION COMUN 24 VDC          }

{.ElemType=3120; (comming/going = DISPARO/NORMAL    AlrmList 109)      }
.Elem=2260; .Name= 'AL.IL   '; wr  {ALIMENTACION ILUMINACION           }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2261; .Name= 'AL.PM81 '; wr  {ALIMENTACION PM810                 }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2262; .Name= 'AL.VRF  '; wr  {ALIMENTACION VRF VRP               }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2263; .Name= 'AL.VRP  '; wr  {ALIMENTACION COMUN VRP             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2264; .Name= 'ARB.COM '; wr  {COMUNICACION ANALIZADOR RED BAJA   }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2265; .Name= 'ARM.COM '; wr  {COMUNICACION ANALIZADOR RED MEDIA  }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2266; .Name= 'AT.FAIL '; wr  {TURBIEDAD ESTADO                   }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2267; .Name= 'AT.OSC  '; wr  {TURBIEDAD OSCILACION               }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2268; .Name= 'AT.PEG  '; wr  {TURBIEDAD PEGADO                   }

{.ElemType=3102; (comming/going = NORMAL/FALLA      AlrmList 108)      }
.Elem=2269; .Name= 'BAT.CPU '; wr  {BATERIA TARJETA CPU                }

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=2270; .Name= 'BAT.TEN '; wr  {BANCO BATERIAS TENSION BAJA        }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2271; .Name= 'BLCC    '; wr  {BLOQUEADO DESDE CENTRO CONTROL     }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2272; .Name= 'BLQ     '; wr  {BLOQUEO ELECTRICO/MECANICO         }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2273; .Name= 'BLQ.ARML'; wr  {BLOQUEO ARRANQUE DESDE RELE MULTILI}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2274; .Name= 'BLQ.EM  '; wr  {BLOQUEO EMERGENCIA                 }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2275; .Name= 'BOM.ACE '; wr  {BOMBA ACEITE                       }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2276; .Name= 'BRK     '; wr  {BRK                                }

{.ElemType=3084; (comming/going = ABIERTA/CERRADA   AlrmList 108)      }
.Elem=2277; .Name= 'BRK.120 '; wr  {BRK COMUN 120 VAC ESTADO           }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2278; .Name= 'BRK.120F'; wr  {BRK COMUN 120 VAC                  }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2279; .Name= 'BRK.220V'; wr  {BRK DISTRIBUCION 220 VAC           }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2280; .Name= 'BRK.24DC'; wr  {BRK DISTRIBUCION 24 VDC            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2281; .Name= 'BRK.24V '; wr  {BRK COMUN 24 VDC                   }

{.ElemType=3120; (comming/going = DISPARO/NORMAL    AlrmList 109)      }
.Elem=2282; .Name= 'BRK.ACAL'; wr  {BRK ILUMINACION CALEFACCION        }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2283; .Name= 'BRK.ALEV'; wr  {BRK ALIMENTACION GENERAL EV PURGAS }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2284; .Name= 'BRK.ALSW'; wr  {BRK ALIMENTACION SWITCH            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2285; .Name= 'BRK.AMIN'; wr  {BRK ALIMENTACION MOTORIZADO INTERRU}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2286; .Name= 'BRK.ANT '; wr  {BRK ANTENA                         }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2287; .Name= 'BRK.ARD '; wr  {BRK ANALIZADOR DE RED              }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2288; .Name= 'BRK.ATAB'; wr  {BRK ALIMENTACION TABLERO           }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2289; .Name= 'BRK.BOBS'; wr  {BRK BOBINA SECCIONADOR             }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2290; .Name= 'BRK.BOMA'; wr  {BRK BOMBA ACHIQUE                  }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2291; .Name= 'BRK.BOMH'; wr  {BRK BOMBA HIDRAULICA               }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2292; .Name= 'BRK.BT  '; wr  {BRK BATERIA 24 VDC                 }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2293; .Name= 'BRK.CALE'; wr  {BRK CALEFACCION MOTOR              }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2294; .Name= 'BRK.CBOB'; wr  {BRK CONTROL BOBINA                 }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2295; .Name= 'BRK.CBSU'; wr  {BRK CONTROL BAJA SUCCION           }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2296; .Name= 'BRK.CEXT'; wr  {BRK CONTROL EXTRACTORES SALA CONTRO}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2297; .Name= 'BRK.CIN '; wr  {BRK CONTROL INTERRUPTOR 44 KV      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2298; .Name= 'BRK.CINT'; wr  {BRK CUERDA INTERRUPTOR             }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2299; .Name= 'BRK.CMIT'; wr  {BRK CONTROL MINIMA TENSION         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2300; .Name= 'BRK.CMTE'; wr  {BRK CONTROL CELDA MEDIA TENSION    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2301; .Name= 'BRK.CNES'; wr  {BRK COMUN CONTACTOR                }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2302; .Name= 'BRK.COMP'; wr  {BRK COMUN SENALES CAMPO 24 VDC     }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2303; .Name= 'BRK.CRF '; wr  {BRK CONTROL REFRIGERACION          }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2304; .Name= 'BRK.CSI '; wr  {BRK COMUN SENAL INTERRUPTOR        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2305; .Name= 'BRK.CSOH'; wr  {BRK CONTROL SOH                    }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2306; .Name= 'BRK.CTEN'; wr  {BRK CONTADOR DE ENERGIA            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2307; .Name= 'BRK.CTRL'; wr  {BRK CONTROL                        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2308; .Name= 'BRK.CTSE'; wr  {BRK CONTROL SECCIONADOR            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2309; .Name= 'BRK.CTT '; wr  {BRK CONTROL TEMPERATURA TRAFO      }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2310; .Name= 'BRK.DC  '; wr  {BRK DC                             }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2311; .Name= 'BRK.DCMO'; wr  {BRK DC MOTORIZADO                  }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2312; .Name= 'BRK.DREG'; wr  {BRK DISTRIBUCION REGULADO          }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2313; .Name= 'BRK.EAN '; wr  {BRK MODULO ENTRADA ANALOGA         }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2314; .Name= 'BRK.EDIG'; wr  {BRK MODULO ENTRADA DIGITAL         }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2315; .Name= 'BRK.EXT '; wr  {BRK COMUN EXTRACTORES              }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2316; .Name= 'BRK.EXTR'; wr  {BRK EXTRACTOR                      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2317; .Name= 'BRK.F24 '; wr  {BRK FUENTE 24 VDC                  }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2318; .Name= 'BRK.FERR'; wr  {BRK FERRORESONANCIA GENERAL        }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2319; .Name= 'BRK.FG  '; wr  {BRK 120 VAC FUENTE GENERAL 24 VDC  }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2320; .Name= 'BRK.FPLC'; wr  {BRK FUENTE PLC                     }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2321; .Name= 'BRK.GRAL'; wr  {BRK GENERAL                        }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2322; .Name= 'BRK.HMI '; wr  {BRK HMI                            }

{.ElemType=3120; (comming/going = DISPARO/NORMAL    AlrmList 109)      }
.Elem=2323; .Name= 'BRK.ICMO'; wr  {BRK ILUMINACION CELDA CALEFACION MO}

{.ElemType=3120; (comming/going = DISPARO/NORMAL    AlrmList 109)      }
.Elem=2324; .Name= 'BRK.IL  '; wr  {BRK ILUMINACION                    }

{.ElemType=3120; (comming/going = DISPARO/NORMAL    AlrmList 109)      }
.Elem=2325; .Name= 'BRK.ILC '; wr  {BRK ILUMINACION CELDAS             }

{.ElemType=3120; (comming/going = DISPARO/NORMAL    AlrmList 109)      }
.Elem=2326; .Name= 'BRK.ILTC'; wr  {BRK ILUMINACION TOMA CELDA         }

{.ElemType=3120; (comming/going = DISPARO/NORMAL    AlrmList 109)      }
.Elem=2327; .Name= 'BRK.INC '; wr  {BRK TOMA INTERRUPTOR DE CAMPO      }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2328; .Name= 'BRK.INP '; wr  {BRK MOTORIZADO INTERRUPTOR PPAL    }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2329; .Name= 'BRK.IPIL'; wr  {BRK INDICACION PILOTOS             }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2330; .Name= 'BRK.MAC '; wr  {BRK ALIMENTACION MACROMEDIDOR      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2331; .Name= 'BRK.MDEA'; wr  {BRK MODULO SALIDAS DIGITAL         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2332; .Name= 'BRK.MDSA'; wr  {BRK MODULO SALIDAS ANALOGAS        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2333; .Name= 'BRK.MFTB'; wr  {BRK MEDIDOR CAUDAL BOMBEO          }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2334; .Name= 'BRK.MGRL'; wr  {BRK MEDIDA GENERAL                 }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2335; .Name= 'BRK.MOT '; wr  {BRK 24 VDC MOTORIZADO              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2336; .Name= 'BRK.MSSE'; wr  {BRK COMUN PRINCIPAL SECCIONADOR    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2337; .Name= 'BRK.P   '; wr  {BRK POTENCIA                       }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2338; .Name= 'BRK.PM81'; wr  {BRK RELE PROTECCION PM810          }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2339; .Name= 'BRK.PM85'; wr  {BRK RELE PROTECCION PM850          }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2340; .Name= 'BRK.PP  '; wr  {BRK PRIMARIO                       }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2341; .Name= 'BRK.PPT '; wr  {BRK PRIMARIO TRAFO                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2342; .Name= 'BRK.PRF '; wr  {BRK MODULO PROFIBUS                }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2343; .Name= 'BRK.RACK'; wr  {BRK RACK PRINCIPAL                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2344; .Name= 'BRK.RPRO'; wr  {BRK RELE PROTECCION 44KV           }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2345; .Name= 'BRK.RT  '; wr  {BRK RELE TEMPERATURA               }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2346; .Name= 'BRK.RTU '; wr  {BRK RTU                            }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2347; .Name= 'BRK.SAL '; wr  {BRK COMUN SALIDA                   }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2348; .Name= 'BRK.SALD'; wr  {BRK COMUN 120 VAC SALIDA DIGITAL   }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2349; .Name= 'BRK.SC  '; wr  {BRK SECUNDARIO                     }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2350; .Name= 'BRK.SCT '; wr  {BRK SECUNDARIO TRAFO               }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2351; .Name= 'BRK.SENA'; wr  {BRK SENALIZACION                   }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2352; .Name= 'BRK.SETH'; wr  {BRK SWITCH ETHERNET                }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2353; .Name= 'BRK.STHA'; wr  {BRK SWITCH ETHERNET ALLEN BRADLEY  }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2354; .Name= 'BRK.SFTI'; wr  {BRK SENSOR FLUJO IMPULSION         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2355; .Name= 'BRK.SPLC'; wr  {BRK MODULO SALIDA PLC              }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2356; .Name= 'BRK.T120'; wr  {BRK COMUN 120 VAC                  }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2357; .Name= 'BRK.TAB '; wr  {BRK COMUN TABLERO                  }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2358; .Name= 'BRK.TPLC'; wr  {BRK COMUN 24 VDC TABLERO PLC       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2359; .Name= 'BRK.UPS '; wr  {BRK UPS                            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2360; .Name= 'BRK.VAR '; wr  {BRK VARIADOR                       }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2361; .Name= 'BRK.VCAL'; wr  {BRK VENTILADOR/CALEFACCION         }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2362; .Name= 'BRK.VENT'; wr  {BRK VENTILACION                    }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2363; .Name= 'BRK.VTP '; wr  {BRK VENTILACION TABLERO POTENCIA   }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2364; .Name= 'BRK.VTPL'; wr  {BRK VENTILACION TABLERO PLC        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2365; .Name= 'BRK.ZT  '; wr  {BRK ELECTRO VALVULA                }

{.ElemType=3104; (comming/going = OPERANDO/PARADO   AlrmList 108)      }
.Elem=2366; .Name= 'BT.CTR  '; wr  {CONTACTOR CARGADOR BATERIAS        }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2367; .Name= 'BT.RTB  '; wr  {BATERIA BAJA RECTIFICADOR          }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2368; .Name= 'CAL.EF  '; wr  {CALEFACCION MOTOR ESTADO           }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2369; .Name= 'CAL.MOT '; wr  {CALENTADOR MOTOR                   }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2370; .Name= 'CAR.BA  '; wr  {CARGADOR BATERIAS ALIMENTACION     }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2371; .Name= 'CAR.BCT '; wr  {CARGADOR BATERIAS CONEXION TIERRA  }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2372; .Name= 'CAR.BS  '; wr  {CARGADOR BATERIAS SOBRETENSION     }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2373; .Name= 'CC.COM  '; wr  {COMUNICACION CONTROLADOR-CONTROLADO}

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2374; .Name= 'CCH.E   '; wr  {CUCHILLA ESTADO                    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2375; .Name= 'CJNAB   '; wr  {COJINETE NIVEL ACEITE BAJO         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2376; .Name= 'CJRBN   '; wr  {FALTA AGUA REFRIGERACION COJINETE  }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2377; .Name= 'CJTA    '; wr  {COJINETE TEMPERATURA ALTA          }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2378; .Name= 'CLEN.COM'; wr  {COMUNICACION CONTROLADOR-CALIDAD EN}

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2379; .Name= 'CM.ANA  '; wr  {COMUNICACION CAMPO ANALOGAS ESTADO }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2380; .Name= 'CMP     '; wr  {COMPRESOR ESTADO                   }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2381; .Name= 'CMP.F   '; wr  {COMPRESOR ESTADO                   }

{.ElemType=3130; (comming/going = REMOTO/LOCAL      AlrmList 109)      }
.Elem=2382; .Name= 'CMP.SE  '; wr  {COMPRESOR SELECTOR                 }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2383; .Name= 'CN.FAIL '; wr  {CONDUCTIVIDAD ESTADO               }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2384; .Name= 'CN.OSC  '; wr  {CONDUCTIVIDAD OSCILACION           }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2385; .Name= 'CN.PEG  '; wr  {CONDUCTIVIDAD PEGADO               }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2386; .Name= 'CNTIMX  '; wr  {CORRIENTE NEUTRO TIERRA MAXIMO     }

{.ElemType=3127; (comming/going = OK/NOOK           AlrmList 109)      }
.Elem=2387; .Name= 'CON.AUT '; wr  {CONDICION ESTADO AUTOMATICA        }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2388; .Name= 'CON.CE  '; wr  {INTERRUPTOR CONDICION CIERRE       }

{.ElemType=3127; (comming/going = OK/NOOK           AlrmList 109)      }
.Elem=2389; .Name= 'CON.CTRL'; wr  {CONDICION ELECTRICA CONTROL        }

{.ElemType=3127; (comming/going = OK/NOOK           AlrmList 109)      }
.Elem=2390; .Name= 'CON.EL  '; wr  {CONDICION ELECTRICA                }

{.ElemType=3127; (comming/going = OK/NOOK           AlrmList 109)      }
.Elem=2391; .Name= 'CON.GRAL'; wr  {CONDICION GENERAL                  }

{.ElemType=3127; (comming/going = OK/NOOK           AlrmList 109)      }
.Elem=2392; .Name= 'CON.INI '; wr  {CONDICION INICIAL                  }

{.ElemType=3127; (comming/going = OK/NOOK           AlrmList 109)      }
.Elem=2393; .Name= 'CON.MAH '; wr  {CONDICION MECANICA ANALOGAS HIDRAUL}

{.ElemType=3127; (comming/going = OK/NOOK           AlrmList 109)      }
.Elem=2394; .Name= 'CON.MH  '; wr  {CONDICION MECANICA HIDRAULICA      }

{.ElemType=3127; (comming/going = OK/NOOK           AlrmList 109)      }
.Elem=2395; .Name= 'CON.POT '; wr  {CONDICION ELECTRICA POTENCIA       }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2396; .Name= 'CON.STOP'; wr  {CONDICION DE PARO                  }

{.ElemType=3103; (comming/going = OK/NOOK           AlrmList 108)      }
.Elem=2397; .Name= 'CON.V   '; wr  {CONDICION VIBRACION                }

{.ElemType=3133; (comming/going = Appear/Disappear  AlrmList 108)      }
.Elem=2398; .Name= 'AFacom  '; wr  {IEDStatus                          }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2399; .Name= 'CT.FAIL '; wr  {COLOR ESTADO                       }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2400; .Name= 'CT.OSC  '; wr  {COLOR OSCILACION                   }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2401; .Name= 'CT.PEG  '; wr  {COLOR PEGADO                       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2402; .Name= 'CTIMX   '; wr  {CORRIENTE TIERRA MAXIMA            }

{.ElemType=3118; (comming/going = CERRADA/NOPERA    AlrmList 109)      }
.Elem=2403; .Name= 'CTR     '; wr  {CONTACTOR ESTADO                   }

{.ElemType=3118; (comming/going = CERRADA/NOPERA    AlrmList 109)      }
.Elem=2404; .Name= 'CTR.CN  '; wr  {CONTACTOR CONDENSADORES            }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2405; .Name= 'CTR.M1M2'; wr  {CONTACTO MULTIFUNCIONAL M1-M2      }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2406; .Name= 'CTR.M3M4'; wr  {CONTACTO MULTIFUNCIONAL M3-M4      }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2407; .Name= 'CTR.M5M6'; wr  {CONTACTO MULTIFUNCIONAL M5-M6      }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2408; .Name= 'CTR.PAN '; wr  {CONTROL DESDE PANTALLA             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2409; .Name= 'CTR.REC '; wr  {CONTROL RECONOCIMIENTO VALVULA     }

{.ElemType=3114; (comming/going = AUTOMATI/MANUAL   AlrmList 109)      }
.Elem=2410; .Name= 'CTR.SR  '; wr  {CONTROL SISTEMA REFRIGERACION      }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2411; .Name= 'DBO.FAIL'; wr  {DEMANDA BIOLOGICA OXIGENO ESTADO   }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2412; .Name= 'DBO.OSC '; wr  {DEMANDA BIOLOG OXIGENO MULT OSCIL  }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2413; .Name= 'DBO.PEG '; wr  {DEMANDA BIOLOGICA OXIGENO PEGADO   }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2414; .Name= 'DC125   '; wr  {SISTEMA DC 125V                    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2415; .Name= 'DC24    '; wr  {SISTEMA DC 24V                     }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2416; .Name= 'DESCR   '; wr  {DISCREPANCIA EQUIPO                }

{.ElemType=3061; (comming/going = ABIERTA/NOPERA    AlrmList 107)      }
.Elem=2417; .Name= 'DIST.AB '; wr  {DISTRIBUIDOR TOTALMENTE ABIERTO    }

{.ElemType=3070; (comming/going = CERRADA/NOPERA    AlrmList 107)      }
.Elem=2418; .Name= 'DIST.CE '; wr  {DISTRIBUIDOR TOTALMENTE CERRADO    }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2419; .Name= 'DQO.ALM '; wr  {DEMANDA QUIMICA OXIGENO FUERA RANGO}

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2420; .Name= 'DQO.FAIL'; wr  {DEMANDA QUIMICA OXIGENO ESTADO     }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2421; .Name= 'DQO.OSC '; wr  {DEMANDA QUIMICA OXIGENO OSCILACION }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2422; .Name= 'DQO.PEG '; wr  {DEMANDA QUIMICA OXIGENO PEGADO     }

{.ElemType=3084; (comming/going = ABIERTA/CERRADA   AlrmList 108)      }
.Elem=2423; .Name= 'EIL     '; wr  {PUERTA                             }

{.ElemType=3084; (comming/going = ABIERTA/CERRADA   AlrmList 108)      }
.Elem=2424; .Name= 'EILA    '; wr  {ACCESSO TORRE                      }

{.ElemType=3093; (comming/going = CERRADA/ABIERTA   AlrmList 108)      }
.Elem=2425; .Name= 'EILE    '; wr  {PUERTA ECAR                        }

{.ElemType=3093; (comming/going = CERRADA/ABIERTA   AlrmList 108)      }
.Elem=2426; .Name= 'EILI    '; wr  {PUERTA                             }

{.ElemType=3093; (comming/going = CERRADA/ABIERTA   AlrmList 108)      }
.Elem=2427; .Name= 'EIT     '; wr  {TAPA ACCESO CAJA                   }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2428; .Name= 'EMER    '; wr  {EMERGENCIA                         }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2429; .Name= 'EQ.F    '; wr  {EQUIPO FUNCIONANDO                 }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2430; .Name= 'EQ.FF   '; wr  {EQUIPO ESTADO                      }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2431; .Name= 'EQ.G1P1 '; wr  {GRUPO 1 EN PRIORIDAD 1             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2432; .Name= 'EQ.G1P2 '; wr  {GRUPO 1 EN PRIORIDAD 2             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2433; .Name= 'EQ.G1P3 '; wr  {GRUPO 1 EN PRIORIDAD 3             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2434; .Name= 'EQ.G1P4 '; wr  {GRUPO 1 EN PRIORIDAD 4             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2435; .Name= 'EQ.G2P1 '; wr  {GRUPO 2 EN PRIORIDAD 1             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2436; .Name= 'EQ.G2P2 '; wr  {GRUPO 2 EN PRIORIDAD 2             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2437; .Name= 'EQ.G2P3 '; wr  {GRUPO 2 EN PRIORIDAD 3             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2438; .Name= 'EQ.G2P4 '; wr  {GRUPO 2 EN PRIORIDAD 4             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2439; .Name= 'EQ.G3P1 '; wr  {GRUPO 3 EN PRIORIDAD 1             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2440; .Name= 'EQ.G3P2 '; wr  {GRUPO 3 EN PRIORIDAD 2             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2441; .Name= 'EQ.G3P3 '; wr  {GRUPO 3 EN PRIORIDAD 3             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2442; .Name= 'EQ.G3P4 '; wr  {GRUPO 3 EN PRIORIDAD 4             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2443; .Name= 'EQ.G4P1 '; wr  {GRUPO 4 EN PRIORIDAD 1             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2444; .Name= 'EQ.G4P2 '; wr  {GRUPO 4 EN PRIORIDAD 2             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2445; .Name= 'EQ.G4P3 '; wr  {GRUPO 4 EN PRIORIDAD 3             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2446; .Name= 'EQ.G4P4 '; wr  {GRUPO 4 EN PRIORIDAD 4             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2447; .Name= 'EQ.G5P1 '; wr  {GRUPO 5 EN PRIORIDAD 1             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2448; .Name= 'EQ.G5P2 '; wr  {GRUPO 5 EN PRIORIDAD 2             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2449; .Name= 'EQ.G5P3 '; wr  {GRUPO 5 EN PRIORIDAD 3             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2450; .Name= 'EQ.G5P4 '; wr  {GRUPO 5 EN PRIORIDAD 4             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2451; .Name= 'EQ.G6P1 '; wr  {GRUPO 6 EN PRIORIDAD 1             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2452; .Name= 'EQ.G6P2 '; wr  {GRUPO 6 EN PRIORIDAD 2             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2453; .Name= 'EQ.G6P3 '; wr  {GRUPO 6 EN PRIORIDAD 3             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2454; .Name= 'EQ.G6P4 '; wr  {GRUPO 6 EN PRIORIDAD 4             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2455; .Name= 'EQ.G7P1 '; wr  {GRUPO 7 EN PRIORIDAD 1             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2456; .Name= 'EQ.G7P2 '; wr  {GRUPO 7 EN PRIORIDAD 2             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2457; .Name= 'EQ.G7P3 '; wr  {GRUPO 7 EN PRIORIDAD 3             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2458; .Name= 'EQ.G7P4 '; wr  {GRUPO 7 EN PRIORIDAD 4             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2459; .Name= 'EQ.G8P1 '; wr  {GRUPO 8 EN PRIORIDAD 1             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2460; .Name= 'EQ.G8P2 '; wr  {GRUPO 8 EN PRIORIDAD 2             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2461; .Name= 'EQ.G8P3 '; wr  {GRUPO 8 EN PRIORIDAD 3             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2462; .Name= 'EQ.G8P4 '; wr  {GRUPO 8 EN PRIORIDAD 4             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2463; .Name= 'EQ.G9P1 '; wr  {GRUPO 9 EN PRIORIDAD 1             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2464; .Name= 'EQ.G9P2 '; wr  {GRUPO 9 EN PRIORIDAD 2             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2465; .Name= 'EQ.G9P3 '; wr  {GRUPO 9 EN PRIORIDAD 3             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2466; .Name= 'EQ.G9P4 '; wr  {GRUPO 9 EN PRIORIDAD 4             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2467; .Name= 'EQ.SESE '; wr  {SELECCION SECUENCIA EQ1/EQ2        }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2468; .Name= 'ERR.CAN '; wr  {ERROR AL AJUSTAR CANAL             }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2469; .Name= 'ERR.CE  '; wr  {ERROR COMANDO ENTRADA              }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2470; .Name= 'ERR.EANA'; wr  {ERROR MODULO ENTRADA ANALOGAS      }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2471; .Name= 'ERR.EC  '; wr  {ERROR ENVIO DE COMANDO             }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2472; .Name= 'ERR.EDIG'; wr  {ERROR MODULO ENTRADA DIGITALES     }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2473; .Name= 'ERR.ETH '; wr  {ERROR MODULO ETHERNET              }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2474; .Name= 'ERR.MBUS'; wr  {ERROR MODBUS                       }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2475; .Name= 'ERR.SANA'; wr  {ERROR MODULO SALIDA ANALOGAS       }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2476; .Name= 'ERR.SDIG'; wr  {ERROR MODULO SALIDA DIGITALES      }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2477; .Name= 'ERR.SER '; wr  {ERROR MODULO SERIAL                }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2478; .Name= 'ERR.SET '; wr  {ERROR DATOS SETTING                }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2479; .Name= 'ERR.TOUT'; wr  {ERROR TIMEOUT VRP                  }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2480; .Name= 'EST.CTIE'; wr  {ESTATOR CONEXION TIERRA            }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2481; .Name= 'ETH.COM '; wr  {COMUNICACION MODULO ETHERNET       }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2482; .Name= 'EXT.C   '; wr  {EXTRACTOR CELDA                    }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2483; .Name= 'EXT.F   '; wr  {EXTRACTOR CELDA                    }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2484; .Name= 'EXT.R   '; wr  {EXTRACTOR REFRIGERACION            }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2485; .Name= 'EXT.RF  '; wr  {EXTRACTOR REFRIGERACION            }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2486; .Name= 'EXT.SC  '; wr  {EXTRACTOR SOBRECARGA               }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2487; .Name= 'EXT.SL  '; wr  {EXTRACTOR SALA                     }

{.ElemType=3113; (comming/going = AUTOMATI/LOCAL    AlrmList 109)      }
.Elem=2488; .Name= 'EXT.SLA '; wr  {EXTRACTOR SALA                     }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2489; .Name= 'EXT.SLF '; wr  {EXTRACTOR SALA                     }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2490; .Name= 'EXT.TB  '; wr  {EXTRACTOR TABLERO                  }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2491; .Name= 'EXT.TBF '; wr  {EXTRACTOR TABLERO                  }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2492; .Name= 'FIL.AOB '; wr  {FILTRO ACEITE OBSTRUIDO            }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2493; .Name= 'FIL.CL  '; wr  {FILTRO AGUA COLMATADO              }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2494; .Name= 'FIL.SMOB'; wr  {FILTRO SELLO DE MANTENIMIENTO OBSTR}

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2495; .Name= 'FIL.SOB '; wr  {FILTRO SELLO DE OPERACION OBSTRUIDO}

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2496; .Name= 'FS.PFES '; wr  {PERDIDA FASE ENTRADA/SALIDA        }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2497; .Name= 'FT.COM  '; wr  {CAUDAL COMUNICACIONES              }

{.ElemType=3111; (comming/going = ALARMA/NORMAL     AlrmList 109)      }
.Elem=2498; .Name= 'FT.DTV  '; wr  {CAUDAL DETECCION TUBO VACIO        }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2499; .Name= 'FT.FAIL '; wr  {CAUDAL ESTADO                      }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2500; .Name= 'FT.IMNS '; wr  {CAUDAL IMPULSION MINIMA SEGURIDAD  }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2501; .Name= 'FT.IMXS '; wr  {CAUDAL IMPULSION MAXIMA SEGURIDAD  }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2502; .Name= 'FT.MD   '; wr  {CAUDAL MODO                        }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2503; .Name= 'FT.OSC  '; wr  {CAUDAL OSCILACION                  }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2504; .Name= 'FT.A15MA'; wr  {CAUDAL PROMEDIO 15 MINUTOS PREVIO  }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2505; .Name= 'FT.PEG  '; wr  {CAUDAL PEGADO                      }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2506; .Name= 'FT.SAA  '; wr  {CAUDAL ALTO ALTO                   }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2507; .Name= 'FT.SAAF '; wr  {CAUDAL ALTO ALTO                   }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2508; .Name= 'FT.SBB  '; wr  {CAUDAL BAJO BAJO                   }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2509; .Name= 'FT.SBBF '; wr  {CAUDAL BAJO BAJO                   }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2510; .Name= 'FT.SEL  '; wr  {CAUDAL SELECTOR                    }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2511; .Name= 'FT.SF   '; wr  {SENSOR CAUDAL                      }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2512; .Name= 'FU.A    '; wr  {FUSIBLE DE ALTA                    }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2513; .Name= 'FU.AS   '; wr  {FUSIBLE SECCIONADOR                }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2514; .Name= 'FU.AS33 '; wr  {FUSIBLE SECCIONADOR 3.3KV          }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2515; .Name= 'FU.FUP  '; wr  {FUSIBLE FUPACT                     }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2516; .Name= 'FUPAC.E '; wr  {FUPACT ESTADO                      }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2517; .Name= 'G.CAR   '; wr  {CONFIRMACION ARRANQUE              }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2518; .Name= 'G.CPA   '; wr  {CONFIRMACION PARO                  }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2519; .Name= 'G.CPR   '; wr  {CONTROL POR PROGRAMACION           }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2520; .Name= 'G.CS12  '; wr  {CONFIRMACION HABILITADA G1-G2      }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2521; .Name= 'G.CS13  '; wr  {CONFIRMACION HABILITADA G1-G3      }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2522; .Name= 'G.CS23  '; wr  {CONFIRMACION HABILITADA G2-G3      }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2523; .Name= 'G.FTI   '; wr  {GRUPO FALLA TIERRA                 }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2524; .Name= 'G.TRFD  '; wr  {TRANSISTOR FRENADO DINAMICO        }

{.ElemType=3125; (comming/going = NOOK/OK           AlrmList 109)      }
.Elem=2525; .Name= 'GA      '; wr  {CONDICIONES DE ARRANQUE            }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2526; .Name= 'GB      '; wr  {BLOQUEO EQUIPO                     }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2527; .Name= 'GB5ARH  '; wr  {BLOQUEO TEMPORAL 5 ARRANQUES POR HO}

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2528; .Name= 'GBT     '; wr  {BLOQUEO TEMPORAL POR APAGADO       }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2529; .Name= 'GBTG12  '; wr  {BLOQUEO TEMPORAL G1 G2 POR ARRANQUE}

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2530; .Name= 'GBTG13  '; wr  {BLOQUEO TEMPORAL G1 G3 POR ARRANQUE}

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2531; .Name= 'GBTG23  '; wr  {BLOQUEO TEMPORAL G2 G3 POR ARRANQUE}

{.ElemType=3111; (comming/going = ALARMA/NORMAL     AlrmList 109)      }
.Elem=2532; .Name= 'GBTM    '; wr  {BLOQUEO POR TIEMPO                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2533; .Name= 'GBVL    '; wr  {BAJO VOLTAJE                       }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2534; .Name= 'GE      '; wr  {ALARMA ELECTRICA                   }

.NoElTyp= neSwitch;
.ElemType=0;          {not used becaue check only at IMM job execution }

{.ElemType=3128,3132; (comming/going = OPERANDO/PARADO   AlrmList 109) }
.Elem=2535; .Name= 'GF      '; wr  {GRUPO FUNCIONANDO                  }

.NoElTyp= neAlarm4;
.ElemType=0;          {not used becaue check only at IMM job execution }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2536; .Name= 'GFR     '; wr  {GRUPO FUNCIONANDO EN REVERSA       }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2537; .Name= 'GL      '; wr  {LIDER                              }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2538; .Name= 'GM      '; wr  {ALARMA MECANICA                    }

{.ElemType=3122; (comming/going = GRAVEDAD/BOMBEO   AlrmList 109)      }
.Elem=2539; .Name= 'GMDOP   '; wr  {OPERACION BOMBEO MODO              }

{.ElemType=3111; (comming/going = ALARMA/NORMAL     AlrmList 109)      }
.Elem=2540; .Name= 'GMXCT   '; wr  {ARRANQUES MAXIMO POR HORA          }

{.ElemType=3116; (comming/going = BLOQUEO/NOBLOQUE  AlrmList 109)      }
.Elem=2541; .Name= 'GNDG12  '; wr  {G3 NO DISPONIBLE G2 G3 OPERANDO    }

{.ElemType=3116; (comming/going = BLOQUEO/NOBLOQUE  AlrmList 109)      }
.Elem=2542; .Name= 'GNDG13  '; wr  {G2 NO DISPONIBLE G1 G3 OPERANDO    }

{.ElemType=3116; (comming/going = BLOQUEO/NOBLOQUE  AlrmList 109)      }
.Elem=2543; .Name= 'GNDG23  '; wr  {G1 NO DISPONIBLE G2 G3 OPERANDO    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2544; .Name= 'GP      '; wr  {DISPARO ELECTRICO                  }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2545; .Name= 'GPF     '; wr  {DISPARO ELECTRICO ESTADO           }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2546; .Name= 'GROF    '; wr  {ROTACION FASE                      }

{.ElemType=3120; (comming/going = DISPARO/NORMAL    AlrmList 109)      }
.Elem=2547; .Name= 'GROTMX  '; wr  {ROTACION MAXIMO TIEMPO OPERACION   }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2548; .Name= 'GRS     '; wr  {GRUPO RESPALDO                     }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2549; .Name= 'GS      '; wr  {SECUENCIA ARRANQUE/PARADA          }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2550; .Name= 'GSM     '; wr  {SELLO MECANICO                     }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2551; .Name= 'GT      '; wr  {DISPARO MECANICO                   }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2552; .Name= 'GTF     '; wr  {DISPARO MECANICO ESTADO            }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2553; .Name= 'GTMAR   '; wr  {TIEMPO MAXIMO DE ARRANQUE          }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2554; .Name= 'GTMPA   '; wr  {TIEMPO MAXIMO DE PARO              }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2555; .Name= 'GV      '; wr  {POSICION VALVULA SALIDA            }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2556; .Name= 'HA.FAIL '; wr  {ALTURA ESTADO                      }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2557; .Name= 'HW.F    '; wr  {HARDWARE ESTADO                    }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2558; .Name= 'IN.FFS  '; wr  {INVERSION O FALTA DE FASES         }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2559; .Name= 'INT.24V '; wr  {INTERRUPTOR 24 VDC FUPACT          }

{.ElemType=3061; (comming/going = ABIERTA/NOPERA    AlrmList 107)      }
.Elem=2560; .Name= 'INT.44AB'; wr  {INTERRUPTOR 44 KV ABIERTO          }

{.ElemType=3118; (comming/going = CERRADA/NOPERA    AlrmList 109)      }
.Elem=2561; .Name= 'INT.44CE'; wr  {INTERRUPTOR 44 KV CERRADO          }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2562; .Name= 'INT.44V '; wr  {INTERRUPTOR 44 KV                  }

{.ElemType=3061; (comming/going = ABIERTA/NOPERA    AlrmList 107)      }
.Elem=2563; .Name= 'INT.AB  '; wr  {INTERRUPTOR ABIERTO                }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2564; .Name= 'INT.CAL '; wr  {INTERRUPTOR CALEFACCION            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2565; .Name= 'INT.CCI '; wr  {INTERRUPTOR CORTOCIRCUITO          }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2566; .Name= 'INT.CCT '; wr  {INTERRUPTOR CONEXION TIERRA        }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2567; .Name= 'INT.CE  '; wr  {INTERRUPTOR CERRADO                }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2568; .Name= 'INT.CON '; wr  {INTERRUPTOR CONDICION              }

{.ElemType=3108; (comming/going = ABIERTA/CERRADA   AlrmList 109)      }
.Elem=2569; .Name= 'INT.CT  '; wr  {INTERRUPTOR CONTACTO               }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2570; .Name= 'INT.CTD '; wr  {INTERRUPTOR CONECTADO              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2571; .Name= 'INT.CTF '; wr  {INTERRUPTOR CONTACTO               }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2572; .Name= 'INT.CTR '; wr  {INTERRUPTOR CONTROL                }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2573; .Name= 'INT.CTRA'; wr  {INTERRUPTOR CONTROL APAGADO        }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2574; .Name= 'INT.DS  '; wr  {INTERRUPTOR DESCONECTADO           }

{.ElemType=3060; (comming/going = ABIERTA/CERRADA   AlrmList 107)      }
.Elem=2575; .Name= 'INT.E   '; wr  {INTERRUPTOR ESTADO                 }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2576; .Name= 'INT.ECX '; wr  {INTERRUPTOR CONEXION ESTADO        }

{.ElemType=3061; (comming/going = ABIERTA/NOPERA    AlrmList 107)      }
.Elem=2577; .Name= 'INT.EE  '; wr  {INTERRUPTOR ENTRADA ESTADO         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2578; .Name= 'INT.EEA '; wr  {INTERRUPTOR ENTRADA ANALOGAS       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2579; .Name= 'INT.EED '; wr  {INTERRUPTOR ENTRADA DIGITAL        }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2580; .Name= 'INT.EEF '; wr  {INTERRUPTOR ENTRADA ESTADO         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2581; .Name= 'INT.EF  '; wr  {INTERRUPTOR ESTADO                 }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2582; .Name= 'INT.EF24'; wr  {INTERRUPTOR FUENTE 24VDC           }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2583; .Name= 'INT.EI  '; wr  {INTERRUPTOR ESTADO                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2584; .Name= 'INT.EIF '; wr  {INTERRUPTOR ESTADO                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2585; .Name= 'INT.EPCD'; wr  {INTERRUPTOR DE PATIO CIRCUITO DISPA}

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2586; .Name= 'INT.ERC '; wr  {INTERRUPTOR RESORTE CARGADO        }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2587; .Name= 'INT.ERD '; wr  {INTERRUPTOR RESORTE DESCARGADO     }

{.ElemType=3061; (comming/going = ABIERTA/NOPERA    AlrmList 107)      }
.Elem=2588; .Name= 'INT.ESAB'; wr  {INTERRUPTOR SALIDA ESTADO          }

{.ElemType=3118; (comming/going = CERRADA/NOPERA    AlrmList 109)      }
.Elem=2589; .Name= 'INT.ESCE'; wr  {INTERRUPTOR SALIDA ESTADO          }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2590; .Name= 'INT.ESDF'; wr  {INTERRUPTOR SALIDA DIGITALES ESTADO}

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2591; .Name= 'INT.ESF '; wr  {INTERRUPTOR SALIDA ESTADO          }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2592; .Name= 'INT.FAB '; wr  {INTERRUPTOR FALLA APERTURA         }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2593; .Name= 'INT.FCE '; wr  {INTERRUPTOR FALLA CIERRE           }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2594; .Name= 'INT.FTI '; wr  {INTERRUPTOR FALLA TIERRA           }

{.ElemType=3118; (comming/going = CERRADA/NOPERA    AlrmList 109)      }
.Elem=2595; .Name= 'INT.FUPA'; wr  {INTERRUPTOR ANTES DE FUPACT VARIADO}

{.ElemType=3060; (comming/going = ABIERTA/CERRADA   AlrmList 107)      }
.Elem=2596; .Name= 'INT.LB  '; wr  {INTERRUPTOR LADO BAJA              }

{.ElemType=3060; (comming/going = ABIERTA/CERRADA   AlrmList 107)      }
.Elem=2597; .Name= 'INT.MT  '; wr  {INTERRUPTOR MEDIA TENSION          }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2598; .Name= 'INT.PPE '; wr  {INTERRUPTOR PRINCIPAL ESTADO       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2599; .Name= 'INT.PPEF'; wr  {INTERRUPTOR PRINCIPAL ESTADO       }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2600; .Name= 'INT.PRA '; wr  {INTERRUPTOR PREALARMA              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2601; .Name= 'INT.PRFU'; wr  {INTERRUPTOR PROTECCION FUERZA      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2602; .Name= 'INT.PTAC'; wr  {INTERRUPTOR PERDIDA TENSION A.C    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2603; .Name= 'INT.SC  '; wr  {INTERRRUPTOR SOBRECORRIENTE        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2604; .Name= 'INT.SUB '; wr  {INTERRUPTOR SUBTENSION             }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2605; .Name= 'INT.TAB '; wr  {INTERRUPTOR TORQUE APERTURA VALVULA}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2606; .Name= 'INT.TB  '; wr  {INTERRUPTOR TABLERO                }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2607; .Name= 'INT.TCE '; wr  {INTERRUPTOR TORQUE CIERRE VALVULA  }

{.ElemType=3060; (comming/going = ABIERTA/CERRADA   AlrmList 107)      }
.Elem=2608; .Name= 'INT.VT  '; wr  {INTERRUPTOR VENTILADOR ESTADO      }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2609; .Name= 'INV.CONF'; wr  {INVERSOR CONDICION                 }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2610; .Name= 'INV.SC  '; wr  {INVERSOR SOBRECARGA                }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2611; .Name= 'IPIL    '; wr  {INDICACION PILOTOS                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2612; .Name= 'L13BVL  '; wr  {LINEA 13,2 BAJO VOLTAJE            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2613; .Name= 'L13FREQ '; wr  {LINEA 13,2 ALTA/BAJA FRECUENCIA    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2614; .Name= 'L13SVL  '; wr  {LINEA 13,2 SOBREVOLTAJE            }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2615; .Name= 'LM.PR   '; wr  {PRUEBA DE LAMPARAS                 }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2616; .Name= 'LSH     '; wr  {NIVEL MAXIMO INUNDACION            }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2617; .Name= 'LT.FAIL '; wr  {NIVEL ESTADO                       }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2618; .Name= 'LT.LSH  '; wr  {NIVEL REBOSE                       }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2619; .Name= 'LT.LSHV '; wr  {NIVEL REBOSE VIRTUAL               }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2620; .Name= 'LT.OSC  '; wr  {NIVEL OSCILACION                   }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2621; .Name= 'LT.PEG  '; wr  {NIVEL PEGADO                       }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2622; .Name= 'LT.SAA  '; wr  {NIVEL ALTO ALTO                    }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2623; .Name= 'LT.SB   '; wr  {NIVEL BAJO                         }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2624; .Name= 'LT.SBB  '; wr  {NIVEL BAJO BAJO                    }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2625; .Name= 'LT.SF   '; wr  {SENSOR NIVEL                       }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2626; .Name= 'LUBRIC  '; wr  {FALTA LUBRICACION                  }

{ ELEM  2627 not yet used }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2628; .Name= 'MCE.ALM '; wr  {ALARMA ELECTRICA AGRUPACION        }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2629; .Name= 'MCM.ALM '; wr  {ALARMA MECANICA AGRUPACION         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2630; .Name= 'MCP.ALM '; wr  {DISPARO ELECTRICO AGRUPACION       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2631; .Name= 'MCT.ALM '; wr  {DISPARO MECANICO AGRUPACION        }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2632; .Name= 'MED.E   '; wr  {MEDIDOR ESTADO                     }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2633; .Name= 'MED.POS '; wr  {MEDIDOR POSICION                   }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2634; .Name= 'MFMXTM  '; wr  {MOTOR MAXIMO TIEMPO FUNCIONANDO    }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2635; .Name= 'MOT.AF  '; wr  {MOTOR ACEITE                       }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2636; .Name= 'MOT.COT '; wr  {MOTOR SOH SELECTOR                 }

{.ElemType=3111; (comming/going = ALARMA/NORMAL     AlrmList 109)      }
.Elem=2637; .Name= 'MOT.CT  '; wr  {MOTOR SOH NUMERO MAXIMO ARRANQUES  }

{.ElemType=3111; (comming/going = ALARMA/NORMAL     AlrmList 109)      }
.Elem=2638; .Name= 'MOT.RT  '; wr  {MOTOR SOH TIEMPO MAXIMO FUNCIONAMIE}

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=2639; .Name= 'MOT.SG  '; wr  {MOTOR SENTIDO DE GIRO              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2640; .Name= 'MOT.TRM '; wr  {TERMICO MOTOR                      }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2641; .Name= 'MP.COM  '; wr  {COMUNICACIONES MULTIPARAMETRICO    }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2642; .Name= 'MT.FAIL '; wr  {MANGANESO ESTADO                   }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2643; .Name= 'NAA     '; wr  {BAJO NIVEL ACEITE                  }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2644; .Name= 'NAB     '; wr  {NIVEL ACEITE BAJO                  }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2645; .Name= 'P.INV   '; wr  {POTENCIA INVERSA                   }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2646; .Name= 'PAL.DIS '; wr  {PROTECCION ALIMENTACION CARGADOR BA}

{.ElemType=3102; (comming/going = NORMAL/FALLA      AlrmList 108)      }
.Elem=2647; .Name= 'PALAC   '; wr  {ALIMENTACION AC                    }

{.ElemType=3102; (comming/going = NORMAL/FALLA      AlrmList 108)      }
.Elem=2648; .Name= 'PALDC   '; wr  {ALIMENTACION DC                    }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2649; .Name= 'PFB.COM '; wr  {COMUNICACION MODULO PROFIBUS       }

{.ElemType=3111; (comming/going = ALARMA/NORMAL     AlrmList 109)      }
.Elem=2650; .Name= 'PH.3R5M '; wr  {PH 3 FUERA RANGO 5 MINUTOS         }

{.ElemType=3111; (comming/going = ALARMA/NORMAL     AlrmList 109)      }
.Elem=2651; .Name= 'PH.5R5M '; wr  {PH 5 FUERA RANGO 5 MINUTOS EN 1 HOR}

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2652; .Name= 'PH.ALM  '; wr  {PH ESTADO                          }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2653; .Name= 'PH.FAIL '; wr  {PH ESTADO                          }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2654; .Name= 'PH.OSC  '; wr  {PH OSCILACION                      }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2655; .Name= 'PH.PEG  '; wr  {PH PEGADO                          }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2656; .Name= 'PLC.COM '; wr  {COMUNICACION CONTROLADOR-CONTROLADO}

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2657; .Name= 'PLC.EF  '; wr  {PLC ESTADO                         }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2658; .Name= 'PLU.ESCA'; wr  {PLUVIOMETRO ESCORRENTIA            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2659; .Name= 'PR      '; wr  {PROTECCION                         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2660; .Name= 'PR.CTR  '; wr  {PROTECCION CONTROL                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2661; .Name= 'PR.CTRI '; wr  {PROTECCION CONTROL INTERRUPTOR     }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2662; .Name= 'PR.CUIN '; wr  {PROTECCION CUERDA INTERRUPTOR      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2663; .Name= 'PR.DIF  '; wr  {PROTECCION DIFERENCIAL             }

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=2664; .Name= 'PR.DISP '; wr  {PROCESO DISPONIBLE                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2665; .Name= 'PR.EVAL '; wr  {PROTECCION ELECTRO VALVULA         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2666; .Name= 'PR.FERR '; wr  {PROTECCION FERRO-RESONANCIA        }

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=2667; .Name= 'PR.INI  '; wr  {PROCESO INICIA                     }

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=2668; .Name= 'PR.INIR '; wr  {PROCESO INICIA REMOTO              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2669; .Name= 'PR.MENT '; wr  {PROTECCION MODULOS DE ENTRADA      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2670; .Name= 'PR.MSAL '; wr  {PROTECCION MODULOS DE SALIDA       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2671; .Name= 'PR.RESC '; wr  {PROTECCION RELE SOBRECORRIENTE GENE}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2672; .Name= 'PR.TPLC '; wr  {PROTECCION TARJETAS PLC            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2673; .Name= 'PR.VOCT '; wr  {PROTECCION VOLTAJE CIRCUITO        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2674; .Name= 'PR.VOME '; wr  {PROTECCION VOLTAJE MEDIDOR ENERGIA }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2675; .Name= 'PT.ASHU '; wr  {PRESION ALTA SHUT-OFF              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2676; .Name= 'PT.BLQ  '; wr  {BLOQUEO POR BAJA PRESION SUCCION   }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2677; .Name= 'PT.CB   '; wr  {PRESION BAJA CIRCUITO              }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2678; .Name= 'PT.DENIN'; wr  {DENSIDAD BAJA PRESION INTERRUPTOR 4}

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2679; .Name= 'PT.DIREC'; wr  {PRESION ERP DIRECTA                }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2680; .Name= 'PT.FAIL '; wr  {PRESION ESTADO                     }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2681; .Name= 'PT.IABLK'; wr  {BLOQUEO POR ALTA PRESION IMPULSION }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2682; .Name= 'PT.IBBLK'; wr  {BLOQUEO POR BAJA PRESION IMPULSION }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2683; .Name= 'PT.IGES '; wr  {PRESION IGUALADA A ENT y SAL DE FCV}

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2684; .Name= 'PT.OSC  '; wr  {PRESION OSCILACION                 }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2685; .Name= 'PT.PEG  '; wr  {PRESION PEGADO                     }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2686; .Name= 'PT.RB   '; wr  {PRESION BAJA RANGO                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2687; .Name= 'PT.S    '; wr  {PRESION                            }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2688; .Name= 'PT.SAA  '; wr  {PRESION SENSOR ALTO ALTO           }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2689; .Name= 'PT.SB   '; wr  {PRESION SENSOR BAJO                }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2690; .Name= 'PT.SBB  '; wr  {PRESION SENSOR BAJO BAJO           }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2691; .Name= 'PT.SF   '; wr  {SENSOR PRESION                     }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2692; .Name= 'PT.SHUF '; wr  {PRESION SHUT-OFF                   }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2693; .Name= 'PT.SMNS '; wr  {PRESION MINIMA SEGURIDAD           }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2694; .Name= 'PT.SMXS '; wr  {PRESION MAXIMA SEGURIDAD           }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2695; .Name= 'PT.SNOSH'; wr  {SEC ARRANQUE NO ALCANZO PRESION SHU}

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2696; .Name= 'PT.SSHU '; wr  {SEC ARRANQUE PERSISTE PRESION SHUT }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2697; .Name= 'PT.SWA  '; wr  {SWITCH DE PRESION ACTUADOR         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2698; .Name= 'PT.TQCOM'; wr  {PRESION BAJA TANQUE COMPENSADOR CEN}

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2699; .Name= 'PTA.FAIL'; wr  {PRESION ENTRADA ESTADO             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2700; .Name= 'PTA.OSC '; wr  {PRESION ENTRADA OSCILACION         }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2701; .Name= 'PTA.PEG '; wr  {PRESION ENTRADA PEGADO             }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2702; .Name= 'PTC.FAIL'; wr  {PRESION OCCIDENTAL ESTADO          }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2703; .Name= 'PTC.OSC '; wr  {PRESION OCCIDENTAL OSCILACION      }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2704; .Name= 'PTC.PEG '; wr  {PRESION OCCIDENTAL PEGADO          }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2705; .Name= 'PTD.FAIL'; wr  {PRESION SALIDA ESTADO              }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2706; .Name= 'PTD.OSC '; wr  {PRESION SALIDA OSCILACION          }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2707; .Name= 'PTD.PEG '; wr  {PRESION SALIDA PEGADO              }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2708; .Name= 'PTE.FAIL'; wr  {PRESION ORIENTE ESTADO             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2709; .Name= 'PTE.OSC '; wr  {PRESION ORIENTE OSCILACION         }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2710; .Name= 'PTE.PEG '; wr  {PRESION ORIENTE PEGADO             }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2711; .Name= 'PTI.FAIL'; wr  {PRESION ENTRADA ESTADO             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2712; .Name= 'PTI.OSC '; wr  {PRESION ENTRADA OSCILACION         }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2713; .Name= 'PTI.PEG '; wr  {PRESION ENTRADA PEGADO             }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2714; .Name= 'PTN.FAIL'; wr  {PRESION NORTE ESTADO               }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2715; .Name= 'PTN.OSC '; wr  {PRESION NORTE OSCILACION           }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2716; .Name= 'PTN.PEG '; wr  {PRESION NORTE PEGADO               }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2717; .Name= 'PTO.FAIL'; wr  {PRESION SALIDA ESTADO              }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2718; .Name= 'PTO.OSC '; wr  {PRESION SALIDA OSCILACION          }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2719; .Name= 'PTO.PEG '; wr  {PRESION SALIDA PEGADO              }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2720; .Name= 'PTS.FAIL'; wr  {PRESION SUR ESTADO                 }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2721; .Name= 'PTS.OSC '; wr  {PRESION SUR OSCILACION             }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2722; .Name= 'PTS.PEG '; wr  {PRESION SUR PEGADO                 }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2723; .Name= 'PTT.FAIL'; wr  {PRESION TOTAL ESTADO               }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2724; .Name= 'PTT.OSC '; wr  {PRESION TOTAL OSCILACION           }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2725; .Name= 'PTT.PEG '; wr  {PRESION TOTAL PEGADO               }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2726; .Name= 'RDAS    '; wr  {RODAMIENTO AS                      }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2727; .Name= 'RDBS    '; wr  {RODAMIENTO BS                      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2728; .Name= 'RE.ALIM '; wr  {RELE ALIMENTACION TRAFO PPAL       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2729; .Name= 'RE.T    '; wr  {RELE TEMPERATURA                   }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2730; .Name= 'RE.T500 '; wr  {RELE TEMPERATURA 500KVA            }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2731; .Name= 'REG.DES '; wr  {REGULADOR DESCARGA INSERTADO/EXCLUI}

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2732; .Name= 'RES.VRPF'; wr  {COMUNICACION RESISTENCIA VRP       }

.Elem=2733; .Name= 'ADumMe  '; wr  {Dummy Message for Test WATER       }

.Elem=2734; .Name:= 'AM1cAL4 '; wr {Calc 1 Message for WATER           }

.Elem=2735; .Name:= 'AM2cAL4 '; wr {Calc 2 Message for WATER           }

{ ELEMS 2736,2737 not yet used }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2738; .Name= 'RL.IMTR '; wr  {RELE IMAGEN TERMICA                }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2739; .Name= 'RL.PR   '; wr  {RELE PROTECCION                    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2740; .Name= 'RL.PR44C'; wr  {RELE PROTECCION 44 KV CORTOCIRCUITO}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2741; .Name= 'RL.PR44S'; wr  {RELE PROTECCION 44 KV SOBRECORRIENT}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2742; .Name= 'RL.PRCT '; wr  {CONTROL RELE PROTECCION            }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2743; .Name= 'RL.PRND '; wr  {RELE PROTECCION NO DISPONIBLE      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2744; .Name= 'RL.SCGL '; wr  {RELE SOBRECORRIENTE GENERAL        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2745; .Name= 'RL.SEPAM'; wr  {RELE PROTECCION SEPAM              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2746; .Name= 'RL.TENS '; wr  {RELE VIGILANTE DE TENSION          }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2747; .Name= 'RL.VL   '; wr  {RELE DE VOLTAJE                    }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2748; .Name= 'RLML.COM'; wr  {COMUNICACION RELE MULTILINK        }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2749; .Name= 'RLPR.COM'; wr  {COMUNICACION RELE DE PROTECCION GRA}

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2750; .Name= 'RT.L120 '; wr  {RECTIFICADOR LINEA 120 AC          }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2751; .Name= 'RTU.HABM'; wr  {RTU HABILITACION AL MANDO          }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2752; .Name= 'SC      '; wr  {SOBRECORRIENTE                     }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2753; .Name= 'SC.PARA '; wr  {SOBRECORRIENTES PARASITAS          }

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=2754; .Name= 'SC.TMP  '; wr  {SOBRECORRIENTE TEMPORIZADA         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2755; .Name= 'SCN     '; wr  {SOBRECORRIENTE SECUENCIA NEGATIVA  }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2756; .Name= 'SEC.132 '; wr  {SECCIONADOR 13.2 KV                }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2757; .Name= 'SEC.33  '; wr  {SECCIONADOR 33 KV                  }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2758; .Name= 'SEC.44  '; wr  {SECCIONADOR 44 KV                  }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2759; .Name= 'SEC.CN  '; wr  {SECCIONADOR CONDENSADOR            }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2760; .Name= 'SEC.E   '; wr  {SECCIONADOR ESTADO                 }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2761; .Name= 'SEC.EF  '; wr  {SECCIONADOR ESTADO                 }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2762; .Name= 'SEC.ESA '; wr  {SECCIONADOR ENTRADA                }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2763; .Name= 'SEC.PTIE'; wr  {SECCIONADOR DE PUESTA A TIERRA     }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2764; .Name= 'SEC.S   '; wr  {SECCIONADOR SALIDA                 }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2765; .Name= 'SEC.TAB '; wr  {SECCIONADOR TABLERO                }

{ ELEM  2766 not yet used }

{.ElemType=3130; (comming/going = REMOTO/LOCAL      AlrmList 109)      }
.Elem=2767; .Name= 'SEL     '; wr  {SELECTOR                           }

{.ElemType=3113; (comming/going = AUTOMATI/LOCAL    AlrmList 109)      }
.Elem=2768; .Name= 'SEL.AUT '; wr  {SELECTOR AUTOMATICO                }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2769; .Name= 'SEL.BLQ '; wr  {SELECTOR BLOQUEO                   }

{.ElemType=3117; (comming/going = CERRADA/ABIERTA   AlrmList 109)      }
.Elem=2770; .Name= 'SEL.CI  '; wr  {SELECTOR CIRCUITO                  }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2771; .Name= 'SEL.CT  '; wr  {SELECTOR MODO CONTROL APERTURA     }

{.ElemType=3121; (comming/going = FALLA/NORMAL      AlrmList 109)      }
.Elem=2772; .Name= 'SEL.F   '; wr  {SELECTOR                           }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2773; .Name= 'SEL.LO  '; wr  {SELECTOR LOCAL                     }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2774; .Name= 'SEL.LOAU'; wr  {SELECTOR LOCAL AUTOMATICO          }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2775; .Name= 'SEL.LOMT'; wr  {SELECTOR LOCAL MANTENIMIENTO       }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2776; .Name= 'SEL.LOOP'; wr  {SELECTOR LOCAL OPERACION           }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2777; .Name= 'SEL.MN  '; wr  {SELECTOR MANUAL                    }

{.ElemType=3130; (comming/going = remote/local      AlrmList 109)      }
.Elem=2778; .Name= 'ZT.SE   '; wr  {SELECTOR MANUAL                    }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2779; .Name= 'SEL.PR  '; wr  {SELECTOR PRUEBA                    }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2780; .Name= 'SEL.RE  '; wr  {SELECTOR REMOTO                    }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2781; .Name= 'SEL.SG  '; wr  {SELECTOR MODO SEGURO               }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2782; .Name= 'SEL.TAB '; wr  {SELECTOR AUTOMATICO DESDE TABLERO  }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2783; .Name= 'SEL.TEC '; wr  {SELECTOR AUTOMATICO DESDE TECLADO  }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2784; .Name= 'SG      '; wr  {SEGURIDAD OK                       }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2785; .Name= 'SIF.ALM '; wr  {SIFON ESTADO                       }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2786; .Name= 'SIF.SIMU'; wr  {SIMULACION ALARMA SIFON            }

{ ELEM  2787 not yet used }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2788; .Name= 'SOH.E   '; wr  {SOH ESTADO                         }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2789; .Name= 'SOH.F   '; wr  {SOH ESTADO                         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2790; .Name= 'SPM.CRD '; wr  {SEPAM CURVA                        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2791; .Name= 'SPM.F   '; wr  {SEPAM ESTADO                       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2792; .Name= 'SRCJNB  '; wr  {NIVEL AGUA REFRIGERACION COJINETE B}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2793; .Name= 'SRNB    '; wr  {FALTA AGUA SISTEMA REFRIGERACION   }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2794; .Name= 'SST.COM '; wr  {COMUNICACION SOLIDOS SUSPENDIDOS   }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2795; .Name= 'SST.FAIL'; wr  {SOLIDOS SUSPENDIDOS ESTADO         }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2796; .Name= 'SST.OSC '; wr  {SOLIDOS SUSPENDIDOS OSCILACION     }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2797; .Name= 'SST.PEG '; wr  {SOLIDOS SUSPENDIDOS PEGADO         }

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=2798; .Name= 'STOP.EM '; wr  {PARO EMERGENCIA                    }

{ ELEM  2799 not yet used }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2800; .Name= 'SV.120  '; wr  {SOBREVELOCIDAD (120%)              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2801; .Name= 'SV.130  '; wr  {SOBREVELOCIDAD (130%)              }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2802; .Name= 'SW.F    '; wr  {SOFTWARE ESTADO                    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2803; .Name= 'T.AA    '; wr  {TEMPERATURA ACEITE ALTA            }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2804; .Name= 'T.ALM   '; wr  {TEMPERATURA                        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2805; .Name= 'T.AS    '; wr  {TEMPERATURA AGUA SUCCION           }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2806; .Name= 'T.ATR   '; wr  {TEMPERATURA ACEITE TRAFO           }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2807; .Name= 'T.BSVI  '; wr  {TEMPERATURA BS VOLANTE INERCIA     }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2808; .Name= 'T.CJ    '; wr  {TEMPERATURA COJINETE               }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2809; .Name= 'T.CJABB '; wr  {TEMPERATURA COJINETE AS BOMBA      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2810; .Name= 'T.CJABM '; wr  {TEMPERATURA COJINETE AS MOTOR      }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2811; .Name= 'T.CTF   '; wr  {TEMPERATURA CONDUCTIVIDAD ESTADO   }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2812; .Name= 'T.CTOSC '; wr  {TEMPERATURA CONDUCTIVIDAD OSCILACIO}

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2813; .Name= 'T.CTPEG '; wr  {TEMPERATURA CONDUCTIVIDAD PEGADO   }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2814; .Name= 'T.DEV   '; wr  {TEMPERATURA DEVANADOS              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2815; .Name= 'T.DIS   '; wr  {TEMPERATURA                        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2816; .Name= 'T.DVM   '; wr  {TEMPERATURA DEVANADO MOTOR         }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2817; .Name= 'T.F     '; wr  {TEMPERATURA ESTADO                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2818; .Name= 'T.FL    '; wr  {TEMPERATURA FILTRO                 }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2819; .Name= 'T.METH  '; wr  {TEMPERATURA MODULO ETHERNET        }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2820; .Name= 'T.PHF   '; wr  {TEMPERATURA PH ESTADO              }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2821; .Name= 'T.PHOSC '; wr  {TEMPERATURA PH OSCILACION          }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2822; .Name= 'T.PHPEG '; wr  {TEMPERATURA PH PEGADO              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2823; .Name= 'T.RD    '; wr  {TEMPERATURA RODAMIENTO             }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2824; .Name= 'T.RF    '; wr  {TEMPERATURA FASE R MOTOR           }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2825; .Name= 'T.SA    '; wr  {TEMPERATURA ALTA                   }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2826; .Name= 'T.SA500 '; wr  {TEMPERATURA ALTA TRAFO 500KVA      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2827; .Name= 'T.SAA   '; wr  {TEMPERATURA ALTA ACEITE            }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2828; .Name= 'T.SAG   '; wr  {TEMPERATURA SENSOR AGUA            }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2829; .Name= 'T.SAT   '; wr  {TEMPERATURA ALTA TRAFO             }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2830; .Name= 'T.SDEVF '; wr  {TEMPERATURA DEVANADOS              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2831; .Name= 'T.SF    '; wr  {TEMPERATURA FASE S MOTOR           }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2832; .Name= 'T.SOH   '; wr  {TEMPERATURA CIRCUITO OLEOHIDRAULICO}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2833; .Name= 'T.SRA   '; wr  {TEMPERATURA AGUA REFRIGERACION ALTA}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2834; .Name= 'T.STF   '; wr  {TEMPERATURA FALLA SEGURIDAD        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2835; .Name= 'T.TF    '; wr  {TEMPERATURA FASE T MOTOR           }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2836; .Name= 'TASB.ALM'; wr  {TEMPERATURA AS BOMBA               }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2837; .Name= 'TASB.DIS'; wr  {TEMPERATURA AS BOMBA               }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2838; .Name= 'TASB.SF '; wr  {TEMPERATURA AS BOMBA               }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2839; .Name= 'TASM.ALM'; wr  {TEMPERATURA AS MOTOR               }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2840; .Name= 'TASM.DIS'; wr  {TEMPERATURA AS MOTOR               }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2841; .Name= 'TASM.SF '; wr  {TEMPERATURA AS MOTOR               }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2842; .Name= 'TBSB.ALM'; wr  {TEMPERATURA BS BOMBA               }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2843; .Name= 'TBSB.DIS'; wr  {TEMPERATURA BS BOMBA               }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2844; .Name= 'TBSB.SF '; wr  {TEMPERATURA BS BOMBA               }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2845; .Name= 'TBSM.ALM'; wr  {TEMPERATURA BS MOTOR               }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2846; .Name= 'TBSM.DIS'; wr  {TEMPERATURA BS MOTOR               }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2847; .Name= 'TBSM.SF '; wr  {TEMPERATURA BS MOTOR               }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2848; .Name= 'TER     '; wr  {TERMOSTATO                         }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2849; .Name= 'TM.AMX  '; wr  {TIEMPO ARRANQUE MAXIMO             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2850; .Name= 'TM.FTEX '; wr  {TIEMPO EXCEDIDO PARA ALCANZAR CAUDA}

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2851; .Name= 'TM.LLEX '; wr  {TIEMPO DE LLENADO EXCEDIDO         }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2852; .Name= 'TM.SHUMX'; wr  {TIEMPO SHUT-OFF MAXIMO             }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2853; .Name= 'TN.AB   '; wr  {TENSION ALTA/BAJA                  }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2854; .Name= 'TOM.MFTC'; wr  {DETECCION FLUJO TOMAMUESTRA CLORADO}

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2855; .Name= 'TOM.RTM '; wr  {RECOGER TOMA MUESTRA               }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2856; .Name= 'TOT.125V'; wr  {TOTALIZADOR 125VDC SALIDA          }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2857; .Name= 'TOT.24V '; wr  {TOTALIZADOR 24VDC                  }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2858; .Name= 'TOT.PP  '; wr  {TOTALIZADOR PRINCIPAL              }

{.ElemType=3069; (comming/going = CERRADA/ABIERTA   AlrmList 107)      }
.Elem=2859; .Name= 'TOT.PPE '; wr  {TOTALIZADOR PRINCIPAL ESTADO       }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2860; .Name= 'TOT.PPX '; wr  {TOTALIZADOR PRINCIPAL EXTRAIDO     }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2861; .Name= 'TR.BVL  '; wr  {TRAFO BAJO VOLTAJE                 }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2862; .Name= 'TR.PP   '; wr  {TRAFO PRIMARIO ESTADO              }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2863; .Name= 'TR.SC   '; wr  {TRAFO SECUNDARIO ESTADO            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2864; .Name= 'TR.SP   '; wr  {SOBREPRESION TRAFO                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2865; .Name= 'TR.TBUCH'; wr  {RELE BUCHHOLZ GENERAL              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2866; .Name= 'TRDASB  '; wr  {TEMPERATURA RODAMIENTO AS BOMBA    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2867; .Name= 'TRDBSB  '; wr  {TEMPERATURA RODAMIENTO BS BOMBA    }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2868; .Name= 'TRF     '; wr  {TRANSFERENCIA                      }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2869; .Name= 'TRF.CNP '; wr  {CONTROL PROTECCION TRANSFERENCIA   }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2870; .Name= 'TRF.CR  '; wr  {TRANSFERENCIA CIRCUITO             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2871; .Name= 'TRF.CRD '; wr  {TRANSFERENCIA CIRCUITO DESHABILITAD}

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2872; .Name= 'TUB.AUTO'; wr  {LLENADO TUBERIA AUTOMATICO         }

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=2873; .Name= 'TUB.FUG '; wr  {TUBERIA FUGA                       }

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=2874; .Name= 'TUB.FUGS'; wr  {TUBERIA FUGA SOSTENIBLE            }

{.ElemType=3067; (comming/going = AUTOMATI/REMOTO   AlrmList 107)      }
.Elem=2875; .Name= 'TUB.MLL '; wr  {TUBERIA MODO LLENADO               }

{.ElemType=3083; (comming/going = ROTA/NORMAL       AlrmList 107)      }
.Elem=2876; .Name= 'TUB.SCD '; wr  {TUBERIA CONDICION                  }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2877; .Name= 'U.AL    '; wr  {VOLTAJE ALIMENTACION               }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2878; .Name= 'U.AL3   '; wr  {VOLTAJE ALIMENTACION 3.3KV         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2879; .Name= 'U.BVL13 '; wr  {VOLTAJE BAJO LINEA 13.2KV          }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2880; .Name= 'U.SABI  '; wr  {VOLTAJE ALTO BAJO E INVERSION      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2881; .Name= 'U.SB    '; wr  {VOLTAJE BAJO                       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2882; .Name= 'U.SBFT  '; wr  {VOLTAJE BAJO FUENTE ALIMENTACION   }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2883; .Name= 'U.SLCTPP'; wr  {VOLTAJE BAJO CTO PPAL/ERR FTE/ERR C}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2884; .Name= 'U.SVL   '; wr  {SOBREVOLTAJE                       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2885; .Name= 'U.SVL13 '; wr  {SOBREVOLTAJE LINEA 13 2 KV         }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2886; .Name= 'UPS.BBT '; wr  {UPS BATERIA BAJA                   }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2887; .Name= 'UPS.BBTC'; wr  {UPS BATERIA BAJA CORNETA           }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2888; .Name= 'UPS.COM '; wr  {COMUNICACION UPS                   }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=2889; .Name= 'UPS.F   '; wr  {UPS                                }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2890; .Name= 'UPS.VNF '; wr  {UPS ALIMENTACION VENTILADOR        }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2891; .Name= 'V.BBLQ  '; wr  {VARIADOR EN BASEBLOCK              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2892; .Name= 'V.BVL   '; wr  {VARIADOR BAJO VOLTAJE              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2893; .Name= 'V.BVLC  '; wr  {VARIADOR BAJO VOLTAJE CARGA        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2894; .Name= 'V.BVLCTP'; wr  {VARIADOR BAJO VOLTAJE CIRCUITO PPAL}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2895; .Name= 'V.CCIGBT'; wr  {VARIADOR CORTO CIRCUITO IGBT       }

{.ElemType=3103; (comming/going = OK/NOOK           AlrmList 108)      }
.Elem=2896; .Name= 'V.CN    '; wr  {VARIADOR EN CONDICIONES            }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2897; .Name= 'V.DES   '; wr  {VARIADOR DESCONECTADO              }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2898; .Name= 'V.E     '; wr  {VARIADOR ESTADO                    }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2899; .Name= 'V.EF    '; wr  {VARIADOR ESTADO                    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2900; .Name= 'V.ERHW  '; wr  {VARIADOR ERROR HARDWARE            }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2901; .Name= 'V.ERREXT'; wr  {VARIADOR ERROR EXTERNO             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2902; .Name= 'V.ERRSET'; wr  {VARIADOR ERROR DATOS SETTING       }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2903; .Name= 'V.ERRVT '; wr  {VARIADOR ERROR VENTILADOR ENFRIAMIE}

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2904; .Name= 'V.FRDIN '; wr  {VARIADOR FRENADO DINAMICO          }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2905; .Name= 'V.FRSBCA'; wr  {VARIADOR FRENADO SOBRECALENTAMIENTO}

{.ElemType=3060; (comming/going = ABIERTA/CERRADA   AlrmList 107)      }
.Elem=2906; .Name= 'V.FUSAB '; wr  {VARIADOR FUSIBLE                   }

{.ElemType=3060; (comming/going = ABIERTA/CERRADA   AlrmList 107)      }
.Elem=2907; .Name= 'V.IN    '; wr  {VARIADOR ESTADO INTERRUPTOR        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2908; .Name= 'V.INBO  '; wr  {VARIADOR INTERRUPTOR BOBINAS       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2909; .Name= 'V.INPPAL'; wr  {VARIADOR INTERRUPTOR PPAL          }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2910; .Name= 'V.MRC   '; wr  {VARIADOR EN MARCHA                 }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2911; .Name= 'V.MRCC  '; wr  {VARIADOR EN MARCHA CONFIRMACION    }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2912; .Name= 'V.NOFILT'; wr  {VARIADOR NO CONFIRMA FILTRO        }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2913; .Name= 'V.OPDES '; wr  {VARIADOR OPERADOR DESCONECTADO     }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2914; .Name= 'V.PFASE '; wr  {VARIADOR PERDIDA FASE              }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2915; .Name= 'V.PFASEE'; wr  {VARIADOR PERDIDA FASE ENTRADA      }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2916; .Name= 'V.PFASES'; wr  {VARIADOR PERDIDA FASE SALIDA       }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2917; .Name= 'V.PREFPI'; wr  {VARIADOR PERDIDA REF REALIMENTACION}

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2918; .Name= 'V.PTSHU '; wr  {VARIADOR PRESION SHUTOFF           }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2919; .Name= 'V.REV   '; wr  {VARIADOR EN RESERVA                }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2920; .Name= 'V.SBV   '; wr  {VARIADOR SOBREVELOCIDAD/BAJA VELOCI}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2921; .Name= 'V.SC    '; wr  {VARIADOR SOBRECALENTAMIENTO        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2922; .Name= 'V.SCDISI'; wr  {VARIADOR SOBRECALENTAMIENTO DISIPAD}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2923; .Name= 'V.SCRES '; wr  {VARIADOR SOBRECALENTAMIENTO RESISTE}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2924; .Name= 'V.SCST  '; wr  {VARIADOR SOBRECARGA/SOBRETORQUE    }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2925; .Name= 'V.SCSTM '; wr  {VARIADOR SOBRECARGA/SOBRETORQUE MOT}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2926; .Name= 'V.SCTI  '; wr  {VARIADOR SOBRECORRIENTE FALLA TIERR}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2927; .Name= 'V.SCTRQ '; wr  {VARIADOR SOBRECALENTAMIENTO MOTOR T}

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2928; .Name= 'V.SVL   '; wr  {VARIADOR SOBREVOLTAJE              }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2929; .Name= 'V.TDEV  '; wr  {VARIADOR TEMPERATURA DEVANADO      }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2930; .Name= 'V.VBUSDC'; wr  {VARIADOR BAJO VOLTAJE BUS DE DC    }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2931; .Name= 'VAR.COM '; wr  {COMUNICACION CONTROLADOR-VARIADOR  }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2932; .Name= 'VAR.TF  '; wr  {VARIADOR TIERRA FALLA              }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2933; .Name= 'VASB.ALM'; wr  {VIBRACION AS BOMBA                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2934; .Name= 'VASB.DIS'; wr  {VIBRACION AS BOMBA                 }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2935; .Name= 'VASB.SF '; wr  {SENSOR VIBRACION AS BOMBA          }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2936; .Name= 'VASG.ALM'; wr  {VIBRACION AS GENERADOR             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2937; .Name= 'VASM.ALM'; wr  {VIBRACION AS MOTOR                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2938; .Name= 'VASM.DIS'; wr  {VIBRACION AS MOTOR                 }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2939; .Name= 'VASM.SF '; wr  {SENSOR VIBRACION AS MOTOR          }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2940; .Name= 'VASVIN  '; wr  {VIBRACION AS VOLANTE INERCIA       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2941; .Name= 'VAXM    '; wr  {VIBRACION AXIAL MOTOR              }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2942; .Name= 'VBSB.ALM'; wr  {VIBRACION BS BOMBA                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2943; .Name= 'VBSB.DIS'; wr  {VIBRACION BS BOMBA                 }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2944; .Name= 'VBSB.SF '; wr  {SENSOR VIBRACION BS BOMBA          }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2945; .Name= 'VBSG.ALM'; wr  {VIBRACION BS GENERADOR             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2946; .Name= 'VBSM.ALM'; wr  {VIBRACION BS MOTOR                 }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2947; .Name= 'VBSM.DIS'; wr  {VIBRACION BS MOTOR                 }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2948; .Name= 'VBSM.SF '; wr  {SENSOR VIBRACION BS MOTOR          }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2949; .Name= 'VBSVIN  '; wr  {VIBRACION BS VOLANTE INERCIA       }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2950; .Name= 'VEL.F   '; wr  {VELOCIDAD ESTADO                   }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2951; .Name= 'VEL.LLA '; wr  {VELOCIDAD LLENADO ALTO             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2952; .Name= 'VEL.LLAA'; wr  {VELOCIDAD LLENADO ALTO ALTO        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2953; .Name= 'VIG.C44V'; wr  {VIGILANCIA CIRCUITOS 44 VAC        }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2954; .Name= 'VIG.CAC '; wr  {VIGILANCIA CIRCUITOS A.C           }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2955; .Name= 'VN.CTRD '; wr  {CONTACTOR VENTILADORES DISIPADORES }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2956; .Name= 'VN.E    '; wr  {VENTILADOR ESTADO                  }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2957; .Name= 'VN.ESC  '; wr  {VENTILADOR SALA DE CONTROL         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=2958; .Name= 'VN.EF   '; wr  {VENTILADOR/CALEFACCION             }

{.ElemType=3128; (comming/going = OPERANDO/PARADO   AlrmList 109)      }
.Elem=2959; .Name= 'VN.SC   '; wr  {VENTILADOR SOBRECARGA              }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2960; .Name= 'VN.SRF  '; wr  {VENTILADOR DE ENFRIAMIENTO ESTADO  }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2961; .Name= 'VN.TBCT '; wr  {VENTILADOR TABLERO CONTROL         }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2962; .Name= 'VN.TBPT '; wr  {VENTILADOR TABLERO POTENCIA        }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2963; .Name= 'VRDASB  '; wr  {VIBRACION RODAMIENTOS AS BOMBA     }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2964; .Name= 'VRDBSB  '; wr  {VIBRACION RODAMIENTOS BS BOMBA     }

{.ElemType=3096; (comming/going = DISPARO/NORMAL    AlrmList 108)      }
.Elem=2965; .Name= 'VSA     '; wr  {VIBRACION ALTA                     }

{.ElemType=3121; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2966; .Name= 'TTCTFAIL'; wr  {TEMP CONDUCT ESTADO                }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2967; .Name= 'TTCTFR  '; wr  {TEMP CONDUCT 6 FUERA RANGO 1min 1h }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2968; .Name= 'TTCTOSC '; wr  {TEMP CONDUCT OSCILACION            }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2969; .Name= 'TTCTPEG '; wr  {TEMP CONDUCT PEGADO                }

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=2970; .Name= 'TTPHFAIL'; wr  {TEMP PH ESTADO                     }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2971; .Name= 'TTPHFR  '; wr  {TEMP PH 6 FUERA RANGO 1min 1h      }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2972; .Name= 'TTPHOSC '; wr  {TEMP PH OSCILATION                 }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2973; .Name= 'TTPHPEG '; wr  {TEMP PH ESTADO                     }

{ ELEMS 2974..2976 not yet used }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2977; .Name= 'ZS.SBV  '; wr  {ESTADO VALVULA SOBRE VELOCIDAD     }

{ ELEM  2978..2982 not yet used }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2983; .Name= 'SEL.EX  '; wr  {SELECTOR EXCLUDIO MTTO             }

{ ELEM  2984..2986 not yet used }

{.ElemType=3109; (comming/going = ABIERTA/NOPERA    AlrmList 109)      }
.Elem=2987; .Name= 'ZT.AB   '; wr  {VALVULA ESTADO                     }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2988; .Name= 'ZT.ABR  '; wr  {ACTUADOR ABRIENDO                  }

{.ElemType=3109; (comming/going = ABIERTA/NOPERA    AlrmList 109)      }
.Elem=2989; .Name= 'ZT.ALAB '; wr  {VALVULA ALIVIO ABIERTA             }

{.ElemType=3108; (comming/going = ABIERTA/CERRADA   AlrmList 109)      }
.Elem=2990; .Name= 'ZT.ALE  '; wr  {VALVULA ALIVIO ESTADO              }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=2991; .Name= 'ZT.ALTMC'; wr  {VALVULA ALIVIO TIEMPO CIERRE       }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2992; .Name= 'ZT.ALZSC'; wr  {ACTUADOR CIERRE SIN CONTROL        }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=2993; .Name= 'ZT.AVE  '; wr  {ACTUADOR AVERIA                    }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=2994; .Name= 'ZT.BATLO'; wr  {ACTUADOR BATERIA BAJA              }

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=2995; .Name= 'ZT.BLQ  '; wr  {VALVULA BLOQUEO                    }

{.ElemType=3108; (comming/going = ABIERTA/CERRADA   AlrmList 109)      }
.Elem=2996; .Name= 'ZT.ByP  '; wr  {ESTADO VALVULA BYPASS              }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2997; .Name= 'ZT.CAB  '; wr  {CONFIRMACION APERTURA              }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=2998; .Name= 'ZT.CCI  '; wr  {CONFIRMACION CIERRE                }

{.ElemType=3118; (comming/going = CERRADA/NOPERA    AlrmList 109)      }
.Elem=2999; .Name= 'ZT.CE   '; wr  {VALVULA ESTADO                     }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=3000; .Name= 'ZT.CEF  '; wr  {VALVULA CIERRE                     }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=3001; .Name= 'ZT.CER  '; wr  {ACTUADOR CERRANDO                  }

{.ElemType=3116; (comming/going = BLOQUEO/NOBLOQUE  AlrmList 109)      }
.Elem=3002; .Name= 'ZT.CLOSI'; wr  {ACTUADOR ENCLAVAMIENTO CIERRE      }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=3003; .Name= 'ZT.CLOSL'; wr  {ACTUADOR LIMITE CIERRE             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=3004; .Name= 'ZT.CLOST'; wr  {ACTUADOR TORQUE CIERRE             }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=3005; .Name= 'ZT.COM  '; wr  {ACTUADOR COMUNICACION              }

{.ElemType=3108; (comming/going = ABIERTA/CERRADA   AlrmList 109)      }
.Elem=3006; .Name= 'ZT.COMP '; wr  {ESTADO VALVULA                     }

{.ElemType=3127; (comming/going = OK/NOOK           AlrmList 109)      }
.Elem=3007; .Name= 'ZT.CON  '; wr  {VALVULA CONDICION OPERACION        }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=3008; .Name= 'ZT.CTRL '; wr  {ACTUADOR CONTROL                   }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=3009; .Name= 'ZT.DESCR'; wr  {ACTUADOR DISCREPANCIA              }

{.ElemType=3108; (comming/going = ABIERTA/CERRADA   AlrmList 109)      }
.Elem=3010; .Name= 'ZT.DSC  '; wr  {ESTADO VALVULA DESCARGA            }

{.ElemType=3108; (comming/going = ABIERTA/CERRADA   AlrmList 109)      }
.Elem=3011; .Name= 'ZT.ELEC '; wr  {ESTADO ELECTROVALVULA              }

{.ElemType=3108; (comming/going = ABIERTA/CERRADA   AlrmList 109)      }
.Elem=3012; .Name= 'ZT.ESF  '; wr  {ESTADO ESFERICA                    }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=3013; .Name= 'ZT.ESFSA'; wr  {VALVULA ESFERICA APERTURA          }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=3014; .Name= 'ZT.ESFSC'; wr  {VALVULA ESFERICA CIERRE            }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=3015; .Name= 'ZT.ESFTM'; wr  {VALVULA ESFERICA TIEMPO MAXIMO APER}

{.ElemType=3073; (comming/going = FALLA/NORMAL      AlrmList 107)      }
.Elem=3016; .Name= 'ZT.FAIL '; wr  {ACTUADOR ESTADO                    }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=3017; .Name= 'ZT.FAULS'; wr  {ACTUADOR FALLAS                    }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=3018; .Name= 'ZT.FL   '; wr  {VALVULA SWITCH DE FILTRO OBSTRUIDO }

{.ElemType=3062; (comming/going = ACTIVO/DESACTIV   AlrmList 107)      }
.Elem=3019; .Name= 'ZT.FTN  '; wr  {TENSION AUSENCIA                   }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=3020; .Name= 'ZT.INTER'; wr  {POSICION INTERMEDIA                }

{.ElemType=3123; (comming/going = LOCAL/NOPERA      AlrmList 109)      }
.Elem=3021; .Name= 'ZT.LAB  '; wr  {ESTADO COMANDO APERTURA            }

{.ElemType=3123; (comming/going = LOCAL/NOPERA      AlrmList 109)      }
.Elem=3022; .Name= 'ZT.LCI  '; wr  {ESTADO COMANDO CIERRE              }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=3023; .Name= 'ZT.LOOP '; wr  {VALVULA LOCAL OPERACION            }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=3024; .Name= 'ZT.LOSFS'; wr  {ACTUADOR PERDIDA FASE              }

{.ElemType=3124; (comming/going = MANUAL/PERFIL     AlrmList 109)      }
.Elem=3025; .Name= 'ZT.MAN  '; wr  {ACTUADOR MANUAL                    }

{.ElemType=3113; (comming/going = AUTOMATI/LOCAL    AlrmList 109)      }
.Elem=3026; .Name= 'ZT.MD   '; wr  {ACTUADOR MODO OPERACION            }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=3027; .Name= 'ZT.MOVMA'; wr  {ACTUADOR MOVIMIENTO MANUAL         }

{.ElemType=3111; (comming/going = ALARMA/NORMAL     AlrmList 109)      }
.Elem=3028; .Name= 'ZT.NORE '; wr  {ACTUADOR NO OPERA REMOTO           }

{.ElemType=3116; (comming/going = BLOQUEO/NOBLOQUE  AlrmList 109)      }
.Elem=3029; .Name= 'ZT.OPENI'; wr  {ACTUADOR ENCLAVAMIENTO APERTURA    }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=3030; .Name= 'ZT.OPENL'; wr  {ACTUADOR LIMITE APERTURA           }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=3031; .Name= 'ZT.OPENT'; wr  {ACTUADOR TORQUE APERTURA           }

{.ElemType=3097; (comming/going = FALLA/NORMAL      AlrmList 108)      }
.Elem=3032; .Name= 'ZT.PC   '; wr  {VALVULA PROTECCION CONTROL         }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=3033; .Name= 'ZT.PR   '; wr  {PROTECCION VALVULA                 }

{.ElemType=3130; (comming/going = remote/local      AlrmList 109)      }
.Elem=3034; .Name= 'ZT.RE   '; wr  {ACTUADOR SELECTOR                  }

{ ELEM 3035 not yet used }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=3036; .Name= 'ZT.RO   '; wr  {VALVULA REMOTO OPERACION           }

{.ElemType=3063; (comming/going = ALARMA/NORMAL     AlrmList 107)      }
.Elem=3037; .Name= 'ZT.SCI  '; wr  {VALVULA CIERRE INESPERADO          }

{.ElemType=3101; (comming/going = NOOK/OK           AlrmList 108)      }
.Elem=3038; .Name= 'ZT.SCN  '; wr  {ACTUADOR SIN CONDICIONES           }

{ ELEM  3039..3040 not yet used }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=3041; .Name= 'ZT.SG   '; wr  {VALVULA DE SEGURIDAD               }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=3042; .Name= 'ZT.SPFIN'; wr  {ACTUADOR FIN REFERENCIA            }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=3043; .Name= 'ZT.SPT  '; wr  {VALVULA SOBRE PRESION              }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=3044; .Name= 'ZT.SVC  '; wr  {VALVULA SOBREVELOCIDAD CORNETA     }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=3045; .Name= 'ZT.SVE  '; wr  {VALVULA SOBREVELOCIDAD             }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=3046; .Name= 'ZT.TAB  '; wr  {VALVULA TOPE APERTURA              }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=3047; .Name= 'ZT.TCE  '; wr  {VALVULA TOPE CIERRE                }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=3048; .Name= 'ZT.TERMO'; wr  {ACTUADOR TERMOSTATO                }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=3049; .Name= 'ZT.TMXAB'; wr  {VALVULA TIEMPO MAXIMO APERTURA     }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=3050; .Name= 'ZT.TMXCE'; wr  {VALVULA TIEMPO MAXIMO CIERRE       }

{.ElemType=3110; (comming/going = ACTIVO/DESACTIV   AlrmList 109)      }
.Elem=3051; .Name= 'ZT.TRIP '; wr  {ACTUADOR RECONOCIMIENTO TRIP       }

{.ElemType=3072; (comming/going = DISPARO/NORMAL    AlrmList 107)      }
.Elem=3052; .Name= 'ZT.TRM  '; wr  {TERMICO                            }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=3053; .Name= 'ZT.VALJA.'; wr  {ACTUADOR ATASCAMIENTO             }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=3054; .Name= 'ZT.VALOB'; wr  {ACTUADOR OBSTRUCCION               }

{.ElemType=3086; (comming/going = ACTIVO/DESACTIV   AlrmList 108)      }
.Elem=3055; .Name= 'ZT.VIGIL'; wr  {ESTADO CONTROL VIGILANCIA          }

{.ElemType=3105; (comming/going = PREFALLO/NORMAL   AlrmList 108)      }
.Elem=3056; .Name= 'ZT.WARNG'; wr  {ACTUADOR ADVERTENCIA               }

{.ElemType=3087; (comming/going = ALARMA/NORMAL     AlrmList 108)      }
.Elem=3057; .Name= 'ZT.WATCD'; wr  {ACTUADOR WATCHDOG RECOVERY         }



.Elem=3058; .Name= 'ACR.ALM '; wr  {CLORO FUERA RANGO                  }
.Elem=3059; .Name= 'AT.ALM  '; wr  {TURBIEDAD FUERA RANGO              }
.Elem=3060; .Name= 'BAT.ATC '; wr  {BATERIA ALTA TEMPERATURA CARGADOR  }
.Elem=3061; .Name= 'BAT.CAB '; wr  {CONTROLADOR BATERIA ABSORBIENDO    }
.Elem=3062; .Name= 'BAT.CAL '; wr  {CONTROLADOR BATERIA ALMACENANDO R  }
.Elem=3063; .Name= 'BAT.CBN '; wr  {BATERIA VOLTAJE CABLEADO NEGATIVO  }
.Elem=3064; .Name= 'BAT.CBP '; wr  {BATERIA VOLTAJE CABLEADO POSITIVO  }
.Elem=3065; .Name= 'BAT.CC  '; wr  {CONTROLADOR BATERIA CARGANDO       }
.Elem=3066; .Name= 'BAT.CE  '; wr  {CONTROLADOR BATERIA ESTADO         }
.Elem=3067; .Name= 'BAT.CEQ '; wr  {CONTROLADOR BATERIA ECUALIZANDO    }
.Elem=3068; .Name= 'BAT.CFL '; wr  {CONTROLADOR BATERIA FLOTANTE       }
.Elem=3069; .Name= 'BAT.CRG '; wr  {BATERIA CARGANDO                   }
.Elem=3070; .Name= 'BAT.LTBU'; wr  {BATERIA LIMITE TIEMPO BULK         }
.Elem=3071; .Name= 'BAT.MOD '; wr  {BATERIA MODO                       }
.Elem=3072; .Name= 'BAT.PCCI'; wr  {BATERIA POLARIDAD CORRIENTE CARGADOR INV}
.Elem=3073; .Name= 'BAT.PLCF'; wr  {BATERIA PLC                        }
.Elem=3074; .Name= 'BAT.PVL '; wr  {BATERIA PERDIDA VOLTAJE            }
.Elem=3075; .Name= 'BAT.SC  '; wr  {BATERIA SOBRECORRIENTE             }
.Elem=3076; .Name= 'BAT.SCC '; wr  {BATERIA SOBRECORRIENTE CARGADOR    }
.Elem=3077; .Name= 'BAT.STEN'; wr  {CARGADOR BATERIAS SOBRE TENSION    }
.Elem=3078; .Name= 'BAT.TCD '; wr  {BATERIA TEMPERATURA DESCONECTADO   }
.Elem=3079; .Name= 'BAT.TCDF'; wr  {BATERIA TEMPERATURA CARGADOR DESCONEC}
.Elem=3080; .Name= 'BAT.TCN '; wr  {BATERIA TEMPERATURA CABLEADA-      }
.Elem=3081; .Name= 'BAT.TCP '; wr  {BATERIA TEMPERATURA CABLEADA+      }
.Elem=3082; .Name= 'BAT.VL  '; wr  {BATERIA VOLTAJE ALTA               }
.Elem=3083; .Name= 'BAT.VLD '; wr  {BATERIA VOLTAJE DESCONEXION        }
.Elem=3084; .Name= 'BL.COM  '; wr  {COMUNICACIONES BLOQUEADA           }
.Elem=3085; .Name= 'BLQ.APA '; wr  {BLOQUEO ARRANQUE POR ARRANQUE      }
.Elem=3086; .Name= 'BLQ.APP '; wr  {BLOQUEO ARRANQUE POR PARO          }
.Elem=3087; .Name= 'BRK.120B'; wr  {BRK 120 VAC CARGADOR BATERIA       }
.Elem=3088; .Name= 'BRK.FW  '; wr  {BRK ROUTER Y FIREWALL              }
.Elem=3089; .Name= 'BRK.FWE '; wr  {ROUTER Y FIREWALL ESTADO           }
.Elem=3090; .Name= 'BRK.GPS '; wr  {BRK GPS                            }
.Elem=3091; .Name= 'BRK.GPSE'; wr  {GPS ESTADO                         }
.Elem=3092; .Name= 'BRK.PAC '; wr  {BRK ALIMENTACION POTENCIA ACTUADOR }
.Elem=3093; .Name= 'BRK.PRFC'; wr  {BRK ALIMENT CONVERTIDOR PROFIBUS DP/PA}
.Elem=3094; .Name= 'BRK.PRFS'; wr  {BRK ALIMENT MODULO PROFIBUS SEGMENTO}
.Elem=3095; .Name= 'BRK.SCF '; wr  {BRK SECUNDARIO                     }
.Elem=3096; .Name= 'BRK.TP  '; wr  {BRK ALIMENTACION TABLERO POTENCIA  }
.Elem=3097; .Name= 'BT.INVA '; wr  {BATERIA INVERSOR ALTO              }
.Elem=3098; .Name= 'BT.INVB '; wr  {BETERIA INVERSOR BAJO              }
.Elem=3099; .Name= 'BUS.COM '; wr  {ERROR COMUNICACION OPCIONAL BUS    }
.Elem=3100; .Name= 'CC.CE   '; wr  {CONTROLADOR ESTADO                 }
.Elem=3101; .Name= 'CC.CEF  '; wr  {CONTROLADOR ESTADO                 }
.Elem=3102; .Name= 'CMP.AC  '; wr  {COMPRESOR ESTADO                   }
.Elem=3103; .Name= 'CMP.ALM '; wr  {COMPRESOR ESTADO                   }
.Elem=3104; .Name= 'CN.ALM  '; wr  {CONDUCTIVIDAD FUERA RANGO          }
.Elem=3105; .Name= 'CT.ALM  '; wr  {COLOR FUERA RANGO                  }
.Elem=3106; .Name= 'CTR.MSAL'; wr  {CONTACTO MULTIFUNCIONAL SALIDA     }
.Elem=3107; .Name= 'CUBA.VAC'; wr  {CUBA ESTADO                        }
.Elem=3108; .Name= 'DESEJE  '; wr  {DESPLAZAMIENTO DEL EJE             }
.Elem=3109; .Name= 'DPS.COM '; wr  {DPS COMUNICACION                   }
.Elem=3110; .Name= 'DPS.D   '; wr  {DPS ALIMENTACION                   }
.Elem=3111; .Name= 'DPS.ES  '; wr  {DPS ESTADO                         }
.Elem=3112; .Name= 'DPS.F   '; wr  {DPS ALIMENTACION                   }
.Elem=3113; .Name= 'DPS.PR  '; wr  {DPS PROTECCION                     }
.Elem=3114; .Name= 'DTV.S   '; wr  {SENSOR TURBERIA VACIA              }
.Elem=3115; .Name= 'EQ.DAUX1'; wr  {EQUIPO AUXILIAR 1                  }
.Elem=3116; .Name= 'EQ.DAUX2'; wr  {EQUIPO AUXILIAR 2                  }
.Elem=3117; .Name= 'EQ.DIS  '; wr  {EQUIPO DISPONIBLE                  }
.Elem=3118; .Name= 'EQ.P    '; wr  {EQUIPO PARADO                      }
.Elem=3119; .Name= 'EQ.PR   '; wr  {EQUIPO PRIMARIO AUTO               }
.Elem=3120; .Name= 'EQ.SC   '; wr  {EQUIPO SECUNDARIO AUTO             }
.Elem=3121; .Name= 'EQ.SEL  '; wr  {EQUIPO SELECCIONADO                }
.Elem=3122; .Name= 'EQ.TX   '; wr  {EQUIPO MODO TEXT                   }
.Elem=3123; .Name= 'ERR.EEPR'; wr  {ERROR ESCRITURA EEPROM             }
.Elem=3124; .Name= 'ETH.CAB '; wr  {CABLE ETHERNET DESCONECTADO        }
.Elem=3125; .Name= 'ETH.IF  '; wr  {EXTRACTOR INTERRUPTOR              }
.Elem=3126; .Name= 'FREQ.F  '; wr  {FRECUENCIA FALLA                   }
.Elem=3127; .Name= 'FREQ.LM '; wr  {FRECUENCIA ENTRE LIMITES           }
.Elem=3128; .Name= 'FREQ.MN '; wr  {FRECUENCIA MINIMA                  }
.Elem=3129; .Name= 'FREQ.MNN'; wr  {FRECUENCIA POR DEBAJO MINIMA       }
.Elem=3130; .Name= 'FREQ.MX '; wr  {FRECUENCIA MAXIMA                  }
.Elem=3131; .Name= 'FREQ.MXX'; wr  {FRECUENCIA POR ENCIMA MAXIMA       }
.Elem=3132; .Name= 'FS.PFE  '; wr  {PERDIDA FASE ENTRADA               }
.Elem=3133; .Name= 'FS.PFS  '; wr  {PERDIDA FASE SALIDA                }
.Elem=3134; .Name= 'FT.P    '; wr  {PARO POR CAUDAL                    }
.Elem=3135; .Name= 'FU.FUPF '; wr  {FUSIBLE FUPACT                     }
.Elem=3136; .Name= 'FU.QM   '; wr  {FUSIBLE QUEMADO                    }
.Elem=3137; .Name= 'G.CCL   '; wr  {CIRCUITO DE CARGA LENTA            }
.Elem=3138; .Name= 'G.SCFAD '; wr  {SOBRECARGA POR FRENO DE ALTO DESLIZAMIEN}
.Elem=3139; .Name= 'GAP     '; wr  {ARRANQUE O PARO EQUIPO             }
.Elem=3140; .Name= 'GBVLC   '; wr  {BAJO VOLTAJE DE CONTROL            }
.Elem=3141; .Name= 'GROFF   '; wr  {ROTACION FASE                      }
.Elem=3142; .Name= 'INT.ACTR'; wr  {INTERRUPTOR CONTROL                }
.Elem=3143; .Name= 'INT.BTA '; wr  {INTERRUPTOR BAJA TENSION           }
.Elem=3144; .Name= 'INT.BTC '; wr  {INTERRUPTOR BAJA TENSION           }
.Elem=3145; .Name= 'INT.BTD '; wr  {INTERRUPTOR BAJA TENSION           }
.Elem=3146; .Name= 'INT.MTA '; wr  {INTERRUPTOR MEDIA TENSION          }
.Elem=3147; .Name= 'INT.MTC '; wr  {INTERRUPTOR MEDIA TENSION          }
.Elem=3148; .Name= 'INT.MTD '; wr  {INTERRUPTOR MEDIA TENSION          }
.Elem=3149; .Name= 'INT.NDIS'; wr  {INTERRUPTOR NO DISPONIBLE          }
.Elem=3150; .Name= 'INT.POT '; wr  {INTERRUPTOR DE POTENCIA            }
.Elem=3151; .Name= 'INT.POTE'; wr  {INTERRUPTOR DE POTENCIA ESTADO     }

.Elem=3154; .Name= 'INT.POTF'; wr  {INTERRUPTOR DE POTENCIA ESTADO     }
.Elem=3155; .Name= 'INT.PPEA'; wr  {INTERRUPTOR PRINCIPAL ESTADO       }
.Elem=3156; .Name= 'INT.SCG '; wr  {INTERRUPTOR SOBRECARGA             }
.Elem=3157; .Name= 'INV.MECO'; wr  {MODO EDO INVERSOR                  }
.Elem=3158; .Name= 'LN.LM   '; wr  {LINEA ENTRE LIMITES                }
.Elem=3159; .Name= 'LT.BNSA '; wr  {BAJO NIVEL SUCCION                 }
.Elem=3160; .Name= 'LT.BNSD '; wr  {BAJO NIVEL SUCCION                 }
.Elem=3161; .Name= 'LT.SA   '; wr  {NIVEL ALTO                         }
.Elem=3162; .Name= 'M.MAN   '; wr  {MODO OPERACION                     }
.Elem=3163; .Name= 'MOT.VEF '; wr  {MOTOR VENTILADOR EXTRACTOR         }
.Elem=3164; .Name= 'MOT.SC  '; wr  {MOTOR SOBRECARGA                   }
.Elem=3165; .Name= 'PD.CG   '; wr  {PLANTA CON CARGA                   }
.Elem=3166; .Name= 'PD.EM   '; wr  {EMERGENCIA MANUAL                  }
.Elem=3167; .Name= 'PR.LN   '; wr  {PARAMETROS EN LINEA                }
.Elem=3168; .Name= 'PR.SBT  '; wr  {PROTECCION SOBRETENSION OVR GENERAL}
.Elem=3169; .Name= 'PREF.CI '; wr  {PREFERENCIAL CIRCUITO              }
.Elem=3170; .Name= 'PRES.E  '; wr  {PRESOSTATO ESTADO                  }
.Elem=3171; .Name= 'PRES.EA '; wr  {PRESOSTATO ESTADO                  }
.Elem=3172; .Name= 'PT.APIA '; wr  {ALTA PRESION IMPULSION             }
.Elem=3173; .Name= 'PT.AUSHU'; wr  {AUSENCIA PRESION SHUT-OFF          }
.Elem=3174; .Name= 'PT.BPIA '; wr  {BAJA PRESION IMPULSION             }
.Elem=3175; .Name= 'PT.BPSA '; wr  {BAJA PRESION SUCCION               }
.Elem=3176; .Name= 'PT.DIF  '; wr  {PRESION DIFERENCIAL                }
.Elem=3177; .Name= 'PT.PPI  '; wr  {PARO POR IMPULSION                 }
.Elem=3178; .Name= 'PT.SHUFA'; wr  {PRESION SHUT-OFF                   }
.Elem=3179; .Name= 'RAD.COM '; wr  {COMUNICACION RADIO                 }
.Elem=3180; .Name= 'REFR.E  '; wr  {REFRIGERACION ESTADO               }
.Elem=3181; .Name= 'RL.PRF  '; wr  {RELE PROTECCION                    }
.Elem=3182; .Name= 'SC.MOT  '; wr  {SOBRECALENTAMIENTO MOTOR           }
.Elem=3183; .Name= 'SCEF    '; wr  {SOBRECORRIENTE ENTRE FASES         }
.Elem=3184; .Name= 'SCUBA   '; wr  {SOLENOIDE CUVA                     }
.Elem=3185; .Name= 'SEC.33AB'; wr  {SECCIONADOR 33 kV ABIERTO          }
.Elem=3186; .Name= 'SEC.33CE'; wr  {SECCIONADOR 33 kV CERRADO          }
.Elem=3187; .Name= 'SEC.44AB'; wr  {SECCIONADOR 44 kV ABIERTO          }
.Elem=3188; .Name= 'SEC.44CE'; wr  {SECCIONADOR 44 kV CERRADO          }
.Elem=3189; .Name= 'SEC.FEQ '; wr  {SECUENCIA FASE EQUIVOCADA          }
.Elem=3190; .Name= 'SEL.123 '; wr  {SELECTOR OPERACION G1-G2-G3        }
.Elem=3191; .Name= 'SEL.231 '; wr  {SELECTOR OPERACION G2-G3-G1        }
.Elem=3192; .Name= 'SEL.312 '; wr  {SELECTOR OPERACION G3-G1-G2        }
.Elem=3193; .Name= 'SEL.CIA '; wr  {SELECTOR CIRCUITO                  }
.Elem=3194; .Name= 'SFT.COM '; wr  {COMUNICACION SISTEMA FOTOVOLTAICO  }
.Elem=3195; .Name= 'SLL.MA  '; wr  {SELLO DE MANTENIMIENTO APLICADO    }
.Elem=3196; .Name= 'SLL.OA  '; wr  {SELLO DE OPERACION APLICADO        }
.Elem=3197; .Name= 'SMOT.AF '; wr  {ACTIVACION RELE POR SERVOMOTOR (SVE)}
.Elem=3198; .Name= 'SMOT.COM'; wr  {COMUNICACION TARJETA RELE SERVOMOTOR (PGO)}
.Elem=3199; .Name= 'T.AAI   '; wr  {TEMPERATURA AGUA IMPULSION         }

{ ELEMS 3200..3385 used in mv_elname }
{ ELEMS 3386..3399 not yet used }
{ ELEMS 3400..3799 used in mv_elname, ELEM 3730 not yet used }

{ *********************************************************************}
{ **           EPM Water double pole commands 3800..3832             **}
{ *********************************************************************}

.NoElTyp= neSwitch;
.ElemType=0;          {not used becaue check only at IMM job execution }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3800; .Name= 'CSB     '; wr  {CONEXION SELENOIDE            }

                                   {.ElemType=3138 (AUTOMATI/MANUAL)}
.Elem=3801; .Name= 'M.ACR   '; wr  {MODO CLORADOR                 }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3802; .Name= 'RESET   '; wr  {RESET                         }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3803; .Name= 'RESET.A '; wr  {ALARMAS                       }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3804; .Name= 'RESET.CF'; wr  {CONTADOR FUNCIONAMIENTO       }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3805; .Name= 'RESET.P '; wr  {PROTECCIONES                  }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3806; .Name= 'RESET.PL'; wr  {PLC                           }

                                   {.ElemType=3136 (ACTIVO/NO OPERA)}
.Elem=3807; .Name= 'SEC     '; wr  {SECUENCIAS                    }

                                   {.ElemType=3141 (HABILITAR/DESACTIV)}
.Elem=3808; .Name= 'SIM     '; wr  {HABILITAR AUTOMATISMO         }

                                   {.ElemType=3136 (ACTIVO/NO OPERA)}
.Elem=3809; .Name= 'START   '; wr  {ARRANQUE                      }

                                   {.ElemType=3136 (ACTIVO/NO OPERA)}
.Elem=3810; .Name= 'STOP    '; wr  {PARO                          }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3811; .Name= 'ZACL    '; wr  {ACTIVA MODO CONTROL           }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3812; .Name= 'ZBL     '; wr  {BLOQUEO GRUPO                 }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3813; .Name= 'ZDBL    '; wr  {DESBLOQUEO GRUPO              }

                                   {.ElemType=3139 (DESACT/NORMAL)}
.Elem=3814; .Name= 'ZDCL    '; wr  {DESACTIVA MODO CONTROL        }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3815; .Name= 'ZEM     '; wr  {PARO EMERGENCIA               }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3816; .Name= 'ZLLTA   '; wr  {TUBERIA ARRANQUE LLENADO      }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3817; .Name= 'ZLLTC   '; wr  {TUBERIA PARO LLENADO          }

                                   {.ElemType=3139 (DESACT/NORMAL)}
.Elem=3818; .Name= 'ZLLTD   '; wr  {DESACTIVO MODO LLENADO        }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3819; .Name= 'ZRA     '; wr  {RECONOCIMIENTO DE ALARMAS     }

                                   {.ElemType=3141 (HABILITAR/DESACTIV)}
.Elem=3820; .Name= 'ZRC     '; wr  {HABILITAR COMUNICACIONES PLC  }

                                   {.ElemType=3143 (SILENCIAR/DESACTIV)}
.Elem=3821; .Name= 'ZRS     '; wr  {SONIDO CORNETA                }

                                   {.ElemType=3137 (APERTURA/CIERRE)}
.Elem=3822; .Name= 'ZS      '; wr  {ACTUADOR POSICION             }

                                   {.ElemType=3136 (ACTIVO/NO OPERA)}
.Elem=3823; .Name= 'ZSA     '; wr  {APERTURA                      }

                                   {.ElemType=3136 (ACTIVO/NO OPERA)}
.Elem=3824; .Name= 'ZSA.PRE '; wr  {PREPARAR APERTURA COMPUERTA   }

                                   {.ElemType=3136 (ACTIVO/NO OPERA)}
.Elem=3825; .Name= 'ZSC     '; wr  {CIERRE                        }

                                   {.ElemType=3136 (ACTIVO/NO OPERA)}
.Elem=3826; .Name= 'ZSC.PRE '; wr  {PREPARAR APERTURA COMPUERTA   }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3827; .Name= 'ZSE     '; wr  {SELECTOR REMOTO               }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3828; .Name= 'ZSEN    '; wr  {QUITAR ENERGIA CW             }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3829; .Name= 'ZSF     '; wr  {PURGA FILTRO ERP              }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3830; .Name= 'ZT.RESET'; wr  {ACTUADOR RESET                }

                                   {.ElemType=3140 (ESTAC1/ESTAC2)}
.Elem=3831; .Name= 'ZT.SELE '; wr  {ACTUADOR SELECTOR EQUIPO      }

                                   {.ElemType=3142 (MANUAL/PERFIL)}
.Elem=3832; .Name= 'ZT.SELM '; wr  {ACTUADOR SELECTOR MODO        }

                                   {.ElemType=3135 (ACTIVO/DESACTIV)}
.Elem=3833; .Name= 'RESET.B '; wr  {BOMBEO                        }


{ *********************************************************************}
{ **           EPM Water calculated elements 3850...                 **}
{ *********************************************************************}

                                   {.ElemType=3150                  }
.Elem=3850; .Name= 'MedBiENT'; wr  {Indicator medidor dir entrada }

                                   {.ElemType=3150                  }
.Elem=3851; .Name= 'MedBiDIS'; wr  {Indicator medidor dir distrib }

                                   {.ElemType=3151                  }
.Elem=3852; .Name= 'ValvSP  '; wr  {Estado valvula con consigna 5%}

                                   {.ElemType=3152                  }
.Elem=3853; .Name= 'ValvOnOf'; wr  {Estado valvula con 2 commandos}

                                   {.ElemType=3153                  }
.Elem=3854; .Name= 'ValvViNG'; wr  {Virtual valve for netgroup col}

                                   {.ElemType=3151                  }
.Elem=3855; .Name= 'ValvSP1 '; wr  {Estado valvula con consigna 1%}

                                   {.ElemType=3151                  }
.Elem=3856; .Name= 'ValvSP2 '; wr  {Estado valvula con consigna 2%}

                                   {.ElemType=3151                  }
.Elem=3857; .Name= 'ValvSP3 '; wr  {Estado valvula con consigna 3%}

                                   {.ElemType=3151                  }
.Elem=3858; .Name= 'ValvSP4 '; wr  {Estado valvula con consigna 4%}


{ *********************************************************************}
{ **           EPM Gas   calculated elements 3870...                 **}
{ *********************************************************************}

                                   {.ElemType=3014                  }
.Elem=3870; .Name= 'ValvCOMP'; wr  {Estado valvula compressora    }


{ *********************************************************************}
{ **           EPM Gas   further GAS elements   3960+                **}
{ *********************************************************************}

.NoElTyp= neAlarm4;
.ElemType=0;

.Elem=3960; .Name= 'EnPuMeAu'; wr  {ENTRADA PULSOS MEDIDOR AUXILIAR     }




.NoElTyp= neAlarm4;
.ElemType=0;
                                   {                 single pole cmd }
.Elem=3961; .Name:= 'OnResist'; wr { RESISTENCIA                     }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3962; .Name:= 'HabResis'; wr { HABILITACION RESISTENCIA        }
                                   { Softkey: Habilitar/Deshabilitar }

                                   {                 single pole cmd }
.Elem=3963; .Name:= 'OffCalen'; wr { CALENTAMIENTO                   }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3964; .Name:= 'OffCalQ0'; wr { CALENTAMIENTO FLUJO CERO        }
                                   { Softkey: Encender/Apagar        }

.Elem=3965; .Name:= 'ResiCat '; wr { RESISTENCIA PANEL CATALITICO    }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3968; .Name:= 'HabCicl '; wr { HABILITACION CICLO              }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3969; .Name:= 'SisCal  '; wr { CONTROL SISTEMA CALENTAMIENTO   }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3970; .Name:= 'HabFraH '; wr { HABILITACION FRANJA HORARIO     }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3971; .Name:= 'RecoOdo '; wr { RECONOCIMIENTO ALARMA ODORANTE  }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3972; .Name:= 'SelModV '; wr { COMANDO SELECCION MODULO        }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3973; .Name:= 'HabExcQ '; wr { HABILITACION EXCESO FLUJO       }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3974; .Name:= 'ComCerAc'; wr { COMANDO CERRADO ACTUADORES      }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3975; .Name:= 'HabROD  '; wr { HABILITAR TASA CAIDA PRESION    }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3976; .Name:= 'HabSeVe '; wr { HABILITACION SENSOR DE VENTEO   }
                                   { Softkey: Encender/Apagar        }

                                   {                 single pole cmd }
.Elem=3977; .Name:= 'AParoEme'; wr { ACTIVACION PARO EMERGENCIA      }
                                   { Softkey: Encender/Apagar        }

{ Used by EPM }
.NoElTyp= neMessage5;
.ElemType=0;                      {top-spec transferred element 5000 a 5055  }
.Elem=4100;  .Name= 'PG1_01  '; wr {Disparo 21G-Z1                      }
.Elem=4101;  .Name= 'PG1_02  '; wr {Disparo 21G-Z2                      }
.Elem=4102;  .Name= 'PG1_03  '; wr {Disparo 24-E2                       }
.Elem=4103;  .Name= 'PG1_04  '; wr {Disparo 27-E2                       }
.Elem=4104;  .Name= 'PG1_05  '; wr {Disparo 27-3ARM                     }
.Elem=4105;  .Name= 'PG1_06  '; wr {Disparo 32R-E2                      }
.Elem=4106;  .Name= 'PG1_07  '; wr {Disparo 40-E1                       }
.Elem=4107;  .Name= 'PG1_08  '; wr {Disparo 40-E2                       }
.Elem=4108;  .Name= 'PG1_09  '; wr {Disparo 40-E3                       }
.Elem=4109;  .Name= 'PG1_10  '; wr {Disparo 46                          }
.Elem=4110;  .Name= 'PG1_11  '; wr {Disparo 49                          }
.Elem=4111;  .Name= 'PG1_12  '; wr {Disparo 50/27                       }
.Elem=4112;  .Name= 'PG1_13  '; wr {Disparo 59-E2                       }
.Elem=4113;  .Name= 'PG1_14  '; wr {Disparo 59GN -90%                   }
.Elem=4114;  .Name= 'PG1_15  '; wr {Disparo 64F                         }
.Elem=4115;  .Name= 'PG1_16  '; wr {Disparo 54G -100%                   }
.Elem=4116;  .Name= 'PG1_17  '; wr {Disparo 78-E1                       }
.Elem=4117;  .Name= 'PG1_18  '; wr {Disparo 78-E2                       }
.Elem=4118;  .Name= 'PG1_19  '; wr {Disparo 81-E1                       }
.Elem=4119;  .Name= 'PG1_20  '; wr {Disparo 81-E2                       }
.Elem=4120;  .Name= 'PG1_21  '; wr {Disparo 81-E1                       }
.Elem=4121;  .Name= 'PG1_22  '; wr {Disparo 81-E2                       }
.Elem=4122;  .Name= 'PG1_23  '; wr {Disparo 87G - -E1                   }
.Elem=4123;  .Name= 'PG1_24  '; wr {Disparo 87G - -E2                   }
.Elem=4124;  .Name= 'PG1_25  '; wr {87E1 Operado                        }
.Elem=4125;  .Name= 'PG1_26  '; wr {94P1_1 Operado                      }
.Elem=4126;  .Name= 'PG1_27  '; wr {87E2 Operado                        }
.Elem=4127;  .Name= 'PG1_28  '; wr {94P1_2 Operado                      }
.Elem=4128;  .Name= 'PG2_01  '; wr {Disparo 21G-Z1                      }
.Elem=4129;  .Name= 'PG2_02  '; wr {Disparo 21G-Z2                      }
.Elem=4130;  .Name= 'PG2_03  '; wr {Disparo 24-E2                       }
.Elem=4131;  .Name= 'PG2_04  '; wr {Disparo 27-E2                       }
.Elem=4132;  .Name= 'PG2_05  '; wr {Disparo 27-3ARM                     }
.Elem=4133;  .Name= 'PG2_06  '; wr {Disparo 32R-E2                      }
.Elem=4134;  .Name= 'PG2_07  '; wr {Disparo 40-E1                       }
.Elem=4135;  .Name= 'PG2_08  '; wr {Disparo 40-E2                       }
.Elem=4136;  .Name= 'PG2_09  '; wr {Disparo 40-E3                       }
.Elem=4137;  .Name= 'PG2_10  '; wr {Disparo 46                          }
.Elem=4138;  .Name= 'PG2_11  '; wr {Disparo 49                          }
.Elem=4139;  .Name= 'PG2_12  '; wr {Disparo 50/27                       }
.Elem=4140;  .Name= 'PG2_13  '; wr {Disparo 59-E2                       }
.Elem=4141;  .Name= 'PG2_14  '; wr {Disparo 59GN -90%                   }
.Elem=4142;  .Name= 'PG2_15  '; wr {Disparo 64F                         }
.Elem=4143;  .Name= 'PG2_16  '; wr {Disparo 54G -100%                   }
.Elem=4144;  .Name= 'PG2_17  '; wr {Disparo 78-E1                       }
.Elem=4145;  .Name= 'PG2_18  '; wr {Disparo 78-E2                       }
.Elem=4146;  .Name= 'PG2_19  '; wr {Disparo 81-E1                       }
.Elem=4147;  .Name= 'PG2_20  '; wr {Disparo 81-E2                       }
.Elem=4148;  .Name= 'PG2_21  '; wr {Disparo 81-E1                       }
.Elem=4149;  .Name= 'PG2_22  '; wr {Disparo 81-E2                       }
.Elem=4150;  .Name= 'PG2_23  '; wr {Disparo 87G - -E1                   }
.Elem=4151;  .Name= 'PG2_24  '; wr {Disparo 87G - -E2                   }
.Elem=4152;  .Name= 'PG2_25  '; wr {87E1 Operado                        }
.Elem=4153;  .Name= 'PG2_26  '; wr {94P1_1 Operado                      }
.Elem=4154;  .Name= 'PG2_27  '; wr {87E2 Operado                        }
.Elem=4155;  .Name= 'PG2_28  '; wr {94P1_2 Operado                      }

closedb
$EOJ
