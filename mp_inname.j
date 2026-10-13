#!/bin/csh
#                                 SPECTRUM: CSH
# Copyright (C) Siemens AG 1992-2017 All Rights Reserved.Confidential
# fillbq jobfile  mp_inname.j
#
# $NewRev$
# 220909 krue: neEnhSyStat add Pos 22..27 for GoldenGate messages
# 210423 palc sp7-scada_v02.20_df_ems00138403_external_digi_part2_vie
# 200810 ggraves: sp7-ifs_v02.20_df_ems00132145_dnp_iin_local_ctl_msp
# 191014 kopp sp7-scada_v02.20_df_ems00122751_omscheck_vie
# 210915 krue: neMESSAGE5 info 19 RemoOper shifdted to position 1
# 210826 krue: neMESSAGE5 add info 19 RemoOper
# 191014 kopp sp7-scada_v02.20_df_ems00122751_omscheck_vie
# 201005 krue: neMESSAGE5 infos 17,18 inserted for tSPME types
# 200428 krue: neAlarm4 info 18 deleted
# 190715 krue: neSwitch infos 138..147 deleted
# 190627 krue: neAlarm4 new infos for GAS and WATER
# 190219 ggraves sp7-ifs_v02.20_df_ems00112075_tcp_chk_msp Pick up EMS00112075
# 190117 mkhadem  sp7-ifs_v02.10_df_ems00112075_secure-mode_msp
# 190603 bark: neAlarm5 new infos for program indication TNA Alarms
# 190527 krue: neSWITCH info 138 StatusV
# 190121 tens: WATER final changes
# 180725 tens: EPM: Gas-and Water-messages
# 180524 mani sp7-scada_v02.20_df_ems00102585_dm_est_tappos_vie
# 171003 poek: sp7-base_v02.20_df_ems00085705_orasid_disp_vie
# 170523 palc sp7-scada_v02.20_fu_ems00086941_extern_quality_vie
# 170519 jtrites sp7-base_v02.20_df_ems00088510_msp Pick up EMS00086399
# 170421 jtrites sp7-base_v02.10_df_ems00086399_msp
#             Add secure DNP certificate expiration
# 170519 jtrites sp7-base_v02.20_df_ems00088507_msp Pick up EMS00085931
# 170420 jtrites: sp7-base_v02.10_df_ems00085931_msp
#               Monitor printer status
# 08/10/2016 tlee: sp7-iccp_v02.10_fu_ems00077880_iccp_relation_changes_msp.
# 08/09/2016 tlee: sp7-iccp_v02.10_fu_ems00077684_iccp_block4_msp.
# 160722 avafaei sp7-ifs_v02.10_fu_ems00072260_scan_group_relation_msp Pick up EMS00072260
# 160721 avafaei:sp7-ifs_v02.00_fu_ems00072260_scan_group_relation_msp
#               Added IFS_TIMEOUT alarm parameterization.
# 160616 fisg sp7-ccn_v02.00_df_ems00074149_cc_link_up_vie: changed
#   info name "CcCoFail" to "CcLink";
# 160428 hisc sp7-scada_v02.00_fu_ems00070654_spm_help_vie:
#              infos on neUNIVERS for time trig jobs
# 160419 ggraves: sp7-ifs_v02.00_fu_ems00068994_c2020_2_msp
# 160428 xiao sp7-scada_v02.00_fu_ems00071054_man_replace_vie: mpRcvSts
#             Infos for RTU Value backup
# 160425 ekiffmey: sp7-any_v02.00_fu_ems00072060_msp
#                  Additional secmon infos to neCompStat
#                  Corrections for dskmon in neDEVICE
# 160412 hisc sp7-scada_v02.00_fu_ems00067459_swit_active_flag_vie:
#           neTapchan, neSwitch: new infos for switching action monit.
# 160318 Venkat:sp7-any_v02.00_fu_ems00069358_snmp_rel_blr:
#               Added new snmp infos(15-21) for neEnhSyStat
# 160412 sts: sp7-ifs_v02.00_fu_ems00072854_nbg2 IFS renewal alarm
# 160114 mure sp7-scada_v02.00_fu_ems00067449_alarm_inh_part2_vie
#        added  AlrmIhEl for neNcReports
# 151124 mure sp7-scada_v02.00_fu_ems00067449_alarm_inh_vie
#        added  Alarm Inhibit tag
# 150807 CReimann: sp7-immgtw_v01.30_df_ems00064524_agc_xfr_msp
#      New elements, types and infos from MGMS ems00054331, some for AGC.
# 150722 Mayh sp7-scada_v01.30_df_ems00063916_gong_sp4_features_vie
#   neDEVICE: add gong message infos
# 150706 Vikas :sp7-base_v01.30_fu_ems00060169_alarm_ta_blr
#                TA for oracle redundancy monitoring
# 150513 tlee: sp7-ifs_v01.30_fu_ems00062064_dnp30_error_codes_msp.
# 150317 wolpe: sp7-scada_v01.30_fu_ems00060139_vie
#        add infos 45..48 to neTopElem
# 141219 ggraves sp7-ifs_v01.20_df_ems00058280_gi_sg_msp
#              add info 81 to noeltyp=neElcStat
# 141208 dlundber:spc-iccp_v01.00_df_ems00040093_iccp_pseudo_msp
# 121021 schg: sp7-data_v01.00_fu_ems735_tm-scada-param_vie
#              change special characters for IMM and xml
# 120926 mdehnnix sp7-any_v01.00_fu_ems00001028_msp: Add load shed
# 120118 mure bof-scada-ems569_TAC: neSWITCH infos 19 (TripOnly) -22 new
# 120416 schg: sp7-data_v01.00_fu_ems735_tm-scada-param_vie  adapt types
#              neAlarm2 used for fault indicator / direction (CDNA)
# 120531 Team bof-any_v01.01_df_ems1260_base_120512: upmerge P470 (BOFBASE-120512)
# 111220 mure bf-42439_oox3: neSWITCH infos 20-22 oox -> res20-22
# 120214 palc bof-any_v01.00_fu_ems785_LoginMessage_vie: added info 18
#             for neDevice: login failed message in general summary
# 120307 aturke bof-any_v01.00_fu_ems271_secmon_msp
# 120102 tens: BestOf disk monitor support
# 110728 palc : bof-SCADA-RDS : added RDS infos
# 111216 tens: BestOf ems271 CyberSecurity support
# 110831 Team bof-cfe_v01.00_fu_ems56_rtds_exts_msp
# 110805 tens: BestOf ems007 Power 3 web server
# 110413 wein Bof-mph ems178 changes in neTOPELEM and neSWITCHES
# 110303 Klein: bf-sh_his : add info 14 to EnhSyStat for HIS
# 110302 SRo: added info 33-66 for neElcStat (IFS)
# 100921 koge feat-SR47_pe102_RM_Marker: new infos in
#             neUNIVERS       RM Mark    (49)
#             neSWITCH        RM Mark    (54)
#             neMESSAGE1      RM Mark    (27)
#             neMESSAGE2      RM Mark    (17)
#             neMESSAGE3      RM Mark    ( 8)
#             neMESSAGE4      RM Mark    ( 7)
#             neMESSAGE5      RM Mark    (16)
# 080908 jomo bf-DMS_40472 : added Feederhead info 53
# 080409 gief/mure baps_38064_digi_inval: digit invalid-marker inserted
# 071122 hagl: feat-base_CR1_UserMax32000: NoElTyp neDEVICE Info 34 - 64
#              deleted
# 070904 Christa: feat-oa_4722_truck_location: info 5,6 neMessage4
# 070904 Christa: feat-oa_4722_truck_location: info 1..4 neMessage4
# 060904 sche bf-baps_37020_45_1: neCcStatus: Name for info 4 corrected.
# 060901 sche bf-baps_37020_45: neCcStatus: Names for infos 2 and 4 corrected.
# 060523 kimi: bf-NcCheck_LTC_VVC_45 (neswitch info 51, netapchan info 38
# 060703 haim spr-35142: New infos in neTOPELEM for fault location from
#                        trouble call
# 050728 sche spr-34441: neCcStatus adapted.
# 050303 hagl: feat-SR45_09_32593_disp: Info 1,2 and 3 added for neTeArea
# 040122 hara: SPR-31139: EnhSyStat: info=13; .Name= 'DiskRed '
#              inserted    was missing
# 040115 frit feat-xps_toolbar : neSwitch, Info 50 added for ANOPExcl
# 030715 haim: SPR-29897: user specific TeAr and MeCl
#              user names managed in relation PASSWORD
# 020605 fahrig: add NoElTyp neModemGrp Info 1..84
# 020523 grohmann: new info 52 in neTcStatus (status RTU_Free)
# 020304 grohmann: update TCI status informations for IBERDROLA
# 020114 sche spr-26816: Names for neCcStatus and neNcReports added.
# 011016 Neidhardt: changed to Info 128 (SysMsgGI, TG800) and Info 129 (SysMsgQU, TG800)
# 010920 Neidhardt: changed to Info 127 (SysMsgGI, TG800) and Info 128 (SysMsgQU, TG800)
# 010920 Neidhardt: new Info 122 (SysMsgGI, TG800) and Info 123 (SysMsgQU, TG800)
# 010905 grohmann:  SPR26184 - update TCI status elements
# 010824 Klein: add Trace,TraceAck for DMS,neSwitch
# 010528 hara spr26259: neDEVICE: info33..40 name changed
#                       (before:user1..8) see mp_intext.j
# 010301 Neidhardt: again translation corrections
# 010301 Neidhardt: corrections for naming in enhancements from pe1512
# 010222 Neidhardt: takeover pe1512. Enhanced 127..158 in neTcStatus
# 000522 kollmann: neSwitch , Info 11 modified
# 000124 plas: feat new PW: 'PermTest' and 'externPW' added
# 990831 kamm: spr-20745 Normelement neTcStatus:
#                        .Infonames 25, 26, 27 changed
#                        .Comment changed
#
# 990429 allhu spr-18810: added info 13 for neEnhSyStat
# 990414 hara spr-19104: neAlarm1:info8  marker nR for info13 (3)
#                        neAlarm1:info12 marker nR for info14 (4)
#                        neAlarm1:info15 marker aI for info13
#                        neAlarm1:info16 marker aI for info14
#                        neAlarm1:info20 marker ak for info13
#                        neAlarm1:info21 marker ak for info14
# 980805 kamm: Normelement neTcStatus:
#              . Infoname 34,35,36 changed
#              . Comment changed
#
# 980730 bewo:spr17294:neAlarm1: modify name of info13,14
# 980512 gkoele: added TrCallFl and TrCallAk for neTOPELEM DMS
# 980624 kamm: Normelement neTcStatus; Info 31 changed for the device
#              TCI-block (REDM running)!
# 980415 kamm: Normelement neTcStatus; Info 28 changed for the device
#              Transport Connection (WAN)!
# 980403 hara spr-15493: neUnivers: info11 InfIfoVo -> InvVoInd
# 980204 kamm: Normelement neTcStatus; Info 19 comment modified!
# $NewRevEnd$

set RELNAME = "INNAME"

source $SPECPATH/src/param/param_scripts/JOB_PART1


$P/bq >>& $JL                        <<BQEND

rel INNAME
exe job $0

x
BQEND

set JOBST = $status
source $SPECPATH/src/param/param_scripts/JOB_PART2

exit

$BQ
rel INNAME
open
clear

.NoElTyp= neUNIVERS; { general infos in area          }
  { info 1..4 fixed by Spectrum - do not change       }
  .Info= 1; .Name= 'RemoOper';  { removed from operation          } wr
  .Info= 2; .Name= 'CtrlInhi';  { control inhibit                 } wr
  .Info= 3; .Name= 'GC activ';  { GC in progress                  } wr
  .Info= 4; .Name= 'GC resul';  { GC completeness check result    } wr
  .Info= 5; .Name= 'PermWork';  { permit to work                  } wr
  .Info= 6; .Name= 'RTU dist';  { RTU-disturbed mess. for station } wr
  .Info= 7; .Name= 'aRTUdist';  { ackn.RTU-dist.mess. for station } wr
  .Info= 8; .Name= 'Tag M2  ';  { tag InfoM2                      } wr
  .Info= 9; .Name= 'Tag M1  ';  { tag InfoM1                      } wr
  .Info=10; .Name= 'InfVoInd';  { voltage indicator               } wr
  .Info=11; .Name= 'InvVoInd';  { volt.ind. not used by coloring  } wr
  .Info=12; .Name= 'pos     ';  { positioning info                } wr
  .Info=13; .Name= 'OiT     ';  { tag 'Object in Test'            } wr
  .Info=14; .Name= 'PermTest';  { tag 'Permit to Test'            } wr
  .Info=15; .Name= 'externPW';  { 'x' marker for external PermWork} wr
  .Info=16; .Name= 'AlarmInh';  { tag 'alarm inhibit'             } wr
  .Info=17; .Name= 'res17   ';  { free                            } wr
  .Info=18; .Name= 'res18   ';  { free                            } wr
  .Info=19; .Name= 'res19   ';  { free                            } wr
  .Info=20; .Name= 'res20   ';  { free                            } wr
  .Info=21; .Name= 'res21   ';  { free                            } wr
  .Info=22; .Name= 'opDevBB1';  { oper.Device on BB1              } wr
  .Info=23; .Name= 'opD1dist';  { oper.Device on BB1 disturbed    } wr
  .Info=24; .Name= 'opDevBB2';  { oper.Device on BB2              } wr
  .Info=25; .Name= 'opD2dist';  { oper.Device on BB2 disturbed    } wr
  .Info=26; .Name= 'opDevBB3';  { oper.Device on BB3              } wr
  .Info=27; .Name= 'opD3dist';  { oper.Device on BB3 disturbed    } wr
  .Info=28; .Name= 'opDevOff';  { oper.Device offline             } wr
  .Info=29; .Name= 'opDeDist';  { oper.Device disturbed           } wr
  .Info=30; .Name= 'FreeNote';  { Free technological Note for Memo} wr
  .Info=31; .Name= 'FaultyTg';  { Faulty Tag             only XPS } wr
  .Info=32; .Name= 'res32   ';  { free                            } wr
  .Info=33; .Name= 'SwInProg';  { switch in progress              } wr
  .Info=34; .Name= 'PcJobErr';  { process-job:   execution failed } wr
  .Info=35; .Name= 'PcOrdErr';  { process-order: execution failed } wr
                                {info36..47 only in case of       }
                                {protocoll of switching sequences }
  .Info=36; .Name= 'StartEx ';  { Start execution                 } wr
  .Info=37; .Name= 'EndOk   ';  { End Ok                          } wr
  .Info=38; .Name= 'HaltEx  ';  { Halt execution                  } wr
  .Info=39; .Name= 'ContEx  ';  { Continue execution              } wr
  .Info=40; .Name= 'BreakEx ';  { Break execution                 } wr
  .Info=41; .Name= 'Reset   ';  { Reset                           } wr
  .Info=42; .Name= 'HltBrUcd';  { Execution stopped via operation } wr
  .Info=43; .Name= 'HltProg ';  { Execution stopped programmed    } wr
  .Info=44; .Name= 'BreakErr';  { Error during execution via NCEX } wr
  .Info=45; .Name= 'SwOpeRun';  { Switching operation is running  } wr
  .Info=46; .Name= 'SwOpeEnd';  { End of switching operation      } wr
  .Info=47; .Name= 'HaBrEdCd';  { Execution stopped bec. of report} wr
  .Info=48; .Name= 'NumPermW';  { Number of Work permissions      } wr
  .Info=49; .Name= 'RM Mark ';  { Return Message Marker           } wr

  .Info=50; .Name= 'ClosOnly';  { close only tag                  } wr
  .Info=51; .Name= 'Caution ';  { caution tag                     } wr
  .Info=52; .Name= 'TripOnly';  { trip only tag                   } wr

  .Info=53; .Name= 'TimeTr 1';  { first info for time trig. jobs  } wr
  .Info=54; .Name= 'TimeTr 2';  { second info for time trig. jobs } wr
  .Info=55; .Name= 'TimeTr 3';  { third info for time trig. jobs  } wr
  .Info=56; .Name= 'TimeTr 4';  { fourth info for time trig. jobs } wr
  .Info=57; .Name= 'TimeTr 5';  { fifth info for time trig. jobs  } wr


.NoElTyp= neTOPELEM; { topology area                  }
  .Info= 1; .Name= 'NetwGrNo';  { network group number            } wr
  .Info= 2; .Name= 'NetwStat';  { network status                  } wr
  .Info= 3; .Name= 'NeGrOld ';  { network group number old        } wr
  .Info= 4; .Name= 'NeStOld ';  { network status old              } wr
  .Info= 5; .Name= 'EarthFa ';  { earth fault state               } wr
  .Info= 6; .Name= 'Prob2   ';  { earth fault state probability 2 } wr
  .Info= 7; .Name= 'TrCallFl';  { Trouble call fleet              } wr
  .Info= 8; .Name= 'TrCallAk';  { Trouble call acknowledge        } wr
  .Info= 9; .Name= 'FltLocFl';  { Fault location from trouble call} wr
  .Info=10; .Name= 'FltLocAk';  { Fault location acknowledge      } wr

  .Info=11; .Name= 'NetwGr A';  { network group number Phase A    } wr
  .Info=12; .Name= 'NetwSt A';  { network status Phase A          } wr
  .Info=13; .Name= 'NeGrOd A';  { network group number old Phase A} wr
  .Info=14; .Name= 'NeStOd A';  { network status old Phase A      } wr
  .Info=15; .Name= 'EarthFaA';  { earth fault state Phase A       } wr
  .Info=16; .Name= 'EaFltPrA';  { ef state probability 2 Phase A  } wr
  .Info=17; .Name= 'TCallFlA';  { Trouble call fleet Phase A      } wr
  .Info=18; .Name= 'TCallAkA';  { Trouble call acknowledge Phase A} wr
  .Info=19; .Name= 'FltLcFlA';  { Fltloc from trouble call Phase A} wr
  .Info=20; .Name= 'FltLcAkA';  { Fault location ackn Phase A     } wr

  .Info=21; .Name= 'NetwGr B';  { network group number Phase B    } wr
  .Info=22; .Name= 'NetwSt B';  { network status Phase B          } wr
  .Info=23; .Name= 'NeGrOd B';  { network group number old Phase B} wr
  .Info=24; .Name= 'NeStOd B';  { network status old Phase B      } wr
  .Info=25; .Name= 'EarthFaB';  { earth fault state Phase B       } wr
  .Info=26; .Name= 'EaFltPrB';  { ef state probability 2 Phase B  } wr
  .Info=27; .Name= 'TCallFlB';  { Trouble call fleet Phase B      } wr
  .Info=28; .Name= 'TCallAkB';  { Trouble call acknowledge Phase B} wr
  .Info=29; .Name= 'FltLcFlB';  { Fltloc from trouble call Phase B} wr
  .Info=30; .Name= 'FltLcAkB';  { Fault location ackn Phase B     } wr

  .Info=31; .Name= 'NetwGr C';  { network group number Phase C    } wr
  .Info=32; .Name= 'NetwSt C';  { network status Phase C          } wr
  .Info=33; .Name= 'NeGrOd C';  { network group number old Phase C} wr
  .Info=34; .Name= 'NeStOd C';  { network status old Phase C      } wr
  .Info=35; .Name= 'EarthFaC';  { earth fault state Phase C       } wr
  .Info=36; .Name= 'EaFltPrC';  { ef state probability 2 Phase C  } wr
  .Info=37; .Name= 'TCallFlC';  { Trouble call fleet Phase C      } wr
  .Info=38; .Name= 'TCallAkC';  { Trouble call acknowledge Phase C} wr
  .Info=39; .Name= 'FltLcFlC';  { Fltloc from trouble call Phase C} wr
  .Info=40; .Name= 'FltLcAkC';  { Fault location ackn Phase C     } wr

  .Info=41; .Name= 'AsymGrNo';  { Asymmetric Group number         } wr
  .Info=42; .Name= 'AsymNwSt';  { Asymmetric Network Status       } wr
  .Info=43; .Name= 'AsymNGrO';  { Asymmetric Networkgroup Old     } wr
  .Info=44; .Name= 'AsymNStO';  { Asymmetric Networkstatus Old    } wr

  .Info=45; .Name= 'LineStat';  { line status                     } wr
  .Info=46; .Name= 'LineSt A';  { line status Phase A             } wr
  .Info=47; .Name= 'LineSt B';  { line status Phase B             } wr
  .Info=48; .Name= 'LineSt C';  { line status Phase C             } wr


.NoElTyp= neSWITCH; { switching element               }
  .Info= 1; .Name= 'RemoOper';  { removed from operation          } wr
  .Info= 2; .Name= 'CtrlInhi';  { control inhibit                 } wr
  .Info= 3; .Name= 'Status  ';  { switching status                } wr
  .Info= 4; .Name= 'Dist    ';  { status disturbed                } wr
  .Info= 5; .Name= 'Ackn    ';  { acknowledge marker for status   } wr
  .Info= 6; .Name= 'ManUpdat';  { status manual update            } wr
  .Info= 7; .Name= 'CB trip ';  { circuit breaker trip            } wr
  .Info= 8; .Name= 'CB tripA';  { CB trip ack                     } wr
                                {info9 only sw.gear truck         }
  .Info= 9; .Name= 'CtrlCut ';  { control line cut app/disapp     } wr
                                {info10 only earth                }
  .Info=10; .Name= 'EarthTag';  { tag Earth                       } wr
  .Info=11; .Name= 'ign.Norm';  { tag RCheck norm state PE_NORMSZ } wr
  .Info=12; .Name= 'DistSw  ';  { switching device dist.(traction)} wr
  .Info=13; .Name= 'DistSwAk';  { sw.device (traction)dist.   ack } wr
  .Info=14; .Name= 'SlOpProg';  { slider open in progress         } wr
  .Info=15; .Name= 'SlClProg';  { slider close in progress        } wr
  .Info=16; .Name= 'CBtr AlI';  { CB trip   alarm inhibit         } wr
  .Info=17; .Name= 'DiSw AlI';  { sw.device dist.    alarm inhibit} wr
  .Info=18; .Name= 'DiSw  nr';  { sw.device dist.     not renewed } wr
  .Info=19; .Name= 'OpenOnly';  { open only tag                   } wr
  .Info=20; .Name= 'ClosOnly';  { close only tag                  } wr
  .Info=21; .Name= 'Caution ';  { caution tag                     } wr
  .Info=22; .Name= 'InforTag';  { information tag                 } wr
  .Info=23; .Name= 'NormStat';  { normal switching status         } wr
  .Info=24; .Name= 'AbNoStat';  { normal switching status yes/no  } wr
  .Info=25; .Name= 'SloP AlI';  { sli.open in progr. alarm inhibit} wr
  .Info=26; .Name= 'SloP  nr';  { sli.open in progr. not renewed  } wr
  .Info=27; .Name= 'FreeNote';  { free technological note for Memo} wr
                                {info28..31 only for slide        }
  .Info=28; .Name= 'SliHalt ';  { command slider stop             } wr
  .Info=29; .Name= 'Step opn';  { open  slider by 1 step          } wr
  .Info=30; .Name= 'Step clo';  { close slider by 1 step          } wr
  .Info=31; .Name= 'Intermed';  { intermediate position of slider } wr
  .Info=32; .Name= 'NotRenew';  { switch status not renewed       } wr
  .Info=33; .Name= 'SwInProg';  { switch in progress (tag)        } wr
                                {info34..35 only in case of       }
                                {protocoll of switching sequences }
  .Info=34; .Name= 'TimOutOf';  { TimeOut message OFF for protocol} wr
  .Info=35; .Name= 'TimOutOn';  { TimeOut message ON for protocol } wr
                                {info36..41 only for CB with      }
                                {latching relay                   }
  .Info=36; .Name= 'Uf1_Set ';  { set for underfrequency 1        } wr
  .Info=37; .Name= 'Uf2_Set ';  { set for underfrequency 2        } wr
  .Info=38; .Name= 'Uf3_Set ';  { set for underfrequency 3        } wr
  .Info=39; .Name= 'Uf1_Acti';  { Activation for underfrequency 1 } wr
  .Info=40; .Name= 'Uf2_Acti';  { Activation for underfrequency 2 } wr
  .Info=41; .Name= 'Uf3_Acti';  { Activation for underfrequency 3 } wr
  .Info=42; .Name= 'NetwStat';  { network status                  } wr
  .Info=43; .Name= 'NetwGrNo';  { network group number            } wr
  .Info=44; .Name= 'SlcP AlI';  { sli.close in progr. alarm inhib.} wr
  .Info=45; .Name= 'SlcP  nr';  { sli.close in progr. not renewed } wr
  .Info=46; .Name= 'UFD     ';  { used for disconnection          } wr
  .Info=47; .Name= 'OiT     ';  { tag 'object in test'            } wr
  .Info=48; .Name= 'Trace   ';  { switch is trace result          } wr
  .Info=49; .Name= 'TraceAck';  { switch is trace result Ack      } wr
  .Info=50; .Name= 'ANOPExcl';  { Tag ANOP Exclude                } wr
  .Info=51; .Name= 'NcReport';  { NcReport delivered by CESS      } wr
  .Info=52; .Name= 'Invalid ';  { switch status invalid           } wr
  .Info=53; .Name= 'FeedHead';  { Feeder Head for DMS Line        } wr
  .Info=54; .Name= 'RM Mark ';  { Return Message Marker           } wr
  .Info=55; .Name= 'Status A';  { Switching Status Phase A        } wr
  .Info=56; .Name= 'Status B';  { Switching Status Phase B        } wr
  .Info=57; .Name= 'Status C';  { Switching Status Phase C        } wr
  .Info=58; .Name= 'Dist A  ';  { status disturbed Phase A        } wr
  .Info=59; .Name= 'Dist B  ';  { status disturbed Phase B        } wr
  .Info=60; .Name= 'Dist C  ';  { status disturbed Phase C        } wr
  .Info=61; .Name= 'ManUpdaA';  { status manual update  Phase A   } wr
  .Info=62; .Name= 'ManUpdaB';  { status manual update  Phase B   } wr
  .Info=63; .Name= 'ManUpdaC';  { status manual update  Phase C   } wr
  .Info=64; .Name= 'Asymmetr';  { Asymmetric (Status)             } wr
  .Info=65; .Name= 'AsymmAck';  { Asymmetric Acknowledge          } wr
  .Info=66; .Name= 'PhA repl';  { Phase A reply                   } wr
  .Info=67; .Name= 'PhB repl';  { Phase A reply                   } wr
  .Info=68; .Name= 'PhC repl';  { Phase A reply                   } wr
  .Info=69; .Name= 'NwGrNo A';  { network group number phase A    } wr
  .Info=70; .Name= 'NwGrNo B';  { network group number phase B    } wr
  .Info=71; .Name= 'NwGrNo C';  { network group number phase C    } wr
  .Info=72; .Name= 'NwStat A';  { network group number phase A    } wr
  .Info=73; .Name= 'NwStat B';  { network group number phase B    } wr
  .Info=74; .Name= 'NwStat C';  { network group number phase C    } wr

                                { RDS infos                       }
  .Info=infoStatS1; .Name= 'StatSou1'; { switching state of sour.1} wr
  .Info=infoStatS2; .Name= 'StatSou2'; { switching state of sour.2} wr
  .Info=infoStatS3; .Name= 'StatSou3'; { switching state of sour.3} wr
  .Info=infoStatS4; .Name= 'StatSou4'; { switching state of sour.4} wr
  .Info=infoFirSel; .Name= 'FirstSel'; { first selection flag     } wr
  .Info=infoNumbSo; .Name= 'NumOfSou'; { number of sources        } wr
  .Info=infoSeleOp; .Name= 'SeleOper'; { operator selected source } wr
  .Info=infoSeleSo; .Name= 'SeleSour'; { selected source          } wr
  .Info=infoPrioS1; .Name= 'PrioSou1'; { priorities sources 1     } wr
  .Info=infoPrioS2; .Name= 'PrioSou2'; { priorities sources 2     } wr
  .Info=infoPrioS3; .Name= 'PrioSou3'; { priorities sources 3     } wr
  .Info=infoPrioS4; .Name= 'PrioSou4'; { priorities sources 4     } wr
  .Info=infoDeviCo; .Name= 'DevContr'; { device control flags     } wr
  .Info=infoInhiS1; .Name= 'InhiSou1'; { inhibit flag source 1    } wr
  .Info=infoInhiS2; .Name= 'InhiSou2'; { inhibit flag source 2    } wr
  .Info=infoInhiS3; .Name= 'InhiSou3'; { inhibit flag source 3    } wr
  .Info=infoInhiS4; .Name= 'InhiSou4'; { inhibit flag source 4    } wr
  .Info=infoTypSel; .Name= 'TypeSeSo'; { type of selection        } wr
  .Info=infoDistS1; .Name= 'DisturS1'; { disturbed status source 1} wr
  .Info=infoDistS2; .Name= 'DisturS2'; { disturbed status source 2} wr
  .Info=infoDistS3; .Name= 'DisturS3'; { disturbed status source 3} wr
  .Info=infoDistS4; .Name= 'DisturS4'; { disturbed status source 4} wr
  .Info=infoMultS1; .Name= 'MultiSt1'; { multistate intran.flag s1} wr
  .Info=infoMultS2; .Name= 'MultiSt2'; { multistate intran.flag s2} wr
  .Info=infoMultS3; .Name= 'MultiSt3'; { multistate intran.flag s3} wr
  .Info=infoMultS4; .Name= 'MultiSt4'; { multistate intran.flag s4} wr
  .Info=infoNotRe1; .Name= 'NotRene1'; { not renew flag source 1  } wr
  .Info=infoNotRe2; .Name= 'NotRene2'; { not renew flag source 2  } wr
  .Info=infoNotRe3; .Name= 'NotRene3'; { not renew flag source 3  } wr
  .Info=infoNotRe4; .Name= 'NotRene4'; { not renew flag source 4  } wr
  .Info=infoReMaR1; .Name= 'ReMaReS1'; { remote manual replace s1 } wr
  .Info=infoReMaR2; .Name= 'ReMaReS2'; { remote manual replace s2 } wr
  .Info=infoReMaR3; .Name= 'ReMaReS3'; { remote manual replace s3 } wr
  .Info=infoReMaR4; .Name= 'ReMaReS4'; { remote manual replace s4 } wr
  .Info=infoNewSe1; .Name= 'Sour1Sel'; { sour.1 has been selected } wr
  .Info=infoNewSe2; .Name= 'Sour2Sel'; { sour.2 has been selected } wr
  .Info=infoNewSe3; .Name= 'Sour3Sel'; { sour.3 has been selected } wr
  .Info=infoNewSe4; .Name= 'Sour4Sel'; { sour.4 has been selected } wr
  .Info=infoClBlo1; .Name= 'ClBlocS1'; { Calculated Blocked Sour.1} wr
  .Info=infoClBlo2; .Name= 'ClBlocS2'; { Calculated Blocked Sour.2} wr
  .Info=infoClBlo3; .Name= 'ClBlocS3'; { Calculated Blocked Sour.3} wr
  .Info=infoClBlo4; .Name= 'ClBlocS4'; { Calculated Blocked Sour.4} wr
  .Info=infoClSub1; .Name= 'ClSubsS1'; { Calculated Substitute S1 } wr
  .Info=infoClSub2; .Name= 'ClSubsS2'; { Calculated Substitute S2 } wr
  .Info=infoClSub3; .Name= 'ClSubsS3'; { Calculated Substitute S3 } wr
  .Info=infoClSub4; .Name= 'ClSubsS4'; { Calculated Substitute S4 } wr
  .Info=infoDevSo1; .Name= 'Sour1Dev'; { deviation flag of sour.1 } wr
  .Info=infoDevSo2; .Name= 'Sour2Dev'; { deviation flag of sour.2 } wr
  .Info=infoDevSo3; .Name= 'Sour3Dev'; { deviation flag of sour.3 } wr
  .Info=infoDevSo4; .Name= 'Sour4Dev'; { deviation flag of sour.4 } wr
  .Info=125; .Name= 'LoadShed';  { load shed control active       } wr
  .Info=126; .Name= 'AlarmInh';  { tag 'alarm inhibit'            } wr
  .Info=127; .Name= 'ActFlag';   { monitoring: switching act. flag} wr
  .Info=128; .Name= 'ActFail ';  { monitoring: order not successf } wr
  .Info=129; .Name= 'wforActC';  { waiting for ActConf            } wr
  .Info=130; .Name= 'wforActT';  { waiting for ActTerm            } wr
  .Info=131; .Name= 'wforActF';  { waiting for ActFree            } wr
  .Info=132; .Name= 'mpRcvSts';  { backup RTU status              } wr
  .Info=133; .Name= 'RcvNotRe';  { Received status NotRenewed     } wr
  .Info=134; .Name= 'RcvInval';  { Received status Invalid        } wr
  .Info=135; .Name= 'ExternIn';  { Received from external system  } wr
  .Info=infoStTNAav; .Name= 'TNAstaAv';  { TNA status available   } wr
  .Info=infoStTNA;   .Name= 'TNAstatu';  { TNA status             } wr
  .Info=138; .Name= 'ToevAckn';  { toev_s (1->0) results available} wr
  .Info=139; .Name= 'ExteBlIn';  { Receiv.from ext. system blocked} wr

.NoElTyp= neTAPCHAN; { transformer / (peterson coil) }
  .Info= 1; .Name= 'RemoOper';  { removed from operation          } wr
  .Info= 2; .Name= 'CtrlInhi';  { control inhibit                 } wr
  .Info= 3; .Name= 'TapPos  ';  { transformer tap position        } wr
  .Info= 4; .Name= 'TapDist ';  { tap position       disturbed    } wr
  .Info= 5; .Name= 'UCtrlM-A';  { voltage control manual/automatic} wr
  .Info= 6; .Name= 'UCtrlDst';  { voltage control    disturbed    } wr
  .Info= 7; .Name= 'UCtrlAck';  { voltage control    acknowledge  } wr
  .Info= 8; .Name= 'EndPos  ';  { end position                    } wr
  .Info= 9; .Name= 'Buchh Al';  { Buchholz alarm                  } wr
  .Info=10; .Name= 'TaPoDist';  { tap positioner dist.            } wr
  .Info=11; .Name= 'Overload';  { overload                        } wr
  .Info=12; .Name= 'Diff On ';  { differantial protection on      } wr
  .Info=13; .Name= 'HighTemp';  { high temperature                } wr
  .Info=14; .Name= 'TapPosMU';  { tap position       manual update} wr
  .Info=15; .Name= 'CompStep';  { compensator step high/low       } wr
  .Info=16; .Name= 'EndPosA ';  { end position       acknowledge  } wr
  .Info=17; .Name= 'TDist   ';  { disturbance message             } wr
  .Info=18; .Name= 'TDistA  ';  { disturbanced msg.  acknowledge  } wr
  .Info=19; .Name= 'TapAck  ';  { tap position       acknowledge  } wr
  .Info=20; .Name= 'UCtrl MU';  { voltage control    manual update} wr
  .Info=21; .Name= 'UCm-a ai';  { volt.contr.man/aut alarm inhibit} wr
  .Info=22; .Name= 'UCm-a nr';  { volt.contr.man/aut not renewed  } wr
  .Info=23; .Name= 'BuAl  ai';  { Buchholz alarm     alarm inhibit} wr
  .Info=24; .Name= 'hTemp nr';  { high temperature   not renewed  } wr
  .Info=25; .Name= 'TaPoD ai';  { tap positioner dist. ala.inhibit} wr
  .Info=26; .Name= 'TaPoD nr';  { tap positioner dist. not renewed} wr
  .Info=27; .Name= 'Overl ai';  { Overload           alarm inhibit} wr
  .Info=28; .Name= 'SiCmd   ';  { sing.pole cmd stop /compensator } wr
  .Info=29; .Name= '1stepUP ';  { single pole cmd 1 step up       } wr
  .Info=30; .Name= '1stepDN ';  { single pole cmd 1 step down     } wr
  .Info=31; .Name= 'DifOn ai';  { diff. prot. on     alarm inhibit} wr
  .Info=32; .Name= 'NotRenew';  { tap position       not renewed  } wr
  .Info=33; .Name= 'OiT     ';  { tag 'Object in Test'            } wr
  .Info=34; .Name= 'TimOutDo';  { TimeOut message DOWN for prot.  } wr
  .Info=35; .Name= 'TimOutUp';  { TimeOut message UP for protocol } wr
  .Info=36; .Name= 'LoTpInf ';  { lower end position of trafo     } wr
  .Info=37; .Name= 'HiTpInf ';  { upper end position of trafo     } wr
  .Info=38; .Name= 'NcReport';  { NcReport delivered by CESS      } wr
  .Info=39; .Name= 'AlarmInh';  { tag 'alarm inhibit'             } wr
  .Info=40; .Name= 'ActFlag';   { monitoring: switching act. flag } wr
  .Info=41; .Name= 'ActFail ';  { monitoring: order not successf  } wr
  .Info=42; .Name= 'wforActC';  { waiting for ActConf             } wr
  .Info=43; .Name= 'wforActT';  { waiting for ActTerm             } wr
  .Info=44; .Name= 'wforActF';  { waiting for ActFree             } wr
  .Info=45; .Name= 'ExternIn';  { Received from external system   } wr
  .Info=46; .Name= 'ExteBlIn';  { Receiv.from ext. system blocked } wr

                                { RDS infos                       }
  .Info=infoStatS1; .Name= 'StatSou1'; { switching state of sour.1} wr
  .Info=infoStatS2; .Name= 'StatSou2'; { switching state of sour.2} wr
  .Info=infoStatS3; .Name= 'StatSou3'; { switching state of sour.3} wr
  .Info=infoStatS4; .Name= 'StatSou4'; { switching state of sour.4} wr
  .Info=infoFirSel; .Name= 'FirstSel'; { first selection flag     } wr
  .Info=infoNumbSo; .Name= 'NumOfSou'; { number of sources        } wr
  .Info=infoSeleOp; .Name= 'SeleOper'; { operator selected source } wr
  .Info=infoSeleSo; .Name= 'SeleSour'; { selected source          } wr
  .Info=infoPrioS1; .Name= 'PrioSou1'; { priorities sources 1     } wr
  .Info=infoPrioS2; .Name= 'PrioSou2'; { priorities sources 2     } wr
  .Info=infoPrioS3; .Name= 'PrioSou3'; { priorities sources 3     } wr
  .Info=infoPrioS4; .Name= 'PrioSou4'; { priorities sources 4     } wr
  .Info=infoDeviCo; .Name= 'DevContr'; { device control flags     } wr
  .Info=infoInhiS1; .Name= 'InhiSou1'; { inhibit flag source 1    } wr
  .Info=infoInhiS2; .Name= 'InhiSou2'; { inhibit flag source 2    } wr
  .Info=infoInhiS3; .Name= 'InhiSou3'; { inhibit flag source 3    } wr
  .Info=infoInhiS4; .Name= 'InhiSou4'; { inhibit flag source 4    } wr
  .Info=infoTypSel; .Name= 'TypeSeSo'; { type of selection        } wr
  .Info=infoDistS1; .Name= 'DisturS1'; { disturbed status source 1} wr
  .Info=infoDistS2; .Name= 'DisturS2'; { disturbed status source 2} wr
  .Info=infoDistS3; .Name= 'DisturS3'; { disturbed status source 3} wr
  .Info=infoDistS4; .Name= 'DisturS4'; { disturbed status source 4} wr
  .Info=infoMultS1; .Name= 'MultiSt1'; { multistate intran.flag s1} wr
  .Info=infoMultS2; .Name= 'MultiSt2'; { multistate intran.flag s2} wr
  .Info=infoMultS3; .Name= 'MultiSt3'; { multistate intran.flag s3} wr
  .Info=infoMultS4; .Name= 'MultiSt4'; { multistate intran.flag s4} wr
  .Info=infoNotRe1; .Name= 'NotRene1'; { not renew flag source 1  } wr
  .Info=infoNotRe2; .Name= 'NotRene2'; { not renew flag source 2  } wr
  .Info=infoNotRe3; .Name= 'NotRene3'; { not renew flag source 3  } wr
  .Info=infoNotRe4; .Name= 'NotRene4'; { not renew flag source 4  } wr
  .Info=infoReMaR1; .Name= 'ReMaReS1'; { remote manual replace s1 } wr
  .Info=infoReMaR2; .Name= 'ReMaReS2'; { remote manual replace s2 } wr
  .Info=infoReMaR3; .Name= 'ReMaReS3'; { remote manual replace s3 } wr
  .Info=infoReMaR4; .Name= 'ReMaReS4'; { remote manual replace s4 } wr
  .Info=infoNewSe1; .Name= 'Sour1Sel'; { sour.1 has been selected } wr
  .Info=infoNewSe2; .Name= 'Sour2Sel'; { sour.2 has been selected } wr
  .Info=infoNewSe3; .Name= 'Sour3Sel'; { sour.3 has been selected } wr
  .Info=infoNewSe4; .Name= 'Sour4Sel'; { sour.4 has been selected } wr
  .Info=infoClBlo1; .Name= 'ClBlocS1'; { Calculated Blocked Sour.1} wr
  .Info=infoClBlo2; .Name= 'ClBlocS2'; { Calculated Blocked Sour.2} wr
  .Info=infoClBlo3; .Name= 'ClBlocS3'; { Calculated Blocked Sour.3} wr
  .Info=infoClBlo4; .Name= 'ClBlocS4'; { Calculated Blocked Sour.4} wr
  .Info=infoClSub1; .Name= 'ClSubsS1'; { Calculated Substitute S1 } wr
  .Info=infoClSub2; .Name= 'ClSubsS2'; { Calculated Substitute S2 } wr
  .Info=infoClSub3; .Name= 'ClSubsS3'; { Calculated Substitute S3 } wr
  .Info=infoClSub4; .Name= 'ClSubsS4'; { Calculated Substitute S4 } wr
  .Info=infoDevSo1; .Name= 'Sour1Dev'; { deviation flag of sour.1 } wr
  .Info=infoDevSo2; .Name= 'Sour2Dev'; { deviation flag of sour.2 } wr
  .Info=infoDevSo3; .Name= 'Sour3Dev'; { deviation flag of sour.3 } wr
  .Info=infoDevSo4; .Name= 'Sour4Dev'; { deviation flag of sour.4 } wr
  .Info=125;        .Name= 'mpRcvTap'; { backup RTU status        } wr
  .Info=126;        .Name= 'RcvNotRe'; { Received statusNotRenewed} wr
  .Info=127;        .Name= 'RcvInval'; { Received status Invalid  } wr
  .Info=128;        .Name= 'TNAtapAv'; { TNA tap pos. available   } wr
  .Info=129;        .Name= 'TNAtappo'; { TNA tap position         } wr

.NoElTyp= nePROTECT; {          protection            }
  .Info= 1; .Name= 'RemoOper';  { removed from operation          } wr
  .Info= 2; .Name= 'CtrlInhi';  { control inhibit                 } wr
                                { distance prot. phase prot.      }
  .Info= 3; .Name= 'Trip R  ';  { Protect trigger R               } wr
  .Info= 4; .Name= 'TripR ak';  { Protect trigger R        ack    } wr
  .Info= 5; .Name= 'Trip S  ';  { Protect trigger S               } wr
  .Info= 6; .Name= 'TripS ak';  { Protect trigger S        ack    } wr
  .Info= 7; .Name= 'Trip T  ';  { Protect trigger T               } wr
  .Info= 8; .Name= 'TripT ak';  { Protect trigger T        ack    } wr
  .Info= 9; .Name= 'Trip RST';  { Protect trigger RST             } wr
  .Info=10; .Name= 'TrpRSTak';  { Protect trigger RST      ack    } wr
  .Info=11; .Name= 'Init R  ';  { Protect initial.R               } wr
  .Info=12; .Name= 'InitR ak';  { Protect initial.R        ack    } wr
  .Info=13; .Name= 'Init S  ';  { Protect initial.S               } wr
  .Info=14; .Name= 'InitS ak';  { Protect initial.S        ack    } wr
  .Info=15; .Name= 'Init T  ';  { Protect initial.T               } wr
  .Info=16; .Name= 'InitT ak';  { Protect initial.T        ack    } wr
  .Info=17; .Name= 'Init RST';  { Protect initial.RST             } wr
  .Info=18; .Name= 'InRST ak';  { Protect initial.RST      ack    } wr
  .Info=19; .Name= 'Tag M3  ';  { tag InfoM3                      } wr
  .Info=20; .Name= 'Init N  ';  { Protect initial.N               } wr
  .Info=21; .Name= 'InitN ak';  { Protect initial.N        ack    } wr
  .Info=22; .Name= 'Init RCL';  { Protect initial.Recloser        } wr
  .Info=23; .Name= 'InRCL ak';  { Protect initial.Recloser ack    } wr
  .Info=24; .Name= 'Run Time';  { Protect runtime                 } wr
  .Info=25; .Name= 'PrDvDist';  { Prot. device disturbed          } wr
  .Info=26; .Name= 'PrDvD ak';  { Prot. device dist.       ack    } wr
  .Info=27; .Name= 'Tri R ai';  { Protect trigger R     alarm inh.} wr
  .Info=28; .Name= 'Tri S ai';  { Protect trigger S     alarm inh.} wr
  .Info=29; .Name= 'Tri T ai';  { Protect trigger T     alarm inh.} wr
  .Info=30; .Name= 'TrRST ai';  { Protect trigger RST   alarm inh.} wr
  .Info=31; .Name= 'Ini R ai';  { Protect initial.R     alarm inh.} wr
  .Info=32; .Name= 'Ini S ai';  { Protect initial.S     alarm inh.} wr
  .Info=33; .Name= 'Ini T ai';  { Protect initial.T     alarm inh.} wr
  .Info=34; .Name= 'InRST ai';  { Protect initial.RST   alarm inh.} wr
  .Info=35; .Name= 'Ini N ai';  { Protect initial.N     alarm inh.} wr
  .Info=36; .Name= 'InRCL ai';  { Protect initial.RCL   alarm inh.} wr
  .Info=37; .Name= 'PrDDi ai';  { Prot. device dist.    alarm inh.} wr
  .Info=38; .Name= 'PrDDi nr';  { Prot. device dist.    not renew.} wr

                                { 39..47 add. infos for dist.prot.}
  .Info=39; .Name= 'InteTrip';  { Intertrip                       } wr
  .Info=40; .Name= 'InteT ak';  { Intertrip             acknowl.  } wr
  .Info=41; .Name= 'InteT ai';  { Intertrip             alarm inh.} wr
  .Info=42; .Name= 'stage   ';  { Time stage                      } wr
  .Info=43; .Name= 'stage ak';  { Time stage            acknowl.  } wr
  .Info=44; .Name= 'stage ai';  { Time stage            alarm inh.} wr
  .Info=45; .Name= 'Inop Dir';  { inoperative direction           } wr
  .Info=46; .Name= 'InopD ak';  { inoperative direct.   acknowl.  } wr
  .Info=47; .Name= 'InopD ai';  { inoperative direct.   alarm inh.} wr

                                { 48..53 add. infos for bb prot.  }
  .Info=48; .Name= 'BB Trip ';  { BB protection                   } wr
  .Info=49; .Name= 'BB Tr ak';  { BB protection         acknowl.  } wr
  .Info=50; .Name= 'BB Tr ai';  { BB protection         alarm inh.} wr
  .Info=51; .Name= 'CB malfu';  { CB malfunktion                  } wr
  .Info=52; .Name= 'CBmal ak';  { CB malfunction        acknowl.  } wr
  .Info=53; .Name= 'CBmal ai';  { CB malfunction        alarm inh.} wr

                                { 54..59 add. infos for gen.prot. }
  .Info=54; .Name= 'BlP Trip';  { Block protection Trip           } wr
  .Info=55; .Name= 'BlP T ak';  { Block protect.Trip    acknowl.  } wr
  .Info=56; .Name= 'BlP T ai';  { Block protect.Trip    alarm inh.} wr
  .Info=57; .Name= 'UFr Trip';  { Underfrequency Trip             } wr
  .Info=58; .Name= 'UFr T ak';  { Underfrequency Trip   acknowl.  } wr
  .Info=59; .Name= 'UFr T ai';  { Underfrequency Trip   alarm inh.} wr

                                { 60..80 add. infos for diff.prot.}
                                {                   transformers  }
  .Info=60; .Name= 'Ext Trip';  { external Trip                   } wr
  .Info=61; .Name= 'ExtTr ak';  { external Trip         acknowl.  } wr
  .Info=62; .Name= 'ExtTr ai';  { external Trip         alarm inh.} wr
  .Info=63; .Name= 'Int Trip';  { internal Trip                   } wr
  .Info=64; .Name= 'IntTr ak';  { internal Trip         acknowl.  } wr
  .Info=65; .Name= 'IntTr ai';  { internal Trip         alarm inh.} wr
  .Info=66; .Name= 'Ext Init';  { external Init                   } wr
  .Info=67; .Name= 'ExtIn ak';  { external Init         acknowl.  } wr
  .Info=68; .Name= 'ExtIn ai';  { external Init         alarm inh.} wr
  .Info=69; .Name= 'Int Init';  { internal Init                   } wr
  .Info=70; .Name= 'IntIn ak';  { internal Init         acknowl.  } wr
  .Info=71; .Name= 'IntIn ai';  { internal Init         alarm inh.} wr
  .Info=72; .Name= 'BuchTrip';  { Buchholz Trip                   } wr
  .Info=73; .Name= 'BuchT ak';  { Buchholz Trip         acknowl.  } wr
  .Info=74; .Name= 'BuchT ai';  { Buchholz Trip         alarm inh.} wr
  .Info=75; .Name= 'BuchInit';  { Buchholz Init                   } wr
  .Info=76; .Name= 'BuchI ak';  { Buchholz Init         acknowl.  } wr
  .Info=77; .Name= 'BuchI ai';  { Buchholz Init         alarm inh.} wr
  .Info=78; .Name= 'Ter Trip';  { Tertiaer Trip                   } wr
  .Info=79; .Name= 'TertT ak';  { Tertiaer Trip         acknowl.  } wr
  .Info=80; .Name= 'TertT ai';  { Tertiaer Trip         alarm inh.} wr
  .Info=81; .Name= 'OiT     ';  { tag 'Object in Test'            } wr
  .Info=82; .Name= 'AlarmInh';  { tag 'alarm inhibit'             } wr

.NoElTyp= neALARM1; { earth fault location            }
  .Info= 1; .Name= 'EarthFlt';  { earth fault (single pole)       } wr
  .Info= 2; .Name= 'EarthAck';  { earth fault       ack           } wr
  .Info= 3; .Name= 'EFD Line';  { earth fault direction line      } wr
  .Info= 4; .Name= 'EFD Bb  ';  { earth fault direction busbar    } wr
  .Info= 5; .Name= 'EF  AlIn';  { earth fault       alarm inhibit } wr
  .Info= 6; .Name= 'EF  noRn';  { earth fault       not renewed   } wr
  .Info= 7; .Name= 'EFL AlIn';  { e.f. dir.line     alarm inhibit } wr
  .Info= 8; .Name= 'EFDIL nR';  { ad info 13        not renewed   } wr
  .Info= 9; .Name= 'EarthFl ';  { earth fault intern (fleeting)   } wr
  .Info=10; .Name= 'res10   ';  { free for use                    } wr
  .Info=11; .Name= 'EFB AlIn';  { e.f. dir.bb       alarm inhibit } wr
  .Info=12; .Name= 'EFDIB nR';  { ad info 14        not renewed   } wr
  .Info=13; .Name= 'EFDILine';  { earth fault direction Line EFDI } wr
  .Info=14; .Name= 'EFDIBb  ';  { earth fault direction BB   EFDI } wr
  .Info=15; .Name= 'EFDIL aI';  { ad info 13        alarm inhibit } wr
  .Info=16; .Name= 'EFDIB aI';  { ad info 14        alarm inhibit } wr
  .Info=17; .Name= 'EFDL Ack';  { ad info 3         ack           } wr
  .Info=18; .Name= 'EFDBbAck';  { ad info 4         ack           } wr
  .Info=19; .Name= 'OiT     ';  { tag 'object in test'            } wr
  .Info=20; .Name= 'EFDIL Ak';  { ad info 13        ack           } wr
  .Info=21; .Name= 'EFDIB Ak';  { ad info 14        ack           } wr
  .Info=22; .Name= 'AlarmInh';  { tag 'alarm inhibit'             } wr


.NoElTyp= neALARM2; { fault indicator / direction     }
  .Info= 1; .Name= 'RemoOper';  { removed from operation          } wr
  .Info= 2; .Name= 'CtrlInhi';  { control inhibit                 } wr
  .Info= 3; .Name= 'OiT     ';  { tag 'object in test'            } wr
  .Info= 4; .Name= 'xFIA    ';  { fault ind.  phase A             } wr
  .Info= 5; .Name= 'xFIA ack';  { fault ind.  phase A ackn.       } wr
  .Info= 6; .Name= 'xFIA ai ';  { fault ind.  phase A alarm inh.  } wr
  .Info= 7; .Name= 'xFIA nr ';  { fault ind.  phase A not renew.  } wr
  .Info= 8; .Name= 'xFIB    ';  { fault ind.  phase B             } wr
  .Info= 9; .Name= 'xFIB ack';  { fault ind.  phase B ackn.       } wr
  .Info=10; .Name= 'xFIB ai ';  { fault ind.  phase B alarm inh.  } wr
  .Info=11; .Name= 'xFIB nr ';  { fault ind.  phase B not renew.  } wr
  .Info=12; .Name= 'xFIC    ';  { fault ind.  phase C             } wr
  .Info=13; .Name= 'xFIC ack';  { fault ind.  phase C ackn.       } wr
  .Info=14; .Name= 'xFIC ai ';  { fault ind.  phase C alarm inh.  } wr
  .Info=15; .Name= 'xFIC nr ';  { fault ind.  phase C not renew.  } wr
  .Info=16; .Name= 'FD A    ';  { fault dir.  phase A             } wr
  .Info=17; .Name= 'FD A ack';  { fault dir.  phase A ackn.       } wr
  .Info=18; .Name= 'FD A ai ';  { fault dir.  phase A alarm inh.  } wr
  .Info=19; .Name= 'FD A nr ';  { fault dir.  phase A not renew.  } wr
  .Info=20; .Name= 'FD B    ';  { fault dir.  phase B             } wr
  .Info=21; .Name= 'FD B ack';  { fault dir.  phase B ackn.       } wr
  .Info=22; .Name= 'FD B ai ';  { fault dir.  phase B alarm inh.  } wr
  .Info=23; .Name= 'FD B nr ';  { fault dir.  phase B not renew.  } wr
  .Info=24; .Name= 'FD C    ';  { fault dir.  phase C             } wr
  .Info=25; .Name= 'FD C ack';  { fault dir.  phase C ackn.       } wr
  .Info=26; .Name= 'FD C ai ';  { fault dir.  phase C alarm inh.  } wr
  .Info=27; .Name= 'FD C nr ';  { fault dir.  phase C not renew.  } wr
  .Info=28; .Name= 'xFIA dst';  { fault ind.  phase A disturbed   } wr
  .Info=29; .Name= 'xFIB dst';  { fault ind.  phase B disturbed   } wr
  .Info=30; .Name= 'xFIC dst';  { fault ind.  phase C disturbed   } wr
  .Info=31; .Name= 'AlarmInh';  { tag 'alarm inhibit'             } wr


.NoElTyp= neALARM3; { Alarm elements, no Normal State }
  .Info= 1; .Name= 'RemoOper';  { Remove from Operation           } wr
  .Info= 2; .Name= 'CtrlInhi';  { Control Inhibit                 } wr
  .Info= 3; .Name= 'Status  ';  { Status (of alarm)               } wr
  .Info= 4; .Name= 'Dist    ';  { Disturbed for Status            } wr
  .Info= 5; .Name= 'Ackn    ';  { Acknowledge for Status          } wr
  .Info= 6; .Name= 'ManUpdat';  { Manual Update for Status        } wr
  .Info= 7; .Name= 'AlrmInhi';  { Alarm Inhibit for Status        } wr
  .Info= 8; .Name= 'NotRenew';  { Not Renewed for Status          } wr
  .Info= 9; .Name= 'FileXfer';  { File Transfer Status            } wr
  .Info=10; .Name= 'AR1ConnP';  { AR1 PC Connection Status        } wr
  .Info=11; .Name= 'AR2ConnP';  { AR2 PC Connection Status        } wr
  .Info=12; .Name= 'AR3ConnP';  { AR3 PC Connection Status        } wr
  .Info=13; .Name= 'AR4ConnP';  { AR4 PC Connection Status        } wr
  .Info=14; .Name= 'AR5ConnP';  { AR5 PC Connection Status        } wr
  .Info=15; .Name= 'AR6ConnP';  { AR6 PC Connection Status        } wr
  .Info=16; .Name= 'AR7ConnP';  { AR7 PC Connection Status        } wr
  .Info=17; .Name= 'AR8ConnP';  { AR8 PC Connection Status        } wr
  .Info=18; .Name= 'AR1ConnS';  { AR1 SB Connection Status        } wr
  .Info=19; .Name= 'AR2ConnS';  { AR2 SB Connection Status        } wr
  .Info=20; .Name= 'AR3ConnS';  { AR3 SB Connection Status        } wr
  .Info=21; .Name= 'AR4ConnS';  { AR4 SB Connection Status        } wr
  .Info=22; .Name= 'AR5ConnS';  { AR5 SB Connection Status        } wr
  .Info=23; .Name= 'AR6ConnS';  { AR6 SB Connection Status        } wr
  .Info=24; .Name= 'AR7ConnS';  { AR7 SB Connection Status        } wr
  .Info=25; .Name= 'AR8ConnS';  { AR8 SB Connection Status        } wr


.NoElTyp= neALARM4; { EPM: Gas and Water messages                 }
  .Info= 1; .Name= 'RemoOper';  { Remove from Operation           } wr
  .Info= 2; .Name= 'ContInhi';  { Control Inhibit                 } wr
  .Info= 3; .Name= 'Status  ';  { Status (of alarm)               } wr
  .Info= 4; .Name= 'Ackn    ';  { Acknowledge for Status          } wr
  .Info= 5; .Name= 'ManUpdat';  { Manual Update for Status        } wr
  .Info= 6; .Name= 'NotRenew';  { Not Renewed for Status          } wr
  .Info= 7; .Name= 'mpRcvSts';  { backup RTU status               } wr
  .Info= 8; .Name= 'RcvNotRe';  { Received status NotRenewed      } wr
  .Info= 9; .Name= 'note    ';  { free technological note         } wr
  .Info=10; .Name= 'use norm';  { use normal state                } wr
  .Info=11; .Name= 'normalst';  { staic normal state              } wr
  .Info=12; .Name= 'normalst';  { normal state (dynamic)          } wr
  .Info=13; .Name= 'AlrmIhib';  { alarm inhibit                   } wr
  .Info=14; .Name= 'Caution ';  { caution tag                     } wr
  .Info=15; .Name= 'InforTag';  { information tag                 } wr
  .Info=16; .Name= 'FreeNote';  { free technological note for Memo} wr
  .Info=17; .Name= 'OiT     ';  { tag 'object in test'            } wr


.NoElTyp= neTcStatus;           {          TCI - status           }
                                {          ============           }
                                {    device-statusinformations    }
                                {    -------------------------    }
  .Info=  1; .Name= 'Failure '; { device-failure                  } wr
  .Info=  2; .Name= 'AkFailur'; { acknowlegde                     } wr
  .Info=  3; .Name= 'NrFailur'; { not renewed                     } wr

  .Info=  4; .Name= 'Disturb '; { device disturbed                } wr
  .Info=  5; .Name= 'AkDistur'; { acknowlegde                     } wr
  .Info=  6; .Name= 'NrDistur'; { not renewed                     } wr

  .Info=  7; .Name= 'Locked  '; { device locked                   } wr
  .Info=  8; .Name= 'AkLocked'; { acknowlegde                     } wr
  .Info=  9; .Name= 'NrLocked'; { not renewed                     } wr

  .Info= 10; .Name= 'Prefer. '; { device-preference               } wr
  .Info= 11; .Name= 'AkPrefer'; { acknowlegde                     } wr
  .Info= 12; .Name= 'NrPrefer'; { not renewed                     } wr

  .Info= 13; .Name= 'To_PCT  '; { device to PCT                   } wr
  .Info= 14; .Name= 'AkTo_PCT'; { acknowlegde                     } wr
  .Info= 15; .Name= 'NrTo_PCT'; { not renewed                     } wr

  .Info= 16; .Name= 'ClSyFail'; { clock-synchronisation failure   } wr
  .Info= 17; .Name= 'AkClSyFa'; { acknowlegde                     } wr
  .Info= 18; .Name= 'NrClSyFa'; { not renewed                     } wr

  .Info= 19; .Name= 'TransLoc'; { transmitter locked              } wr
  .Info= 20; .Name= 'AkTranLo'; { acknowlegde                     } wr
  .Info= 21; .Name= 'NrTranLo'; { not renewed                     } wr

  .Info= 22; .Name= 'To_PC   '; { device to PC                    } wr
  .Info= 23; .Name= 'AkTo_PC '; { acknowlegde                     } wr
  .Info= 24; .Name= 'NrTo_PC '; { not renewed                     } wr

  .Info= 25; .Name= 'Dialing '; { modem dialing                   } wr
  .Info= 26; .Name= 'AkDialin'; { acknowlegde                     } wr
  .Info= 27; .Name= 'NrDialin'; { not renewed                     } wr

  .Info= 28; .Name= 'Establis'; { device established              } wr
  .Info= 29; .Name= 'AkEstabl'; { acknowlegde                     } wr
  .Info= 30; .Name= 'NrEstabl'; { not renewed                     } wr

  .Info= 31; .Name= 'SwOv_run'; { switch-over running (REDM)      } wr
  .Info= 32; .Name= 'AkSwOvru'; { acknowlegde                     } wr
  .Info= 33; .Name= 'NrSwOvru'; { not renewed                     } wr

  .Info= 34; .Name= 'TransRel'; { transmitter released            } wr
  .Info= 35; .Name= 'AkTransR'; { acknowlegde                     } wr
  .Info= 36; .Name= 'NrTransR'; { not renewed                     } wr

  .Info= 37; .Name= 'DisturbA'; { device-disturbed-A              } wr
  .Info= 38; .Name= 'AkDistuA'; { acknowlegde                     } wr
  .Info= 39; .Name= 'NrDistuA'; { not renewed                     } wr

  .Info= 40; .Name= 'DisturbB'; { device-disturbed-B              } wr
  .Info= 41; .Name= 'AkDistuB'; { acknowlegde                     } wr
  .Info= 42; .Name= 'NrDistuB'; { not renewed                     } wr

  .Info= 43; .Name= 'Waiting '; { waiting for modem               } wr
  .Info= 44; .Name= 'AkWaitin'; { acknowlegde                     } wr
  .Info= 45; .Name= 'NrWaitin'; { not renewed                     } wr

  .Info= 46; .Name= 'CallFRtu'; { call from RTU                   } wr
  .Info= 47; .Name= 'AkCallFR'; { acknowlegde                     } wr
  .Info= 48; .Name= 'NrCallFR'; { not renewed                     } wr

  .Info= 49; .Name= 'ActCount'; { activate counter (fast period)  } wr
  .Info= 50; .Name= 'AkActCou'; { acknowlegde                     } wr
  .Info= 51; .Name= 'NrActCou'; { not renewed                     } wr

                                {      LRU-statusinformations     }
                                {      ----------------------     }
  .Info= 52; .Name= 'RTU_free'; { RTU free (for dial-up only)     } wr
  .Info= 53; .Name= 'AkRTU_fr'; { acknowlegde                     } wr
  .Info= 54; .Name= 'NrRTU_fr'; { not renewed                     } wr

  .Info= 55; .Name= 'FileTran'; { file transfer ready             } wr
  .Info= 56; .Name= 'AkFileTr'; { acknowlegde                     } wr
  .Info= 57; .Name= 'NrFileTr'; { not renewed                     } wr

  .Info= 58; .Name= 'ForcTSyn'; { forced time synchronization     } wr
  .Info= 59; .Name= 'AkForcTS'; { acknowlegde                     } wr
  .Info= 60; .Name= 'NrForcTS'; { not renewed                     } wr

  .Info= 61; .Name= 'SOE_lost'; { SOE changes lost                } wr
  .Info= 62; .Name= 'AkSOE_lo'; { acknowlegde                     } wr
  .Info= 63; .Name= 'NrSOE_lo'; { not renewed                     } wr

  .Info= 64; .Name= 'LRU_Fail'; { LRU - failure                   } wr
  .Info= 65; .Name= 'AkLRUFai'; { acknowlegde                     } wr
  .Info= 66; .Name= 'NrLRUFai'; { not renewed                     } wr

  .Info= 67; .Name= 'LRU_Dist'; { LRU - disturbed                 } wr
  .Info= 68; .Name= 'AkLRUDis'; { acknowlegde                     } wr
  .Info= 69; .Name= 'NrLRUDis'; { not renewed                     } wr

  .Info= 70; .Name= 'InfoLost'; { LRU - infolost                  } wr
  .Info= 71; .Name= 'AkInfoLo'; { acknowlegde                     } wr
  .Info= 72; .Name= 'NrInfoLo'; { not renewed                     } wr

  .Info= 73; .Name= 'RunUp   '; { LRU - run up                    } wr
  .Info= 74; .Name= 'AkRunUp '; { acknowlegde                     } wr
  .Info= 75; .Name= 'NrRunUp '; { not renewed                     } wr

  .Info= 76; .Name= 'GC_run  '; { LRU - general-check running     } wr
  .Info= 77; .Name= 'AkGCrun '; { acknowlegde                     } wr
  .Info= 78; .Name= 'NrGCrun '; { not renewed                     } wr

  .Info= 79; .Name= 'GCincomp'; { LRU - general-check incomplete  } wr
  .Info= 80; .Name= 'AkGCinco'; { acknowlegde                     } wr
  .Info= 81; .Name= 'NrGCinco'; { not renewed                     } wr

  .Info= 82; .Name= 'RC1Alarm'; { LRU - renewal-check 1 alarm     } wr
  .Info= 83; .Name= 'AkRC1Ala'; { acknowlegde                     } wr
  .Info= 84; .Name= 'NrRC1Ala'; { not renewed                     } wr

  .Info= 85; .Name= 'RC2Alarm'; { LRU - renewal-check 2 alarm     } wr
  .Info= 86; .Name= 'AkRC2Ala'; { acknowlegde                     } wr
  .Info= 87; .Name= 'NrRC2Ala'; { not renewed                     } wr

  .Info= 88; .Name= 'LRUtoPCT'; { LRU - to PCT                    } wr
  .Info= 89; .Name= 'AkLRUPCT'; { acknowlegde                     } wr
  .Info= 90; .Name= 'NrLRUPCT'; { not renewed                     } wr

  .Info= 91; .Name= 'BufferOv'; { LRU - telegram-buffer-overflow  } wr
  .Info= 92; .Name= 'AkBuffOv'; { acknowlegde                     } wr
  .Info= 93; .Name= 'NrBuffOv'; { not renewed                     } wr

  .Info= 94; .Name= 'RunUpEV '; { LRU - run up event (IEC: TK70)  } wr
  .Info= 95; .Name= 'AkRunUpE'; { acknowlegde                     } wr
  .Info= 96; .Name= 'NrRunUpE'; { not renewed                     } wr

  .Info= 97; .Name= 'NoInCall'; { LRU no incall possible          } wr
  .Info= 98; .Name= 'AkNoInCa'; { acknowlegde                     } wr
  .Info= 99; .Name= 'NrNoInCa'; { not renewed                     } wr

  .Info=100; .Name= 'MaStoMod'; { master/stop mode                } wr
  .Info=101; .Name= 'AkMaStoM'; { acknowlegde                     } wr
  .Info=102; .Name= 'NrMaStoM'; { not renewed                     } wr

  .Info=103; .Name= 'QCMod   '; { QC mode                         } wr
  .Info=104; .Name= 'AkQCMod '; { acknowlegde                     } wr
  .Info=105; .Name= 'NrQCMod '; { not renewed                     } wr

  .Info=106; .Name= 'LRU_Lock'; { LRU locked                      } wr
  .Info=107; .Name= 'AkLRU_Lo'; { acknowlegde                     } wr
  .Info=108; .Name= 'NrLRU_Lo'; { not renewed                     } wr

  .Info=109; .Name= 'TM      '; { LRU local/remote controlled     } wr
  .Info=110; .Name= 'AkTM    '; { acknowlegde                     } wr
  .Info=111; .Name= 'NrTM    '; { not renewed                     } wr

  .Info=112; .Name= 'DFUR    '; { power supply/temperature alarm  } wr
  .Info=113; .Name= 'AkDFUR  '; { acknowlegde                     } wr
  .Info=114; .Name= 'NrDFUR  '; { not renewed                     } wr

  .Info=115; .Name= 'Awaken  '; { awaken/fast scan                } wr
  .Info=116; .Name= 'AkAwaken'; { acknowlegde                     } wr
  .Info=117; .Name= 'NrAwaken'; { not renewed                     } wr

  .Info=118; .Name= 'CouUpAbo'; { counter upload aborted          } wr
  .Info=119; .Name= 'AkCouUpA'; { acknowlegde                     } wr
  .Info=120; .Name= 'NrCouUpA'; { not renewed                     } wr

  .Info=121; .Name= 'Res_cmd '; { reset command                   } wr
  .Info=122; .Name= 'HgUp_cmd'; { hangup command                  } wr
  .Info=123; .Name= 'SOE_cmd '; { SOE scan command                } wr
  .Info=124; .Name= 'TSyn_cmd'; { time sync command               } wr
  .Info=125; .Name= 'GC_cmd  '; { GI command                      } wr
  .Info=126; .Name= 'Buf_Full'; { LRU buffer full (e.g. 50%)      } wr
  .Info=127; .Name= 'COI_PwON'; { COI local power ON              } wr
  .Info=128; .Name= 'COI_LRes'; { COI local manual reset          } wr
  .Info=129; .Name= 'COI_RRes'; { COI remote reset                } wr
  .Info=130; .Name= 'ClockErr'; { RTU clock error                 } wr
  .Info=131; .Name= 'InterErr'; { RTU internal error              } wr
  .Info=132; .Name= 'CR_cmd  '; { Counter-request command         } wr
  .Info=133; .Name= 'CF_cmd  '; { Counter-freeze command          } wr
  .Info=134; .Name= 'SysMsgGI'; { TG800: System msg GI command    } wr
  .Info=135; .Name= 'SysMsgQU'; { TG800: System msg GI flag reset } wr
  .Info=136; .Name= 'Spare136'; { Spare   136                     } wr
  .Info=137; .Name= 'Spare137'; { Spare   137                     } wr
  .Info=138; .Name= 'Spare138'; { Spare   138                     } wr
  .Info=139; .Name= 'Spare139'; { Spare   139                     } wr
  .Info=140; .Name= 'Spare140'; { Spare   140                     } wr
  .Info=141; .Name= 'Spare141'; { Spare   141                     } wr
  .Info=142; .Name= 'Spare142'; { Spare   142                     } wr
  .Info=143; .Name= 'Spare143'; { Spare   143                     } wr
  .Info=144; .Name= 'Spare144'; { Spare   144                     } wr

  .Info=145; .Name= 'TIdUndef'; { IEC:TypeId undefined            } wr
  .Info=146; .Name= 'CoT_NP  '; { IEC:Cause of Transm unplaus.    } wr
  .Info=147; .Name= 'SK_NP   '; { IEC:VarStructQual unplaus.      } wr
  .Info=148; .Name= 'SQB_NP  '; { IEC:SQ-Bit unplausible          } wr
  .Info=149; .Name= 'TRang_NP'; { IEC:Time unplausible            } wr
  .Info=150; .Name= 'ElRan_NP'; { IEC:Out of range                } wr
  .Info=151; .Name= 'StaPChk '; { IEC:periodical Check ok         } wr
  .Info=152; .Name= 'qStaPChk'; { Quittierung                     } wr
  .Info=153; .Name= 'InitPosi'; { IEC:Init. RTU possible          } wr
  .Info=154; .Name= 'InitNPos'; { IEC:Init. RTU not possible      } wr
  .Info=155; .Name= 'GI_Poss '; { IEC:Gi possible no/yes          } wr
  .Info=156; .Name= 'qGI_Poss'; { Quittierung                     } wr
  .Info=157; .Name= 'NoObj_NP'; { IEC: Number Objects not plausib.} wr

  .Info=158; .Name= 'Spare158'; { Spare158                        } wr


.NoElTyp= neALARM5;   { EPM: program indication                   }
  .Info= 1; .Name= 'Al5Inf01';  { Status Info  1                  } wr
  .Info= 2; .Name= 'Al5Inf02';  { Status Info  2                  } wr
  .Info= 3; .Name= 'Al5Inf03';  { Status Info  3                  } wr
  .Info= 4; .Name= 'Al5Inf04';  { Status Info  4                  } wr
  .Info= 5; .Name= 'Al5Inf05';  { Status Info  5                  } wr
  .Info= 6; .Name= 'Al5Inf06';  { Status Info  6                  } wr
  .Info= 7; .Name= 'Al5Inf07';  { Status Info  7                  } wr
  .Info= 8; .Name= 'Al5Inf08';  { Status Info  8                  } wr
  .Info= 9; .Name= 'Al5Inf09';  { Status Info  9                  } wr
  .Info=10; .Name= 'Al5Inf10';  { Status Info 10                  } wr
  .Info=11; .Name= 'Al5Inf11';  { Status Info 11                  } wr
  .Info=12; .Name= 'Al5Inf12';  { Status Info 12                  } wr
  .Info=13; .Name= 'Al5Inf13';  { Status Info 13                  } wr
  .Info=14; .Name= 'Al5Inf14';  { Status Info 14                  } wr
  .Info=15; .Name= 'Al5Inf15';  { Status Info 15                  } wr
  .Info=16; .Name= 'Al5Inf16';  { Status Info 16                  } wr
  .Info=17; .Name= 'Al5Inf17';  { Status Info 17                  } wr
  .Info=18; .Name= 'Al5Inf18';  { Status Info 18                  } wr
  .Info=19; .Name= 'Al5Inf19';  { Status Info 19                  } wr
  .Info=20; .Name= 'Al5Inf20';  { Status Info 20                  } wr
  .Info=21; .Name= 'Al5Ack01';  { acknowledge marker status  1    } wr
  .Info=22; .Name= 'Al5Ack02';  { acknowledge marker status  2    } wr
  .Info=23; .Name= 'Al5Ack03';  { acknowledge marker status  3    } wr
  .Info=24; .Name= 'Al5Ack04';  { acknowledge marker status  4    } wr
  .Info=25; .Name= 'Al5Ack05';  { acknowledge marker status  5    } wr
  .Info=26; .Name= 'Al5Ack06';  { acknowledge marker status  6    } wr
  .Info=27; .Name= 'Al5Ack07';  { acknowledge marker status  7    } wr
  .Info=28; .Name= 'Al5Ack08';  { acknowledge marker status  8    } wr
  .Info=29; .Name= 'Al5Ack09';  { acknowledge marker status  9    } wr
  .Info=30; .Name= 'Al5Ack10';  { acknowledge marker status 10    } wr
  .Info=31; .Name= 'Al5Ack11';  { acknowledge marker status 11    } wr
  .Info=32; .Name= 'Al5Ack12';  { acknowledge marker status 12    } wr
  .Info=33; .Name= 'Al5Ack13';  { acknowledge marker status 13    } wr
  .Info=34; .Name= 'Al5Ack14';  { acknowledge marker status 14    } wr
  .Info=35; .Name= 'Al5Ack15';  { acknowledge marker status 15    } wr
  .Info=36; .Name= 'Al5Ack16';  { acknowledge marker status 16    } wr
  .Info=37; .Name= 'Al5Ack17';  { acknowledge marker status 17    } wr
  .Info=38; .Name= 'Al5Ack18';  { acknowledge marker status 18    } wr
  .Info=39; .Name= 'Al5Ack19';  { acknowledge marker status 19    } wr
  .Info=40; .Name= 'Al5Ack20';  { acknowledge marker status 20    } wr
  .Info=41; .Name= 'Al5ROp01';  { removed from operation Info  1  } wr
  .Info=42; .Name= 'Al5ROp02';  { removed from operation Info  2  } wr
  .Info=43; .Name= 'Al5ROp03';  { removed from operation Info  3  } wr
  .Info=44; .Name= 'Al5ROp04';  { removed from operation Info  4  } wr
  .Info=45; .Name= 'Al5ROp05';  { removed from operation Info  5  } wr
  .Info=46; .Name= 'Al5ROp06';  { removed from operation Info  6  } wr
  .Info=47; .Name= 'Al5ROp07';  { removed from operation Info  7  } wr
  .Info=48; .Name= 'Al5ROp08';  { removed from operation Info  8  } wr
  .Info=49; .Name= 'Al5ROp09';  { removed from operation Info  9  } wr
  .Info=50; .Name= 'Al5ROp10';  { removed from operation Info 10  } wr
  .Info=51; .Name= 'Al5ROp11';  { removed from operation Info 11  } wr
  .Info=52; .Name= 'Al5ROp12';  { removed from operation Info 12  } wr
  .Info=53; .Name= 'Al5ROp13';  { removed from operation Info 13  } wr
  .Info=54; .Name= 'Al5ROp14';  { removed from operation Info 14  } wr
  .Info=55; .Name= 'Al5ROp15';  { removed from operation Info 15  } wr
  .Info=56; .Name= 'Al5ROp16';  { removed from operation Info 16  } wr
  .Info=57; .Name= 'Al5ROp17';  { removed from operation Info 17  } wr
  .Info=58; .Name= 'Al5ROp18';  { removed from operation Info 18  } wr
  .Info=59; .Name= 'Al5ROp19';  { removed from operation Info 19  } wr
  .Info=60; .Name= 'Al5ROp20';  { removed from operation Info 20  } wr
  .Info=61; .Name= 'Al5AlI01';  { Alarm Inhibit Info  1           } wr
  .Info=62; .Name= 'Al5AlI02';  { Alarm Inhibit Info  2           } wr
  .Info=63; .Name= 'Al5AlI03';  { Alarm Inhibit Info  3           } wr
  .Info=64; .Name= 'Al5AlI04';  { Alarm Inhibit Info  4           } wr
  .Info=65; .Name= 'Al5AlI05';  { Alarm Inhibit Info  5           } wr
  .Info=66; .Name= 'Al5AlI06';  { Alarm Inhibit Info  6           } wr
  .Info=67; .Name= 'Al5AlI07';  { Alarm Inhibit Info  7           } wr
  .Info=68; .Name= 'Al5AlI08';  { Alarm Inhibit Info  8           } wr
  .Info=69; .Name= 'Al5AlI09';  { Alarm Inhibit Info  9           } wr
  .Info=70; .Name= 'Al5AlI10';  { Alarm Inhibit Info 10           } wr
  .Info=71; .Name= 'Al5AlI11';  { Alarm Inhibit Info 11           } wr
  .Info=72; .Name= 'Al5AlI12';  { Alarm Inhibit Info 12           } wr
  .Info=73; .Name= 'Al5AlI13';  { Alarm Inhibit Info 13           } wr
  .Info=74; .Name= 'Al5AlI14';  { Alarm Inhibit Info 14           } wr
  .Info=75; .Name= 'Al5AlI15';  { Alarm Inhibit Info 15           } wr
  .Info=76; .Name= 'Al5AlI16';  { Alarm Inhibit Info 16           } wr
  .Info=77; .Name= 'Al5AlI17';  { Alarm Inhibit Info 17           } wr
  .Info=78; .Name= 'Al5AlI18';  { Alarm Inhibit Info 18           } wr
  .Info=79; .Name= 'Al5AlI19';  { Alarm Inhibit Info 19           } wr
  .Info=80; .Name= 'Al5AlI20';  { Alarm Inhibit Info 20           } wr

.NoElTyp= neMESSAGE1; { transformer parallel          }
  .Info= 1; .Name= 'RemoOper';  { removed from operation          } wr
  .Info= 2; .Name= 'CtrlInhi';  { control inhibit                 } wr
  .Info= 3; .Name= 'TrSingle';  { transf. single mode             } wr
  .Info= 4; .Name= 'Para 123';  { transf. parallel 1//2//3        } wr
  .Info= 5; .Name= 'Para 12 ';  { transf. parallel 1//2           } wr
  .Info= 6; .Name= 'Para 13 ';  { transf. parallel 1//3           } wr
  .Info= 7; .Name= 'Para 23 ';  { transf. parallel 2//3           } wr
  .Info= 8; .Name= 'ParaDist';  { parallel mode disturbed         } wr
  .Info= 9; .Name= 'PaDi AlI';  { par.mode.dist.   alarm inhibit  } wr
  .Info=10; .Name= 'PaDi nr ';  { par.mode.dist.   not renewed    } wr
  .Info=11; .Name= 'Busy    ';  { syncr.device busy               } wr
  .Info=12; .Name= 'Busy nr ';  { syncr.dev.busy   not renewed    } wr
  .Info=13; .Name= 'OiT     ';  { tag 'Object in Test'            } wr
  .Info=14; .Name= 'AlarmInh';  { tag 'alarm inhibit'             } wr
  .Info=15; .Name= 'res15   ';  { free                            } wr
  .Info=16; .Name= 'res16   ';  { free                            } wr
  .Info=17; .Name= 'res17   ';  { fleeting                        } wr
  .Info=18; .Name= 'res18   ';  { fleeting                        } wr
  .Info=19; .Name= 'SpCo ok ';  { setpoint control ok             } wr
  .Info=20; .Name= 'SpRf nok';  { setpoint reflection nok         } wr
  .Info=21; .Name= 'SpSupnok';  { setpoint supervision error      } wr
  .Info=22; .Name= 'res22   ';  { fleeting                        } wr
  .Info=23; .Name= 'L1 -- L2';  { Line 1 parallel Line 2          } wr
  .Info=24; .Name= 'LiSingle';  { Line single mode                } wr
  .Info=25; .Name= 'LinesOff';  { Lines not on busbar             } wr
  .Info=26; .Name= 'LimVio  ';  { Limit violation                 } wr
  .Info=27; .Name= 'RM Mark ';  { Return Message Marker           } wr

.NoElTyp= neMESSAGE2; { message2 ( AGC-Messages )     }
  .Info= 1; .Name= 'RemoCont';  { Remote Control                  } wr
  .Info= 2; .Name= 'IntFcErr';  { Interface Error                 } wr
  .Info= 3; .Name= 'Msg2In3 ';  { info 3                          } wr
  .Info= 4; .Name= 'Msg2In4 ';  { info 4                          } wr
  .Info= 5; .Name= 'Msg2In5 ';  { info 5                          } wr
  .Info= 6; .Name= 'Msg2In6 ';  { info 6                          } wr
  .Info= 7; .Name= 'Msg2In7 ';  { info 7                          } wr
  .Info= 8; .Name= 'Msg2In8 ';  { info 8                          } wr
  .Info= 9; .Name= 'Msg2In9 ';  { info 9                          } wr
  .Info=10; .Name= 'Msg2In10';  { info 10                         } wr
  .Info=11; .Name= 'Msg2In11';  { info 11                         } wr
  .Info=12; .Name= 'Msg2In12';  { info 12                         } wr
  .Info=13; .Name= 'Msg2In13';  { info 13                         } wr
  .Info=14; .Name= 'Msg2In14';  { info 14                         } wr
  .Info=15; .Name= 'Msg2In15';  { info 15                         } wr
  .Info=16; .Name= 'Msg2In16';  { info 16                         } wr
  .Info=17; .Name= 'RM Mark ';  { Return Message Marker           } wr

.NoElTyp= neMESSAGE3; { Orders without response         }
  .Info= 1; .Name= 'res01   ';  { free                            } wr
  .Info= 2; .Name= 'res02   ';  { free                            } wr
  .Info= 3; .Name= 'SiCo1   ';  { single pole command             } wr
  .Info= 4; .Name= 'SiCo2   ';  { single pole command             } wr
  .Info= 5; .Name= 'SiCo3   ';  { single pole command             } wr
  .Info= 6; .Name= 'DoCo1   ';  { double pole command             } wr
  .Info= 7; .Name= 'DoCo2   ';  { double pole command             } wr
  .Info= 8; .Name= 'RM Mark ';  { Return Message Marker           } wr

.NoElTyp= neMESSAGE4; { Truck Location                }
  .Info= 1; .Name= 'TrNormal';  { Truck with normal work          } wr
  .Info= 2; .Name= 'TrUrgent';  { Truck with urgent work          } wr
  .Info= 3; .Name= 'TrFree  ';  { Free truck                      } wr
  .Info= 4; .Name= 'TrNotAv ';  { Truck not available             } wr
  .Info= 5; .Name= 'TrOutRa ';  { coordinats out of range         } wr
  .Info= 6; .Name= 'TrSiLost';  { GPS signal lost                 } wr
  .Info= 7; .Name= 'UL_Shed ';  { Underfrequency Load Shed        } wr
  .Info= 8; .Name= 'LoadShed';  { Load Shed                       } wr

.NoElTyp= neMESSAGE5; { Auxiliary devices             }
  .Info= 1; .Name= 'RemoOper';  { removed from operation          } wr
  .Info= 2; .Name= 'res2    ';  { reserve                         } wr
  .Info= 3; .Name= 'SwStat  ';  { switching state                 } wr
  .Info= 4; .Name= 'Dist    ';  { switching state       disturbed } wr
  .Info= 5; .Name= 'Ackn    ';  { switching state     ackn.       } wr
  .Info= 6; .Name= 'ManUpd  ';  { switching state       man.update} wr
  .Info= 7; .Name= 'AlStat  ';  { alarm state                     } wr
  .Info= 8; .Name= 'AlS   ak';  { alarm state         ackn.       } wr
  .Info= 9; .Name= 'AlS AlIn';  { alarm state           alarm inh.} wr
  .Info=10; .Name= 'AlS   nr';  { alarm state           not renew.} wr
  .Info=11; .Name= 'SwS AlIn';  { switching state       alarm inh.} wr
  .Info=12; .Name= 'SwS   nr';  { switching state       not renew.} wr
  .Info=13; .Name= 'Fleet1  ';  { Fleet1                          } wr
  .Info=14; .Name= 'Fl1   ak';  { Fleet1              ackn.       } wr
  .Info=15; .Name= 'Fl1 AlIn';  { Fleet1                alarm inh.} wr
  .Info=16; .Name= 'RM Mark ';  { Return Message Marker           } wr
  .Info=17; .Name= 'MeStat  ';  { Message status                  } wr
  .Info=18; .Name= 'MeS   nr';  { Message status        not renew.} wr


.NoElTyp= neDEVICE; { device status                   }
  .Info= 1; .Name= 'Status  ';  { status   Offline/Ready          } wr
  .Info= 2; .Name= 'Dist    ';  { disturbance                     } wr
  .Info= 3; .Name= 'Ackn    ';  { acknowledge                     } wr
  .Info= 4; .Name= 'ManUpdat';  { manual update                   } wr
  .Info= 5; .Name= 'LAN A   ';  { LAN A                           } wr
  .Info= 6; .Name= 'DistLANA';  { DistLANA                        } wr
  .Info= 7; .Name= 'AcknLANA';  { AcknLANA                        } wr
  .Info= 8; .Name= 'ManULANA';  { ManULANA                        } wr
  .Info= 9; .Name= 'LAN B   ';  { LAN B                           } wr
  .Info=10; .Name= 'DistLANB';  { DistLANB                        } wr
  .Info=11; .Name= 'AcknLANB';  { AcknLANB                        } wr
  .Info=12; .Name= 'ManULANB';  { ManULANB                        } wr
  .Info=13; .Name= 'RootVG  ';  { Disk Monitor - rootvg VG        } wr
  .Info=14; .Name= 'LDAP1   ';  { LDAP1                           } wr
  .Info=15; .Name= 'res15   ';  { free                            } wr
  .Info=16; .Name= 'res16   ';  { free                            } wr
  .Info=17; .Name= 'swCompSt';  { software computer status        } wr
  .Info=18; .Name= 'LoginFal';  { user login failed               } wr
  .Info=19; .Name= 'DOR  SID';  { Disk Monitor - DOR  Oracle SID  } wr
  .Info=20; .Name= 'SCADASID';  { Disk Monitor - SCADA Oracle SID } wr
  .Info=21; .Name= 'JASP SID';  { Disk Monitor - JASP Oracle SID  } wr
  .Info=22; .Name= 'HIS  SID';  { Disk Monitor - HIS  Oracle SID  } wr
  .Info=23; .Name= 'OM   SID';  { Disk Monitor - OM   Oracle SID  } wr
  .Info=24; .Name= 'NA   SID';  { Disk Monitor - NA   Oracle SID  } wr
  .Info=25; .Name= 'GCS  SID';  { Disk Monitor - GCS  Oracle SID  } wr
  .Info=26; .Name= 'OTS  SID';  { Disk Monitor - OTS  Oracle SID  } wr
  .Info=27; .Name= 'JROS SID';  { Disk Monitor - JROS Oracle SID  } wr
  .Info=28; .Name= 'res28   ';  { free                            } wr
  .Info=29; .Name= 'res29   ';  { free                            } wr
  .Info=30; .Name= 'res30   ';  { free                            } wr
  .Info=31; .Name= 'DevResp ';  { responsibility changed          } wr
  .Info=32; .Name= 'DevCompt';  { competences    changed          } wr
  .Info=33; .Name= 'user    ';  { user             (see password) } wr
  .Info=34; .Name= 'res34   ';  { free                            } wr
  .Info=35; .Name= 'res35   ';  { free                            } wr
  .Info=36; .Name= 'res36   ';  { free                            } wr
  .Info=37; .Name= 'res37   ';  { free                            } wr
  .Info=38; .Name= 'res38   ';  { free                            } wr
  .Info=39; .Name= 'res39   ';  { free                            } wr
  .Info=40; .Name= 'res40   ';  { free                            } wr
  .Info=41; .Name= 'res41   ';  { free                            } wr
  .Info=42; .Name= 'res42   ';  { free                            } wr
  .Info=43; .Name= 'res43   ';  { free                            } wr
  .Info=44; .Name= 'res44   ';  { free                            } wr
  .Info=45; .Name= 'res45   ';  { free                            } wr
  .Info=46; .Name= 'res46   ';  { free                            } wr
  .Info=47; .Name= 'res47   ';  { free                            } wr
  .Info=48; .Name= 'res48   ';  { free                            } wr
  .Info=49; .Name= 'res49   ';  { free                            } wr
  .Info=50; .Name= 'res50   ';  { free                            } wr
  .Info=51; .Name= 'res51   ';  { free                            } wr
  .Info=52; .Name= 'res52   ';  { free                            } wr
  .Info=53; .Name= 'res53   ';  { free                            } wr
  .Info=54; .Name= 'res54   ';  { free                            } wr
  .Info=55; .Name= 'res55   ';  { free                            } wr
  .Info=56; .Name= 'res56   ';  { free                            } wr
  .Info=57; .Name= 'UsrAcces';  { all users logon/logoff status   } wr
  .Info=58; .Name= 'res58   ';  { free                            } wr
  .Info=59; .Name= 'res59   ';  { free                            } wr
  .Info=60; .Name= 'res60   ';  { free                            } wr
  .Info=61; .Name= 'res61   ';  { free                            } wr
  .Info=62; .Name= 'res62   ';  { free                            } wr
  .Info=63; .Name= 'res63   ';  { free                            } wr
  .Info=64; .Name= 'res64   ';  { free                            } wr
  .Info=65; .Name= 'res65   ';  { free                            } wr
  .Info=66; .Name= 'res66   ';  { free                            } wr
  .Info=67; .Name= 'Sync St ';  { oracle redundancy monitoring    } wr

  { Infos 68 - 69 for neDEVICE are spare                          }

  .Info=70; .Name= 'CPS  srv';  { Application service CPS         } wr
  .Info=71; .Name= 'HIS  srv';  { Application service HIS         } wr
  .Info=72; .Name= 'OTS  srv';  { Application service OTS         } wr
  .Info=73; .Name= 'SC   srv';  { Application service SC          } wr
  .Info=74; .Name= 'TNA  srv';  { Application service TNA         } wr
  .Info=75; .Name= 'SNA  srv';  { Application service SNA         } wr
  .Info=76; .Name= 'OTNA srv';  { Application service OTNA        } wr
  .Info=77; .Name= 'OSTNAsrv';  { Application service OSTNA       } wr
  .Info=78; .Name= 'DS   srv';  { Application service DATASRVR    } wr
  .Info=79; .Name= 'STLF srv';  { Application service STLF        } wr
  .Info=80; .Name= 'COP  srv';  { Application service COP         } wr
  .Info=81; .Name= 'DNA  srv';  { Application service DNA         } wr
  .Info=82; .Name= 'sparesrv';  { Application service spare       } wr
  .Info=83; .Name= 'Printer ';  { Printer                         } wr

  { Infos 84 - 85 for neDEVICE are spare                          }

  .Info=86; .Name= 'Gong 1  ';  { gong message - gong 1           } wr
  .Info=87; .Name= 'Gong 2  ';  { gong message - gong 2           } wr
  .Info=88; .Name= 'Gong 3  ';  { gong message - gong 3           } wr
  .Info=89; .Name= 'Gong 4  ';  { gong message - gong 4           } wr
  .Info=90; .Name= 'GongCent';  { gong message - central gong     } wr
  .Info=91; .Name= 'GongDisa';  { gong message - gong disabled    } wr


.NoElTyp= neCOMPSTAT; { computer status               }
  .Info= 1; .Name= 'Level   ';  { level                           } wr
  .Info= 2; .Name= 'SW Stat ';  { software status                 } wr
  .Info= 3; .Name= 'LAN A   ';  { LAN controller A                } wr
  .Info= 4; .Name= 'DistLANA';  {   disturbance                   } wr
  .Info= 5; .Name= 'AcknLANA';  {   acknowledge                   } wr
  .Info= 6; .Name= 'ManULANA';  {   manual update                 } wr
  .Info= 7; .Name= 'LAN B   ';  { LAN controller B                } wr
  .Info= 8; .Name= 'DistLANB';  {   disturbance                   } wr
  .Info= 9; .Name= 'AcknLANB';  {   acknowledge                   } wr
  .Info=10; .Name= 'ManULANB';  {   manual update                 } wr
  .Info=11; .Name= 'Ticket 0';  { MCS - ticket's                  } wr
  .Info=12; .Name= 'Ticket 1';  {                                 } wr
  .Info=13; .Name= 'Ticket 2';  {                                 } wr
  .Info=14; .Name= 'Ticket 3';  {                                 } wr
  .Info=15; .Name= 'Ticket 4';  {                                 } wr
  .Info=16; .Name= 'Ticket 5';  {                                 } wr
  .Info=17; .Name= 'PC Ready';  { Process ready                   } wr
  .Info=18; .Name= 'Ti1Compl';  { Ticket 1 complete               } wr
  .Info=19; .Name= 'Ti2Compl';  { Ticket 2 complete               } wr
  .Info=20; .Name= 'Ti3Compl';  { Ticket 3 complete               } wr
  .Info=21; .Name= 'Ti4Compl';  { Ticket 4 complete               } wr
  .Info=22; .Name= 'Ti5Compl';  { Ticket 5 complete               } wr
  .Info=23; .Name= 'SyAextCl';  { Synchronisation LANA-ext.clock  } wr
  .Info=24; .Name= 'SyAintCl';  { Synchronisation LANA-int.clock  } wr
  .Info=25; .Name= 'SyBextCl';  { Synchronisation LANB-int.clock  } wr
  .Info=26; .Name= 'SyBintCl';  { Synchronisation LANB-int.clock  } wr
  .Info=27; .Name= 'SyncClM ';  { Synchronisation by clock-master } wr
  .Info=28; .Name= 'TimeDevA';  { time deviation LAN A            } wr
  .Info=29; .Name= 'ClMaster';  { clock-master                    } wr
  .Info=30; .Name= 'LAN C   ';  { LAN controller C                } wr
  .Info=31; .Name= 'DistLANC';  {   disturbance                   } wr
  .Info=32; .Name= 'AcknLANC';  {   acknowledge                   } wr
  .Info=33; .Name= 'ManULANC';  {   manual update                 } wr
  .Info=34; .Name= 'LAN D   ';  { LAN controller D                } wr
  .Info=35; .Name= 'DistLAND';  {   disturbance                   } wr
  .Info=36; .Name= 'AcknLAND';  {   acknowledge                   } wr
  .Info=37; .Name= 'ManULAND';  {   manual update                 } wr
  .Info=38; .Name= 'TimeDevB';  { time deviation LAN B            } wr
  .Info=39; .Name= 'SpecIntg';  { Spectrum Integrity              } wr
  .Info=40; .Name= 'DuplcIPs';  { duplicate IPs                   } wr
  .Info=41; .Name= 'Xhosts  ';  {                                 } wr
  .Info=42; .Name= 'DuplcIDs';  { duplicate IDs                   } wr
  .Info=43; .Name= 'SpecRela';  { Spectrum Relations              } wr
  .Info=44; .Name= 'Coredump';  { Coredump (const iCoredumps)     } wr
  .Info=45; .Name= 'SBOverfl';  { softbus overflow                } wr
  .Info=46; .Name= 'FileSyst';  { File System problem             } wr
  .Info=47; .Name= 'AntiVir ';  {                                 } wr
  .Info=48; .Name= 'AntiVirF';  { AntiVirus Data Files            } wr
  .Info=49; .Name= 'PPMismat';  { PP Mismatch                     } wr
  .Info=50; .Name= 'ODVClCer';  { ODV Client Certif expiration    } wr
  .Info=51; .Name= 'SP3SeCer';  { SP3 Server Certif expiration    } wr
  .Info=52; .Name= 'SP3ToCer';  { SP3 Token  Certif expiration    } wr
  .Info=53; .Name= 'WebSvCer';  { Webserver  Certif expiration    } wr
  .Info=54; .Name= 'EASE Cer';  { MMS-EASE   Certif expiration    } wr
  .Info=55; .Name= 'LDAP Cer';  { LDAP       Certif expiration    } wr
  .Info=56; .Name= 'PortScan';  { Port Scan                       } wr
  .Info=57; .Name= 'LANActiv';  { High LAN Activity               } wr
  .Info=58; .Name= 'File Acc';  { Unauth File Access              } wr
  .Info=59; .Name= 'OS Login';  { Failed OS Login                 } wr
  .Info=60; .Name= 'SupyCont';  { Excessive Supy Controls         } wr
  .Info=61; .Name= 'SeDNPCer';  { Secure DNP Certif expiration    } wr


.NoElTyp= neRTXSTAT; { RTU and TCI alarms             }
  .Info= 1; .Name= 'Al 1    ';  {                                 } wr
  .Info= 2; .Name= 'Al 2    ';  {                                 } wr
  .Info= 3; .Name= 'Al 3    ';  {                                 } wr
  .Info= 4; .Name= 'Al 4    ';  {                                 } wr
  .Info= 5; .Name= 'Al 5    ';  {                                 } wr
  .Info= 6; .Name= 'Al 6    ';  {                                 } wr
  .Info= 7; .Name= 'Al 7    ';  {                                 } wr
  .Info= 8; .Name= 'Al 8    ';  {                                 } wr
  .Info= 9; .Name= 'Al 9    ';  {                                 } wr
  .Info=10; .Name= 'Al 10   ';  {                                 } wr
  .Info=11; .Name= 'Al 11   ';  {                                 } wr
  .Info=12; .Name= 'Al 12   ';  {                                 } wr
  .Info=13; .Name= 'Al 13   ';  {                                 } wr
  .Info=14; .Name= 'Al 14   ';  {                                 } wr
  .Info=15; .Name= 'Al 15   ';  {                                 } wr
  .Info=16; .Name= 'Al 16   ';  {                                 } wr
  .Info=17; .Name= 'Al 17   ';  {                                 } wr
  .Info=18; .Name= 'Al 18   ';  {                                 } wr
  .Info=19; .Name= 'Al 19   ';  {                                 } wr
  .Info=20; .Name= 'Al 20   ';  {                                 } wr
  .Info=21; .Name= 'Al 21   ';  {                                 } wr
  .Info=22; .Name= 'Al 22   ';  {                                 } wr
  .Info=23; .Name= 'Al 23   ';  {                                 } wr
  .Info=24; .Name= 'Al 24   ';  {                                 } wr
  .Info=25; .Name= 'Al 25   ';  {                                 } wr
  .Info=26; .Name= 'Al 26   ';  {                                 } wr
  .Info=27; .Name= 'Al 27   ';  {                                 } wr
  .Info=28; .Name= 'Al 28   ';  {                                 } wr
  .Info=29; .Name= 'Al 29   ';  {                                 } wr
  .Info=30; .Name= 'Al 30   ';  {                                 } wr
  .Info=31; .Name= 'Al 31   ';  {                                 } wr
  .Info=32; .Name= 'Al 32   ';  {                                 } wr
  .Info=33; .Name= 'Al 33   ';  {                                 } wr
  .Info=34; .Name= 'Al 34   ';  {                                 } wr
  .Info=35; .Name= 'Al 35   ';  {                                 } wr
  .Info=36; .Name= 'Al 36   ';  {                                 } wr
  .Info=37; .Name= 'Al 37   ';  {                                 } wr
  .Info=38; .Name= 'Al 38   ';  {                                 } wr
  .Info=39; .Name= 'Al 39   ';  {                                 } wr
  .Info=40; .Name= 'Al 40   ';  {                                 } wr
  .Info=41; .Name= 'Al 41   ';  {                                 } wr
  .Info=42; .Name= 'Al 42   ';  {                                 } wr
  .Info=43; .Name= 'Al 43   ';  {                                 } wr
  .Info=44; .Name= 'Al 44   ';  {                                 } wr
  .Info=45; .Name= 'Al 45   ';  {                                 } wr
  .Info=46; .Name= 'Al 46   ';  {                                 } wr
  .Info=47; .Name= 'Al 47   ';  {                                 } wr
  .Info=48; .Name= 'Al 48   ';  {                                 } wr
  .Info=49; .Name= 'Al 49   ';  {                                 } wr
  .Info=50; .Name= 'Al 50   ';  {                                 } wr
  .Info=51; .Name= 'Al 51   ';  {                                 } wr
  .Info=52; .Name= 'Al 52   ';  {                                 } wr
  .Info=53; .Name= 'Al 53   ';  {                                 } wr
  .Info=54; .Name= 'Al 54   ';  {                                 } wr
  .Info=55; .Name= 'Al 55   ';  {                                 } wr
  .Info=56; .Name= 'Al 56   ';  {                                 } wr
  .Info=57; .Name= 'Al 57   ';  {                                 } wr
  .Info=58; .Name= 'Al 58   ';  {                                 } wr
  .Info=59; .Name= 'Al 59   ';  {                                 } wr
  .Info=60; .Name= 'Al 60   ';  {                                 } wr
  .Info=61; .Name= 'Al 61   ';  {                                 } wr
  .Info=62; .Name= 'Al 62   ';  {                                 } wr
  .Info=63; .Name= 'Al 63   ';  {                                 } wr
  .Info=64; .Name= 'Alrm Inh';  {Alarm Inhibit                    } wr
  .Info=65; .Name= 'RtuGrp1 ';  {                                 } wr
  .Info=66; .Name= 'RtuGrp1A';  {                                 } wr
  .Info=67; .Name= 'RtuGrp2 ';  {                                 } wr
  .Info=68; .Name= 'RtuGrp2A';  {                                 } wr
  .Info=69; .Name= 'RtuGrp3 ';  {                                 } wr
  .Info=70; .Name= 'RtuGrp3A';  {                                 } wr
  .Info=71; .Name= 'RtuGrp4 ';  {                                 } wr
  .Info=72; .Name= 'RtuGrp4A';  {                                 } wr
  .Info=73; .Name= 'RtuGrp5 ';  {                                 } wr
  .Info=74; .Name= 'RtuGrp5A';  {                                 } wr
  .Info=75; .Name= 'RtuGrp6 ';  {                                 } wr
  .Info=76; .Name= 'RtuGrp6A';  {                                 } wr
  .Info=77; .Name= 'RtuGrp7 ';  {                                 } wr
  .Info=78; .Name= 'RtuGrp7A';  {                                 } wr
  .Info=79; .Name= 'RtuGrp8 ';  {                                 } wr
  .Info=80; .Name= 'RtuGrp8A';  {                                 } wr
  .Info=81; .Name= 'RtuGrp9 ';  {                                 } wr
  .Info=82; .Name= 'RtuGrp9A';  {                                 } wr
  .Info=83; .Name= 'RtuGrp10';  {                                 } wr
  .Info=84; .Name= 'RtuGr10A';  {                                 } wr
  .Info=85; .Name= 'RtuGrp11';  {                                 } wr
  .Info=86; .Name= 'RtuGr11A';  {                                 } wr
  .Info=87; .Name= 'RtuGr12A';  {                                 } wr
  .Info=88; .Name= 'RtuGrp12';  {                                 } wr
  .Info=89; .Name= 'RtuGr13A';  {                                 } wr
  .Info=90; .Name= 'RtuGrp13';  {                                 } wr
  .Info=91; .Name= 'RtuGr14A';  {                                 } wr
  .Info=92; .Name= 'RtuGrp14';  {                                 } wr
  .Info=93; .Name= 'RtuGr15A';  {                                 } wr
  .Info=94; .Name= 'RtuGrp15';  {                                 } wr
  .Info=95; .Name= 'RtuGr16A';  {                                 } wr
  .Info=96; .Name= 'RtuGrp16';  {                                 } wr
  .Info=97; .Name= 'Comm Err';  {                                 } wr
  .Info=98; .Name= 'Rtu Id  ';  {                                 } wr
  .Info=99; .Name= 'RtuMode ';  {                                 } wr

.NoElTyp= neElcStat; { ELCOM connections              }
  .Info= 1; .Name= 'Status  ';  { status   Offline/Online         } wr
  .Info= 2; .Name= 'Ackn    ';  { acknowledge                     } wr
  .Info= 3; .Name= 'Info 3  ';  { reserved                        } wr
  .Info= 4; .Name= 'Info 4  ';  { reserved                        } wr
  .Info= 5; .Name= 'Info 5  ';  { reserved                        } wr
  .Info= 6; .Name= 'Info 6  ';  { reserved                        } wr
  .Info= 7; .Name= 'Info 7  ';  { reserved                        } wr
  .Info= 8; .Name= 'Info 8  ';  { reserved                        } wr
  .Info= 9; .Name= 'Info 9  ';  { reserved                        } wr
  .Info=10; .Name= 'Info 10 ';  { reserved                        } wr
  .Info=11; .Name= 'Info 11 ';  { reserved                        } wr
  .Info=12; .Name= 'Info 12 ';  { reserved                        } wr
  .Info=13; .Name= 'Info 13 ';  { reserved                        } wr
  .Info=14; .Name= 'Info 14 ';  { reserved                        } wr
  .Info=15; .Name= 'Info 15 ';  { reserved                        } wr
  .Info=16; .Name= 'Info 16 ';  { reserved                        } wr
  .Info=17; .Name= 'Suffx-AA';  { client group definition      AA } wr
  .Info=18; .Name= 'Suffx-AB';  { client spont. data transfer  AB } wr
  .Info=19; .Name= 'Suffx-AC';  { client cyclic data transfer  AC } wr
  .Info=20; .Name= 'Suffx-AD';  { client scedule data transfer AD } wr
  .Info=21; .Name= 'Suffx-AE';  { client archive data transfer AE } wr
  .Info=22; .Name= 'Suffx-AF';  { client test connection       AF } wr
  .Info=23; .Name= 'Suffx-AG';  { client supervisory control   AG } wr
  .Info=24; .Name= 'Suffx-AH';  { client reserve               AH } wr
  .Info=25; .Name= 'Suffx-BA';  { server group definition      BA } wr
  .Info=26; .Name= 'Suffx-BB';  { server spont. data transfer  BB } wr
  .Info=27; .Name= 'Suffx-BC';  { server cyclic data transfer  BC } wr
  .Info=28; .Name= 'Suffx-BD';  { server scedule data transfer BD } wr
  .Info=29; .Name= 'Suffx-BE';  { server archive data transfer BE } wr
  .Info=30; .Name= 'Suffx-BF';  { server test connection       BF } wr
  .Info=31; .Name= 'Suffx-BG';  { server supervisory control   BG } wr
  .Info=32; .Name= 'Suffx-BH';  { server reserve               BH } wr
  .Info=33; .Name= 'Info 33 ';  { IFS_SEND_FTAB_INFO              } wr
  .Info=34; .Name= 'Info 34 ';  { IFS_SEND_COLDSTART_INFO         } wr
  .Info=35; .Name= 'Info 35 ';  { IFS_FTAB_LOADING_INFO           } wr
  .Info=36; .Name= 'Info 36 ';  { IFS_INDICATION_FAULTY           } wr
  .Info=37; .Name= 'Info 37 ';  { IFS_ANALOG_FAULTY               } wr
  .Info=38; .Name= 'Info 38 ';  { IFS_DIGITAL_FAULTY              } wr
  .Info=39; .Name= 'Info 39 ';  { IFS_COUNTER_FAULTY              } wr
  .Info=40; .Name= 'Info 40 ';  { IFS_REG_COMMAND_FAULTY          } wr
  .Info=41; .Name= 'Info 41 ';  { IFS_SETPOINT_COMMAND_FAULTY     } wr
  .Info=42; .Name= 'Info 42 ';  { IFS_GOM_FAULTY                  } wr
  .Info=43; .Name= 'Info 43 ';  { IFS_RTU_FAULTY                  } wr
  .Info=44; .Name= 'Info 44 ';  { IFS_RTU_ACTIVE                  } wr
  .Info=45; .Name= 'Info 45 ';  { IFS_RTU_SYNCHRONIZED            } wr
  .Info=46; .Name= 'Info 46 ';  { IFS_EXTERNAL_CLOCK_INOPERABLE   } wr
  .Info=47; .Name= 'Info 47 ';  { IFS_LOCAL_PRINTER_OFFLINE       } wr
  .Info=48; .Name= 'Info 48 ';  { IFS_COMMAND_BLOCKED             } wr
  .Info=49; .Name= 'Info 49 ';  { IFS_BACKUP_BATTERY_ON           } wr
  .Info=50; .Name= 'Info 50 ';  { IFS_BACKUP_BATTERY_LOW          } wr
  .Info=51; .Name= 'Info 51 ';  { IFS_LOCAL_PRINTER_OUT_OF_SERVICE} wr
  .Info=52; .Name= 'Info 52 ';  { IFS_RTU_RESTARTED               } wr
  .Info=53; .Name= 'Info 53 ';  { IFS_DATA_LOSS                   } wr
  .Info=54; .Name= 'Info 54 ';  { IFS_FTAB_FAULTY                 } wr
  .Info=55; .Name= 'Info 55 ';  { IFS_DIAL_UP_CONNECTED           } wr
  .Info=56; .Name= 'Info 56 ';  { IFS_COMMANDDIR_DISTURBED        } wr
  .Info=57; .Name= 'Info 57 ';  { IFS_CONTACT_BOUNCING            } wr
  .Info=58; .Name= 'Info 58 ';  { IFS_INDICATION_VOLTAGE_FAULT    } wr
  .Info=59; .Name= 'Info 59 ';  { IFS_FUSE_FAULT                  } wr
  .Info=60; .Name= 'Info 60 ';  { IFS_SEQUENCE_NUMBER_ERROR       } wr
  .Info=61; .Name= 'Info 61 ';  { IFS_TEST_TELEGRAM_ERROR         } wr
  .Info=62; .Name= 'Info 62 ';  { IFS_COMMANDOUT_FAULT            } wr
  .Info=63; .Name= 'Info 63 ';  { IFS_COMM_NOT_EXEC               } wr
  .Info=64; .Name= 'Info 64 ';  { IFS_SEQUENCE_NUMBER_OVERFLOW    } wr
  .Info=65; .Name= 'Info 65 ';  { IFS_RTU_PULSE_DISTORTION        } wr
  .Info=66; .Name= 'Info 66 ';  { IFS_ACTIVE_MON_DIR_DISTURBED    } wr
  .Info=67; .Name= 'Info 67 ';  { IFS_ACTIVE_SERVER               } wr
  .Info=69; .Name= 'Info 69 ';  { IFS_DEVICE_TROUBLE              } wr
  .Info=70; .Name= 'Info 70 ';  { IFS_FUNCTION_BAD                } wr
  .Info=71; .Name= 'Info 71 ';  { IFS_OBJECT_BAD                  } wr
  .Info=72; .Name= 'Info 72 ';  { IFS_PARAMETER_BAD               } wr
  .Info=73; .Name= 'Info 73 ';  { IFS_OPERATION_BUSY              } wr
  .Info=74; .Name= 'Info 74 ';  { IFS_CFG_CORRUPT                 } wr
  .Info=75; .Name= 'Info 75 ';  { IFS_BAD_LENGTH                  } wr
  .Info=76; .Name= 'Info 76 ';  { IFS_UNEXPECTED_SPONTANEOUS_MSG  } wr
  .Info=77; .Name= 'Info 77 ';  { IFS_BAD_ADDRESS                 } wr
  .Info=78; .Name= 'Info 78 ';  { IFS_PROTOCOL_VIOLATION          } wr
  .Info=79; .Name= 'Info 79 ';  { IFS_BAD_CRC                     } wr
  .Info=80; .Name= 'Info 80 ';  { IFS_FSG_MISMATCH                } wr
  .Info=81; .Name= 'Info 81 ';  { IFS_GI_SCAN_GROUP_TRIGGER       } wr
  .Info=82; .Name= 'Info 82 ';  { IFS_TIMEOUT                     } wr
  .Info=83; .Name= 'Info 83 ';  { IFS_TCP_CONN_AVAIL_INFO         } wr
  .Info=84; .Name= 'Info 84 ';  { IFS_RTU_LOCAL_CONTROL           } wr
  .Info=91; .Name= 'Info 91 ';  { IFS_RENEWAL_CHECK_1             } wr
  .Info=92; .Name= 'Info 92 ';  { IFS_RENEWAL_CHECK_2             } wr
  .Info=93; .Name= 'Info 93 ';  { IFS_RENEWAL_CHECK_3             } wr

.NoElTyp= neDsStatus; { DAS status            }
                                { DsDevSta                        }
  .Info= 1; .Name= 'Fail1   ';  { device (red. block 1) failure   } wr
  .Info= 2; .Name= 'AkFail1 ';  { acknowledge                     } wr
  .Info= 3; .Name= 'Dist1   ';  { device (red. block 1) disturbed } wr
  .Info= 4; .Name= 'AkDist1 ';  { acknowledge                     } wr
  .Info= 5; .Name= 'Fail2   ';  { device (red. block 2) failure   } wr
  .Info= 6; .Name= 'AkFail2 ';  { acknowledge                     } wr
  .Info= 7; .Name= 'Dist2   ';  { device (red. block 2) disturbed } wr
  .Info= 8; .Name= 'AkDist2 ';  { acknowledge                     } wr
  .Info= 9; .Name= 'Fail3   ';  { device (red. block 3) failure   } wr
  .Info=10; .Name= 'AkFail3 ';  { acknowledge                     } wr
  .Info=11; .Name= 'Dist3   ';  { device (red. block 3) disturbed } wr
  .Info=12; .Name= 'AkDist3 ';  { acknowledge                     } wr
  .Info=13; .Name= 'Info13  ';  { device (red. block 1) info3     } wr
  .Info=14; .Name= 'AkInfo13';  { acknowledge                     } wr
  .Info=15; .Name= 'Info15  ';  { device (red. block 2) info3     } wr
  .Info=16; .Name= 'AkInfo15';  { acknowledge                     } wr
  .Info=17; .Name= 'Info17  ';  { device (red. block 3) info3     } wr
  .Info=18; .Name= 'AkInfo17';  { acknowledge                     } wr

                                { DSLRUSta                        }
  .Info=19; .Name= 'LRU_Fail';  { LRU failure                     } wr
  .Info=20; .Name= 'AkLRUFai';  { acknowledge                     } wr
  .Info=21; .Name= 'LRU_Dist';  { LRU disturbed                   } wr
  .Info=22; .Name= 'AkLRUDis';  { acknowledge                     } wr
  .Info=23; .Name= 'InfoLost';  { LRU info lost                   } wr
  .Info=24; .Name= 'AkInfoLo';  { acknowledge                     } wr
  .Info=25; .Name= 'RunUp   ';  { LRU run up                      } wr
  .Info=26; .Name= 'AkRunUp ';  { acknowledge                     } wr
  .Info=27; .Name= 'GC_run  ';  { general check is running        } wr
  .Info=28; .Name= 'AkGCrun ';  { acknowledge                     } wr
  .Info=29; .Name= 'GCincomp';  { general check not complete      } wr
  .Info=30; .Name= 'AkGCinco';  { acknowledge                     } wr
  .Info=31; .Name= 'RC1Alarm';  { renewal-check 1 alarm           } wr
  .Info=32; .Name= 'AkRC1Ala';  { acknowledge alarm1 check of Ren.} wr
  .Info=33; .Name= 'RC2Alarm';  { renewal-check 2 alarm           } wr
  .Info=34; .Name= 'AkRC2Ala';  { acknowledge alarm2 check of Ren.} wr
  .Info=35; .Name= 'Info35  ';  { free   message                  } wr
  .Info=36; .Name= 'Akinfo35';  { free   message                  } wr
  .Info=37; .Name= 'Info37  ';  { free   message                  } wr
  .Info=38; .Name= 'AkInfo37';  { free   message                  } wr
  .Info=39; .Name= 'Info39  ';  { free   message                  } wr
  .Info=40; .Name= 'AkInfo39';  { free   message                  } wr
  .Info=41; .Name= 'info41  ';  { free   message                  } wr
  .Info=42; .Name= 'info42  ';  { free   control                  } wr
  .Info=43; .Name= 'info43  ';  { free   control                  } wr
  .Info=44; .Name= 'info44  ';  { free   control                  } wr
  .Info=45; .Name= 'info45  ';  { free   control                  } wr
  .Info=46; .Name= 'info46  ';  { free   control                  } wr
  .Info=47; .Name= 'GC_cmd  ';  { GC command                      } wr
  .Info=48; .Name= 'CR_cmd  ';  { counter-request command         } wr
  .Info=49; .Name= 'CF_cmd  ';  { counter-freeze command          } wr

                                { DSDevSta                        }
  .Info=50; .Name= 'Info50  ';  { device (red. block 1) info4     } wr
  .Info=51; .Name= 'AkInfo50';  { acknowledge                     } wr
  .Info=52; .Name= 'Info52  ';  { device (red. block 2) info4     } wr
  .Info=53; .Name= 'AkInfo52';  { acknowledge                     } wr
  .Info=54; .Name= 'Info54  ';  { device (red. block 3) info4     } wr
  .Info=55; .Name= 'AkInfo54';  { acknowledge                     } wr
  .Info=56; .Name= 'Info56  ';  { device (red. block 1) info5     } wr
  .Info=57; .Name= 'Info57  ';  { device (red. block 1) info6     } wr
  .Info=58; .Name= 'comp1 pc';  { device (red. block 1) ist pc    } wr
  .Info=59; .Name= 'Info59  ';  { device (red. block 2) info5     } wr
  .Info=60; .Name= 'Info60  ';  { device (red. block 2) info6     } wr
  .Info=61; .Name= 'comp2 pc';  { device (red. block 2) ist pc    } wr
  .Info=62; .Name= 'Info62  ';  { device (red. block 3) info5     } wr
  .Info=63; .Name= 'Info63  ';  { device (red. block 3) info6     } wr
  .Info=64; .Name= 'comp3 pc';  { device (red. block 3) pc        } wr
  .Info=65; .Name= 'Nr fail1';  { notren (red. block 1) failure   } wr
  .Info=66; .Name= 'Nr dist1';  { notren (red. block 1) disturbed } wr
  .Info=67; .Name= 'Nr Inf13';  { notren (red. block 1) info3     } wr
  .Info=68; .Name= 'Nr Inf14';  { notren (red. block 1) info4     } wr
  .Info=69; .Name= 'Akcp1 pc';  { ackn.  (red. block 1) pc        } wr
  .Info=70; .Name= 'Nrcp1 pc';  { notren (red. block 1) pc        } wr
  .Info=71; .Name= 'Nr fail2';  { notren (red. block 2) failure   } wr
  .Info=72; .Name= 'Nr dist2';  { notren (red. block 2) disturbed } wr
  .Info=73; .Name= 'Nr Inf15';  { notren (red. block 2) info3     } wr
  .Info=74; .Name= 'Nr Inf52';  { notren (red. block 2) info4     } wr
  .Info=75; .Name= 'Akcp2 pc';  { ackn.  (red. block 2) pc        } wr
  .Info=76; .Name= 'Nrcp2 pc';  { notren (red. block 2) pc        } wr
  .Info=77; .Name= 'Nr fail3';  { notren (red. block 3) failure   } wr
  .Info=78; .Name= 'Nr dist3';  { notren (red. block 3) disturbed } wr
  .Info=79; .Name= 'Nr Inf17';  { notren (red. block 3) info3     } wr
  .Info=80; .Name= 'Nr Inf54';  { notren (red. block 3) info4     } wr
  .Info=81; .Name= 'Akcp3 pc';  { ackn.  (red. block 3  pc        } wr
  .Info=82; .Name= 'Nrcp3 pc';  { notren (red. block 3) pc        } wr
  .Info=83; .Name= 'CoDirPC ';  { command direction status PC     } wr
  .Info=84; .Name= 'CoDirPCT';  { command direction status PCT    } wr

                                { DSLRUSta                        }
  .Info=85; .Name= 'NrLruDis';  { notren LRU disturbed            } wr
  .Info=86; .Name= 'NrInfoLo';  { notren LRU info lost            } wr
  .Info=87; .Name= 'NrRunUp ';  { notren LRU run up               } wr
  .Info=88; .Name= 'NrGCrun ';  { notren general check is activ   } wr
  .Info=89; .Name= 'NrGCinco';  { notren general check not compl. } wr
  .Info=90; .Name= 'NrRC1Ala';  { notren alarm1 check of renewal  } wr
  .Info=91; .Name= 'NrRC2Ala';  { notren alarm2 check of renewal  } wr
  .Info=92; .Name= 'NrLruFai';  { notren LRU failure              } wr
  .Info=93; .Name= 'info93  ';  { free                            } wr
  .Info=94; .Name= 'info94  ';  { free                            } wr

.NoElTyp= neEnhSyStat; { enhanced system status       }
                                { datasave: daba-files            }
  .Info= 1; .Name= 'Status  ';  { status  start..br_fl07          } wr
  .Info= 2; .Name= 'Ackn    ';  { status             acknowledge  } wr
  .Info= 3; .Name= 'Repeat  ';  { repeat                          } wr
                                { datasave: arch-files            }
  .Info= 4; .Name= 'Warning ';  { Data loss warning               } wr
  .Info= 5; .Name= 'Critical';  { Data loss critical              } wr
  .Info= 6; .Name= 'Crit ak ';  { Data loss critical acknowledge  } wr
  .Info= 7; .Name= 'Lost    ';  { Data loss happend               } wr
  .Info= 8; .Name= 'Lost ak ';  { Data loss          acknowledge  } wr
  .Info= 9; .Name= 'Warn ak ';  { Data loss warning  acknowledge  } wr

  .Info=10; .Name= 'HFD     ';  { HFD subsystem status            } wr
  .Info=11; .Name= 'OraclePC';  { ORACLE subsystem status (PC)    } wr
  .Info=12; .Name= 'OracleSB';  { ORACLE subsystem status (SB)    } wr
  .Info=13; .Name= 'DiskRed ';  { disk redundance                 } wr

  .Info=14; .Name= 'HIS     ';  { HIS sh component status         } wr

  .Info=15; .Name= 'SNMP    ';  { SNMP client  status             } wr
  .Info=16; .Name= 'SNMPdist';  { SNMP client  status disturbed   } wr
  .Info=17; .Name= 'SNMPack ';  { SNMP client  status acknowledge } wr
  .Info=18; .Name= 'SNMPmanu';  { SNMP client  status manual upd. } wr
  .Info=19; .Name= 'SNMPAuth';  { SNMP authenfication failure     } wr
  .Info=20; .Name= 'SNMPStat';  { SNMP status information         } wr
  .Info=21; .Name= 'SNMPstop';  { SNMP forwarding to SCADA stopped} wr

  .Info=22; .Name= 'GGExtrOK';  { OGG Extract ok                  } wr
  .Info=23; .Name= 'GGExtrak';  { OGG Extract ok acknowledge      } wr
  .Info=24; .Name= 'GGReplOK';  { OGG Replicat ok                 } wr
  .Info=25; .Name= 'GGReplak';  { OGG Replicat ok acknowledge     } wr
  .Info=26; .Name= 'GGDiPaOK';  { OGG Distpath ok                 } wr
  .Info=27; .Name= 'GGDiPaak';  { OGG DistPath ok acknowledge     } wr

.NoElTyp= neCcStatus;           { control center status           }
  .Info= 1; .Name= 'CcLink  ';  { Controlcenter Link (up or down) } wr
  .Info= 2; .Name= 'AcCoFail';  { " acknowledgement marker        } wr
  .Info= 3; .Name= 'CcDrAsyn';  { data responsibility asynchronous} wr
  .Info= 4; .Name= 'AcDrAsyn';  { " acknowledgement marker        } wr
  .Info= 5; .Name= 'CcGiActi';  { general inquiry active          } wr
  .Info= 6; .Name= 'CcGiAct1';  { general inquiry active (1)      } wr
  .Info= 7; .Name= 'CcGiAct2';  { general inquiry active (2)      } wr
  .Info= 8; .Name= 'CcGiAct3';  { general inquiry active (3)      } wr

.NoElTyp= neNcReports;          {network control report           }
  .Info= 1; .Name= 'Info 1  ';  { reserved                        } wr
  .Info= 2; .Name= 'Info 2  ';  { reserved.                       } wr
  .Info= 3; .Name= 'Info 3  ';  { reserved.                       } wr
  .Info= 4; .Name= 'Info 4  ';  { reserved.                       } wr
  .Info= 5; .Name= 'Info 5  ';  { reserved.                       } wr
  .Info= 6; .Name= 'RTUdist ';  { RTU disturbed                   } wr
  .Info= 7; .Name= 'RemoOper';  { removed from operation          } wr
  .Info= 8; .Name= 'CtrlInh ';  { control inhibit                 } wr
  .Info= 9; .Name= 'ObjInTes';  { tag 'Object in Test' for TA3    } wr
  .Info=10; .Name= 'ObInTeEl';  { tag 'Object in Test' for TA4    } wr
  .Info=11; .Name= 'UFD     ';  { tag 'Permit to work'            } wr
  .Info=12; .Name= 'ChkArea ';  { improper permissions for area   } wr
  .Info=13; .Name= 'TeleSign';  { tag 'info is teletransmitted'   } wr
  .Info=14; .Name= 'SwInProg';  { switch in progress              } wr
  .Info=15; .Name= 'RemOper1';  { remove from operation           } wr
  .Info=16; .Name= 'ChkMeCl ';  { wrong permissions for mess.class} wr
  .Info=17; .Name= 'OpDevFre';  { oper.Device free                } wr
  .Info=18; .Name= 'NoGround';  { tag 'earthfault'                } wr
  .Info=19; .Name= 'NoPower ';  { tag 'isolator oper.under load'  } wr
  .Info=20; .Name= 'LRU_Fail';  { RTU disturbed                   } wr
  .Info=21; .Name= 'AllowPW ';  { Permit to work are not fulfilled} wr
  .Info=22; .Name= 'TargPosi';  { Info in target position         } wr
  .Info=23; .Name= 'AcArColl';  { Collision of action areas       } wr
  .Info=24; .Name= 'AlarmInh';  { tag 'alarm inhibit' for TA3     } wr
  .Info=25; .Name= 'AlrmIhEl';  { tag 'alarm inhibit' for TA4     } wr
  .Info=26; .Name= 'Reserv26';  { Reserve 26                      } wr
  .Info=27; .Name= 'Reserv27';  { Reserve 27                      } wr
  .Info=28; .Name= 'Reserv28';  { Reserve 28                      } wr
  .Info=29; .Name= 'Reserv29';  { Reserve 29                      } wr
  .Info=30; .Name= 'Reserv30';  { Reserve 30                      } wr
  .Info=31; .Name= 'Reserv31';  { Reserve 31                      } wr
  .Info=32; .Name= 'Reserv32';  { Reserve 32                      } wr
  .Info=33; .Name= 'Reserv33';  { Reserve 33                      } wr
  .Info=34; .Name= 'Reserv34';  { Reserve 34                      } wr
  .Info=35; .Name= 'Reserv35';  { Reserve 35                      } wr
  .Info=36; .Name= 'Reserv36';  { Reserve 36                      } wr
  .Info=37; .Name= 'Reserv37';  { Reserve 37                      } wr
  .Info=38; .Name= 'Reserv38';  { Reserve 38                      } wr
  .Info=39; .Name= 'Reserv39';  { Reserve 39                      } wr
  .Info=40; .Name= 'Reserv40';  { Reserve 30                      } wr


.NoElTyp= neModemGrp;           { Modem Group Status Information  }
                                {    -------------------------    }
  .Info=  1; .Name= 'MOD1Fail'; { modem 1 failure                 } wr
  .Info=  2; .Name= 'AKMOD1FA'; { acknowledge marker              } wr
  .Info=  3; .Name= 'NRMOD1FA'; { not renewed                     } wr
  .Info=  4; .Name= 'MOD2Fail'; { modem 2 failure                 } wr
  .Info=  5; .Name= 'AKMOD2FA'; { acknowledge marker              } wr
  .Info=  6; .Name= 'NRMOD2FA'; { not renewed                     } wr
  .Info=  7; .Name= 'MOD3Fail'; { modem 3 failure                 } wr
  .Info=  8; .Name= 'AKMOD3FA'; { acknowledge marker              } wr
  .Info=  9; .Name= 'NRMOD3FA'; { not renewed                     } wr
  .Info= 10; .Name= 'MOD4Fail'; { modem 4 failure                 } wr
  .Info= 11; .Name= 'AKMOD4FA'; { acknowledge marker              } wr
  .Info= 12; .Name= 'NRMOD4FA'; { not renewed                     } wr
  .Info= 13; .Name= 'MOD5Fail'; { modem 5 failure                 } wr
  .Info= 14; .Name= 'AKMOD5FA'; { acknowledge marker              } wr
  .Info= 15; .Name= 'NRMOD5FA'; { not renewed                     } wr
  .Info= 16; .Name= 'MOD6Fail'; { modem 6 failure                 } wr
  .Info= 17; .Name= 'AKMOD6FA'; { acknowledge marker              } wr
  .Info= 18; .Name= 'NRMOD6FA'; { not renewed                     } wr
  .Info= 19; .Name= 'MOD7Fail'; { modem 7 failure                 } wr
  .Info= 20; .Name= 'AKMOD7FA'; { acknowledge marker              } wr
  .Info= 21; .Name= 'NRMOD7FA'; { not renewed                     } wr

  .Info= 22; .Name= 'MOD1dial'; { modem 1 dialing                 } wr
  .Info= 23; .Name= 'AKMOD1DI'; { acknowledge marker              } wr
  .Info= 24; .Name= 'NRMOD1DI'; { not renewed                     } wr
  .Info= 25; .Name= 'MOD2dial'; { modem 2 dialing                 } wr
  .Info= 26; .Name= 'AKMOD2DI'; { acknowledge marker              } wr
  .Info= 27; .Name= 'NRMOD2DI'; { not renewed                     } wr
  .Info= 28; .Name= 'MOD3dial'; { modem 3 dialing                 } wr
  .Info= 29; .Name= 'AKMOD3DI'; { acknowledge marker              } wr
  .Info= 30; .Name= 'NRMOD3DI'; { not renewed                     } wr
  .Info= 31; .Name= 'MOD4dial'; { modem 4 dialing                 } wr
  .Info= 32; .Name= 'AKMOD4DI'; { acknowledge marker              } wr
  .Info= 33; .Name= 'NRMOD4DI'; { not renewed                     } wr
  .Info= 34; .Name= 'MOD5dial'; { modem 5 dialing                 } wr
  .Info= 35; .Name= 'AKMOD5DI'; { acknowledge marker              } wr
  .Info= 36; .Name= 'NRMOD5DI'; { not renewed                     } wr
  .Info= 37; .Name= 'MOD6dial'; { modem 6 dialing                 } wr
  .Info= 38; .Name= 'AKMOD6DI'; { acknowledge marker              } wr
  .Info= 39; .Name= 'NRMOD6DI'; { not renewed                     } wr
  .Info= 40; .Name= 'MOD7dial'; { modem 7 dialing                 } wr
  .Info= 41; .Name= 'AKMOD7DI'; { acknowledge marker              } wr
  .Info= 42; .Name= 'NRMOD7DI'; { not renewed                     } wr

  .Info= 43; .Name= 'MOD1Esta'; { modem 1 established             } wr
  .Info= 44; .Name= 'AKMOD1ES'; { acknowledge marker              } wr
  .Info= 45; .Name= 'NRMOD1ES'; { not renewed                     } wr
  .Info= 46; .Name= 'MOD2Esta'; { modem 2 established             } wr
  .Info= 47; .Name= 'AKMOD2ES'; { acknowledge marker              } wr
  .Info= 48; .Name= 'NRMOD2ES'; { not renewed                     } wr
  .Info= 49; .Name= 'MOD3Esta'; { modem 3 established             } wr
  .Info= 50; .Name= 'AKMOD3ES'; { acknowledge marker              } wr
  .Info= 51; .Name= 'NRMOD3ES'; { not renewed                     } wr
  .Info= 52; .Name= 'MOD4Esta'; { modem 4 established             } wr
  .Info= 53; .Name= 'AKMOD4ES'; { acknowledge marker              } wr
  .Info= 54; .Name= 'NRMOD4ES'; { not renewed                     } wr
  .Info= 55; .Name= 'MOD5Esta'; { modem 5 established             } wr
  .Info= 56; .Name= 'AKMOD5ES'; { acknowledge marker              } wr
  .Info= 57; .Name= 'NRMOD5ES'; { not renewed                     } wr
  .Info= 58; .Name= 'MOD6Esta'; { modem 6 established             } wr
  .Info= 59; .Name= 'AKMOD6ES'; { acknowledge marker              } wr
  .Info= 60; .Name= 'NRMOD6ES'; { not renewed                     } wr
  .Info= 61; .Name= 'MOD7Esta'; { modem 7 established             } wr
  .Info= 62; .Name= 'AKMOD7ES'; { acknowledge marker              } wr
  .Info= 63; .Name= 'NRMOD7ES'; { not renewed                     } wr

  .Info= 64; .Name= 'MOD1Avai'; { modem 1 available               } wr
  .Info= 65; .Name= 'AKMOD1AV'; { acknowledge marker              } wr
  .Info= 66; .Name= 'NRMOD1AV'; { not renewed                     } wr
  .Info= 67; .Name= 'MOD2Avai'; { modem 2 available               } wr
  .Info= 68; .Name= 'AKMOD2AV'; { acknowledge marker              } wr
  .Info= 69; .Name= 'NRMOD2AV'; { not renewed                     } wr
  .Info= 70; .Name= 'MOD3Avai'; { modem 3 available               } wr
  .Info= 71; .Name= 'AKMOD3AV'; { acknowledge marker              } wr
  .Info= 72; .Name= 'NRMOD3AV'; { not renewed                     } wr
  .Info= 73; .Name= 'MOD4Avai'; { modem 4 available               } wr
  .Info= 74; .Name= 'AKMOD4AV'; { acknowledge marker              } wr
  .Info= 75; .Name= 'NRMOD4AV'; { not renewed                     } wr
  .Info= 76; .Name= 'MOD5Avai'; { modem 5 available               } wr
  .Info= 77; .Name= 'AKMOD5AV'; { acknowledge marker              } wr
  .Info= 78; .Name= 'NRMOD5AV'; { not renewed                     } wr
  .Info= 79; .Name= 'MOD6Avai'; { modem 6 available               } wr
  .Info= 80; .Name= 'AKMOD6AV'; { acknowledge marker              } wr
  .Info= 81; .Name= 'NRMOD6AV'; { not renewed                     } wr
  .Info= 82; .Name= 'MOD7Avai'; { modem 7 available               } wr
  .Info= 83; .Name= 'AKMOD7AV'; { acknowledge marker              } wr
  .Info= 84; .Name= 'NRMOD7AV'; { not renewed                     } wr

.NoElTyp= neTeArea;             { Dispatcher shift change         }
  .Info= 1; .Name= 'temp nob';  { temporarily not observed        } wr
  .Info= 2; .Name= 'perm nob';  { permanently not observed        } wr
  .Info= 3; .Name= 'obcount ';  { observer counter                } wr

closedb
$EOJ
