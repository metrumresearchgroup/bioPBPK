function jonesODEs!(du,u,p,t)
 
    C_EXG_Plasma = u.x[1]
    C_EDG_Plasma = u.x[2]
    C_EDG_LN = u.x[3]
    C_EDG = u.x[4]
    C_EXG_LN = u.x[5]
    C_EXG = u.x[6]
    C_FcRn_E6a = u.x[7]
    C_FcRn_E7b = u.x[8]
    C_FcRn_E7 = u.x[9]
    C_FcRn_ISM = u.x[10]
    C_FcRn_VM = u.x[11]

    ddtC_EXG_Plasma = similar(C_EXG_Plasma)
    ddtC_EDG_Plasma = similar(C_EDG_Plasma)
    ddtC_EDG_LN = similar(C_EDG_LN)
    ddtC_EDG = similar(C_EDG)
    ddtC_EXG_LN = similar(C_EXG_LN)
    ddtC_EXG = similar(C_EXG)
    ddtC_FcRn_E6a = similar(C_FcRn_E6a)
    ddtC_FcRn_E7b = similar(C_FcRn_E7b)
    ddtC_FcRn_E7 = similar(C_FcRn_E7)
    ddtC_FcRn_ISM = similar(C_FcRn_ISM)
    ddtC_FcRn_VM = similar(C_FcRn_VM)

     N_Organs = 15
     # Organ Indices
     Lung = 1
     Liver = 2
     Heart = 3
     Muscle = 4
     Skin = 5
     Adipose = 6
     Bone = 7
     Brain = 8
     Kidney = 9
     SI = 10
     LI = 11
     Pancreas = 12
     Thymus = 13
     Spleen = 14
     Other = 15
 
     # mAb Location Indices
     V = 1
     VM = 2
     E7 = 3
     E6a = 4
     E7b = 5
     ISM = 6
     IntS = 7
     bound_VM = 8
     bound_E7 = 9
     bound_E6a = 10
     bound_E7b = 11
     bound_ISM = 12
     bound2_VM = 13
     bound2_E7 = 14
     bound2_E6a = 15
     bound2_E7b = 16
     bound2_ISM = 17
     bound_VM_mem = 18
     bound_ISM_mem = 19
 
     # Reflection Coefficients
     sigma_V = zeros(15)
     sigma_V[1] = 0.95
     sigma_V[2] = 0.85
     sigma_V[3] = 0.95
     sigma_V[4] = 0.95
     sigma_V[5] = 0.95
     sigma_V[6] = 0.95
     sigma_V[7] = 0.85
     sigma_V[8] = 0.99
     sigma_V[9] = 0.9
     sigma_V[10] = 0.9
     sigma_V[11] = 0.95
     sigma_V[12] = 0.9
     sigma_V[13] = 0.9
     sigma_V[14] = 0.85
     sigma_V[15] = 0.95
 
     sigma_IS = 0.2 * ones(15)
 
     # Endothelial Cell Fractions
     Endothelial_Cell_Frac = zeros(15)
     Endothelial_Cell_Frac[1] = 0.0834
     Endothelial_Cell_Frac[2] = 0.1877
     Endothelial_Cell_Frac[3] = 0.0011
     Endothelial_Cell_Frac[4] = 0.1928
     Endothelial_Cell_Frac[5] = 0.0819
     Endothelial_Cell_Frac[6] = 0.0999
     Endothelial_Cell_Frac[7] = 0.1478
     Endothelial_Cell_Frac[8] = 0.0115
     Endothelial_Cell_Frac[9] = 0.0157
     Endothelial_Cell_Frac[10] = 0.0121
     Endothelial_Cell_Frac[11] = 0.0209
     Endothelial_Cell_Frac[12] = 0.0001
     Endothelial_Cell_Frac[13] = 0.0001
     Endothelial_Cell_Frac[14] = 0.0499
     Endothelial_Cell_Frac[15] = 0.0951
 
     # Vascular Volumes
     V_V = zeros(15)
     V_V[1] = 55/1000
     V_V[2] = 183/1000
     V_V[3] = 13.1/1000
     V_V[4] = 662/1000
     V_V[5] = 127/1000
     V_V[6] = 148/1000
     V_V[7] = 224/1000
     V_V[8] = 31.9/1000
     V_V[9] = 18.2/1000
     V_V[10] = 6.15/1000
     V_V[11] = 8.74/1000
     V_V[12] = 5.7/1000
     V_V[13] = 0.353/1000
     V_V[14] = 26.8/1000
     V_V[15] = 204/1000
 
     # Interstitial Volumes
     V_IntS = zeros(15)
     V_IntS[1] = 300/1000
     V_IntS[2] = 429/1000
     V_IntS[3] = 48.8/1000
     V_IntS[4] = 3910/1000
     V_IntS[5] = 1125/1000
     V_IntS[6] = 2289/1000
     V_IntS[7] = 1891/1000
     V_IntS[8] = 261/1000
     V_IntS[9] = 49.8/1000
     V_IntS[10] = 67.1/1000
     V_IntS[11] = 95.3/1000
     V_IntS[12] = 18/1000
     V_IntS[13] = 1.09/1000
     V_IntS[14] = 44.3/1000
     V_IntS[15] = 831/1000
 
     # Cellular Volumes
     V_C = zeros(15)
     V_C[1] = 595/1000
     V_C[2] = 1371/1000
     V_C[3] = 267/1000
     V_C[4] = 24815/1000
     V_C[5] = 2035/1000
     V_C[6] = 10840/1000
     V_C[7] = 7817/1000
     V_C[8] = 1124/1000
     V_C[9] = 247/1000
     V_C[10] = 305/1000
     V_C[11] = 434/1000
     V_C[12] = 74.7/1000
     V_C[13] = 4.65/1000
     V_C[14] = 127/1000
     V_C[15] = 3626/1000
     
     # Organ Volumes
     V_Organ = zeros(15)
     V_Organ[Lung] = 1000/1000 
     V_Organ[Liver] = 2143/1000
     V_Organ[Heart] = 341/1000
     V_Organ[Muscle] = 30078/1000
     V_Organ[Skin] = 3408/1000
     V_Organ[Adipose] = 13465/1000
     V_Organ[Bone] = 10165/1000
     V_Organ[Brain] = 1450/1000
     V_Organ[Kidney] = 332/1000
     V_Organ[SI] = 385/1000
     V_Organ[LI] = 548/1000
     V_Organ[Pancreas] = 104/1000
     V_Organ[Thymus] = 6.41/1000
     V_Organ[Spleen] = 221/1000
     V_Organ[Other] = 4852/1000
 
     V_Plasma = 3.126 
     V_LN     = 0.274
 
     # Blood Flows
     PLQ = zeros(15)
     PLQ[1] = 181913/1000 
     PLQ[2] = 13210/1000
     PLQ[3] = 7752/1000
     PLQ[4] = 33469/1000
     PLQ[5] = 11626/1000
     PLQ[6] = 11233/1000
     PLQ[7] = 2591/1000
     PLQ[8] = 21453/1000
     PLQ[9] = 36402/1000
     PLQ[10] = 12368/1000
     PLQ[11] = 12867/1000
     PLQ[12] = 3056/1000
     PLQ[13] = 353/1000
     PLQ[14] = 6343/1000
     PLQ[15] = 9190/1000   
 
     # Lymph Flows    
     LF = zeros(15)
     LF[Lung]     = PLQ[Lung]*0.002
     LF[Liver]    = (PLQ[Liver] + PLQ[SI]-LF[SI] + PLQ[LI]-LF[LI] + PLQ[Spleen]-LF[Spleen] + PLQ[Pancreas] - LF[Pancreas])*0.002 
     LF[Heart]    = PLQ[Heart]*0.002
     LF[Muscle]   = PLQ[Muscle]*0.002
     LF[Skin]     = PLQ[Skin]*0.002
     LF[Adipose]  = PLQ[Adipose]*0.002
     LF[Bone]     = PLQ[Bone]*0.002
     LF[Brain]    = PLQ[Brain]*0.002
     LF[Kidney]   = PLQ[Kidney]*0.002
     LF[SI]       = PLQ[SI]*0.002
     LF[LI]       = PLQ[LI]*0.002
     LF[Pancreas] = PLQ[Pancreas]*0.002
     LF[Thymus]   = PLQ[Thymus]*0.002
     LF[Spleen]   = PLQ[Spleen]*0.002
     LF[Other]    = PLQ[Other]*0.002
     L_LymphNode = sum(LF) # [L/h]
 
 
 
     # Setup
     PS_a = 1.8051
     PS_b = 0.2624
     PS_Score = p[1]
     PS_Kd = 10^(exp(PS_a - PS_b*PS_Score)) 
     k_on_PS = 8.06E+07/1E6
     mouse_endo_scale_factor = 1   # scales number of endothelial cells to value for mouse
     human_endo_scale_factor = 603.7 # scales number of endothelial cells to value for human 
     Scale_Factor = human_endo_scale_factor # To simulate human
     Total_Endothelial_Cell = 1.422e+009 # [number]. Total number of endothelial cells in mouse
     CL_up_in_nL_per_hour_per_million_cells = 150
     Organ_Endothelial_Cell  = [Total_Endothelial_Cell*Endothelial_Cell_Frac[i]*Scale_Factor for i in 1:N_Organs]
     CL_up  = [CL_up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell[i]*1E-15 for i in 1:N_Organs]
     k_off_PS = (PS_Kd/1000)*k_on_PS
 
     tau_VM = 1/60  # [h]  
     tau_ISM = 1/60 # [h]
 
     E6a_Vol_Pct = 0.33 # [-]
     E7b_Vol_Pct = (1-E6a_Vol_Pct)/2 # [-]
     E7_Vol_Pct = (1-E6a_Vol_Pct)/2 # [-]      
     V_VM = [CL_up[i]*tau_VM for i in 1:N_Organs]
     V_ISM = [CL_up[i]*tau_ISM for i in 1:N_Organs]
     pino_time = 10.8/60
     V_endosomal = [CL_up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell[i]*1E-6*1E-9 for i in 1:N_Organs]
     V_E7 = [V_endosomal[i]*E7_Vol_Pct for i in 1:N_Organs]
     V_E6a = [V_endosomal[i]*E6a_Vol_Pct for i in 1:N_Organs]
     V_E7b = [V_endosomal[i]*E7b_Vol_Pct for i in 1:N_Organs]
 
     # kon for EXG    
     k_on_6_EXG  = 8.06E+07/1E6  # [1/(uM*h)]
     k_on_7_EXG  = 1.61E+07/5/1E6  # [1/(uM*h)]
     
     # kon for EDG    
     k_on_6_EDG  = 8.06E+07/1E6 # [1/(uM*h)]
     k_on_7_EDG  = 1.61E+07/5/1E6 # [1/(uM*h)]
 
     KD6_WT =  700    # [nM]  
     KD7_WT =  154077 # [nM]  
 
     KD_6_EXG = KD6_WT #  #  [nM]. 
     KD_7_EXG = KD7_WT #   #  [nM]. 
     KD_6_EDG = 700    # [nM]   
     KD_7_EDG = 154077 # [nM]
 
     on_rate_ratio_1st_vs_2nd_binding = 83.7 # [-]
 
     k_off_7_EDG = (KD_7_EDG/1000)*k_on_7_EDG # [1/h]
     k_off_6_EDG = (KD_6_EDG/1000)*k_on_6_EDG # [1/h] 
     k_off_7_EXG = (KD_7_EXG/1000)*k_on_7_EXG # [1/h] 
     k_off_6_EXG = (KD_6_EXG/1000)*k_on_6_EXG # [1/h] 
 
     k_on_6_EDG2  = k_on_6_EDG/on_rate_ratio_1st_vs_2nd_binding # [1/(uM*h)] 
     k_on_7_EDG2  = k_on_7_EDG/on_rate_ratio_1st_vs_2nd_binding # [1/(uM*h)]
     k_on_6_EXG2  = k_on_6_EXG/on_rate_ratio_1st_vs_2nd_binding # [1/(uM*h)]
     k_on_7_EXG2  = k_on_7_EXG/on_rate_ratio_1st_vs_2nd_binding # [1/(uM*h)]
 
     KD_6_EDG2  = KD_6_EDG*on_rate_ratio_1st_vs_2nd_binding # [nM] 
     KD_7_EDG2  = KD_7_EDG*on_rate_ratio_1st_vs_2nd_binding # [nM] 
    
     KD_6_EXG2 = on_rate_ratio_1st_vs_2nd_binding*KD6_WT # [nM]
     KD_7_EXG2 = on_rate_ratio_1st_vs_2nd_binding*KD7_WT # [nM]
 
     k_off_7_EDG2 = (KD_7_EDG2/1000)*k_on_7_EDG2 # [1/h] 
     k_off_6_EDG2 = (KD_6_EDG2/1000)*k_on_6_EDG2 # [1/h] 
     k_off_7_EXG2 = (KD_7_EXG2/1000)*k_on_7_EXG2 # [1/h] 
     k_off_6_EXG2 = (KD_6_EXG2/1000)*k_on_6_EXG2 # [1/h] 
 
     C_Mem = 18.5 # [uM] 
 
 
     on_rate_ratio_1st_vs_2nd_binding = 83.7 # [-]
     
     kint_PS = 0.0380 # [1/h]. Internalization rate for polyspecificity-membrane bound mAb
     Prob_deg = 0.95 # [-] ~ 95% of free mAb inside endosome will be routed to be degraded
     kdeg_FcRn_Ab = log(2)/11.1
 
     FcRn_recycle_fraction = 0.99
 
     FR    = 0.715
 
     # ===================================================================================== 
    #  ---------------------- DIFFERENTIAL VARIABLES/EQUATIONS ----------------------------
    # =====================================================================================
      #  Exogenous IgG 
    
    #  All organs except Lung and Liver at vascular cmpt (below), exogenous and endogenous IgG, free only

      #  vascular space EXG
     ddtC_EXG[3:N_Organs,V] = @. ((PLQ[3:N_Organs]*C_EXG[Lung,V]  #  from Lung 
        - (PLQ[3:N_Organs]- LF[3:N_Organs])*C_EXG[3:N_Organs,V]  #  leave to Main Plasma
        - (1-sigma_V[3:N_Organs])*LF[3:N_Organs]*C_EXG[3:N_Organs,V] #  going via Lymph to Interstitial 
        - CL_up[3:N_Organs]*FR*C_EXG[3:N_Organs,V] #  pinocytosis from vascular to vascular membrane
        + CL_up[3:N_Organs]*FR*C_EXG[3:N_Organs,VM] #  exocytosis from vascular membrane to vascular space 
        )/V_V[3:N_Organs]); 
      
      #  vascular space EDG
     ddtC_EDG[3:N_Organs,V] = @. ((PLQ[3:N_Organs]*C_EDG[Lung,V] #  from Main Plasma 
        -(PLQ[3:N_Organs]- LF[3:N_Organs])*C_EDG[3:N_Organs,V]  #  leave to Main Plasma
        - (1-sigma_V[3:N_Organs])*LF[3:N_Organs]*C_EDG[3:N_Organs,V] #  going via Lymph to Interstitial 
        - CL_up[3:N_Organs]*FR*C_EDG[3:N_Organs,V] #  pinocytosis from vascular to vascular membrane
        + CL_up[3:N_Organs]*FR*C_EDG[3:N_Organs,VM] #  exocytosis from vascular membrane to vascular space 
        )/V_V[3:N_Organs]); 

    #  Liver, vascular cmpt, exogenous free only
    ddtC_EXG[Liver,V] =
           ((PLQ[Liver]*C_EXG[Lung,V] #  Inlet distributed from Lung
      + (PLQ[Spleen]-LF[Spleen])*C_EXG[Spleen,V] #  Inlet from Spleen
      + (PLQ[Pancreas]-LF[Pancreas])*C_EXG[Pancreas,V] #  Inlet from Pancrease
      + (PLQ[SI]-LF[SI])*C_EXG[SI,V]  #  Inlet from S.I
      + (PLQ[LI]-LF[LI])*C_EXG[LI,V]   #  Inlet from LF.I
      - C_EXG[Liver,V]*(PLQ[Liver]-LF[Liver] + PLQ[Spleen]-LF[Spleen] 
                                   + PLQ[Pancreas]-LF[Pancreas] + PLQ[SI]-LF[SI]+ PLQ[LI]-LF[LI]) #  Outlet
      - (1-sigma_V[Liver])*LF[Liver]*C_EXG[Liver,V]
      - CL_up[Liver]*FR*C_EXG[Liver,V] #  pinocytosis from vascular to vascular membrane
      + CL_up[Liver]*FR*C_EXG[Liver,VM] #  exocytosis from vascular membrane to vascular space 
      )/V_V[Liver]); 
    
    #  Lung, vascular cmpt, exogenous free only
    ddtC_EXG[Lung,V] = (((PLQ[Lung]+LF[Lung])*C_EXG_Plasma[1]
               - PLQ[Lung]*C_EXG[Lung,V]
             -(1-sigma_V[Lung])*LF[Lung]*C_EXG[Lung,V]
             - CL_up[Lung]*FR*C_EXG[Lung,V] #  pinocytosis from vascular to vascular membrane
            + CL_up[Lung]*FR*C_EXG[Lung,VM]#  exocytosis from vascular membrane to vascular space
                        )/V_V[Lung]) # 
                        
    #  Liver, vascular cmpt, endogenous free only
    ddtC_EDG[Liver,V] = 
           ((PLQ[Liver]*C_EDG[Lung,V] #  Inlet distributed from Lung
      + (PLQ[Spleen]-LF[Spleen])*C_EDG[Spleen,V] #  Inlet from Spleen
      + (PLQ[Pancreas]-LF[Pancreas])*C_EDG[Pancreas,V] #  Inlet from Pancrease
      + (PLQ[SI]-LF[SI])*C_EDG[SI,V]  #  Inlet from S.I
      + (PLQ[LI]-LF[LI])*C_EDG[LI,V]   #  Inlet from LF.I
      - C_EDG[Liver,V]*(PLQ[Liver]-LF[Liver] + PLQ[Spleen]-LF[Spleen] 
                              + PLQ[Pancreas]-LF[Pancreas] + PLQ[SI]-LF[SI]+ PLQ[LI]-LF[LI]) #  Outlet
      - (1-sigma_V[Liver])*LF[Liver]*C_EDG[Liver,V]
      - CL_up[Liver]*FR*C_EDG[Liver,V] #  pinocytosis from vascular to vascular membrane
      + CL_up[Liver]*FR*C_EDG[Liver,VM] #  exocytosis from vascular membrane to vascular space 
      )/V_V[Liver]) ; 
      
    #  Lung, vascular cmpt, endogenous free only
    ddtC_EDG[Lung,V] = (((PLQ[Lung]+LF[Lung])*C_EDG_Plasma[1]
               - PLQ[Lung]*C_EDG[Lung,V]
             -(1-sigma_V[Lung])*LF[Lung]*C_EDG[Lung,V]
             - CL_up[Lung]*FR*C_EDG[Lung,V] #  pinocytosis from vascular to vascular membrane
            + CL_up[Lung]*FR*C_EDG[Lung,VM]#  exocytosis from vascular membrane to vascular space 
                        )/V_V[Lung]) ;
                        
     #  Organ: All 
     #  Cmpt:  vascular side membrane, endosome(7.4, 6a, 6b), interstitial side membrane, interstitial space
     #  Species: exogenous IgG (free & bound), endogeneous (free & bound) IgG and FcRn   
                
      #  vascular side membrane 
      ddtC_EXG[1:N_Organs,VM] = 
            @. ((CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,V] #  from vascular space
        - CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,VM] #  to vascular space
        - CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,VM] #  to endosomal pH=7.4
        + CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,E7b] #  from endosomal pH=6
        - k_on_7_EXG*C_EXG[1:N_Organs,VM]*C_FcRn_VM[1:N_Organs]*V_VM[1:N_Organs] #  rxn on 
        + k_off_7_EXG*C_EXG[1:N_Organs,bound_VM]*V_VM[1:N_Organs] #  rxn off
        - k_on_PS*C_EXG[1:N_Organs,VM]*C_Mem*V_VM[1:N_Organs] #  reaction of membrane 
        + k_off_PS*C_EXG[1:N_Organs, bound_VM_mem]*V_VM[1:N_Organs]
         )/V_VM[1:N_Organs]) ;
                
      ddtC_EXG[1:N_Organs, bound_VM_mem] = 
        @. ((k_on_PS*C_EXG[1:N_Organs,VM]*C_Mem*V_VM[1:N_Organs] #  reaction of membrane 
        - k_off_PS*C_EXG[1:N_Organs, bound_VM_mem]*V_VM[1:N_Organs]
        - kint_PS*C_EXG[1:N_Organs, bound_VM_mem]*V_VM[1:N_Organs]
         )/V_VM[1:N_Organs]) ;
                

      #  endosomal pH=7.4
      ddtC_EXG[1:N_Organs,E7] = 
            @. ((CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,VM] #  from vascular membrane
        + CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,ISM] #  from is membrane
        - CL_up[1:N_Organs]*C_EXG[1:N_Organs,E7] #  to endosomal pH=6
        - k_on_7_EXG*C_EXG[1:N_Organs,E7]*C_FcRn_E7[1:N_Organs]*V_E7[1:N_Organs] #  rxn on 
        + k_off_7_EXG*C_EXG[1:N_Organs,bound_E7]*V_E7[1:N_Organs] #  rxn off
        + kint_PS*C_EXG[1:N_Organs, bound_VM_mem]*V_VM[1:N_Organs] #  from membrane bound due to polyspecificity
        + kint_PS*C_EXG[1:N_Organs, bound_ISM_mem]*V_ISM[1:N_Organs] #  from membrane bound due to polyspecificity
         )/V_E7[1:N_Organs])  ;

       #  Free EXG mAb in E6a
      ddtC_EXG[1:N_Organs,E6a] = 
            @. ((CL_up[1:N_Organs]*C_EXG[1:N_Organs,E7] #  from E7
        - CL_up[1:N_Organs]*C_EXG[1:N_Organs,E6a] #  move to E7b or being routed to lysosomal for degradation
        - k_on_6_EXG*C_EXG[1:N_Organs,E6a]*C_FcRn_E6a[1:N_Organs]*V_E6a[1:N_Organs] #  rxn on 
        + k_off_6_EXG*C_EXG[1:N_Organs,bound_E6a]*V_E6a[1:N_Organs] #  rxn off
         )/V_E6a[1:N_Organs]) ;
                
      #  endosomal pH=7.4  b 
      ddtC_EXG[1:N_Organs,E7b] = 
            @. ((CL_up[1:N_Organs]*(1-Prob_deg)*C_EXG[1:N_Organs,E6a]  #  from 6a
        - CL_up[1:N_Organs]*C_EXG[1:N_Organs,E7b] #  leave from E7b to membranes 
        - k_on_7_EXG*C_EXG[1:N_Organs,E7b]*C_FcRn_E7b[1:N_Organs]*V_E7b[1:N_Organs] #  rxn on 
        + k_off_7_EXG*C_EXG[1:N_Organs,bound_E7b]*V_E7b[1:N_Organs] #  rxn off
         )/V_E7b[1:N_Organs]);
                

      #  IS side mem
      ddtC_EXG[1:N_Organs,ISM] = 
            @. ((CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,IntS] #  from IS space 
        - CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,ISM] #  to endosomal pH=7.4
        + CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,E7b] #  from endosomal pH=7.4 b
        - CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,ISM] #  to interstitial space
        - k_on_7_EXG*C_EXG[1:N_Organs,ISM]*C_FcRn_ISM[1:N_Organs]*V_ISM[1:N_Organs] #  rxn on 
        + k_off_7_EXG*C_EXG[1:N_Organs,bound_ISM]*V_ISM[1:N_Organs] #  rxn off
        - k_on_PS*C_EXG[1:N_Organs,ISM]*C_Mem*V_ISM[1:N_Organs] #  reaction of membrane 
        + k_off_PS*C_EXG[1:N_Organs, bound_ISM_mem]*V_ISM[1:N_Organs]
         )/V_ISM[1:N_Organs]) ;
                
      ddtC_EXG[1:N_Organs, bound_ISM_mem] = @. ((k_on_PS*C_EXG[1:N_Organs,ISM]*C_Mem*V_ISM[1:N_Organs] #  reaction of membrane 
        - k_off_PS*C_EXG[1:N_Organs, bound_ISM_mem]*V_ISM[1:N_Organs]
        - kint_PS*C_EXG[1:N_Organs, bound_ISM_mem]*V_ISM[1:N_Organs]
         )/V_ISM[1:N_Organs]) ;
                
      #  Interstitial space
      ddtC_EXG[1:N_Organs,IntS] =   
        @. (((1-sigma_V[1:N_Organs])*LF[1:N_Organs]*C_EXG[1:N_Organs,V] #  going from vascular via Lymph 
        - CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,IntS] #  pinocytosis 
        + CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,ISM] #  exocytosis
        -(1-sigma_IS[1:N_Organs])*LF[1:N_Organs]*C_EXG[1:N_Organs,IntS];
        )/V_IntS[1:N_Organs]) # 
                        
      # # # # # # # #  For FcRn-IgG (bounded)
      ddtC_EXG[1:N_Organs,bound_VM] = 
          @. ((k_on_7_EXG*C_EXG[1:N_Organs,VM]*C_FcRn_VM[1:N_Organs]*V_VM[1:N_Organs] #  rxn on 
        - k_off_7_EXG*C_EXG[1:N_Organs,bound_VM]*V_VM[1:N_Organs] #  rxn off
        - k_on_7_EXG2*C_EXG[1:N_Organs,bound_VM]*C_FcRn_VM[1:N_Organs]*V_VM[1:N_Organs] #  rxn on 
        + k_off_7_EXG2*C_EXG[1:N_Organs,bound2_VM]*V_VM[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,bound_E7b]  #  from Endosomal 6b to Vascular membrane
        - CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,bound_VM] #  to Endosomal 7
        - kdeg_FcRn_Ab*C_EXG[1:N_Organs,bound_VM]*V_VM[1:N_Organs] #  recover FcRn when IgG-FrRn is destroyed
         )/V_VM[1:N_Organs]);
                
      ddtC_EXG[1:N_Organs,bound2_VM] = 
          @. ((k_on_7_EXG2*C_EXG[1:N_Organs,bound_VM]*C_FcRn_VM[1:N_Organs]*V_VM[1:N_Organs] #  rxn on 
        - k_off_7_EXG2*C_EXG[1:N_Organs,bound2_VM]*V_VM[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,bound2_E7b]  #  from Endosomal 6b to Vascular membrane
        - CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,bound2_VM] #  to Endosomal 7
        - kdeg_FcRn_Ab*C_EXG[1:N_Organs,bound2_VM]*V_VM[1:N_Organs] #  recover FcRn when IgG-FrRn is destroyed
         )/V_VM[1:N_Organs]);
                

      #  endosomal space 
      ddtC_EXG[1:N_Organs,bound_E7] = 
        @. ((+ k_on_7_EXG*C_EXG[1:N_Organs,E7]*C_FcRn_E7[1:N_Organs]*V_E7[1:N_Organs] #  rxn on 
        - k_off_7_EXG*C_EXG[1:N_Organs,bound_E7]*V_E7[1:N_Organs] #  rxn off
        - k_on_7_EXG2*C_EXG[1:N_Organs,bound_E7]*C_FcRn_E7[1:N_Organs]*V_E7[1:N_Organs] #  rxn on 
        + k_off_7_EXG2*C_EXG[1:N_Organs,bound2_E7]*V_E7[1:N_Organs] #  rxn off 
        - CL_up[1:N_Organs]*C_EXG[1:N_Organs,bound_E7] #  goes to E6
        + CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,bound_VM] #  from VM 
        + CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,bound_ISM]  #  from ISM
         )/V_E7[1:N_Organs]) ;
                

      ddtC_EXG[1:N_Organs,bound2_E7] = 
          @. ((k_on_7_EXG2*C_EXG[1:N_Organs,bound_E7]*C_FcRn_E7[1:N_Organs]*V_E7[1:N_Organs] #  rxn on 
        - k_off_7_EXG2*C_EXG[1:N_Organs,bound2_E7]*V_E7[1:N_Organs] #  rxn off 
        - CL_up[1:N_Organs]*C_EXG[1:N_Organs,bound2_E7] #  goes to E6
        + CL_up[1:N_Organs]*FR*C_EXG[1:N_Organs,bound2_VM] #  from VM 
        + CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,bound2_ISM]   #  from ISM
         )/V_E7[1:N_Organs]) ;
                
      #  endosomal pH=6 a
      ddtC_EXG[1:N_Organs,bound_E6a] = 
        @. ((+ k_on_6_EXG*C_EXG[1:N_Organs,E6a]*C_FcRn_E6a[1:N_Organs]*V_E6a[1:N_Organs] #  rxn on 
        - k_off_6_EXG*C_EXG[1:N_Organs,bound_E6a]*V_E6a[1:N_Organs] #  rxn off
        - k_on_6_EXG2*C_EXG[1:N_Organs,bound_E6a]*C_FcRn_E6a[1:N_Organs]*V_E6a[1:N_Organs] #  rxn on 
        + k_off_6_EXG2*C_EXG[1:N_Organs,bound2_E6a]*V_E6a[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*C_EXG[1:N_Organs,bound_E7] #  internalization, from pH7 to pH6a
        - CL_up[1:N_Organs]*C_EXG[1:N_Organs,bound_E6a] #  exocytosis, from E6a to E7b
        )/V_E6a[1:N_Organs]) ;
                
      ddtC_EXG[1:N_Organs,bound2_E6a] = 
        @. ((+ k_on_6_EXG2*C_EXG[1:N_Organs,bound_E6a]*C_FcRn_E6a[1:N_Organs]*V_E6a[1:N_Organs] #  rxn on 
        - k_off_6_EXG2*C_EXG[1:N_Organs,bound2_E6a]*V_E6a[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*C_EXG[1:N_Organs,bound2_E7] #  internalization, from pH7 to pH6a
        - CL_up[1:N_Organs]*C_EXG[1:N_Organs,bound2_E6a] #  exocytosis, from E6a to E7b
        )/V_E6a[1:N_Organs]);
                
      #  endosomal pH=7.4  b
      ddtC_EXG[1:N_Organs, bound_E7b] = 
        @. ((+ k_on_7_EXG*C_EXG[1:N_Organs, E7b]*C_FcRn_E7b[1:N_Organs]*V_E7b[1:N_Organs] #  rxn on 
        - k_off_7_EXG*C_EXG[1:N_Organs,bound_E7b]*V_E7b[1:N_Organs] #  rxn off
        - k_on_7_EXG2*C_EXG[1:N_Organs, bound_E7b]*C_FcRn_E7b[1:N_Organs]*V_E7b[1:N_Organs] #  rxn on 
        + k_off_7_EXG2*C_EXG[1:N_Organs,bound2_E7b]*V_E7b[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*C_EXG[1:N_Organs,bound_E6a] #  internalization, from E6a to E7b
        - CL_up[1:N_Organs]*C_EXG[1:N_Organs,bound_E7b] #  exocytosis, from E7b to vascular/interstitial membrane
         )/V_E7b[1:N_Organs]);
                
      ddtC_EXG[1:N_Organs, bound2_E7b] = 
        @. ((+ k_on_7_EXG2*C_EXG[1:N_Organs, bound_E7b]*C_FcRn_E7b[1:N_Organs]*V_E7b[1:N_Organs] #  rxn on 
        - k_off_7_EXG2*C_EXG[1:N_Organs,bound2_E7b]*V_E7b[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*C_EXG[1:N_Organs,bound2_E6a] #  internalization, from E6a to E7b
        - CL_up[1:N_Organs]*C_EXG[1:N_Organs,bound2_E7b] #  exocytosis, from E7b to vascular/interstitial membrane
         )/V_E7b[1:N_Organs]);
                
      #  Interstitial membrane
      ddtC_EXG[1:N_Organs,bound_ISM] = 
          @. ((k_on_7_EXG*C_EXG[1:N_Organs,ISM]*C_FcRn_ISM[1:N_Organs]*V_ISM[1:N_Organs] #  rxn on  
        - k_off_7_EXG*C_EXG[1:N_Organs,bound_ISM]*V_ISM[1:N_Organs] #  rxn off
        - k_on_7_EXG2*C_EXG[1:N_Organs,bound_ISM]*C_FcRn_ISM[1:N_Organs]*V_ISM[1:N_Organs] #  rxn on 
        + k_off_7_EXG2*C_EXG[1:N_Organs,bound2_ISM]*V_ISM[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,bound_E7b]  #  from Endosomal 6 to interstitial membrane
        - CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,bound_ISM] #  to Endosomal 7
        - kdeg_FcRn_Ab*C_EXG[1:N_Organs,bound_ISM]*V_ISM[1:N_Organs]  #  recover FcRn when IgG-FrRn is destroyed
         )/V_ISM[1:N_Organs]);
                
      ddtC_EXG[1:N_Organs,bound2_ISM] = 
        @. ((+ k_on_7_EXG2*C_EXG[1:N_Organs,bound_ISM]*C_FcRn_ISM[1:N_Organs]*V_ISM[1:N_Organs] #  rxn on 
        - k_off_7_EXG2*C_EXG[1:N_Organs,bound2_ISM]*V_ISM[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,bound2_E7b]  #  from Endosomal 6 to interstitial membrane
        - CL_up[1:N_Organs]*(1-FR)*C_EXG[1:N_Organs,bound2_ISM] #  to Endosomal 7
        - kdeg_FcRn_Ab*C_EXG[1:N_Organs,bound2_ISM]*V_ISM[1:N_Organs]  #  recover FcRn when IgG-FrRn is destroyed
         )/V_ISM[1:N_Organs]);
                
  # ****************************************************************************************************      
        
      #  Free Endogenous IgG 
      
        
      #  vascular side membrane 
      ddtC_EDG[1:N_Organs,VM] = @. ((CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,V] #  from vascular space
        - CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,VM] #  to vascular space
        - CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,VM] #  to endosomal pH=7.4
        + CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,E7b] #  from endosomal pH=7.4 b
        - k_on_7_EDG*C_EDG[1:N_Organs,VM]*C_FcRn_VM[1:N_Organs]*V_VM[1:N_Organs] #  rxn on 
        + k_off_7_EDG*C_EDG[1:N_Organs,bound_VM]*V_VM[1:N_Organs] #  rxn off
        )/V_VM[1:N_Organs]);
      
      #  endosomal pH=7.4
      ddtC_EDG[1:N_Organs,E7] = @. ((CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,VM] #  from vascular membrane
        + CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,ISM] #  from is membrane
        - CL_up[1:N_Organs]*C_EDG[1:N_Organs,E7] #  to endosomal pH=6
        - k_on_7_EDG*C_EDG[1:N_Organs,E7]*C_FcRn_E7[1:N_Organs]*V_E7[1:N_Organs] #  rxn on 
        + k_off_7_EDG*C_EDG[1:N_Organs,bound_E7]*V_E7[1:N_Organs] #  rxn off
        )/V_E7[1:N_Organs])# 
      
      #  endosomal pH=6.0 a 
      ddtC_EDG[1:N_Organs,E6a] = @. ((CL_up[1:N_Organs]*C_EDG[1:N_Organs,E7] #  from E7
        - CL_up[1:N_Organs]*C_EDG[1:N_Organs,E6a] #  move to E7b or being routed to lysosomal for degradation
        - k_on_6_EDG*C_EDG[1:N_Organs,E6a]*C_FcRn_E6a[1:N_Organs]*V_E6a[1:N_Organs] #  rxn on 
        + k_off_6_EDG*C_EDG[1:N_Organs,bound_E6a]*V_E6a[1:N_Organs] #  rxn off
        )/V_E6a[1:N_Organs]); 
      
      #  endosomal pH=7.4  b 
      ddtC_EDG[1:N_Organs,E7b] = @. ((CL_up[1:N_Organs]*(1-Prob_deg)*C_EDG[1:N_Organs,E6a]  #  from 6a
        - CL_up[1:N_Organs]*C_EDG[1:N_Organs,E7b] #  leave from E7b to membranes 
        - k_on_7_EDG*C_EDG[1:N_Organs,E7b]*C_FcRn_E7b[1:N_Organs]*V_E7b[1:N_Organs] #  rxn on 
        + k_off_7_EDG*C_EDG[1:N_Organs,bound_E7b]*V_E7b[1:N_Organs] #  rxn off
        )/V_E7b[1:N_Organs]);   
              
      #  IS side mem
      ddtC_EDG[1:N_Organs,ISM] = @. ((CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,IntS] #  from IS space 
        - CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,ISM] #  to endosomal pH=7.4
        + CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,E7b] #  from endosomal pH=7.4 b
        - CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,ISM] #  to interstitial space
        - k_on_7_EDG*C_EDG[1:N_Organs,ISM]*C_FcRn_ISM[1:N_Organs]*V_ISM[1:N_Organs] #  rxn on 
        + k_off_7_EDG*C_EDG[1:N_Organs,bound_ISM]*V_ISM[1:N_Organs] #  rxn off
        )/V_ISM[1:N_Organs]);
    
      #  Interstitial space
      ddtC_EDG[1:N_Organs,IntS] =   
        @. (((1-sigma_V[1:N_Organs])*LF[1:N_Organs]*C_EDG[1:N_Organs,V] #  going from vascular via Lymph 
        - CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,IntS] #  pinocytosis 
        + CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,ISM] #  exocytosis
        -(1-sigma_IS[1:N_Organs])*LF[1:N_Organs]*C_EDG[1:N_Organs,IntS];
        )/V_IntS[1:N_Organs]) # 
                
      #  ==============================================================================================
      #  Bound Endogenous IgG 
        
      # # # # # # # #  For FcRn-IgG (bounded)
      ddtC_EDG[1:N_Organs,bound_VM] = 
          @. ((k_on_7_EDG*C_EDG[1:N_Organs,VM]*C_FcRn_VM[1:N_Organs]*V_VM[1:N_Organs] #  rxn on 
        - k_off_7_EDG*C_EDG[1:N_Organs,bound_VM]*V_VM[1:N_Organs] #  rxn off
        - k_on_7_EDG2*C_EDG[1:N_Organs,bound_VM]*C_FcRn_VM[1:N_Organs]*V_VM[1:N_Organs] #  rxn on 
        + k_off_7_EDG2*C_EDG[1:N_Organs,bound2_VM]*V_VM[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,bound_E7b]  #  from Endosomal 6b to Vascular membrane
        - CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,bound_VM] #  to Endosomal 7
        - kdeg_FcRn_Ab*C_EDG[1:N_Organs,bound_VM]*V_VM[1:N_Organs] #  recover FcRn when IgG-FrRn is destroyed
        )/V_VM[1:N_Organs]) ;
      
      ddtC_EDG[1:N_Organs,bound2_VM] = 
          @. ((k_on_7_EDG2*C_EDG[1:N_Organs,bound_VM]*C_FcRn_VM[1:N_Organs]*V_VM[1:N_Organs] #  rxn on 
        - k_off_7_EDG2*C_EDG[1:N_Organs,bound2_VM]*V_VM[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,bound2_E7b]  #  from Endosomal 6b to Vascular membrane
        - CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,bound2_VM] #  to Endosomal 7
        - kdeg_FcRn_Ab*C_EDG[1:N_Organs,bound2_VM]*V_VM[1:N_Organs] #  recover FcRn when IgG-FrRn is destroyed
        )/V_VM[1:N_Organs]) ;

      #  endosomal space 
      ddtC_EDG[1:N_Organs,bound_E7] = 
        @. ((+ k_on_7_EDG*C_EDG[1:N_Organs,E7]*C_FcRn_E7[1:N_Organs]*V_E7[1:N_Organs] #  rxn on 
        - k_off_7_EDG*C_EDG[1:N_Organs,bound_E7]*V_E7[1:N_Organs] #  rxn off
        - k_on_7_EDG2*C_EDG[1:N_Organs,bound_E7]*C_FcRn_E7[1:N_Organs]*V_E7[1:N_Organs] #  rxn on 
        + k_off_7_EDG2*C_EDG[1:N_Organs,bound2_E7]*V_E7[1:N_Organs] #  rxn off 
        - CL_up[1:N_Organs]*C_EDG[1:N_Organs,bound_E7] #  goes to E6
        + CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,bound_VM] #  from VM 
        + CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,bound_ISM];  #  from ISM
        )/V_E7[1:N_Organs]) # 
                
      ddtC_EDG[1:N_Organs,bound2_E7] = 
        @. ((+ k_on_7_EDG2*C_EDG[1:N_Organs,bound_E7]*C_FcRn_E7[1:N_Organs]*V_E7[1:N_Organs] #  rxn on 
        - k_off_7_EDG2*C_EDG[1:N_Organs,bound2_E7]*V_E7[1:N_Organs] #  rxn off 
        - CL_up[1:N_Organs]*C_EDG[1:N_Organs,bound2_E7] #  goes to E6
        + CL_up[1:N_Organs]*FR*C_EDG[1:N_Organs,bound2_VM] #  from VM 
        + CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,bound2_ISM];  #  from ISM
        )/V_E7[1:N_Organs]) # 
        
      #  endosomal pH=6 a
      ddtC_EDG[1:N_Organs,bound_E6a] = 
        @. ((+ k_on_6_EDG*C_EDG[1:N_Organs,E6a]*C_FcRn_E6a[1:N_Organs]*V_E6a[1:N_Organs] #  rxn on 
        - k_off_6_EDG*C_EDG[1:N_Organs,bound_E6a]*V_E6a[1:N_Organs] #  rxn off
        - k_on_6_EDG2*C_EDG[1:N_Organs,bound_E6a]*C_FcRn_E6a[1:N_Organs]*V_E6a[1:N_Organs] #  rxn on 
        + k_off_6_EDG2*C_EDG[1:N_Organs,bound2_E6a]*V_E6a[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*C_EDG[1:N_Organs,bound_E7] #  internalization, from pH7 to pH6a
        - CL_up[1:N_Organs]*C_EDG[1:N_Organs,bound_E6a] #  exocytosis, from E6a to E7b
        )/V_E6a[1:N_Organs]) #  
  
      ddtC_EDG[1:N_Organs,bound2_E6a] = 
        @. ((+ k_on_6_EDG2*C_EDG[1:N_Organs,bound_E6a]*C_FcRn_E6a[1:N_Organs]*V_E6a[1:N_Organs] #  rxn on 
        - k_off_6_EDG2*C_EDG[1:N_Organs,bound2_E6a]*V_E6a[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*C_EDG[1:N_Organs,bound2_E7] #  internalization, from pH7 to pH6a
        - CL_up[1:N_Organs]*C_EDG[1:N_Organs,bound2_E6a] #  exocytosis, from E6a to E7b
        )/V_E6a[1:N_Organs]) ; 
  
      #  endosomal pH=7.4  b
      ddtC_EDG[1:N_Organs,bound_E7b] = 
        @. ((+ k_on_7_EDG*C_EDG[1:N_Organs,E7b]*C_FcRn_E7b[1:N_Organs]*V_E7b[1:N_Organs] #  rxn on 
        - k_off_7_EDG*C_EDG[1:N_Organs,bound_E7b]*V_E7b[1:N_Organs] #  rxn off
        - k_on_7_EDG2*C_EDG[1:N_Organs, bound_E7b]*C_FcRn_E7b[1:N_Organs]*V_E7b[1:N_Organs] #  rxn on 
        + k_off_7_EDG2*C_EDG[1:N_Organs,bound2_E7b]*V_E7b[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*C_EDG[1:N_Organs,bound_E6a] #  internalization, from E6a to E7b
        - CL_up[1:N_Organs]*C_EDG[1:N_Organs,bound_E7b] #  exocytosis, from E7b to vascular/interstitial membrane
        )/V_E7b[1:N_Organs]) ; 
        
      ddtC_EDG[1:N_Organs,bound2_E7b] = 
        @. ((+ k_on_7_EDG2*C_EDG[1:N_Organs, bound_E7b]*C_FcRn_E7b[1:N_Organs]*V_E7b[1:N_Organs] #  rxn on 
        - k_off_7_EDG2*C_EDG[1:N_Organs,bound2_E7b]*V_E7b[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*C_EDG[1:N_Organs,bound2_E6a] #  internalization, from E6a to E7b
        - CL_up[1:N_Organs]*C_EDG[1:N_Organs,bound2_E7b] #  exocytosis, from E7b to vascular/interstitial membrane
        )/V_E7b[1:N_Organs]) ; 
        
      #  Interstitial membrane
      ddtC_EDG[1:N_Organs,bound_ISM] = 
        @. ((+ k_on_7_EDG*C_EDG[1:N_Organs,ISM]*C_FcRn_ISM[1:N_Organs]*V_ISM[1:N_Organs] #  rxn on  
        - k_off_7_EDG*C_EDG[1:N_Organs,bound_ISM]*V_ISM[1:N_Organs] #  rxn off
        - k_on_7_EDG2*C_EDG[1:N_Organs,bound_ISM]*C_FcRn_ISM[1:N_Organs]*V_ISM[1:N_Organs] #  rxn on 
        + k_off_7_EDG2*C_EDG[1:N_Organs,bound2_ISM]*V_ISM[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,bound_E7b]  #  from Endosomal 6 to interstitial membrane
        - CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,bound_ISM] #  to Endosomal 7.4
        - kdeg_FcRn_Ab*C_EDG[1:N_Organs,bound_ISM]*V_ISM[1:N_Organs]  #  recover FcRn when IgG-FrRn is destroyed
        )/V_ISM[1:N_Organs]) ;
        
      ddtC_EDG[1:N_Organs,bound2_ISM] = 
        @. ((+ k_on_7_EDG2*C_EDG[1:N_Organs,bound_ISM]*C_FcRn_ISM[1:N_Organs]*V_ISM[1:N_Organs] #  rxn on 
        - k_off_7_EDG2*C_EDG[1:N_Organs,bound2_ISM]*V_ISM[1:N_Organs] #  rxn off 
        + CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,bound2_E7b]  #  from Endosomal 7.4 b to interstitial membrane
        - CL_up[1:N_Organs]*(1-FR)*C_EDG[1:N_Organs,bound2_ISM] #  to Endosomal 7.4
        - kdeg_FcRn_Ab*C_EDG[1:N_Organs,bound2_ISM]*V_ISM[1:N_Organs]  #  recover FcRn when IgG-FrRn is destroyed
        )/V_ISM[1:N_Organs]) ;
        
      #  ==============================================================================================
      #  Free FcRn in Organs
  
      #  vascular side membrane 
      ddtC_FcRn_VM[1:N_Organs] = 
        @. ((+ CL_up[1:N_Organs]*FR*C_FcRn_E7b[1:N_Organs]*(1-FcRn_recycle_fraction)# from endosomal pH=7.4  b
        - CL_up[1:N_Organs]*FR*C_FcRn_VM[1:N_Organs] #  to vascular space
        #  EDG 
        +V_VM[1:N_Organs]*(
        - k_on_7_EDG*C_EDG[1:N_Organs,VM]*C_FcRn_VM[1:N_Organs] # rxn on in vascular side membrane 
        + k_off_7_EDG*C_EDG[1:N_Organs,bound_VM] # rxn off vascular side membrane 
        + kdeg_FcRn_Ab*C_EDG[1:N_Organs,bound_VM]
        - k_on_7_EDG2*C_EDG[1:N_Organs,bound_VM]*C_FcRn_VM[1:N_Organs] # rxn on in vascular side membrane 
        + k_off_7_EDG2*C_EDG[1:N_Organs,bound2_VM] # rxn off vascular side membrane 
        + 2*kdeg_FcRn_Ab*C_EDG[1:N_Organs,bound2_VM] # 
        ########## # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
        #  EXG 
        - k_on_7_EXG*C_EXG[1:N_Organs,VM]*C_FcRn_VM[1:N_Organs] #  rxn on in vascular side membrane 
        + k_off_7_EXG*C_EXG[1:N_Organs,bound_VM] #  rxn off vascular side membrane 
        + kdeg_FcRn_Ab*C_EXG[1:N_Organs,bound_VM]
        - k_on_7_EXG2*C_EXG[1:N_Organs,bound_VM]*C_FcRn_VM[1:N_Organs] #  rxn on in vascular side membrane 
        + k_off_7_EXG2*C_EXG[1:N_Organs,bound2_VM] #  rxn off vascular side membrane 
        + 2*kdeg_FcRn_Ab*C_EXG[1:N_Organs,bound2_VM] #  
        ))/V_VM[1:N_Organs]);
      
      #  endosomal pH=7.4
      ddtC_FcRn_E7[1:N_Organs] = 
                 @. ((CL_up[1:N_Organs]*FR*C_FcRn_VM[1:N_Organs] #  from vascular membrane
        + CL_up[1:N_Organs]*(1-FR)*C_FcRn_ISM[1:N_Organs] #  from is membrane
        - CL_up[1:N_Organs]*C_FcRn_E7[1:N_Organs] #  to endosomal pH=6
        + V_E7[1:N_Organs]*(
        - k_on_7_EDG*C_EDG[1:N_Organs,E7]*C_FcRn_E7[1:N_Organs] #  rxn on endosomal pH=7.4
        + k_off_7_EDG*C_EDG[1:N_Organs,bound_E7] #  rxn off endosomal pH=7.4.
        - k_on_7_EDG2*C_EDG[1:N_Organs,bound_E7]*C_FcRn_E7[1:N_Organs] #  rxn on endosomal pH=7.4. 
        + k_off_7_EDG2*C_EDG[1:N_Organs,bound2_E7] #  rxn off endosomal pH=7.4. 
        # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
        #  EXG
        - k_on_7_EXG*C_EXG[1:N_Organs,E7]*C_FcRn_E7[1:N_Organs] #  rxn on endosomal pH=7.4
        + k_off_7_EXG*C_EXG[1:N_Organs,bound_E7] #  rxn off endosomal pH=7.4
        - k_on_7_EXG2*C_EXG[1:N_Organs,bound_E7]*C_FcRn_E7[1:N_Organs] #  rxn on endosomal pH=7.4. 
        + k_off_7_EXG2*C_EXG[1:N_Organs,bound2_E7] #  rxn off endosomal pH=7.4. 
        ))/V_E7[1:N_Organs])# 
      
      #  endosomal pH=6.0
      ddtC_FcRn_E6a[1:N_Organs] = @. ((CL_up[1:N_Organs]*C_FcRn_E7[1:N_Organs] #  from E7
        - CL_up[1:N_Organs]*C_FcRn_E6a[1:N_Organs] #  from E6a to E7b
        + CL_up[1:N_Organs]*C_FcRn_E7b[1:N_Organs]*FcRn_recycle_fraction
        + V_E6a[1:N_Organs]*(
        - k_on_6_EDG*C_EDG[1:N_Organs,E6a]*C_FcRn_E6a[1:N_Organs] #  rxn on endosomal pH=6.0
        + k_off_6_EDG*C_EDG[1:N_Organs,bound_E6a] #  rxn off endosomal pH=6.0
        - k_on_6_EDG2*C_EDG[1:N_Organs,bound_E6a]*C_FcRn_E6a[1:N_Organs] #  rxn on endosomal pH=6.0. 
        + k_off_6_EDG2*C_EDG[1:N_Organs,bound2_E6a] #  rxn off endosomal pH=6.0. 
        # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
        #  EXG
        - k_on_6_EXG*C_EXG[1:N_Organs,E6a]*C_FcRn_E6a[1:N_Organs] #  rxn on endosomal pH=6.0
        + k_off_6_EXG*C_EXG[1:N_Organs,bound_E6a] #  rxn off endosomal pH=6.0
        - k_on_6_EXG2*C_EXG[1:N_Organs,bound_E6a]*C_FcRn_E6a[1:N_Organs] #  rxn on endosomal pH=6.0. 
        + k_off_6_EXG2*C_EXG[1:N_Organs,bound2_E6a] #  rxn off endosomal pH=6.0. 
        ))/V_E6a[1:N_Organs]) ; 
    
      #  endosomal pH=7.4
      ddtC_FcRn_E7b[1:N_Organs] = @. ((CL_up[1:N_Organs]*C_FcRn_E6a[1:N_Organs] #  from E6a
        - CL_up[1:N_Organs]*C_FcRn_E7b[1:N_Organs] #  from E7b to membranes
        + V_E7b[1:N_Organs]*(
        - k_on_7_EDG*C_EDG[1:N_Organs,E7b]*C_FcRn_E7b[1:N_Organs] #  rxn on endosomal pH=7.4
        + k_off_7_EDG*C_EDG[1:N_Organs,bound_E7b] #  rxn off endosomal pH=7.4
        - k_on_7_EDG2*C_EDG[1:N_Organs,bound_E7b]*C_FcRn_E7b[1:N_Organs] #  rxn on endosomal pH=7.4. 
        + k_off_7_EDG2*C_EDG[1:N_Organs,bound2_E7b] #  rxn off endosomal pH=7.4. 
        # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
        #  EXG 
        - k_on_7_EXG*C_EXG[1:N_Organs,E7b]*C_FcRn_E7b[1:N_Organs] #  rxn on endosomal pH=7.4
        + k_off_7_EXG*C_EXG[1:N_Organs,bound_E7b] #  rxn off endosomal pH=7.4
        - k_on_7_EXG2*C_EXG[1:N_Organs,bound_E7b]*C_FcRn_E7b[1:N_Organs] #  rxn on endosomal pH=7.4. 
        + k_off_7_EXG2*C_EXG[1:N_Organs,bound2_E7b] #  rxn off endosomal pH=7.4. 
        ))/V_E7b[1:N_Organs]); 
        
      #  IS side mem
      ddtC_FcRn_ISM[1:N_Organs] = 
        @. ((- CL_up[1:N_Organs]*(1-FR)*C_FcRn_ISM[1:N_Organs] #  from IS membrane to endosomal pH=7.4
        + CL_up[1:N_Organs]*(1-FR)*C_FcRn_E7b[1:N_Organs]*(1-FcRn_recycle_fraction) #  from endosomal pH=7.4  b to IS side mem
        + V_ISM[1:N_Organs]*(
        - k_on_7_EDG*C_EDG[1:N_Organs,ISM]*C_FcRn_ISM[1:N_Organs] #  rxn on IS side mem
        + k_off_7_EDG*C_EDG[1:N_Organs,bound_ISM] #  rxn off IS side mem
        + kdeg_FcRn_Ab*C_EDG[1:N_Organs,bound_ISM]
        - k_on_7_EDG2*C_EDG[1:N_Organs,bound_ISM]*C_FcRn_ISM[1:N_Organs] #  rxn on IS side mem. 
        + k_off_7_EDG2*C_EDG[1:N_Organs,bound2_ISM] #  rxn off IS side mem. 
        + 2*kdeg_FcRn_Ab*C_EDG[1:N_Organs,bound2_ISM] #  
        # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
        #  EXG 
        - k_on_7_EXG*C_EXG[1:N_Organs,ISM]*C_FcRn_ISM[1:N_Organs] #  rxn on IS side mem
        + k_off_7_EXG*C_EXG[1:N_Organs,bound_ISM] #  rxn off IS side mem
        + kdeg_FcRn_Ab*C_EXG[1:N_Organs,bound_ISM]
        - k_on_7_EXG2*C_EXG[1:N_Organs,bound_ISM]*C_FcRn_ISM[1:N_Organs] #  rxn on IS side mem. 
        + k_off_7_EXG2*C_EXG[1:N_Organs,bound2_ISM] #  rxn off IS side mem. 
        + 2*kdeg_FcRn_Ab*C_EXG[1:N_Organs,bound2_ISM] #  
        ))/V_ISM[1:N_Organs]);
      
 
#  ==============================================================================================  
#  Main Plasma Compartment    
                  
      # ; flux of endogenous IgG in Lymph node
      ddtC_EDG_LN = 
          @. (((1-sigma_IS[Heart])*LF[Heart]*C_EDG[Heart, IntS]
        + (1-sigma_IS[Kidney])*LF[Kidney]*C_EDG[Kidney, IntS]
        + (1-sigma_IS[Muscle])*LF[Muscle]*C_EDG[Muscle, IntS]
        + (1-sigma_IS[Skin])*LF[Skin]*C_EDG[Skin, IntS]
        + (1-sigma_IS[Brain])*LF[Brain]*C_EDG[Brain, IntS]
        + (1-sigma_IS[Adipose])*LF[Adipose]*C_EDG[Adipose, IntS]
        + (1-sigma_IS[Thymus])*LF[Thymus]*C_EDG[Thymus, IntS]
        + (1-sigma_IS[Liver])*LF[Liver]*C_EDG[Liver, IntS]
        + (1-sigma_IS[Spleen])*LF[Spleen]*C_EDG[Spleen, IntS]
        + (1-sigma_IS[Pancreas])*LF[Pancreas]*C_EDG[Pancreas, IntS]
        + (1-sigma_IS[SI])*LF[SI]*C_EDG[SI, IntS]
        + (1-sigma_IS[LI])*LF[LI]*C_EDG[LI, IntS]
        + (1-sigma_IS[Bone])*LF[Bone]*C_EDG[Bone, IntS]
        + (1-sigma_IS[Other])*LF[Other]*C_EDG[Other, IntS]
        + (1-sigma_IS[Lung])*LF[Lung]*C_EDG[Lung, IntS]
        - L_LymphNode*C_EDG_LN)/V_LN);         
            
      # ; flux of exogenous IgG in Plasma
      w_other_1_EXG_Plasma = 
        @. ((PLQ[Heart]-LF[Heart])*C_EXG[Heart,V] 
        +(PLQ[Kidney]-LF[Kidney])*C_EXG[Kidney,V]
        +(PLQ[Muscle]-LF[Muscle])*C_EXG[Muscle,V]
        +(PLQ[Skin]-LF[Skin])*C_EXG[Skin,V]
        +(PLQ[Brain]-LF[Brain])*C_EXG[Brain,V]
        +(PLQ[Adipose]-LF[Adipose])*C_EXG[Adipose,V]
        +(PLQ[Thymus]-LF[Thymus])*C_EXG[Thymus,V]
        +(PLQ[Liver]-LF[Liver])*C_EXG[Liver,V]
           +(PLQ[Spleen]-LF[Spleen])*C_EXG[Liver,V]
        +(PLQ[Pancreas]-LF[Pancreas])*C_EXG[Liver,V]
        +(PLQ[SI]-LF[SI])*C_EXG[Liver,V]
        +(PLQ[LI]-LF[LI])*C_EXG[Liver,V]
        +(PLQ[Bone]-LF[Bone])*C_EXG[Bone,V]
        +(PLQ[Other]-LF[Other])*C_EXG[Other,V]
        -(PLQ[Lung]+LF[Lung])*C_EXG_Plasma
        +L_LymphNode*C_EXG_LN)

		w_other_2_EXG_Plasma = 0 

		w_other_3_EXG_Plasma = 0
        

      # ; flux of exogenous IgG in Lymph node
      ddtC_EXG_LN = 
        @. (((1-sigma_IS[Heart])*LF[Heart]*C_EXG[Heart, IntS]
        + (1-sigma_IS[Kidney])*LF[Kidney]*C_EXG[Kidney, IntS]
        + (1-sigma_IS[Muscle])*LF[Muscle]*C_EXG[Muscle, IntS]
        + (1-sigma_IS[Skin])*LF[Skin]*C_EXG[Skin, IntS]
        + (1-sigma_IS[Brain])*LF[Brain]*C_EXG[Brain, IntS]
        + (1-sigma_IS[Adipose])*LF[Adipose]*C_EXG[Adipose, IntS]
        + (1-sigma_IS[Thymus])*LF[Thymus]*C_EXG[Thymus, IntS]
        + (1-sigma_IS[Liver])*LF[Liver]*C_EXG[Liver, IntS]
        + (1-sigma_IS[Spleen])*LF[Spleen]*C_EXG[Spleen, IntS]
        + (1-sigma_IS[Pancreas])*LF[Pancreas]*C_EXG[Pancreas, IntS]
        + (1-sigma_IS[SI])*LF[SI]*C_EXG[SI, IntS]
        + (1-sigma_IS[LI])*LF[LI]*C_EXG[LI, IntS]
        + (1-sigma_IS[Bone])*LF[Bone]*C_EXG[Bone, IntS]
        + (1-sigma_IS[Other])*LF[Other]*C_EXG[Other, IntS]
        + (1-sigma_IS[Lung])*LF[Lung]*C_EXG[Lung, IntS]
        - L_LymphNode*C_EXG_LN
                )/V_LN); 

    ddtC_EXG_Plasma = ((w_other_1_EXG_Plasma)/V_Plasma); 
    ddtC_EDG_Plasma = 0.0;
          
    du.x[1] .= ddtC_EXG_Plasma[1]
    du.x[2] .= ddtC_EDG_Plasma[1]
    du.x[3] .= ddtC_EDG_LN[1]
    du.x[4] .= ddtC_EDG
    du.x[5] .= ddtC_EXG_LN[1]
    du.x[6] .= ddtC_EXG
    du.x[7] .= ddtC_FcRn_E6a
    du.x[8] .= ddtC_FcRn_E7b
    du.x[9] .= ddtC_FcRn_E7
    du.x[10] .= ddtC_FcRn_ISM
    du.x[11] .= ddtC_FcRn_VM

end