[ PROB ]

# PLATFORM MONOCLONAL ANTIBODY PBPK MODEL

[ SET ] end = 300.000000, delta = 1.000000

[ PARAM ]
BW = 71;
V_Plasma = 3.1259999999999999
V_LN = 0.2740000000000000

MW_EDG = 150000.0
EDG_mg_ml = 10.0  // [mg/mL]
ka = 0.26/24.0 // SC absorption rate, 1/hr 
F = 0.60 // SC bioavailability
KD6_WT =  700.0    // [nM]  
KD7_WT =  154077.0 // [nM]
kint_PS = 0.0380 // [1/h]. Internalization rate for polyspecificity-membrane bound mAb
PS_b = 0.2624 // [-]
PS_a = 1.8051 // [-]
AVOGADRO  = 6.02E23
total_FcRn_in_nmole_par = 1022.0 // [nmol]. 1022 for human
k_on_PS = 8.06E+07/1.0E6 //  [1/(uM*h)]
C_mem = 18.5 // [uM] 
on_rate_ratio_1st_vs_2nd_binding = 83.7 // [-]
mouse_endo_scale_factor = 1.0   // scales number of endothelial cells to value for mouse
human_endo_scale_factor = 603.7 // scales number of endothelial cells to value for human 
CL_Up_in_nL_per_hour_per_million_cells = 150.0 // [nL/h/(1E6 cells)]
pino_time = 10.8/60.0 // [h]
FcRn_recycle_fraction = 0.99 // [-]
FR    = 0.715 // [-]
FcRn_Availability  = 1.0 // [-] The fraction of FcRn available for IgG recycling
Prob_deg = 0.95 // [-] ~ 95% of free mAb inside endosome will be routed to be degraded
// IgG Related Parmeters
// kon for EXG    
k_on_6_EXG  = 8.06E+07/1E6  // [1/(uM*h)]
k_on_7_EXG  = 1.61E+07/5/1E6  // [1/(uM*h)]
// kon for EDG    
k_on_6_EDG  = 8.06E+07/1E6 // [1/(uM*h)]
k_on_7_EDG  = 1.61E+07/5/1E6 // [1/(uM*h)]

Endosome_radius = 0.1*2.0 // [um]
Endosome_per_cell = 20000.0/8.0 // [number]
tau_VM = 1.0/60.0  // [h]  
tau_IM = 1.0/60.0 // [h]
E6a_vol_pct = 0.33 // [-]
// Lymph Flow
L_LymphNode = 0.8
KD_6_EDG = 700.0    // [nM]   
               KD_7_EDG = 154077.0 // [nM]
// Blood compartment

// Lymph nodes compartment

// Lung Volumes
V_Lung = 1.0000000000000000 // Total Volume
V_Lung_IS = 0.3000000000000000 // Interstitial Volume
V_Lung_V = 0.0550000000000000 // Vascular Volume
// Liver Volumes
V_Liver = 2.1429999999999998 // Total Volume
V_Liver_IS = 0.4290000000000000 // Interstitial Volume
V_Liver_V = 0.1830000000000000 // Vascular Volume
// Heart Volumes
V_Heart = 0.3410000000000000 // Total Volume
V_Heart_IS = 0.0488000000000000 // Interstitial Volume
V_Heart_V = 0.0131000000000000 // Vascular Volume
// Muscle Volumes
V_Muscle = 30.0779999999999994 // Total Volume
V_Muscle_IS = 3.9100000000000001 // Interstitial Volume
V_Muscle_V = 0.6620000000000000 // Vascular Volume
// Skin Volumes
V_Skin = 3.4079999999999999 // Total Volume
V_Skin_IS = 1.1250000000000000 // Interstitial Volume
V_Skin_V = 0.1270000000000000 // Vascular Volume
// Adipose Volumes
V_Adipose = 13.4649999999999999 // Total Volume
V_Adipose_IS = 2.2890000000000001 // Interstitial Volume
V_Adipose_V = 0.1480000000000000 // Vascular Volume
// Bone Volumes
V_Bone = 10.1649999999999991 // Total Volume
V_Bone_IS = 1.8910000000000000 // Interstitial Volume
V_Bone_V = 0.2240000000000000 // Vascular Volume
// Brain Volumes
V_Brain = 1.4500000000000000 // Total Volume
V_Brain_IS = 0.2610000000000000 // Interstitial Volume
V_Brain_V = 0.0319000000000000 // Vascular Volume
// Kidney Volumes
V_Kidney = 0.3320000000000000 // Total Volume
V_Kidney_IS = 0.0498000000000000 // Interstitial Volume
V_Kidney_V = 0.0182000000000000 // Vascular Volume
// SI Volumes
V_SI = 0.3850000000000000 // Total Volume
V_SI_IS = 0.0671000000000000 // Interstitial Volume
V_SI_V = 0.0061500000000000 // Vascular Volume
// LI Volumes
V_LI = 0.5480000000000000 // Total Volume
V_LI_IS = 0.0953000000000000 // Interstitial Volume
V_LI_V = 0.0087400000000000 // Vascular Volume
// Pancreas Volumes
V_Pancreas = 0.1040000000000000 // Total Volume
V_Pancreas_IS = 0.0180000000000000 // Interstitial Volume
V_Pancreas_V = 0.0057000000000000 // Vascular Volume
// Thymus Volumes
V_Thymus = 0.0064100000000000 // Total Volume
V_Thymus_IS = 0.0010900000000000 // Interstitial Volume
V_Thymus_V = 0.0003530000000000 // Vascular Volume
// Spleen Volumes
V_Spleen = 0.2210000000000000 // Total Volume
V_Spleen_IS = 0.0443000000000000 // Interstitial Volume
V_Spleen_V = 0.0268000000000000 // Vascular Volume
// Other Volumes
V_Other = 4.8520000000000003 // Total Volume
V_Other_IS = 0.8310000000000000 // Interstitial Volume
V_Other_V = 0.2040000000000000 // Vascular Volume
// Other Blood Flow
PLQ_Lung = 181.9130000000000109 // [L/h]
PLQ_Liver = 13.2100000000000009 // [L/h]
PLQ_Heart = 7.7519999999999998 // [L/h]
PLQ_Muscle = 33.4690000000000012 // [L/h]
PLQ_Skin = 11.6259999999999994 // [L/h]
PLQ_Adipose = 11.2330000000000005 // [L/h]
PLQ_Bone = 2.5910000000000002 // [L/h]
PLQ_Brain = 21.4529999999999994 // [L/h]
PLQ_Kidney = 36.4020000000000010 // [L/h]
PLQ_SI = 12.3680000000000003 // [L/h]
PLQ_LI = 12.8670000000000009 // [L/h]
PLQ_Pancreas = 3.0560000000000000 // [L/h]
PLQ_Thymus = 0.3530000000000000 // [L/h]
PLQ_Spleen = 6.3430000000000000 // [L/h]
PLQ_Other = 9.1910000000000007 // [L/h]
PS_Score = 0.0
// Endothelial Cell Fractions
Endothelial_Cell_Frac_Lung = 0.0834000000000000
Endothelial_Cell_Frac_Liver = 0.1877000000000000
Endothelial_Cell_Frac_Heart = 0.0011000000000000
Endothelial_Cell_Frac_Muscle = 0.1928000000000000
Endothelial_Cell_Frac_Skin = 0.0819000000000000
Endothelial_Cell_Frac_Adipose = 0.0999000000000000
Endothelial_Cell_Frac_Bone = 0.1478000000000000
Endothelial_Cell_Frac_Brain = 0.0115000000000000
Endothelial_Cell_Frac_Kidney = 0.0157000000000000
Endothelial_Cell_Frac_SI = 0.0121000000000000
Endothelial_Cell_Frac_LI = 0.0209000000000000
Endothelial_Cell_Frac_Pancreas = 0.0001000000000000
Endothelial_Cell_Frac_Thymus = 0.0001000000000000
Endothelial_Cell_Frac_Spleen = 0.0499000000000000
Endothelial_Cell_Frac_Other = 0.0951000000000000
// Reflection Coefficients
SV_Lung = 0.9500000000000000
SIS_Lung = 0.2000000000000000
SV_Liver = 0.8500000000000000
SIS_Liver = 0.2000000000000000
SV_Heart = 0.9500000000000000
SIS_Heart = 0.2000000000000000
SV_Muscle = 0.9500000000000000
SIS_Muscle = 0.2000000000000000
SV_Skin = 0.9500000000000000
SIS_Skin = 0.2000000000000000
SV_Adipose = 0.9500000000000000
SIS_Adipose = 0.2000000000000000
SV_Bone = 0.8500000000000000
SIS_Bone = 0.2000000000000000
SV_Brain = 0.9900000000000000
SIS_Brain = 0.2000000000000000
SV_Kidney = 0.9000000000000000
SIS_Kidney = 0.2000000000000000
SV_SI = 0.9000000000000000
SIS_SI = 0.2000000000000000
SV_LI = 0.9500000000000000
SIS_LI = 0.2000000000000000
SV_Pancreas = 0.9000000000000000
SIS_Pancreas = 0.2000000000000000
SV_Thymus = 0.9000000000000000
SIS_Thymus = 0.2000000000000000
SV_Spleen = 0.2000000000000000
SIS_Spleen = 0.2000000000000000
SV_Other = 0.9500000000000000
SIS_Other = 0.2000000000000000
[MAIN]
double Total_Endothelial_Cell = 1.422e+009 * (pow(BW, 11.0/12.0)/pow(71, 11.0/12.0));  // [number]. Total number of endothelial cells in mouse
  
// Other Lymph Flow
double LF_Lung = PLQ_Lung*0.002; // [L/h]
double LF_Heart = PLQ_Heart*0.002; // [L/h]
double LF_Muscle = PLQ_Muscle*0.002; // [L/h]
double LF_Skin = PLQ_Skin*0.002; // [L/h]
double LF_Adipose = PLQ_Adipose*0.002; // [L/h]
double LF_Bone = PLQ_Bone*0.002; // [L/h]
double LF_Brain = PLQ_Brain*0.002; // [L/h]
double LF_Kidney = PLQ_Kidney*0.002; // [L/h]
double LF_SI = PLQ_SI*0.002; // [L/h]
double LF_LI = PLQ_LI*0.002; // [L/h]
double LF_Pancreas = PLQ_Pancreas*0.002; // [L/h]
double LF_Thymus = PLQ_Thymus*0.002; // [L/h]
double LF_Spleen = PLQ_Spleen*0.002; // [L/h]
double LF_Other = PLQ_Other*0.002; // [L/h]
double LF_Liver = (PLQ_Liver + PLQ_SI-LF_SI + PLQ_LI-LF_LI + PLQ_Spleen-LF_Spleen + PLQ_Pancreas - LF_Pancreas)*0.002; 
double V_Lung_bVM_Mem = V_Lung_VM;
double V_Lung_bIM_Mem = V_Lung_VM;
double V_Liver_bVM_Mem = V_Liver_VM;
double V_Liver_bIM_Mem = V_Liver_VM;
double V_Heart_bVM_Mem = V_Heart_VM;
double V_Heart_bIM_Mem = V_Heart_VM;
double V_Muscle_bVM_Mem = V_Muscle_VM;
double V_Muscle_bIM_Mem = V_Muscle_VM;
double V_Skin_bVM_Mem = V_Skin_VM;
double V_Skin_bIM_Mem = V_Skin_VM;
double V_Adipose_bVM_Mem = V_Adipose_VM;
double V_Adipose_bIM_Mem = V_Adipose_VM;
double V_Bone_bVM_Mem = V_Bone_VM;
double V_Bone_bIM_Mem = V_Bone_VM;
double V_Brain_bVM_Mem = V_Brain_VM;
double V_Brain_bIM_Mem = V_Brain_VM;
double V_Kidney_bVM_Mem = V_Kidney_VM;
double V_Kidney_bIM_Mem = V_Kidney_VM;
double V_SI_bVM_Mem = V_SI_VM;
double V_SI_bIM_Mem = V_SI_VM;
double V_LI_bVM_Mem = V_LI_VM;
double V_LI_bIM_Mem = V_LI_VM;
double V_Pancreas_bVM_Mem = V_Pancreas_VM;
double V_Pancreas_bIM_Mem = V_Pancreas_VM;
double V_Thymus_bVM_Mem = V_Thymus_VM;
double V_Thymus_bIM_Mem = V_Thymus_VM;
double V_Spleen_bVM_Mem = V_Spleen_VM;
double V_Spleen_bIM_Mem = V_Spleen_VM;
double V_Other_bVM_Mem = V_Other_VM;
double V_Other_bIM_Mem = V_Other_VM;

double PS_Kd = pow(10.0,(exp(PS_a - PS_b*PS_Score))) ;
double k_off_PS = (PS_Kd/1000.0)*k_on_PS; // [1/h]

double KD_6_EXG = KD6_WT; //  // [nM]. 
double KD_7_EXG = KD7_WT; //   // [nM]. 

double Scale_Factor = human_endo_scale_factor; // To simulate human

double kdeg_FcRn_Ab = log(2)/11.1; // [1/h]


double E7b_vol_pct = (1-E6a_vol_pct)/2.0; // [-]
double E7_vol_pct = (1-E6a_vol_pct)/2.0; // [-]         

double k_on_6_EDG2  = k_on_6_EDG/on_rate_ratio_1st_vs_2nd_binding; // [1/(uM*h)] 
double k_on_7_EDG2  = k_on_7_EDG/on_rate_ratio_1st_vs_2nd_binding; // [1/(uM*h)]
double k_on_6_EXG2  = k_on_6_EXG/on_rate_ratio_1st_vs_2nd_binding; // [1/(uM*h)]
double k_on_7_EXG2  = k_on_7_EXG/on_rate_ratio_1st_vs_2nd_binding; // [1/(uM*h)]

double KD_6_EDG2  = KD_6_EDG*on_rate_ratio_1st_vs_2nd_binding; // [nM] 
double KD_7_EDG2  = KD_7_EDG*on_rate_ratio_1st_vs_2nd_binding; // [nM] 

double KD_6_EXG2 = on_rate_ratio_1st_vs_2nd_binding*KD6_WT; // [nM]
double KD_7_EXG2 = on_rate_ratio_1st_vs_2nd_binding*KD7_WT; // [nM]

double k_off_7_EDG = (KD_7_EDG/1000)*k_on_7_EDG; // [1/h]
double k_off_6_EDG = (KD_6_EDG/1000)*k_on_6_EDG; // [1/h] 
double k_off_7_EXG = (KD_7_EXG/1000)*k_on_7_EXG; // [1/h] 
double k_off_6_EXG = (KD_6_EXG/1000)*k_on_6_EXG; // [1/h] 

double k_off_7_EDG2 = (KD_7_EDG2/1000)*k_on_7_EDG2; // [1/h] 
double k_off_6_EDG2 = (KD_6_EDG2/1000)*k_on_6_EDG2; // [1/h] 
double k_off_7_EXG2 = (KD_7_EXG2/1000)*k_on_7_EXG2; // [1/h] 
double k_off_6_EXG2 = (KD_6_EXG2/1000)*k_on_6_EXG2; // [1/h] 



double total_FcRn_in_nmole  = total_FcRn_in_nmole_par; // [nmole]. The total amount of FcRn
 //SIMULATION EQUATIONS
double Organ_Endothelial_Cell_Lung = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Lung*Scale_Factor;
double Organ_Endothelial_Cell_Liver = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Liver*Scale_Factor;
double Organ_Endothelial_Cell_Heart = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Heart*Scale_Factor;
double Organ_Endothelial_Cell_Muscle = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Muscle*Scale_Factor;
double Organ_Endothelial_Cell_Skin = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Skin*Scale_Factor;
double Organ_Endothelial_Cell_Adipose = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Adipose*Scale_Factor;
double Organ_Endothelial_Cell_Bone = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Bone*Scale_Factor;
double Organ_Endothelial_Cell_Brain = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Brain*Scale_Factor;
double Organ_Endothelial_Cell_Kidney = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Kidney*Scale_Factor;
double Organ_Endothelial_Cell_SI = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_SI*Scale_Factor;
double Organ_Endothelial_Cell_LI = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_LI*Scale_Factor;
double Organ_Endothelial_Cell_Pancreas = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Pancreas*Scale_Factor;
double Organ_Endothelial_Cell_Thymus = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Thymus*Scale_Factor;
double Organ_Endothelial_Cell_Spleen = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Spleen*Scale_Factor;
double Organ_Endothelial_Cell_Other = 
                              Total_Endothelial_Cell * Endothelial_Cell_Frac_Other*Scale_Factor;
double V_endo_by_number = Total_Endothelial_Cell*(4.0/3.0*M_PI*pow(Endosome_radius,3))*Endosome_per_cell*1.0e-15; 
double V_endosomal_Lung = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Lung*1.0E-6*1.0E-9;
double V_endosomal_Liver = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Liver*1.0E-6*1.0E-9;
double V_endosomal_Heart = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Heart*1.0E-6*1.0E-9;
double V_endosomal_Muscle = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Muscle*1.0E-6*1.0E-9;
double V_endosomal_Skin = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Skin*1.0E-6*1.0E-9;
double V_endosomal_Adipose = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Adipose*1.0E-6*1.0E-9;
double V_endosomal_Bone = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Bone*1.0E-6*1.0E-9;
double V_endosomal_Brain = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Brain*1.0E-6*1.0E-9;
double V_endosomal_Kidney = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Kidney*1.0E-6*1.0E-9;
double V_endosomal_SI = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_SI*1.0E-6*1.0E-9;
double V_endosomal_LI = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_LI*1.0E-6*1.0E-9;
double V_endosomal_Pancreas = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Pancreas*1.0E-6*1.0E-9;
double V_endosomal_Thymus = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Thymus*1.0E-6*1.0E-9;
double V_endosomal_Spleen = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Spleen*1.0E-6*1.0E-9;
double V_endosomal_Other = CL_Up_in_nL_per_hour_per_million_cells*pino_time*Organ_Endothelial_Cell_Other*1.0E-6*1.0E-9;
double FcRn_Conc = FcRn_Availability*total_FcRn_in_nmole*1.0e-3/(V_endosomal_Lung+V_endosomal_Liver+V_endosomal_Heart+V_endosomal_Muscle+V_endosomal_Skin+V_endosomal_Adipose+V_endosomal_Bone+V_endosomal_Brain+V_endosomal_Kidney+V_endosomal_SI+V_endosomal_LI+V_endosomal_Pancreas+V_endosomal_Thymus+V_endosomal_Spleen+V_endosomal_Other);
/////////////////////// GENERAL RELATIONSHIPS ///////////////////
double V_Lung_E7 = V_endosomal_Lung*E7_vol_pct;
double V_Lung_E6a = V_endosomal_Lung*E6a_vol_pct;
double V_Lung_E7b = V_endosomal_Lung*E7b_vol_pct;
double CLup_VLung =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Lung*1.0E-15;
double V_Lung_VM = CLup_VLung*tau_VM;
double V_Lung_IM = CLup_VLung*tau_IM;
double V_Liver_E7 = V_endosomal_Liver*E7_vol_pct;
double V_Liver_E6a = V_endosomal_Liver*E6a_vol_pct;
double V_Liver_E7b = V_endosomal_Liver*E7b_vol_pct;
double CLup_VLiver =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Liver*1.0E-15;
double V_Liver_VM = CLup_VLiver*tau_VM;
double V_Liver_IM = CLup_VLiver*tau_IM;
double V_Heart_E7 = V_endosomal_Heart*E7_vol_pct;
double V_Heart_E6a = V_endosomal_Heart*E6a_vol_pct;
double V_Heart_E7b = V_endosomal_Heart*E7b_vol_pct;
double CLup_VHeart =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Heart*1.0E-15;
double V_Heart_VM = CLup_VHeart*tau_VM;
double V_Heart_IM = CLup_VHeart*tau_IM;
double V_Muscle_E7 = V_endosomal_Muscle*E7_vol_pct;
double V_Muscle_E6a = V_endosomal_Muscle*E6a_vol_pct;
double V_Muscle_E7b = V_endosomal_Muscle*E7b_vol_pct;
double CLup_VMuscle =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Muscle*1.0E-15;
double V_Muscle_VM = CLup_VMuscle*tau_VM;
double V_Muscle_IM = CLup_VMuscle*tau_IM;
double V_Skin_E7 = V_endosomal_Skin*E7_vol_pct;
double V_Skin_E6a = V_endosomal_Skin*E6a_vol_pct;
double V_Skin_E7b = V_endosomal_Skin*E7b_vol_pct;
double CLup_VSkin =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Skin*1.0E-15;
double V_Skin_VM = CLup_VSkin*tau_VM;
double V_Skin_IM = CLup_VSkin*tau_IM;
double V_Adipose_E7 = V_endosomal_Adipose*E7_vol_pct;
double V_Adipose_E6a = V_endosomal_Adipose*E6a_vol_pct;
double V_Adipose_E7b = V_endosomal_Adipose*E7b_vol_pct;
double CLup_VAdipose =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Adipose*1.0E-15;
double V_Adipose_VM = CLup_VAdipose*tau_VM;
double V_Adipose_IM = CLup_VAdipose*tau_IM;
double V_Bone_E7 = V_endosomal_Bone*E7_vol_pct;
double V_Bone_E6a = V_endosomal_Bone*E6a_vol_pct;
double V_Bone_E7b = V_endosomal_Bone*E7b_vol_pct;
double CLup_VBone =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Bone*1.0E-15;
double V_Bone_VM = CLup_VBone*tau_VM;
double V_Bone_IM = CLup_VBone*tau_IM;
double V_Brain_E7 = V_endosomal_Brain*E7_vol_pct;
double V_Brain_E6a = V_endosomal_Brain*E6a_vol_pct;
double V_Brain_E7b = V_endosomal_Brain*E7b_vol_pct;
double CLup_VBrain =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Brain*1.0E-15;
double V_Brain_VM = CLup_VBrain*tau_VM;
double V_Brain_IM = CLup_VBrain*tau_IM;
double V_Kidney_E7 = V_endosomal_Kidney*E7_vol_pct;
double V_Kidney_E6a = V_endosomal_Kidney*E6a_vol_pct;
double V_Kidney_E7b = V_endosomal_Kidney*E7b_vol_pct;
double CLup_VKidney =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Kidney*1.0E-15;
double V_Kidney_VM = CLup_VKidney*tau_VM;
double V_Kidney_IM = CLup_VKidney*tau_IM;
double V_SI_E7 = V_endosomal_SI*E7_vol_pct;
double V_SI_E6a = V_endosomal_SI*E6a_vol_pct;
double V_SI_E7b = V_endosomal_SI*E7b_vol_pct;
double CLup_VSI =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_SI*1.0E-15;
double V_SI_VM = CLup_VSI*tau_VM;
double V_SI_IM = CLup_VSI*tau_IM;
double V_LI_E7 = V_endosomal_LI*E7_vol_pct;
double V_LI_E6a = V_endosomal_LI*E6a_vol_pct;
double V_LI_E7b = V_endosomal_LI*E7b_vol_pct;
double CLup_VLI =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_LI*1.0E-15;
double V_LI_VM = CLup_VLI*tau_VM;
double V_LI_IM = CLup_VLI*tau_IM;
double V_Pancreas_E7 = V_endosomal_Pancreas*E7_vol_pct;
double V_Pancreas_E6a = V_endosomal_Pancreas*E6a_vol_pct;
double V_Pancreas_E7b = V_endosomal_Pancreas*E7b_vol_pct;
double CLup_VPancreas =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Pancreas*1.0E-15;
double V_Pancreas_VM = CLup_VPancreas*tau_VM;
double V_Pancreas_IM = CLup_VPancreas*tau_IM;
double V_Thymus_E7 = V_endosomal_Thymus*E7_vol_pct;
double V_Thymus_E6a = V_endosomal_Thymus*E6a_vol_pct;
double V_Thymus_E7b = V_endosomal_Thymus*E7b_vol_pct;
double CLup_VThymus =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Thymus*1.0E-15;
double V_Thymus_VM = CLup_VThymus*tau_VM;
double V_Thymus_IM = CLup_VThymus*tau_IM;
double V_Spleen_E7 = V_endosomal_Spleen*E7_vol_pct;
double V_Spleen_E6a = V_endosomal_Spleen*E6a_vol_pct;
double V_Spleen_E7b = V_endosomal_Spleen*E7b_vol_pct;
double CLup_VSpleen =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Spleen*1.0E-15;
double V_Spleen_VM = CLup_VSpleen*tau_VM;
double V_Spleen_IM = CLup_VSpleen*tau_IM;
double V_Other_E7 = V_endosomal_Other*E7_vol_pct;
double V_Other_E6a = V_endosomal_Other*E6a_vol_pct;
double V_Other_E7b = V_endosomal_Other*E7b_vol_pct;
double CLup_VOther =  CL_Up_in_nL_per_hour_per_million_cells*Organ_Endothelial_Cell_Other*1.0E-15;
double V_Other_VM = CLup_VOther*tau_VM;
double V_Other_IM = CLup_VOther*tau_IM;
double V_Lung_bE7 = V_endosomal_Lung*E7_vol_pct;
double V_Lung_bE6a = V_endosomal_Lung*E6a_vol_pct;
double V_Lung_bE7b = V_endosomal_Lung*E7b_vol_pct;
double V_Lung_bVM = CLup_VLung*tau_VM;
double V_Lung_bIM = CLup_VLung*tau_IM;
double V_Liver_bE7 = V_endosomal_Liver*E7_vol_pct;
double V_Liver_bE6a = V_endosomal_Liver*E6a_vol_pct;
double V_Liver_bE7b = V_endosomal_Liver*E7b_vol_pct;
double V_Liver_bVM = CLup_VLiver*tau_VM;
double V_Liver_bIM = CLup_VLiver*tau_IM;
double V_Heart_bE7 = V_endosomal_Heart*E7_vol_pct;
double V_Heart_bE6a = V_endosomal_Heart*E6a_vol_pct;
double V_Heart_bE7b = V_endosomal_Heart*E7b_vol_pct;
double V_Heart_bVM = CLup_VHeart*tau_VM;
double V_Heart_bIM = CLup_VHeart*tau_IM;
double V_Muscle_bE7 = V_endosomal_Muscle*E7_vol_pct;
double V_Muscle_bE6a = V_endosomal_Muscle*E6a_vol_pct;
double V_Muscle_bE7b = V_endosomal_Muscle*E7b_vol_pct;
double V_Muscle_bVM = CLup_VMuscle*tau_VM;
double V_Muscle_bIM = CLup_VMuscle*tau_IM;
double V_Skin_bE7 = V_endosomal_Skin*E7_vol_pct;
double V_Skin_bE6a = V_endosomal_Skin*E6a_vol_pct;
double V_Skin_bE7b = V_endosomal_Skin*E7b_vol_pct;
double V_Skin_bVM = CLup_VSkin*tau_VM;
double V_Skin_bIM = CLup_VSkin*tau_IM;
double V_Adipose_bE7 = V_endosomal_Adipose*E7_vol_pct;
double V_Adipose_bE6a = V_endosomal_Adipose*E6a_vol_pct;
double V_Adipose_bE7b = V_endosomal_Adipose*E7b_vol_pct;
double V_Adipose_bVM = CLup_VAdipose*tau_VM;
double V_Adipose_bIM = CLup_VAdipose*tau_IM;
double V_Bone_bE7 = V_endosomal_Bone*E7_vol_pct;
double V_Bone_bE6a = V_endosomal_Bone*E6a_vol_pct;
double V_Bone_bE7b = V_endosomal_Bone*E7b_vol_pct;
double V_Bone_bVM = CLup_VBone*tau_VM;
double V_Bone_bIM = CLup_VBone*tau_IM;
double V_Brain_bE7 = V_endosomal_Brain*E7_vol_pct;
double V_Brain_bE6a = V_endosomal_Brain*E6a_vol_pct;
double V_Brain_bE7b = V_endosomal_Brain*E7b_vol_pct;
double V_Brain_bVM = CLup_VBrain*tau_VM;
double V_Brain_bIM = CLup_VBrain*tau_IM;
double V_Kidney_bE7 = V_endosomal_Kidney*E7_vol_pct;
double V_Kidney_bE6a = V_endosomal_Kidney*E6a_vol_pct;
double V_Kidney_bE7b = V_endosomal_Kidney*E7b_vol_pct;
double V_Kidney_bVM = CLup_VKidney*tau_VM;
double V_Kidney_bIM = CLup_VKidney*tau_IM;
double V_SI_bE7 = V_endosomal_SI*E7_vol_pct;
double V_SI_bE6a = V_endosomal_SI*E6a_vol_pct;
double V_SI_bE7b = V_endosomal_SI*E7b_vol_pct;
double V_SI_bVM = CLup_VSI*tau_VM;
double V_SI_bIM = CLup_VSI*tau_IM;
double V_LI_bE7 = V_endosomal_LI*E7_vol_pct;
double V_LI_bE6a = V_endosomal_LI*E6a_vol_pct;
double V_LI_bE7b = V_endosomal_LI*E7b_vol_pct;
double V_LI_bVM = CLup_VLI*tau_VM;
double V_LI_bIM = CLup_VLI*tau_IM;
double V_Pancreas_bE7 = V_endosomal_Pancreas*E7_vol_pct;
double V_Pancreas_bE6a = V_endosomal_Pancreas*E6a_vol_pct;
double V_Pancreas_bE7b = V_endosomal_Pancreas*E7b_vol_pct;
double V_Pancreas_bVM = CLup_VPancreas*tau_VM;
double V_Pancreas_bIM = CLup_VPancreas*tau_IM;
double V_Thymus_bE7 = V_endosomal_Thymus*E7_vol_pct;
double V_Thymus_bE6a = V_endosomal_Thymus*E6a_vol_pct;
double V_Thymus_bE7b = V_endosomal_Thymus*E7b_vol_pct;
double V_Thymus_bVM = CLup_VThymus*tau_VM;
double V_Thymus_bIM = CLup_VThymus*tau_IM;
double V_Spleen_bE7 = V_endosomal_Spleen*E7_vol_pct;
double V_Spleen_bE6a = V_endosomal_Spleen*E6a_vol_pct;
double V_Spleen_bE7b = V_endosomal_Spleen*E7b_vol_pct;
double V_Spleen_bVM = CLup_VSpleen*tau_VM;
double V_Spleen_bIM = CLup_VSpleen*tau_IM;
double V_Other_bE7 = V_endosomal_Other*E7_vol_pct;
double V_Other_bE6a = V_endosomal_Other*E6a_vol_pct;
double V_Other_bE7b = V_endosomal_Other*E7b_vol_pct;
double V_Other_bVM = CLup_VOther*tau_VM;
double V_Other_bIM = CLup_VOther*tau_IM;
double V_Lung_b2E7 = V_endosomal_Lung*E7_vol_pct;
double V_Lung_b2E6a = V_endosomal_Lung*E6a_vol_pct;
double V_Lung_b2E7b = V_endosomal_Lung*E7b_vol_pct;
double V_Lung_b2VM = CLup_VLung*tau_VM;
double V_Lung_b2IM = CLup_VLung*tau_IM;
double V_Liver_b2E7 = V_endosomal_Liver*E7_vol_pct;
double V_Liver_b2E6a = V_endosomal_Liver*E6a_vol_pct;
double V_Liver_b2E7b = V_endosomal_Liver*E7b_vol_pct;
double V_Liver_b2VM = CLup_VLiver*tau_VM;
double V_Liver_b2IM = CLup_VLiver*tau_IM;
double V_Heart_b2E7 = V_endosomal_Heart*E7_vol_pct;
double V_Heart_b2E6a = V_endosomal_Heart*E6a_vol_pct;
double V_Heart_b2E7b = V_endosomal_Heart*E7b_vol_pct;
double V_Heart_b2VM = CLup_VHeart*tau_VM;
double V_Heart_b2IM = CLup_VHeart*tau_IM;
double V_Muscle_b2E7 = V_endosomal_Muscle*E7_vol_pct;
double V_Muscle_b2E6a = V_endosomal_Muscle*E6a_vol_pct;
double V_Muscle_b2E7b = V_endosomal_Muscle*E7b_vol_pct;
double V_Muscle_b2VM = CLup_VMuscle*tau_VM;
double V_Muscle_b2IM = CLup_VMuscle*tau_IM;
double V_Skin_b2E7 = V_endosomal_Skin*E7_vol_pct;
double V_Skin_b2E6a = V_endosomal_Skin*E6a_vol_pct;
double V_Skin_b2E7b = V_endosomal_Skin*E7b_vol_pct;
double V_Skin_b2VM = CLup_VSkin*tau_VM;
double V_Skin_b2IM = CLup_VSkin*tau_IM;
double V_Adipose_b2E7 = V_endosomal_Adipose*E7_vol_pct;
double V_Adipose_b2E6a = V_endosomal_Adipose*E6a_vol_pct;
double V_Adipose_b2E7b = V_endosomal_Adipose*E7b_vol_pct;
double V_Adipose_b2VM = CLup_VAdipose*tau_VM;
double V_Adipose_b2IM = CLup_VAdipose*tau_IM;
double V_Bone_b2E7 = V_endosomal_Bone*E7_vol_pct;
double V_Bone_b2E6a = V_endosomal_Bone*E6a_vol_pct;
double V_Bone_b2E7b = V_endosomal_Bone*E7b_vol_pct;
double V_Bone_b2VM = CLup_VBone*tau_VM;
double V_Bone_b2IM = CLup_VBone*tau_IM;
double V_Brain_b2E7 = V_endosomal_Brain*E7_vol_pct;
double V_Brain_b2E6a = V_endosomal_Brain*E6a_vol_pct;
double V_Brain_b2E7b = V_endosomal_Brain*E7b_vol_pct;
double V_Brain_b2VM = CLup_VBrain*tau_VM;
double V_Brain_b2IM = CLup_VBrain*tau_IM;
double V_Kidney_b2E7 = V_endosomal_Kidney*E7_vol_pct;
double V_Kidney_b2E6a = V_endosomal_Kidney*E6a_vol_pct;
double V_Kidney_b2E7b = V_endosomal_Kidney*E7b_vol_pct;
double V_Kidney_b2VM = CLup_VKidney*tau_VM;
double V_Kidney_b2IM = CLup_VKidney*tau_IM;
double V_SI_b2E7 = V_endosomal_SI*E7_vol_pct;
double V_SI_b2E6a = V_endosomal_SI*E6a_vol_pct;
double V_SI_b2E7b = V_endosomal_SI*E7b_vol_pct;
double V_SI_b2VM = CLup_VSI*tau_VM;
double V_SI_b2IM = CLup_VSI*tau_IM;
double V_LI_b2E7 = V_endosomal_LI*E7_vol_pct;
double V_LI_b2E6a = V_endosomal_LI*E6a_vol_pct;
double V_LI_b2E7b = V_endosomal_LI*E7b_vol_pct;
double V_LI_b2VM = CLup_VLI*tau_VM;
double V_LI_b2IM = CLup_VLI*tau_IM;
double V_Pancreas_b2E7 = V_endosomal_Pancreas*E7_vol_pct;
double V_Pancreas_b2E6a = V_endosomal_Pancreas*E6a_vol_pct;
double V_Pancreas_b2E7b = V_endosomal_Pancreas*E7b_vol_pct;
double V_Pancreas_b2VM = CLup_VPancreas*tau_VM;
double V_Pancreas_b2IM = CLup_VPancreas*tau_IM;
double V_Thymus_b2E7 = V_endosomal_Thymus*E7_vol_pct;
double V_Thymus_b2E6a = V_endosomal_Thymus*E6a_vol_pct;
double V_Thymus_b2E7b = V_endosomal_Thymus*E7b_vol_pct;
double V_Thymus_b2VM = CLup_VThymus*tau_VM;
double V_Thymus_b2IM = CLup_VThymus*tau_IM;
double V_Spleen_b2E7 = V_endosomal_Spleen*E7_vol_pct;
double V_Spleen_b2E6a = V_endosomal_Spleen*E6a_vol_pct;
double V_Spleen_b2E7b = V_endosomal_Spleen*E7b_vol_pct;
double V_Spleen_b2VM = CLup_VSpleen*tau_VM;
double V_Spleen_b2IM = CLup_VSpleen*tau_IM;
double V_Other_b2E7 = V_endosomal_Other*E7_vol_pct;
double V_Other_b2E6a = V_endosomal_Other*E6a_vol_pct;
double V_Other_b2E7b = V_endosomal_Other*E7b_vol_pct;
double V_Other_b2VM = CLup_VOther*tau_VM;
double V_Other_b2IM = CLup_VOther*tau_IM;
double CLup_Lung = CLup_VLung;
double CLup_Liver = CLup_VLiver;
double CLup_Heart = CLup_VHeart;
double CLup_Muscle = CLup_VMuscle;
double CLup_Skin = CLup_VSkin;
double CLup_Adipose = CLup_VAdipose;
double CLup_Bone = CLup_VBone;
double CLup_Brain = CLup_VBrain;
double CLup_Kidney = CLup_VKidney;
double CLup_SI = CLup_VSI;
double CLup_LI = CLup_VLI;
double CLup_Pancreas = CLup_VPancreas;
double CLup_Thymus = CLup_VThymus;
double CLup_Spleen = CLup_VSpleen;
double CLup_Other = CLup_VOther;
// INITIAL CONDITIONS

Cedg_LN_0 = 1.0e-18*1.0e6; // [um]
Cedg_Plasma_0 = EDG_mg_ml/MW_EDG*1.0e6; // [um]
// Endogenous mAb
Cedg_Lung_V_0 = 0.0000000000010000; // [um]
Cedg_Lung_VM_0 = 0.0000000000010000; // [um]
Cedg_Lung_E7_0 = 0.0000000000010000; // [um]
Cedg_Lung_E6a_0 = 0.0000000000010000; // [um]
Cedg_Lung_E7b_0 = 0.0000000000010000; // [um]
Cedg_Lung_IM_0 = 0.0000000000010000; // [um]
Cedg_Lung_IS_0 = 0.0000000000010000; // [um]
Cedg_Lung_bVM_0 = 0.0000000000010000; // [um]
Cedg_Lung_bE7_0 = 0.0000000000010000; // [um]
Cedg_Lung_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Lung_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Lung_bIM_0 = 0.0000000000010000; // [um]
Cedg_Lung_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Lung_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Lung_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Lung_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Lung_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Liver_V_0 = 0.0000000000010000; // [um]
Cedg_Liver_VM_0 = 0.0000000000010000; // [um]
Cedg_Liver_E7_0 = 0.0000000000010000; // [um]
Cedg_Liver_E6a_0 = 0.0000000000010000; // [um]
Cedg_Liver_E7b_0 = 0.0000000000010000; // [um]
Cedg_Liver_IM_0 = 0.0000000000010000; // [um]
Cedg_Liver_IS_0 = 0.0000000000010000; // [um]
Cedg_Liver_bVM_0 = 0.0000000000010000; // [um]
Cedg_Liver_bE7_0 = 0.0000000000010000; // [um]
Cedg_Liver_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Liver_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Liver_bIM_0 = 0.0000000000010000; // [um]
Cedg_Liver_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Liver_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Liver_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Liver_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Liver_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Heart_V_0 = 0.0000000000010000; // [um]
Cedg_Heart_VM_0 = 0.0000000000010000; // [um]
Cedg_Heart_E7_0 = 0.0000000000010000; // [um]
Cedg_Heart_E6a_0 = 0.0000000000010000; // [um]
Cedg_Heart_E7b_0 = 0.0000000000010000; // [um]
Cedg_Heart_IM_0 = 0.0000000000010000; // [um]
Cedg_Heart_IS_0 = 0.0000000000010000; // [um]
Cedg_Heart_bVM_0 = 0.0000000000010000; // [um]
Cedg_Heart_bE7_0 = 0.0000000000010000; // [um]
Cedg_Heart_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Heart_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Heart_bIM_0 = 0.0000000000010000; // [um]
Cedg_Heart_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Heart_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Heart_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Heart_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Heart_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Muscle_V_0 = 0.0000000000010000; // [um]
Cedg_Muscle_VM_0 = 0.0000000000010000; // [um]
Cedg_Muscle_E7_0 = 0.0000000000010000; // [um]
Cedg_Muscle_E6a_0 = 0.0000000000010000; // [um]
Cedg_Muscle_E7b_0 = 0.0000000000010000; // [um]
Cedg_Muscle_IM_0 = 0.0000000000010000; // [um]
Cedg_Muscle_IS_0 = 0.0000000000010000; // [um]
Cedg_Muscle_bVM_0 = 0.0000000000010000; // [um]
Cedg_Muscle_bE7_0 = 0.0000000000010000; // [um]
Cedg_Muscle_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Muscle_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Muscle_bIM_0 = 0.0000000000010000; // [um]
Cedg_Muscle_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Muscle_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Muscle_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Muscle_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Muscle_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Skin_V_0 = 0.0000000000010000; // [um]
Cedg_Skin_VM_0 = 0.0000000000010000; // [um]
Cedg_Skin_E7_0 = 0.0000000000010000; // [um]
Cedg_Skin_E6a_0 = 0.0000000000010000; // [um]
Cedg_Skin_E7b_0 = 0.0000000000010000; // [um]
Cedg_Skin_IM_0 = 0.0000000000010000; // [um]
Cedg_Skin_IS_0 = 0.0000000000010000; // [um]
Cedg_Skin_bVM_0 = 0.0000000000010000; // [um]
Cedg_Skin_bE7_0 = 0.0000000000010000; // [um]
Cedg_Skin_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Skin_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Skin_bIM_0 = 0.0000000000010000; // [um]
Cedg_Skin_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Skin_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Skin_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Skin_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Skin_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Adipose_V_0 = 0.0000000000010000; // [um]
Cedg_Adipose_VM_0 = 0.0000000000010000; // [um]
Cedg_Adipose_E7_0 = 0.0000000000010000; // [um]
Cedg_Adipose_E6a_0 = 0.0000000000010000; // [um]
Cedg_Adipose_E7b_0 = 0.0000000000010000; // [um]
Cedg_Adipose_IM_0 = 0.0000000000010000; // [um]
Cedg_Adipose_IS_0 = 0.0000000000010000; // [um]
Cedg_Adipose_bVM_0 = 0.0000000000010000; // [um]
Cedg_Adipose_bE7_0 = 0.0000000000010000; // [um]
Cedg_Adipose_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Adipose_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Adipose_bIM_0 = 0.0000000000010000; // [um]
Cedg_Adipose_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Adipose_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Adipose_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Adipose_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Adipose_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Bone_V_0 = 0.0000000000010000; // [um]
Cedg_Bone_VM_0 = 0.0000000000010000; // [um]
Cedg_Bone_E7_0 = 0.0000000000010000; // [um]
Cedg_Bone_E6a_0 = 0.0000000000010000; // [um]
Cedg_Bone_E7b_0 = 0.0000000000010000; // [um]
Cedg_Bone_IM_0 = 0.0000000000010000; // [um]
Cedg_Bone_IS_0 = 0.0000000000010000; // [um]
Cedg_Bone_bVM_0 = 0.0000000000010000; // [um]
Cedg_Bone_bE7_0 = 0.0000000000010000; // [um]
Cedg_Bone_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Bone_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Bone_bIM_0 = 0.0000000000010000; // [um]
Cedg_Bone_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Bone_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Bone_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Bone_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Bone_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Brain_V_0 = 0.0000000000010000; // [um]
Cedg_Brain_VM_0 = 0.0000000000010000; // [um]
Cedg_Brain_E7_0 = 0.0000000000010000; // [um]
Cedg_Brain_E6a_0 = 0.0000000000010000; // [um]
Cedg_Brain_E7b_0 = 0.0000000000010000; // [um]
Cedg_Brain_IM_0 = 0.0000000000010000; // [um]
Cedg_Brain_IS_0 = 0.0000000000010000; // [um]
Cedg_Brain_bVM_0 = 0.0000000000010000; // [um]
Cedg_Brain_bE7_0 = 0.0000000000010000; // [um]
Cedg_Brain_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Brain_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Brain_bIM_0 = 0.0000000000010000; // [um]
Cedg_Brain_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Brain_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Brain_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Brain_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Brain_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Kidney_V_0 = 0.0000000000010000; // [um]
Cedg_Kidney_VM_0 = 0.0000000000010000; // [um]
Cedg_Kidney_E7_0 = 0.0000000000010000; // [um]
Cedg_Kidney_E6a_0 = 0.0000000000010000; // [um]
Cedg_Kidney_E7b_0 = 0.0000000000010000; // [um]
Cedg_Kidney_IM_0 = 0.0000000000010000; // [um]
Cedg_Kidney_IS_0 = 0.0000000000010000; // [um]
Cedg_Kidney_bVM_0 = 0.0000000000010000; // [um]
Cedg_Kidney_bE7_0 = 0.0000000000010000; // [um]
Cedg_Kidney_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Kidney_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Kidney_bIM_0 = 0.0000000000010000; // [um]
Cedg_Kidney_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Kidney_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Kidney_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Kidney_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Kidney_b2IM_0 = 0.0000000000010000; // [um]
Cedg_SI_V_0 = 0.0000000000010000; // [um]
Cedg_SI_VM_0 = 0.0000000000010000; // [um]
Cedg_SI_E7_0 = 0.0000000000010000; // [um]
Cedg_SI_E6a_0 = 0.0000000000010000; // [um]
Cedg_SI_E7b_0 = 0.0000000000010000; // [um]
Cedg_SI_IM_0 = 0.0000000000010000; // [um]
Cedg_SI_IS_0 = 0.0000000000010000; // [um]
Cedg_SI_bVM_0 = 0.0000000000010000; // [um]
Cedg_SI_bE7_0 = 0.0000000000010000; // [um]
Cedg_SI_bE6a_0 = 0.0000000000010000; // [um]
Cedg_SI_bE7b_0 = 0.0000000000010000; // [um]
Cedg_SI_bIM_0 = 0.0000000000010000; // [um]
Cedg_SI_b2VM_0 = 0.0000000000010000; // [um]
Cedg_SI_b2E7_0 = 0.0000000000010000; // [um]
Cedg_SI_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_SI_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_SI_b2IM_0 = 0.0000000000010000; // [um]
Cedg_LI_V_0 = 0.0000000000010000; // [um]
Cedg_LI_VM_0 = 0.0000000000010000; // [um]
Cedg_LI_E7_0 = 0.0000000000010000; // [um]
Cedg_LI_E6a_0 = 0.0000000000010000; // [um]
Cedg_LI_E7b_0 = 0.0000000000010000; // [um]
Cedg_LI_IM_0 = 0.0000000000010000; // [um]
Cedg_LI_IS_0 = 0.0000000000010000; // [um]
Cedg_LI_bVM_0 = 0.0000000000010000; // [um]
Cedg_LI_bE7_0 = 0.0000000000010000; // [um]
Cedg_LI_bE6a_0 = 0.0000000000010000; // [um]
Cedg_LI_bE7b_0 = 0.0000000000010000; // [um]
Cedg_LI_bIM_0 = 0.0000000000010000; // [um]
Cedg_LI_b2VM_0 = 0.0000000000010000; // [um]
Cedg_LI_b2E7_0 = 0.0000000000010000; // [um]
Cedg_LI_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_LI_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_LI_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_V_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_VM_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_E7_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_E6a_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_E7b_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_IM_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_IS_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_bVM_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_bE7_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_bIM_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Pancreas_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Thymus_V_0 = 0.0000000000010000; // [um]
Cedg_Thymus_VM_0 = 0.0000000000010000; // [um]
Cedg_Thymus_E7_0 = 0.0000000000010000; // [um]
Cedg_Thymus_E6a_0 = 0.0000000000010000; // [um]
Cedg_Thymus_E7b_0 = 0.0000000000010000; // [um]
Cedg_Thymus_IM_0 = 0.0000000000010000; // [um]
Cedg_Thymus_IS_0 = 0.0000000000010000; // [um]
Cedg_Thymus_bVM_0 = 0.0000000000010000; // [um]
Cedg_Thymus_bE7_0 = 0.0000000000010000; // [um]
Cedg_Thymus_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Thymus_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Thymus_bIM_0 = 0.0000000000010000; // [um]
Cedg_Thymus_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Thymus_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Thymus_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Thymus_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Thymus_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Spleen_V_0 = 0.0000000000010000; // [um]
Cedg_Spleen_VM_0 = 0.0000000000010000; // [um]
Cedg_Spleen_E7_0 = 0.0000000000010000; // [um]
Cedg_Spleen_E6a_0 = 0.0000000000010000; // [um]
Cedg_Spleen_E7b_0 = 0.0000000000010000; // [um]
Cedg_Spleen_IM_0 = 0.0000000000010000; // [um]
Cedg_Spleen_IS_0 = 0.0000000000010000; // [um]
Cedg_Spleen_bVM_0 = 0.0000000000010000; // [um]
Cedg_Spleen_bE7_0 = 0.0000000000010000; // [um]
Cedg_Spleen_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Spleen_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Spleen_bIM_0 = 0.0000000000010000; // [um]
Cedg_Spleen_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Spleen_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Spleen_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Spleen_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Spleen_b2IM_0 = 0.0000000000010000; // [um]
Cedg_Other_V_0 = 0.0000000000010000; // [um]
Cedg_Other_VM_0 = 0.0000000000010000; // [um]
Cedg_Other_E7_0 = 0.0000000000010000; // [um]
Cedg_Other_E6a_0 = 0.0000000000010000; // [um]
Cedg_Other_E7b_0 = 0.0000000000010000; // [um]
Cedg_Other_IM_0 = 0.0000000000010000; // [um]
Cedg_Other_IS_0 = 0.0000000000010000; // [um]
Cedg_Other_bVM_0 = 0.0000000000010000; // [um]
Cedg_Other_bE7_0 = 0.0000000000010000; // [um]
Cedg_Other_bE6a_0 = 0.0000000000010000; // [um]
Cedg_Other_bE7b_0 = 0.0000000000010000; // [um]
Cedg_Other_bIM_0 = 0.0000000000010000; // [um]
Cedg_Other_b2VM_0 = 0.0000000000010000; // [um]
Cedg_Other_b2E7_0 = 0.0000000000010000; // [um]
Cedg_Other_b2E6a_0 = 0.0000000000010000; // [um]
Cedg_Other_b2E7b_0 = 0.0000000000010000; // [um]
Cedg_Other_b2IM_0 = 0.0000000000010000; // [um]
// Exogenous mAb
Aexg_Plasma_0 = 0.0;
Cexg_LN_0 = 0.0;//1.0E-18*1.0E6; // [uM]
Cexg_Lung_V_0 = 0.0000000000000000; // [um]
Cexg_Lung_VM_0 = 0.0000000000000000; // [um]
Cexg_Lung_E7_0 = 0.0000000000000000; // [um]
Cexg_Lung_E6a_0 = 0.0000000000000000; // [um]
Cexg_Lung_E7b_0 = 0.0000000000000000; // [um]
Cexg_Lung_IM_0 = 0.0000000000000000; // [um]
Cexg_Lung_IS_0 = 0.0000000000000000; // [um]
Cexg_Lung_bVM_0 = 0.0000000000000000; // [um]
Cexg_Lung_bE7_0 = 0.0000000000000000; // [um]
Cexg_Lung_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Lung_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Lung_bIM_0 = 0.0000000000000000; // [um]
Cexg_Lung_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Lung_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Lung_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Lung_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Lung_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Lung_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Lung_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Liver_V_0 = 0.0000000000000000; // [um]
Cexg_Liver_VM_0 = 0.0000000000000000; // [um]
Cexg_Liver_E7_0 = 0.0000000000000000; // [um]
Cexg_Liver_E6a_0 = 0.0000000000000000; // [um]
Cexg_Liver_E7b_0 = 0.0000000000000000; // [um]
Cexg_Liver_IM_0 = 0.0000000000000000; // [um]
Cexg_Liver_IS_0 = 0.0000000000000000; // [um]
Cexg_Liver_bVM_0 = 0.0000000000000000; // [um]
Cexg_Liver_bE7_0 = 0.0000000000000000; // [um]
Cexg_Liver_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Liver_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Liver_bIM_0 = 0.0000000000000000; // [um]
Cexg_Liver_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Liver_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Liver_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Liver_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Liver_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Liver_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Liver_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Heart_V_0 = 0.0000000000000000; // [um]
Cexg_Heart_VM_0 = 0.0000000000000000; // [um]
Cexg_Heart_E7_0 = 0.0000000000000000; // [um]
Cexg_Heart_E6a_0 = 0.0000000000000000; // [um]
Cexg_Heart_E7b_0 = 0.0000000000000000; // [um]
Cexg_Heart_IM_0 = 0.0000000000000000; // [um]
Cexg_Heart_IS_0 = 0.0000000000000000; // [um]
Cexg_Heart_bVM_0 = 0.0000000000000000; // [um]
Cexg_Heart_bE7_0 = 0.0000000000000000; // [um]
Cexg_Heart_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Heart_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Heart_bIM_0 = 0.0000000000000000; // [um]
Cexg_Heart_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Heart_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Heart_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Heart_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Heart_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Heart_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Heart_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Muscle_V_0 = 0.0000000000000000; // [um]
Cexg_Muscle_VM_0 = 0.0000000000000000; // [um]
Cexg_Muscle_E7_0 = 0.0000000000000000; // [um]
Cexg_Muscle_E6a_0 = 0.0000000000000000; // [um]
Cexg_Muscle_E7b_0 = 0.0000000000000000; // [um]
Cexg_Muscle_IM_0 = 0.0000000000000000; // [um]
Cexg_Muscle_IS_0 = 0.0000000000000000; // [um]
Cexg_Muscle_bVM_0 = 0.0000000000000000; // [um]
Cexg_Muscle_bE7_0 = 0.0000000000000000; // [um]
Cexg_Muscle_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Muscle_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Muscle_bIM_0 = 0.0000000000000000; // [um]
Cexg_Muscle_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Muscle_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Muscle_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Muscle_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Muscle_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Muscle_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Muscle_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Skin_V_0 = 0.0000000000000000; // [um]
Cexg_Skin_VM_0 = 0.0000000000000000; // [um]
Cexg_Skin_E7_0 = 0.0000000000000000; // [um]
Cexg_Skin_E6a_0 = 0.0000000000000000; // [um]
Cexg_Skin_E7b_0 = 0.0000000000000000; // [um]
Cexg_Skin_IM_0 = 0.0000000000000000; // [um]
Cexg_Skin_IS_0 = 0.0000000000000000; // [um]
Cexg_Skin_bVM_0 = 0.0000000000000000; // [um]
Cexg_Skin_bE7_0 = 0.0000000000000000; // [um]
Cexg_Skin_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Skin_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Skin_bIM_0 = 0.0000000000000000; // [um]
Cexg_Skin_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Skin_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Skin_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Skin_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Skin_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Skin_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Skin_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Adipose_V_0 = 0.0000000000000000; // [um]
Cexg_Adipose_VM_0 = 0.0000000000000000; // [um]
Cexg_Adipose_E7_0 = 0.0000000000000000; // [um]
Cexg_Adipose_E6a_0 = 0.0000000000000000; // [um]
Cexg_Adipose_E7b_0 = 0.0000000000000000; // [um]
Cexg_Adipose_IM_0 = 0.0000000000000000; // [um]
Cexg_Adipose_IS_0 = 0.0000000000000000; // [um]
Cexg_Adipose_bVM_0 = 0.0000000000000000; // [um]
Cexg_Adipose_bE7_0 = 0.0000000000000000; // [um]
Cexg_Adipose_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Adipose_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Adipose_bIM_0 = 0.0000000000000000; // [um]
Cexg_Adipose_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Adipose_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Adipose_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Adipose_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Adipose_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Adipose_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Adipose_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Bone_V_0 = 0.0000000000000000; // [um]
Cexg_Bone_VM_0 = 0.0000000000000000; // [um]
Cexg_Bone_E7_0 = 0.0000000000000000; // [um]
Cexg_Bone_E6a_0 = 0.0000000000000000; // [um]
Cexg_Bone_E7b_0 = 0.0000000000000000; // [um]
Cexg_Bone_IM_0 = 0.0000000000000000; // [um]
Cexg_Bone_IS_0 = 0.0000000000000000; // [um]
Cexg_Bone_bVM_0 = 0.0000000000000000; // [um]
Cexg_Bone_bE7_0 = 0.0000000000000000; // [um]
Cexg_Bone_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Bone_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Bone_bIM_0 = 0.0000000000000000; // [um]
Cexg_Bone_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Bone_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Bone_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Bone_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Bone_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Bone_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Bone_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Brain_V_0 = 0.0000000000000000; // [um]
Cexg_Brain_VM_0 = 0.0000000000000000; // [um]
Cexg_Brain_E7_0 = 0.0000000000000000; // [um]
Cexg_Brain_E6a_0 = 0.0000000000000000; // [um]
Cexg_Brain_E7b_0 = 0.0000000000000000; // [um]
Cexg_Brain_IM_0 = 0.0000000000000000; // [um]
Cexg_Brain_IS_0 = 0.0000000000000000; // [um]
Cexg_Brain_bVM_0 = 0.0000000000000000; // [um]
Cexg_Brain_bE7_0 = 0.0000000000000000; // [um]
Cexg_Brain_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Brain_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Brain_bIM_0 = 0.0000000000000000; // [um]
Cexg_Brain_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Brain_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Brain_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Brain_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Brain_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Brain_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Brain_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Kidney_V_0 = 0.0000000000000000; // [um]
Cexg_Kidney_VM_0 = 0.0000000000000000; // [um]
Cexg_Kidney_E7_0 = 0.0000000000000000; // [um]
Cexg_Kidney_E6a_0 = 0.0000000000000000; // [um]
Cexg_Kidney_E7b_0 = 0.0000000000000000; // [um]
Cexg_Kidney_IM_0 = 0.0000000000000000; // [um]
Cexg_Kidney_IS_0 = 0.0000000000000000; // [um]
Cexg_Kidney_bVM_0 = 0.0000000000000000; // [um]
Cexg_Kidney_bE7_0 = 0.0000000000000000; // [um]
Cexg_Kidney_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Kidney_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Kidney_bIM_0 = 0.0000000000000000; // [um]
Cexg_Kidney_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Kidney_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Kidney_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Kidney_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Kidney_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Kidney_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Kidney_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_SI_V_0 = 0.0000000000000000; // [um]
Cexg_SI_VM_0 = 0.0000000000000000; // [um]
Cexg_SI_E7_0 = 0.0000000000000000; // [um]
Cexg_SI_E6a_0 = 0.0000000000000000; // [um]
Cexg_SI_E7b_0 = 0.0000000000000000; // [um]
Cexg_SI_IM_0 = 0.0000000000000000; // [um]
Cexg_SI_IS_0 = 0.0000000000000000; // [um]
Cexg_SI_bVM_0 = 0.0000000000000000; // [um]
Cexg_SI_bE7_0 = 0.0000000000000000; // [um]
Cexg_SI_bE6a_0 = 0.0000000000000000; // [um]
Cexg_SI_bE7b_0 = 0.0000000000000000; // [um]
Cexg_SI_bIM_0 = 0.0000000000000000; // [um]
Cexg_SI_b2VM_0 = 0.0000000000000000; // [um]
Cexg_SI_b2E7_0 = 0.0000000000000000; // [um]
Cexg_SI_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_SI_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_SI_b2IM_0 = 0.0000000000000000; // [um]
Cexg_SI_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_SI_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_LI_V_0 = 0.0000000000000000; // [um]
Cexg_LI_VM_0 = 0.0000000000000000; // [um]
Cexg_LI_E7_0 = 0.0000000000000000; // [um]
Cexg_LI_E6a_0 = 0.0000000000000000; // [um]
Cexg_LI_E7b_0 = 0.0000000000000000; // [um]
Cexg_LI_IM_0 = 0.0000000000000000; // [um]
Cexg_LI_IS_0 = 0.0000000000000000; // [um]
Cexg_LI_bVM_0 = 0.0000000000000000; // [um]
Cexg_LI_bE7_0 = 0.0000000000000000; // [um]
Cexg_LI_bE6a_0 = 0.0000000000000000; // [um]
Cexg_LI_bE7b_0 = 0.0000000000000000; // [um]
Cexg_LI_bIM_0 = 0.0000000000000000; // [um]
Cexg_LI_b2VM_0 = 0.0000000000000000; // [um]
Cexg_LI_b2E7_0 = 0.0000000000000000; // [um]
Cexg_LI_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_LI_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_LI_b2IM_0 = 0.0000000000000000; // [um]
Cexg_LI_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_LI_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_V_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_VM_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_E7_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_E6a_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_E7b_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_IM_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_IS_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_bVM_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_bE7_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_bIM_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Pancreas_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Thymus_V_0 = 0.0000000000000000; // [um]
Cexg_Thymus_VM_0 = 0.0000000000000000; // [um]
Cexg_Thymus_E7_0 = 0.0000000000000000; // [um]
Cexg_Thymus_E6a_0 = 0.0000000000000000; // [um]
Cexg_Thymus_E7b_0 = 0.0000000000000000; // [um]
Cexg_Thymus_IM_0 = 0.0000000000000000; // [um]
Cexg_Thymus_IS_0 = 0.0000000000000000; // [um]
Cexg_Thymus_bVM_0 = 0.0000000000000000; // [um]
Cexg_Thymus_bE7_0 = 0.0000000000000000; // [um]
Cexg_Thymus_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Thymus_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Thymus_bIM_0 = 0.0000000000000000; // [um]
Cexg_Thymus_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Thymus_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Thymus_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Thymus_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Thymus_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Thymus_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Thymus_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Spleen_V_0 = 0.0000000000000000; // [um]
Cexg_Spleen_VM_0 = 0.0000000000000000; // [um]
Cexg_Spleen_E7_0 = 0.0000000000000000; // [um]
Cexg_Spleen_E6a_0 = 0.0000000000000000; // [um]
Cexg_Spleen_E7b_0 = 0.0000000000000000; // [um]
Cexg_Spleen_IM_0 = 0.0000000000000000; // [um]
Cexg_Spleen_IS_0 = 0.0000000000000000; // [um]
Cexg_Spleen_bVM_0 = 0.0000000000000000; // [um]
Cexg_Spleen_bE7_0 = 0.0000000000000000; // [um]
Cexg_Spleen_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Spleen_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Spleen_bIM_0 = 0.0000000000000000; // [um]
Cexg_Spleen_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Spleen_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Spleen_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Spleen_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Spleen_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Spleen_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Spleen_bIM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Other_V_0 = 0.0000000000000000; // [um]
Cexg_Other_VM_0 = 0.0000000000000000; // [um]
Cexg_Other_E7_0 = 0.0000000000000000; // [um]
Cexg_Other_E6a_0 = 0.0000000000000000; // [um]
Cexg_Other_E7b_0 = 0.0000000000000000; // [um]
Cexg_Other_IM_0 = 0.0000000000000000; // [um]
Cexg_Other_IS_0 = 0.0000000000000000; // [um]
Cexg_Other_bVM_0 = 0.0000000000000000; // [um]
Cexg_Other_bE7_0 = 0.0000000000000000; // [um]
Cexg_Other_bE6a_0 = 0.0000000000000000; // [um]
Cexg_Other_bE7b_0 = 0.0000000000000000; // [um]
Cexg_Other_bIM_0 = 0.0000000000000000; // [um]
Cexg_Other_b2VM_0 = 0.0000000000000000; // [um]
Cexg_Other_b2E7_0 = 0.0000000000000000; // [um]
Cexg_Other_b2E6a_0 = 0.0000000000000000; // [um]
Cexg_Other_b2E7b_0 = 0.0000000000000000; // [um]
Cexg_Other_b2IM_0 = 0.0000000000000000; // [um]
Cexg_Other_bVM_Mem_0 = 0.0000000000000000; // [um]
Cexg_Other_bIM_Mem_0 = 0.0000000000000000; // [um]
// FcRn
CFcRn_Lung_E6a_0 = FcRn_Conc;
CFcRn_Lung_E7_0 = FcRn_Conc;
CFcRn_Lung_E7b_0 = FcRn_Conc;
CFcRn_Lung_VM_0 = FcRn_Conc*1e-4;
CFcRn_Lung_IM_0 = FcRn_Conc*1e-4;
CFcRn_Liver_E6a_0 = FcRn_Conc;
CFcRn_Liver_E7_0 = FcRn_Conc;
CFcRn_Liver_E7b_0 = FcRn_Conc;
CFcRn_Liver_VM_0 = FcRn_Conc*1e-4;
CFcRn_Liver_IM_0 = FcRn_Conc*1e-4;
CFcRn_Heart_E6a_0 = FcRn_Conc;
CFcRn_Heart_E7_0 = FcRn_Conc;
CFcRn_Heart_E7b_0 = FcRn_Conc;
CFcRn_Heart_VM_0 = FcRn_Conc*1e-4;
CFcRn_Heart_IM_0 = FcRn_Conc*1e-4;
CFcRn_Muscle_E6a_0 = FcRn_Conc;
CFcRn_Muscle_E7_0 = FcRn_Conc;
CFcRn_Muscle_E7b_0 = FcRn_Conc;
CFcRn_Muscle_VM_0 = FcRn_Conc*1e-4;
CFcRn_Muscle_IM_0 = FcRn_Conc*1e-4;
CFcRn_Skin_E6a_0 = FcRn_Conc;
CFcRn_Skin_E7_0 = FcRn_Conc;
CFcRn_Skin_E7b_0 = FcRn_Conc;
CFcRn_Skin_VM_0 = FcRn_Conc*1e-4;
CFcRn_Skin_IM_0 = FcRn_Conc*1e-4;
CFcRn_Adipose_E6a_0 = FcRn_Conc;
CFcRn_Adipose_E7_0 = FcRn_Conc;
CFcRn_Adipose_E7b_0 = FcRn_Conc;
CFcRn_Adipose_VM_0 = FcRn_Conc*1e-4;
CFcRn_Adipose_IM_0 = FcRn_Conc*1e-4;
CFcRn_Bone_E6a_0 = FcRn_Conc;
CFcRn_Bone_E7_0 = FcRn_Conc;
CFcRn_Bone_E7b_0 = FcRn_Conc;
CFcRn_Bone_VM_0 = FcRn_Conc*1e-4;
CFcRn_Bone_IM_0 = FcRn_Conc*1e-4;
CFcRn_Brain_E6a_0 = FcRn_Conc;
CFcRn_Brain_E7_0 = FcRn_Conc;
CFcRn_Brain_E7b_0 = FcRn_Conc;
CFcRn_Brain_VM_0 = FcRn_Conc*1e-4;
CFcRn_Brain_IM_0 = FcRn_Conc*1e-4;
CFcRn_Kidney_E6a_0 = FcRn_Conc;
CFcRn_Kidney_E7_0 = FcRn_Conc;
CFcRn_Kidney_E7b_0 = FcRn_Conc;
CFcRn_Kidney_VM_0 = FcRn_Conc*1e-4;
CFcRn_Kidney_IM_0 = FcRn_Conc*1e-4;
CFcRn_SI_E6a_0 = FcRn_Conc;
CFcRn_SI_E7_0 = FcRn_Conc;
CFcRn_SI_E7b_0 = FcRn_Conc;
CFcRn_SI_VM_0 = FcRn_Conc*1e-4;
CFcRn_SI_IM_0 = FcRn_Conc*1e-4;
CFcRn_LI_E6a_0 = FcRn_Conc;
CFcRn_LI_E7_0 = FcRn_Conc;
CFcRn_LI_E7b_0 = FcRn_Conc;
CFcRn_LI_VM_0 = FcRn_Conc*1e-4;
CFcRn_LI_IM_0 = FcRn_Conc*1e-4;
CFcRn_Pancreas_E6a_0 = FcRn_Conc;
CFcRn_Pancreas_E7_0 = FcRn_Conc;
CFcRn_Pancreas_E7b_0 = FcRn_Conc;
CFcRn_Pancreas_VM_0 = FcRn_Conc*1e-4;
CFcRn_Pancreas_IM_0 = FcRn_Conc*1e-4;
CFcRn_Thymus_E6a_0 = FcRn_Conc;
CFcRn_Thymus_E7_0 = FcRn_Conc;
CFcRn_Thymus_E7b_0 = FcRn_Conc;
CFcRn_Thymus_VM_0 = FcRn_Conc*1e-4;
CFcRn_Thymus_IM_0 = FcRn_Conc*1e-4;
CFcRn_Spleen_E6a_0 = FcRn_Conc;
CFcRn_Spleen_E7_0 = FcRn_Conc;
CFcRn_Spleen_E7b_0 = FcRn_Conc;
CFcRn_Spleen_VM_0 = FcRn_Conc*1e-4;
CFcRn_Spleen_IM_0 = FcRn_Conc*1e-4;
CFcRn_Other_E6a_0 = FcRn_Conc;
CFcRn_Other_E7_0 = FcRn_Conc;
CFcRn_Other_E7b_0 = FcRn_Conc;
CFcRn_Other_VM_0 = FcRn_Conc*1e-4;
CFcRn_Other_IM_0 = FcRn_Conc*1e-4;
[ CMT ]

Cedg_LN
Cedg_Plasma
// Exogenous mAb
Cexg_LN
Aexg_Plasma
// Endogenous mAb
Cedg_Lung_V
Cedg_Lung_VM
Cedg_Lung_E7
Cedg_Lung_E6a
Cedg_Lung_E7b
Cedg_Lung_IM
Cedg_Lung_IS
Cedg_Lung_bVM
Cedg_Lung_bE7
Cedg_Lung_bE6a
Cedg_Lung_bE7b
Cedg_Lung_bIM
Cedg_Lung_b2VM
Cedg_Lung_b2E7
Cedg_Lung_b2E6a
Cedg_Lung_b2E7b
Cedg_Lung_b2IM
Cedg_Liver_V
Cedg_Liver_VM
Cedg_Liver_E7
Cedg_Liver_E6a
Cedg_Liver_E7b
Cedg_Liver_IM
Cedg_Liver_IS
Cedg_Liver_bVM
Cedg_Liver_bE7
Cedg_Liver_bE6a
Cedg_Liver_bE7b
Cedg_Liver_bIM
Cedg_Liver_b2VM
Cedg_Liver_b2E7
Cedg_Liver_b2E6a
Cedg_Liver_b2E7b
Cedg_Liver_b2IM
Cedg_Heart_V
Cedg_Heart_VM
Cedg_Heart_E7
Cedg_Heart_E6a
Cedg_Heart_E7b
Cedg_Heart_IM
Cedg_Heart_IS
Cedg_Heart_bVM
Cedg_Heart_bE7
Cedg_Heart_bE6a
Cedg_Heart_bE7b
Cedg_Heart_bIM
Cedg_Heart_b2VM
Cedg_Heart_b2E7
Cedg_Heart_b2E6a
Cedg_Heart_b2E7b
Cedg_Heart_b2IM
Cedg_Muscle_V
Cedg_Muscle_VM
Cedg_Muscle_E7
Cedg_Muscle_E6a
Cedg_Muscle_E7b
Cedg_Muscle_IM
Cedg_Muscle_IS
Cedg_Muscle_bVM
Cedg_Muscle_bE7
Cedg_Muscle_bE6a
Cedg_Muscle_bE7b
Cedg_Muscle_bIM
Cedg_Muscle_b2VM
Cedg_Muscle_b2E7
Cedg_Muscle_b2E6a
Cedg_Muscle_b2E7b
Cedg_Muscle_b2IM
Cedg_Skin_V
Cedg_Skin_VM
Cedg_Skin_E7
Cedg_Skin_E6a
Cedg_Skin_E7b
Cedg_Skin_IM
Cedg_Skin_IS
Cedg_Skin_bVM
Cedg_Skin_bE7
Cedg_Skin_bE6a
Cedg_Skin_bE7b
Cedg_Skin_bIM
Cedg_Skin_b2VM
Cedg_Skin_b2E7
Cedg_Skin_b2E6a
Cedg_Skin_b2E7b
Cedg_Skin_b2IM
Cedg_Adipose_V
Cedg_Adipose_VM
Cedg_Adipose_E7
Cedg_Adipose_E6a
Cedg_Adipose_E7b
Cedg_Adipose_IM
Cedg_Adipose_IS
Cedg_Adipose_bVM
Cedg_Adipose_bE7
Cedg_Adipose_bE6a
Cedg_Adipose_bE7b
Cedg_Adipose_bIM
Cedg_Adipose_b2VM
Cedg_Adipose_b2E7
Cedg_Adipose_b2E6a
Cedg_Adipose_b2E7b
Cedg_Adipose_b2IM
Cedg_Bone_V
Cedg_Bone_VM
Cedg_Bone_E7
Cedg_Bone_E6a
Cedg_Bone_E7b
Cedg_Bone_IM
Cedg_Bone_IS
Cedg_Bone_bVM
Cedg_Bone_bE7
Cedg_Bone_bE6a
Cedg_Bone_bE7b
Cedg_Bone_bIM
Cedg_Bone_b2VM
Cedg_Bone_b2E7
Cedg_Bone_b2E6a
Cedg_Bone_b2E7b
Cedg_Bone_b2IM
Cedg_Brain_V
Cedg_Brain_VM
Cedg_Brain_E7
Cedg_Brain_E6a
Cedg_Brain_E7b
Cedg_Brain_IM
Cedg_Brain_IS
Cedg_Brain_bVM
Cedg_Brain_bE7
Cedg_Brain_bE6a
Cedg_Brain_bE7b
Cedg_Brain_bIM
Cedg_Brain_b2VM
Cedg_Brain_b2E7
Cedg_Brain_b2E6a
Cedg_Brain_b2E7b
Cedg_Brain_b2IM
Cedg_Kidney_V
Cedg_Kidney_VM
Cedg_Kidney_E7
Cedg_Kidney_E6a
Cedg_Kidney_E7b
Cedg_Kidney_IM
Cedg_Kidney_IS
Cedg_Kidney_bVM
Cedg_Kidney_bE7
Cedg_Kidney_bE6a
Cedg_Kidney_bE7b
Cedg_Kidney_bIM
Cedg_Kidney_b2VM
Cedg_Kidney_b2E7
Cedg_Kidney_b2E6a
Cedg_Kidney_b2E7b
Cedg_Kidney_b2IM
Cedg_SI_V
Cedg_SI_VM
Cedg_SI_E7
Cedg_SI_E6a
Cedg_SI_E7b
Cedg_SI_IM
Cedg_SI_IS
Cedg_SI_bVM
Cedg_SI_bE7
Cedg_SI_bE6a
Cedg_SI_bE7b
Cedg_SI_bIM
Cedg_SI_b2VM
Cedg_SI_b2E7
Cedg_SI_b2E6a
Cedg_SI_b2E7b
Cedg_SI_b2IM
Cedg_LI_V
Cedg_LI_VM
Cedg_LI_E7
Cedg_LI_E6a
Cedg_LI_E7b
Cedg_LI_IM
Cedg_LI_IS
Cedg_LI_bVM
Cedg_LI_bE7
Cedg_LI_bE6a
Cedg_LI_bE7b
Cedg_LI_bIM
Cedg_LI_b2VM
Cedg_LI_b2E7
Cedg_LI_b2E6a
Cedg_LI_b2E7b
Cedg_LI_b2IM
Cedg_Pancreas_V
Cedg_Pancreas_VM
Cedg_Pancreas_E7
Cedg_Pancreas_E6a
Cedg_Pancreas_E7b
Cedg_Pancreas_IM
Cedg_Pancreas_IS
Cedg_Pancreas_bVM
Cedg_Pancreas_bE7
Cedg_Pancreas_bE6a
Cedg_Pancreas_bE7b
Cedg_Pancreas_bIM
Cedg_Pancreas_b2VM
Cedg_Pancreas_b2E7
Cedg_Pancreas_b2E6a
Cedg_Pancreas_b2E7b
Cedg_Pancreas_b2IM
Cedg_Thymus_V
Cedg_Thymus_VM
Cedg_Thymus_E7
Cedg_Thymus_E6a
Cedg_Thymus_E7b
Cedg_Thymus_IM
Cedg_Thymus_IS
Cedg_Thymus_bVM
Cedg_Thymus_bE7
Cedg_Thymus_bE6a
Cedg_Thymus_bE7b
Cedg_Thymus_bIM
Cedg_Thymus_b2VM
Cedg_Thymus_b2E7
Cedg_Thymus_b2E6a
Cedg_Thymus_b2E7b
Cedg_Thymus_b2IM
Cedg_Spleen_V
Cedg_Spleen_VM
Cedg_Spleen_E7
Cedg_Spleen_E6a
Cedg_Spleen_E7b
Cedg_Spleen_IM
Cedg_Spleen_IS
Cedg_Spleen_bVM
Cedg_Spleen_bE7
Cedg_Spleen_bE6a
Cedg_Spleen_bE7b
Cedg_Spleen_bIM
Cedg_Spleen_b2VM
Cedg_Spleen_b2E7
Cedg_Spleen_b2E6a
Cedg_Spleen_b2E7b
Cedg_Spleen_b2IM
Cedg_Other_V
Cedg_Other_VM
Cedg_Other_E7
Cedg_Other_E6a
Cedg_Other_E7b
Cedg_Other_IM
Cedg_Other_IS
Cedg_Other_bVM
Cedg_Other_bE7
Cedg_Other_bE6a
Cedg_Other_bE7b
Cedg_Other_bIM
Cedg_Other_b2VM
Cedg_Other_b2E7
Cedg_Other_b2E6a
Cedg_Other_b2E7b
Cedg_Other_b2IM
Cexg_Lung_V
Cexg_Lung_VM
Cexg_Lung_E7
Cexg_Lung_E6a
Cexg_Lung_E7b
Cexg_Lung_IM
Cexg_Lung_IS
Cexg_Lung_bVM
Cexg_Lung_bE7
Cexg_Lung_bE6a
Cexg_Lung_bE7b
Cexg_Lung_bIM
Cexg_Lung_b2VM
Cexg_Lung_b2E7
Cexg_Lung_b2E6a
Cexg_Lung_b2E7b
Cexg_Lung_b2IM
Cexg_Lung_bVM_Mem
Cexg_Lung_bIM_Mem
Cexg_Liver_V
Cexg_Liver_VM
Cexg_Liver_E7
Cexg_Liver_E6a
Cexg_Liver_E7b
Cexg_Liver_IM
Cexg_Liver_IS
Cexg_Liver_bVM
Cexg_Liver_bE7
Cexg_Liver_bE6a
Cexg_Liver_bE7b
Cexg_Liver_bIM
Cexg_Liver_b2VM
Cexg_Liver_b2E7
Cexg_Liver_b2E6a
Cexg_Liver_b2E7b
Cexg_Liver_b2IM
Cexg_Liver_bVM_Mem
Cexg_Liver_bIM_Mem
Cexg_Heart_V
Cexg_Heart_VM
Cexg_Heart_E7
Cexg_Heart_E6a
Cexg_Heart_E7b
Cexg_Heart_IM
Cexg_Heart_IS
Cexg_Heart_bVM
Cexg_Heart_bE7
Cexg_Heart_bE6a
Cexg_Heart_bE7b
Cexg_Heart_bIM
Cexg_Heart_b2VM
Cexg_Heart_b2E7
Cexg_Heart_b2E6a
Cexg_Heart_b2E7b
Cexg_Heart_b2IM
Cexg_Heart_bVM_Mem
Cexg_Heart_bIM_Mem
Cexg_Muscle_V
Cexg_Muscle_VM
Cexg_Muscle_E7
Cexg_Muscle_E6a
Cexg_Muscle_E7b
Cexg_Muscle_IM
Cexg_Muscle_IS
Cexg_Muscle_bVM
Cexg_Muscle_bE7
Cexg_Muscle_bE6a
Cexg_Muscle_bE7b
Cexg_Muscle_bIM
Cexg_Muscle_b2VM
Cexg_Muscle_b2E7
Cexg_Muscle_b2E6a
Cexg_Muscle_b2E7b
Cexg_Muscle_b2IM
Cexg_Muscle_bVM_Mem
Cexg_Muscle_bIM_Mem
Cexg_Skin_V
Cexg_Skin_VM
Cexg_Skin_E7
Cexg_Skin_E6a
Cexg_Skin_E7b
Cexg_Skin_IM
Cexg_Skin_IS
Cexg_Skin_bVM
Cexg_Skin_bE7
Cexg_Skin_bE6a
Cexg_Skin_bE7b
Cexg_Skin_bIM
Cexg_Skin_b2VM
Cexg_Skin_b2E7
Cexg_Skin_b2E6a
Cexg_Skin_b2E7b
Cexg_Skin_b2IM
Cexg_Skin_bVM_Mem
Cexg_Skin_bIM_Mem
Cexg_Adipose_V
Cexg_Adipose_VM
Cexg_Adipose_E7
Cexg_Adipose_E6a
Cexg_Adipose_E7b
Cexg_Adipose_IM
Cexg_Adipose_IS
Cexg_Adipose_bVM
Cexg_Adipose_bE7
Cexg_Adipose_bE6a
Cexg_Adipose_bE7b
Cexg_Adipose_bIM
Cexg_Adipose_b2VM
Cexg_Adipose_b2E7
Cexg_Adipose_b2E6a
Cexg_Adipose_b2E7b
Cexg_Adipose_b2IM
Cexg_Adipose_bVM_Mem
Cexg_Adipose_bIM_Mem
Cexg_Bone_V
Cexg_Bone_VM
Cexg_Bone_E7
Cexg_Bone_E6a
Cexg_Bone_E7b
Cexg_Bone_IM
Cexg_Bone_IS
Cexg_Bone_bVM
Cexg_Bone_bE7
Cexg_Bone_bE6a
Cexg_Bone_bE7b
Cexg_Bone_bIM
Cexg_Bone_b2VM
Cexg_Bone_b2E7
Cexg_Bone_b2E6a
Cexg_Bone_b2E7b
Cexg_Bone_b2IM
Cexg_Bone_bVM_Mem
Cexg_Bone_bIM_Mem
Cexg_Brain_V
Cexg_Brain_VM
Cexg_Brain_E7
Cexg_Brain_E6a
Cexg_Brain_E7b
Cexg_Brain_IM
Cexg_Brain_IS
Cexg_Brain_bVM
Cexg_Brain_bE7
Cexg_Brain_bE6a
Cexg_Brain_bE7b
Cexg_Brain_bIM
Cexg_Brain_b2VM
Cexg_Brain_b2E7
Cexg_Brain_b2E6a
Cexg_Brain_b2E7b
Cexg_Brain_b2IM
Cexg_Brain_bVM_Mem
Cexg_Brain_bIM_Mem
Cexg_Kidney_V
Cexg_Kidney_VM
Cexg_Kidney_E7
Cexg_Kidney_E6a
Cexg_Kidney_E7b
Cexg_Kidney_IM
Cexg_Kidney_IS
Cexg_Kidney_bVM
Cexg_Kidney_bE7
Cexg_Kidney_bE6a
Cexg_Kidney_bE7b
Cexg_Kidney_bIM
Cexg_Kidney_b2VM
Cexg_Kidney_b2E7
Cexg_Kidney_b2E6a
Cexg_Kidney_b2E7b
Cexg_Kidney_b2IM
Cexg_Kidney_bVM_Mem
Cexg_Kidney_bIM_Mem
Cexg_SI_V
Cexg_SI_VM
Cexg_SI_E7
Cexg_SI_E6a
Cexg_SI_E7b
Cexg_SI_IM
Cexg_SI_IS
Cexg_SI_bVM
Cexg_SI_bE7
Cexg_SI_bE6a
Cexg_SI_bE7b
Cexg_SI_bIM
Cexg_SI_b2VM
Cexg_SI_b2E7
Cexg_SI_b2E6a
Cexg_SI_b2E7b
Cexg_SI_b2IM
Cexg_SI_bVM_Mem
Cexg_SI_bIM_Mem
Cexg_LI_V
Cexg_LI_VM
Cexg_LI_E7
Cexg_LI_E6a
Cexg_LI_E7b
Cexg_LI_IM
Cexg_LI_IS
Cexg_LI_bVM
Cexg_LI_bE7
Cexg_LI_bE6a
Cexg_LI_bE7b
Cexg_LI_bIM
Cexg_LI_b2VM
Cexg_LI_b2E7
Cexg_LI_b2E6a
Cexg_LI_b2E7b
Cexg_LI_b2IM
Cexg_LI_bVM_Mem
Cexg_LI_bIM_Mem
Cexg_Pancreas_V
Cexg_Pancreas_VM
Cexg_Pancreas_E7
Cexg_Pancreas_E6a
Cexg_Pancreas_E7b
Cexg_Pancreas_IM
Cexg_Pancreas_IS
Cexg_Pancreas_bVM
Cexg_Pancreas_bE7
Cexg_Pancreas_bE6a
Cexg_Pancreas_bE7b
Cexg_Pancreas_bIM
Cexg_Pancreas_b2VM
Cexg_Pancreas_b2E7
Cexg_Pancreas_b2E6a
Cexg_Pancreas_b2E7b
Cexg_Pancreas_b2IM
Cexg_Pancreas_bVM_Mem
Cexg_Pancreas_bIM_Mem
Cexg_Thymus_V
Cexg_Thymus_VM
Cexg_Thymus_E7
Cexg_Thymus_E6a
Cexg_Thymus_E7b
Cexg_Thymus_IM
Cexg_Thymus_IS
Cexg_Thymus_bVM
Cexg_Thymus_bE7
Cexg_Thymus_bE6a
Cexg_Thymus_bE7b
Cexg_Thymus_bIM
Cexg_Thymus_b2VM
Cexg_Thymus_b2E7
Cexg_Thymus_b2E6a
Cexg_Thymus_b2E7b
Cexg_Thymus_b2IM
Cexg_Thymus_bVM_Mem
Cexg_Thymus_bIM_Mem
Cexg_Spleen_V
Cexg_Spleen_VM
Cexg_Spleen_E7
Cexg_Spleen_E6a
Cexg_Spleen_E7b
Cexg_Spleen_IM
Cexg_Spleen_IS
Cexg_Spleen_bVM
Cexg_Spleen_bE7
Cexg_Spleen_bE6a
Cexg_Spleen_bE7b
Cexg_Spleen_bIM
Cexg_Spleen_b2VM
Cexg_Spleen_b2E7
Cexg_Spleen_b2E6a
Cexg_Spleen_b2E7b
Cexg_Spleen_b2IM
Cexg_Spleen_bVM_Mem
Cexg_Spleen_bIM_Mem
Cexg_Other_V
Cexg_Other_VM
Cexg_Other_E7
Cexg_Other_E6a
Cexg_Other_E7b
Cexg_Other_IM
Cexg_Other_IS
Cexg_Other_bVM
Cexg_Other_bE7
Cexg_Other_bE6a
Cexg_Other_bE7b
Cexg_Other_bIM
Cexg_Other_b2VM
Cexg_Other_b2E7
Cexg_Other_b2E6a
Cexg_Other_b2E7b
Cexg_Other_b2IM
Cexg_Other_bVM_Mem
Cexg_Other_bIM_Mem
// FcRn
CFcRn_Lung_E6a
CFcRn_Lung_E7
CFcRn_Lung_E7b
CFcRn_Lung_VM
CFcRn_Lung_IM
CFcRn_Liver_E6a
CFcRn_Liver_E7
CFcRn_Liver_E7b
CFcRn_Liver_VM
CFcRn_Liver_IM
CFcRn_Heart_E6a
CFcRn_Heart_E7
CFcRn_Heart_E7b
CFcRn_Heart_VM
CFcRn_Heart_IM
CFcRn_Muscle_E6a
CFcRn_Muscle_E7
CFcRn_Muscle_E7b
CFcRn_Muscle_VM
CFcRn_Muscle_IM
CFcRn_Skin_E6a
CFcRn_Skin_E7
CFcRn_Skin_E7b
CFcRn_Skin_VM
CFcRn_Skin_IM
CFcRn_Adipose_E6a
CFcRn_Adipose_E7
CFcRn_Adipose_E7b
CFcRn_Adipose_VM
CFcRn_Adipose_IM
CFcRn_Bone_E6a
CFcRn_Bone_E7
CFcRn_Bone_E7b
CFcRn_Bone_VM
CFcRn_Bone_IM
CFcRn_Brain_E6a
CFcRn_Brain_E7
CFcRn_Brain_E7b
CFcRn_Brain_VM
CFcRn_Brain_IM
CFcRn_Kidney_E6a
CFcRn_Kidney_E7
CFcRn_Kidney_E7b
CFcRn_Kidney_VM
CFcRn_Kidney_IM
CFcRn_SI_E6a
CFcRn_SI_E7
CFcRn_SI_E7b
CFcRn_SI_VM
CFcRn_SI_IM
CFcRn_LI_E6a
CFcRn_LI_E7
CFcRn_LI_E7b
CFcRn_LI_VM
CFcRn_LI_IM
CFcRn_Pancreas_E6a
CFcRn_Pancreas_E7
CFcRn_Pancreas_E7b
CFcRn_Pancreas_VM
CFcRn_Pancreas_IM
CFcRn_Thymus_E6a
CFcRn_Thymus_E7
CFcRn_Thymus_E7b
CFcRn_Thymus_VM
CFcRn_Thymus_IM
CFcRn_Spleen_E6a
CFcRn_Spleen_E7
CFcRn_Spleen_E7b
CFcRn_Spleen_VM
CFcRn_Spleen_IM
CFcRn_Other_E6a
CFcRn_Other_E7
CFcRn_Other_E7b
CFcRn_Other_VM
CFcRn_Other_IM

// ODEs
[ ODE ]
double Cexg_Plasma = Aexg_Plasma / V_Plasma;
// ODES START HERE
// Vascular Space EXG
dxdt_Cexg_Heart_V = (PLQ_Heart*Cexg_Lung_V
          - (PLQ_Heart - LF_Heart)*Cexg_Heart_V
          - (1.0-SV_Heart)*LF_Heart*Cexg_Heart_V
          - CLup_Heart*FR*Cexg_Heart_V
          + CLup_Heart*FR*Cexg_Heart_VM)/V_Heart_V;
dxdt_Cexg_Muscle_V = (PLQ_Muscle*Cexg_Lung_V
          - (PLQ_Muscle - LF_Muscle)*Cexg_Muscle_V
          - (1.0-SV_Muscle)*LF_Muscle*Cexg_Muscle_V
          - CLup_Muscle*FR*Cexg_Muscle_V
          + CLup_Muscle*FR*Cexg_Muscle_VM)/V_Muscle_V;
dxdt_Cexg_Skin_V = (PLQ_Skin*Cexg_Lung_V
          - (PLQ_Skin - LF_Skin)*Cexg_Skin_V
          - (1.0-SV_Skin)*LF_Skin*Cexg_Skin_V
          - CLup_Skin*FR*Cexg_Skin_V
          + CLup_Skin*FR*Cexg_Skin_VM)/V_Skin_V;
dxdt_Cexg_Adipose_V = (PLQ_Adipose*Cexg_Lung_V
          - (PLQ_Adipose - LF_Adipose)*Cexg_Adipose_V
          - (1.0-SV_Adipose)*LF_Adipose*Cexg_Adipose_V
          - CLup_Adipose*FR*Cexg_Adipose_V
          + CLup_Adipose*FR*Cexg_Adipose_VM)/V_Adipose_V;
dxdt_Cexg_Bone_V = (PLQ_Bone*Cexg_Lung_V
          - (PLQ_Bone - LF_Bone)*Cexg_Bone_V
          - (1.0-SV_Bone)*LF_Bone*Cexg_Bone_V
          - CLup_Bone*FR*Cexg_Bone_V
          + CLup_Bone*FR*Cexg_Bone_VM)/V_Bone_V;
dxdt_Cexg_Brain_V = (PLQ_Brain*Cexg_Lung_V
          - (PLQ_Brain - LF_Brain)*Cexg_Brain_V
          - (1.0-SV_Brain)*LF_Brain*Cexg_Brain_V
          - CLup_Brain*FR*Cexg_Brain_V
          + CLup_Brain*FR*Cexg_Brain_VM)/V_Brain_V;
dxdt_Cexg_Kidney_V = (PLQ_Kidney*Cexg_Lung_V
          - (PLQ_Kidney - LF_Kidney)*Cexg_Kidney_V
          - (1.0-SV_Kidney)*LF_Kidney*Cexg_Kidney_V
          - CLup_Kidney*FR*Cexg_Kidney_V
          + CLup_Kidney*FR*Cexg_Kidney_VM)/V_Kidney_V;
dxdt_Cexg_SI_V = (PLQ_SI*Cexg_Lung_V
          - (PLQ_SI - LF_SI)*Cexg_SI_V
          - (1.0-SV_SI)*LF_SI*Cexg_SI_V
          - CLup_SI*FR*Cexg_SI_V
          + CLup_SI*FR*Cexg_SI_VM)/V_SI_V;
dxdt_Cexg_LI_V = (PLQ_LI*Cexg_Lung_V
          - (PLQ_LI - LF_LI)*Cexg_LI_V
          - (1.0-SV_LI)*LF_LI*Cexg_LI_V
          - CLup_LI*FR*Cexg_LI_V
          + CLup_LI*FR*Cexg_LI_VM)/V_LI_V;
dxdt_Cexg_Pancreas_V = (PLQ_Pancreas*Cexg_Lung_V
          - (PLQ_Pancreas - LF_Pancreas)*Cexg_Pancreas_V
          - (1.0-SV_Pancreas)*LF_Pancreas*Cexg_Pancreas_V
          - CLup_Pancreas*FR*Cexg_Pancreas_V
          + CLup_Pancreas*FR*Cexg_Pancreas_VM)/V_Pancreas_V;
dxdt_Cexg_Thymus_V = (PLQ_Thymus*Cexg_Lung_V
          - (PLQ_Thymus - LF_Thymus)*Cexg_Thymus_V
          - (1.0-SV_Thymus)*LF_Thymus*Cexg_Thymus_V
          - CLup_Thymus*FR*Cexg_Thymus_V
          + CLup_Thymus*FR*Cexg_Thymus_VM)/V_Thymus_V;
dxdt_Cexg_Spleen_V = (PLQ_Spleen*Cexg_Lung_V
          - (PLQ_Spleen - LF_Spleen)*Cexg_Spleen_V
          - (1.0-SV_Spleen)*LF_Spleen*Cexg_Spleen_V
          - CLup_Spleen*FR*Cexg_Spleen_V
          + CLup_Spleen*FR*Cexg_Spleen_VM)/V_Spleen_V;
dxdt_Cexg_Other_V = (PLQ_Other*Cexg_Lung_V
          - (PLQ_Other - LF_Other)*Cexg_Other_V
          - (1.0-SV_Other)*LF_Other*Cexg_Other_V
          - CLup_Other*FR*Cexg_Other_V
          + CLup_Other*FR*Cexg_Other_VM)/V_Other_V;
//Vascular Space EDG
dxdt_Cedg_Heart_V = (PLQ_Heart*Cedg_Lung_V
          - (PLQ_Heart - LF_Heart)*Cedg_Heart_V
          - (1.0-SV_Heart)*LF_Heart*Cedg_Heart_V
          - CLup_Heart*FR*Cedg_Heart_V
          + CLup_Heart*FR*Cedg_Heart_VM)/V_Heart_V;
dxdt_Cedg_Muscle_V = (PLQ_Muscle*Cedg_Lung_V
          - (PLQ_Muscle - LF_Muscle)*Cedg_Muscle_V
          - (1.0-SV_Muscle)*LF_Muscle*Cedg_Muscle_V
          - CLup_Muscle*FR*Cedg_Muscle_V
          + CLup_Muscle*FR*Cedg_Muscle_VM)/V_Muscle_V;
dxdt_Cedg_Skin_V = (PLQ_Skin*Cedg_Lung_V
          - (PLQ_Skin - LF_Skin)*Cedg_Skin_V
          - (1.0-SV_Skin)*LF_Skin*Cedg_Skin_V
          - CLup_Skin*FR*Cedg_Skin_V
          + CLup_Skin*FR*Cedg_Skin_VM)/V_Skin_V;
dxdt_Cedg_Adipose_V = (PLQ_Adipose*Cedg_Lung_V
          - (PLQ_Adipose - LF_Adipose)*Cedg_Adipose_V
          - (1.0-SV_Adipose)*LF_Adipose*Cedg_Adipose_V
          - CLup_Adipose*FR*Cedg_Adipose_V
          + CLup_Adipose*FR*Cedg_Adipose_VM)/V_Adipose_V;
dxdt_Cedg_Bone_V = (PLQ_Bone*Cedg_Lung_V
          - (PLQ_Bone - LF_Bone)*Cedg_Bone_V
          - (1.0-SV_Bone)*LF_Bone*Cedg_Bone_V
          - CLup_Bone*FR*Cedg_Bone_V
          + CLup_Bone*FR*Cedg_Bone_VM)/V_Bone_V;
dxdt_Cedg_Brain_V = (PLQ_Brain*Cedg_Lung_V
          - (PLQ_Brain - LF_Brain)*Cedg_Brain_V
          - (1.0-SV_Brain)*LF_Brain*Cedg_Brain_V
          - CLup_Brain*FR*Cedg_Brain_V
          + CLup_Brain*FR*Cedg_Brain_VM)/V_Brain_V;
dxdt_Cedg_Kidney_V = (PLQ_Kidney*Cedg_Lung_V
          - (PLQ_Kidney - LF_Kidney)*Cedg_Kidney_V
          - (1.0-SV_Kidney)*LF_Kidney*Cedg_Kidney_V
          - CLup_Kidney*FR*Cedg_Kidney_V
          + CLup_Kidney*FR*Cedg_Kidney_VM)/V_Kidney_V;
dxdt_Cedg_SI_V = (PLQ_SI*Cedg_Lung_V
          - (PLQ_SI - LF_SI)*Cedg_SI_V
          - (1.0-SV_SI)*LF_SI*Cedg_SI_V
          - CLup_SI*FR*Cedg_SI_V
          + CLup_SI*FR*Cedg_SI_VM)/V_SI_V;
dxdt_Cedg_LI_V = (PLQ_LI*Cedg_Lung_V
          - (PLQ_LI - LF_LI)*Cedg_LI_V
          - (1.0-SV_LI)*LF_LI*Cedg_LI_V
          - CLup_LI*FR*Cedg_LI_V
          + CLup_LI*FR*Cedg_LI_VM)/V_LI_V;
dxdt_Cedg_Pancreas_V = (PLQ_Pancreas*Cedg_Lung_V
          - (PLQ_Pancreas - LF_Pancreas)*Cedg_Pancreas_V
          - (1.0-SV_Pancreas)*LF_Pancreas*Cedg_Pancreas_V
          - CLup_Pancreas*FR*Cedg_Pancreas_V
          + CLup_Pancreas*FR*Cedg_Pancreas_VM)/V_Pancreas_V;
dxdt_Cedg_Thymus_V = (PLQ_Thymus*Cedg_Lung_V
          - (PLQ_Thymus - LF_Thymus)*Cedg_Thymus_V
          - (1.0-SV_Thymus)*LF_Thymus*Cedg_Thymus_V
          - CLup_Thymus*FR*Cedg_Thymus_V
          + CLup_Thymus*FR*Cedg_Thymus_VM)/V_Thymus_V;
dxdt_Cedg_Spleen_V = (PLQ_Spleen*Cedg_Lung_V
          - (PLQ_Spleen - LF_Spleen)*Cedg_Spleen_V
          - (1.0-SV_Spleen)*LF_Spleen*Cedg_Spleen_V
          - CLup_Spleen*FR*Cedg_Spleen_V
          + CLup_Spleen*FR*Cedg_Spleen_VM)/V_Spleen_V;
dxdt_Cedg_Other_V = (PLQ_Other*Cedg_Lung_V
          - (PLQ_Other - LF_Other)*Cedg_Other_V
          - (1.0-SV_Other)*LF_Other*Cedg_Other_V
          - CLup_Other*FR*Cedg_Other_V
          + CLup_Other*FR*Cedg_Other_VM)/V_Other_V;
//liver, vascular cmpt, exogenous free only
dxdt_Cexg_Liver_V = (PLQ_Liver*Cexg_Lung_V
          + (PLQ_Spleen - LF_Spleen)*Cexg_Spleen_V
          + (PLQ_Pancreas - LF_Pancreas)*Cexg_Pancreas_V
          + (PLQ_SI - LF_SI)*Cexg_SI_V
          + (PLQ_LI - LF_LI)*Cexg_LI_V
          - (PLQ_Liver - LF_Liver + PLQ_Spleen - LF_Spleen + PLQ_Pancreas - LF_Pancreas + PLQ_SI - LF_SI 
          + PLQ_LI - LF_SI)*Cexg_Liver_V
          - (1.0 - SV_Liver)*LF_Liver*Cexg_Liver_V
          - CLup_Liver*FR*Cexg_Liver_V
          + CLup_Liver*FR*Cexg_Liver_VM)/V_Liver_V;
//lung, vascular cmpt, exogenous free only
dxdt_Cexg_Lung_V = ((PLQ_Lung + LF_Lung)*Cexg_Plasma 
          - PLQ_Lung*Cexg_Lung_V
          - (1.0-SV_Lung)*LF_Lung * Cexg_Lung_V
          - CLup_Lung * FR * Cexg_Lung_V
          + CLup_Lung * FR * Cexg_Lung_VM)/V_Lung_V;
//liver, vascular cmpt, endogenous free only
dxdt_Cedg_Liver_V = (PLQ_Liver*Cedg_Lung_V
          + (PLQ_Spleen - LF_Spleen)*Cedg_Spleen_V
          + (PLQ_Pancreas - LF_Pancreas)*Cedg_Pancreas_V
          + (PLQ_SI - LF_SI)*Cedg_SI_V
          + (PLQ_LI - LF_LI)*Cedg_LI_V
          - (PLQ_Liver - LF_Liver + PLQ_Spleen - LF_Spleen + PLQ_Pancreas - LF_Pancreas + PLQ_SI - LF_SI 
          + PLQ_LI - LF_SI)*Cedg_Liver_V
          - (1.0 - SV_Liver)*LF_Liver*Cedg_Liver_V
          - CLup_Liver*FR*Cedg_Liver_V
          + CLup_Liver*FR*Cedg_Liver_VM)/V_Liver_V;
//lung, vascular cmpt, endogenous free only
dxdt_Cedg_Lung_V = ((PLQ_Lung + LF_Lung)*Cedg_Plasma 
          - PLQ_Lung*Cedg_Lung_V
          - (1.0-SV_Lung)*LF_Lung * Cedg_Lung_V
          - CLup_Lung * FR * Cedg_Lung_V
          + CLup_Lung * FR * Cedg_Lung_VM)/V_Lung_V;
//====================================EXOGENOUS IgG=========================
      //vascular side membrane
dxdt_Cexg_Lung_VM = (CLup_Lung*FR*Cexg_Lung_V
                - CLup_Lung*FR*Cexg_Lung_VM
                - CLup_Lung*FR*Cexg_Lung_VM
                + CLup_Lung*FR*Cexg_Lung_E7b
                - k_on_7_EXG*Cexg_Lung_VM*CFcRn_Lung_VM*V_Lung_VM
                + k_off_7_EXG*Cexg_Lung_bVM*V_Lung_VM
                - k_on_PS*Cexg_Lung_VM*C_mem*V_Lung_VM
                + k_off_PS*Cexg_Lung_bVM_Mem*V_Lung_VM)/V_Lung_VM;
dxdt_Cexg_Liver_VM = (CLup_Liver*FR*Cexg_Liver_V
                - CLup_Liver*FR*Cexg_Liver_VM
                - CLup_Liver*FR*Cexg_Liver_VM
                + CLup_Liver*FR*Cexg_Liver_E7b
                - k_on_7_EXG*Cexg_Liver_VM*CFcRn_Liver_VM*V_Liver_VM
                + k_off_7_EXG*Cexg_Liver_bVM*V_Liver_VM
                - k_on_PS*Cexg_Liver_VM*C_mem*V_Liver_VM
                + k_off_PS*Cexg_Liver_bVM_Mem*V_Liver_VM)/V_Liver_VM;
dxdt_Cexg_Heart_VM = (CLup_Heart*FR*Cexg_Heart_V
                - CLup_Heart*FR*Cexg_Heart_VM
                - CLup_Heart*FR*Cexg_Heart_VM
                + CLup_Heart*FR*Cexg_Heart_E7b
                - k_on_7_EXG*Cexg_Heart_VM*CFcRn_Heart_VM*V_Heart_VM
                + k_off_7_EXG*Cexg_Heart_bVM*V_Heart_VM
                - k_on_PS*Cexg_Heart_VM*C_mem*V_Heart_VM
                + k_off_PS*Cexg_Heart_bVM_Mem*V_Heart_VM)/V_Heart_VM;
dxdt_Cexg_Muscle_VM = (CLup_Muscle*FR*Cexg_Muscle_V
                - CLup_Muscle*FR*Cexg_Muscle_VM
                - CLup_Muscle*FR*Cexg_Muscle_VM
                + CLup_Muscle*FR*Cexg_Muscle_E7b
                - k_on_7_EXG*Cexg_Muscle_VM*CFcRn_Muscle_VM*V_Muscle_VM
                + k_off_7_EXG*Cexg_Muscle_bVM*V_Muscle_VM
                - k_on_PS*Cexg_Muscle_VM*C_mem*V_Muscle_VM
                + k_off_PS*Cexg_Muscle_bVM_Mem*V_Muscle_VM)/V_Muscle_VM;
dxdt_Cexg_Skin_VM = (CLup_Skin*FR*Cexg_Skin_V
                - CLup_Skin*FR*Cexg_Skin_VM
                - CLup_Skin*FR*Cexg_Skin_VM
                + CLup_Skin*FR*Cexg_Skin_E7b
                - k_on_7_EXG*Cexg_Skin_VM*CFcRn_Skin_VM*V_Skin_VM
                + k_off_7_EXG*Cexg_Skin_bVM*V_Skin_VM
                - k_on_PS*Cexg_Skin_VM*C_mem*V_Skin_VM
                + k_off_PS*Cexg_Skin_bVM_Mem*V_Skin_VM)/V_Skin_VM;
dxdt_Cexg_Adipose_VM = (CLup_Adipose*FR*Cexg_Adipose_V
                - CLup_Adipose*FR*Cexg_Adipose_VM
                - CLup_Adipose*FR*Cexg_Adipose_VM
                + CLup_Adipose*FR*Cexg_Adipose_E7b
                - k_on_7_EXG*Cexg_Adipose_VM*CFcRn_Adipose_VM*V_Adipose_VM
                + k_off_7_EXG*Cexg_Adipose_bVM*V_Adipose_VM
                - k_on_PS*Cexg_Adipose_VM*C_mem*V_Adipose_VM
                + k_off_PS*Cexg_Adipose_bVM_Mem*V_Adipose_VM)/V_Adipose_VM;
dxdt_Cexg_Bone_VM = (CLup_Bone*FR*Cexg_Bone_V
                - CLup_Bone*FR*Cexg_Bone_VM
                - CLup_Bone*FR*Cexg_Bone_VM
                + CLup_Bone*FR*Cexg_Bone_E7b
                - k_on_7_EXG*Cexg_Bone_VM*CFcRn_Bone_VM*V_Bone_VM
                + k_off_7_EXG*Cexg_Bone_bVM*V_Bone_VM
                - k_on_PS*Cexg_Bone_VM*C_mem*V_Bone_VM
                + k_off_PS*Cexg_Bone_bVM_Mem*V_Bone_VM)/V_Bone_VM;
dxdt_Cexg_Brain_VM = (CLup_Brain*FR*Cexg_Brain_V
                - CLup_Brain*FR*Cexg_Brain_VM
                - CLup_Brain*FR*Cexg_Brain_VM
                + CLup_Brain*FR*Cexg_Brain_E7b
                - k_on_7_EXG*Cexg_Brain_VM*CFcRn_Brain_VM*V_Brain_VM
                + k_off_7_EXG*Cexg_Brain_bVM*V_Brain_VM
                - k_on_PS*Cexg_Brain_VM*C_mem*V_Brain_VM
                + k_off_PS*Cexg_Brain_bVM_Mem*V_Brain_VM)/V_Brain_VM;
dxdt_Cexg_Kidney_VM = (CLup_Kidney*FR*Cexg_Kidney_V
                - CLup_Kidney*FR*Cexg_Kidney_VM
                - CLup_Kidney*FR*Cexg_Kidney_VM
                + CLup_Kidney*FR*Cexg_Kidney_E7b
                - k_on_7_EXG*Cexg_Kidney_VM*CFcRn_Kidney_VM*V_Kidney_VM
                + k_off_7_EXG*Cexg_Kidney_bVM*V_Kidney_VM
                - k_on_PS*Cexg_Kidney_VM*C_mem*V_Kidney_VM
                + k_off_PS*Cexg_Kidney_bVM_Mem*V_Kidney_VM)/V_Kidney_VM;
dxdt_Cexg_SI_VM = (CLup_SI*FR*Cexg_SI_V
                - CLup_SI*FR*Cexg_SI_VM
                - CLup_SI*FR*Cexg_SI_VM
                + CLup_SI*FR*Cexg_SI_E7b
                - k_on_7_EXG*Cexg_SI_VM*CFcRn_SI_VM*V_SI_VM
                + k_off_7_EXG*Cexg_SI_bVM*V_SI_VM
                - k_on_PS*Cexg_SI_VM*C_mem*V_SI_VM
                + k_off_PS*Cexg_SI_bVM_Mem*V_SI_VM)/V_SI_VM;
dxdt_Cexg_LI_VM = (CLup_LI*FR*Cexg_LI_V
                - CLup_LI*FR*Cexg_LI_VM
                - CLup_LI*FR*Cexg_LI_VM
                + CLup_LI*FR*Cexg_LI_E7b
                - k_on_7_EXG*Cexg_LI_VM*CFcRn_LI_VM*V_LI_VM
                + k_off_7_EXG*Cexg_LI_bVM*V_LI_VM
                - k_on_PS*Cexg_LI_VM*C_mem*V_LI_VM
                + k_off_PS*Cexg_LI_bVM_Mem*V_LI_VM)/V_LI_VM;
dxdt_Cexg_Pancreas_VM = (CLup_Pancreas*FR*Cexg_Pancreas_V
                - CLup_Pancreas*FR*Cexg_Pancreas_VM
                - CLup_Pancreas*FR*Cexg_Pancreas_VM
                + CLup_Pancreas*FR*Cexg_Pancreas_E7b
                - k_on_7_EXG*Cexg_Pancreas_VM*CFcRn_Pancreas_VM*V_Pancreas_VM
                + k_off_7_EXG*Cexg_Pancreas_bVM*V_Pancreas_VM
                - k_on_PS*Cexg_Pancreas_VM*C_mem*V_Pancreas_VM
                + k_off_PS*Cexg_Pancreas_bVM_Mem*V_Pancreas_VM)/V_Pancreas_VM;
dxdt_Cexg_Thymus_VM = (CLup_Thymus*FR*Cexg_Thymus_V
                - CLup_Thymus*FR*Cexg_Thymus_VM
                - CLup_Thymus*FR*Cexg_Thymus_VM
                + CLup_Thymus*FR*Cexg_Thymus_E7b
                - k_on_7_EXG*Cexg_Thymus_VM*CFcRn_Thymus_VM*V_Thymus_VM
                + k_off_7_EXG*Cexg_Thymus_bVM*V_Thymus_VM
                - k_on_PS*Cexg_Thymus_VM*C_mem*V_Thymus_VM
                + k_off_PS*Cexg_Thymus_bVM_Mem*V_Thymus_VM)/V_Thymus_VM;
dxdt_Cexg_Spleen_VM = (CLup_Spleen*FR*Cexg_Spleen_V
                - CLup_Spleen*FR*Cexg_Spleen_VM
                - CLup_Spleen*FR*Cexg_Spleen_VM
                + CLup_Spleen*FR*Cexg_Spleen_E7b
                - k_on_7_EXG*Cexg_Spleen_VM*CFcRn_Spleen_VM*V_Spleen_VM
                + k_off_7_EXG*Cexg_Spleen_bVM*V_Spleen_VM
                - k_on_PS*Cexg_Spleen_VM*C_mem*V_Spleen_VM
                + k_off_PS*Cexg_Spleen_bVM_Mem*V_Spleen_VM)/V_Spleen_VM;
dxdt_Cexg_Other_VM = (CLup_Other*FR*Cexg_Other_V
                - CLup_Other*FR*Cexg_Other_VM
                - CLup_Other*FR*Cexg_Other_VM
                + CLup_Other*FR*Cexg_Other_E7b
                - k_on_7_EXG*Cexg_Other_VM*CFcRn_Other_VM*V_Other_VM
                + k_off_7_EXG*Cexg_Other_bVM*V_Other_VM
                - k_on_PS*Cexg_Other_VM*C_mem*V_Other_VM
                + k_off_PS*Cexg_Other_bVM_Mem*V_Other_VM)/V_Other_VM;
dxdt_Cexg_Lung_bVM_Mem = (k_on_PS*Cexg_Lung_VM*C_mem*V_Lung_VM
          - k_off_PS*Cexg_Lung_bVM_Mem*V_Lung_VM
          - kint_PS*Cexg_Lung_bVM_Mem*V_Lung_VM)/V_Lung_VM;
dxdt_Cexg_Liver_bVM_Mem = (k_on_PS*Cexg_Liver_VM*C_mem*V_Liver_VM
          - k_off_PS*Cexg_Liver_bVM_Mem*V_Liver_VM
          - kint_PS*Cexg_Liver_bVM_Mem*V_Liver_VM)/V_Liver_VM;
dxdt_Cexg_Heart_bVM_Mem = (k_on_PS*Cexg_Heart_VM*C_mem*V_Heart_VM
          - k_off_PS*Cexg_Heart_bVM_Mem*V_Heart_VM
          - kint_PS*Cexg_Heart_bVM_Mem*V_Heart_VM)/V_Heart_VM;
dxdt_Cexg_Muscle_bVM_Mem = (k_on_PS*Cexg_Muscle_VM*C_mem*V_Muscle_VM
          - k_off_PS*Cexg_Muscle_bVM_Mem*V_Muscle_VM
          - kint_PS*Cexg_Muscle_bVM_Mem*V_Muscle_VM)/V_Muscle_VM;
dxdt_Cexg_Skin_bVM_Mem = (k_on_PS*Cexg_Skin_VM*C_mem*V_Skin_VM
          - k_off_PS*Cexg_Skin_bVM_Mem*V_Skin_VM
          - kint_PS*Cexg_Skin_bVM_Mem*V_Skin_VM)/V_Skin_VM;
dxdt_Cexg_Adipose_bVM_Mem = (k_on_PS*Cexg_Adipose_VM*C_mem*V_Adipose_VM
          - k_off_PS*Cexg_Adipose_bVM_Mem*V_Adipose_VM
          - kint_PS*Cexg_Adipose_bVM_Mem*V_Adipose_VM)/V_Adipose_VM;
dxdt_Cexg_Bone_bVM_Mem = (k_on_PS*Cexg_Bone_VM*C_mem*V_Bone_VM
          - k_off_PS*Cexg_Bone_bVM_Mem*V_Bone_VM
          - kint_PS*Cexg_Bone_bVM_Mem*V_Bone_VM)/V_Bone_VM;
dxdt_Cexg_Brain_bVM_Mem = (k_on_PS*Cexg_Brain_VM*C_mem*V_Brain_VM
          - k_off_PS*Cexg_Brain_bVM_Mem*V_Brain_VM
          - kint_PS*Cexg_Brain_bVM_Mem*V_Brain_VM)/V_Brain_VM;
dxdt_Cexg_Kidney_bVM_Mem = (k_on_PS*Cexg_Kidney_VM*C_mem*V_Kidney_VM
          - k_off_PS*Cexg_Kidney_bVM_Mem*V_Kidney_VM
          - kint_PS*Cexg_Kidney_bVM_Mem*V_Kidney_VM)/V_Kidney_VM;
dxdt_Cexg_SI_bVM_Mem = (k_on_PS*Cexg_SI_VM*C_mem*V_SI_VM
          - k_off_PS*Cexg_SI_bVM_Mem*V_SI_VM
          - kint_PS*Cexg_SI_bVM_Mem*V_SI_VM)/V_SI_VM;
dxdt_Cexg_LI_bVM_Mem = (k_on_PS*Cexg_LI_VM*C_mem*V_LI_VM
          - k_off_PS*Cexg_LI_bVM_Mem*V_LI_VM
          - kint_PS*Cexg_LI_bVM_Mem*V_LI_VM)/V_LI_VM;
dxdt_Cexg_Pancreas_bVM_Mem = (k_on_PS*Cexg_Pancreas_VM*C_mem*V_Pancreas_VM
          - k_off_PS*Cexg_Pancreas_bVM_Mem*V_Pancreas_VM
          - kint_PS*Cexg_Pancreas_bVM_Mem*V_Pancreas_VM)/V_Pancreas_VM;
dxdt_Cexg_Thymus_bVM_Mem = (k_on_PS*Cexg_Thymus_VM*C_mem*V_Thymus_VM
          - k_off_PS*Cexg_Thymus_bVM_Mem*V_Thymus_VM
          - kint_PS*Cexg_Thymus_bVM_Mem*V_Thymus_VM)/V_Thymus_VM;
dxdt_Cexg_Spleen_bVM_Mem = (k_on_PS*Cexg_Spleen_VM*C_mem*V_Spleen_VM
          - k_off_PS*Cexg_Spleen_bVM_Mem*V_Spleen_VM
          - kint_PS*Cexg_Spleen_bVM_Mem*V_Spleen_VM)/V_Spleen_VM;
dxdt_Cexg_Other_bVM_Mem = (k_on_PS*Cexg_Other_VM*C_mem*V_Other_VM
          - k_off_PS*Cexg_Other_bVM_Mem*V_Other_VM
          - kint_PS*Cexg_Other_bVM_Mem*V_Other_VM)/V_Other_VM;
//endosomal pH=7.4
dxdt_Cexg_Lung_E7 = (CLup_Lung*FR*Cexg_Lung_VM
            + CLup_Lung*(1.0-FR)*Cexg_Lung_IM
                - CLup_Lung*Cexg_Lung_E7
                - k_on_7_EXG*Cexg_Lung_E7*CFcRn_Lung_E7*V_Lung_E7
                + k_off_7_EXG*Cexg_Lung_bE7*V_Lung_E7
                + kint_PS*Cexg_Lung_bVM_Mem*V_Lung_VM
                + kint_PS*Cexg_Lung_bIM_Mem*V_Lung_IM)/V_Lung_E7;
dxdt_Cexg_Liver_E7 = (CLup_Liver*FR*Cexg_Liver_VM
            + CLup_Liver*(1.0-FR)*Cexg_Liver_IM
                - CLup_Liver*Cexg_Liver_E7
                - k_on_7_EXG*Cexg_Liver_E7*CFcRn_Liver_E7*V_Liver_E7
                + k_off_7_EXG*Cexg_Liver_bE7*V_Liver_E7
                + kint_PS*Cexg_Liver_bVM_Mem*V_Liver_VM
                + kint_PS*Cexg_Liver_bIM_Mem*V_Liver_IM)/V_Liver_E7;
dxdt_Cexg_Heart_E7 = (CLup_Heart*FR*Cexg_Heart_VM
            + CLup_Heart*(1.0-FR)*Cexg_Heart_IM
                - CLup_Heart*Cexg_Heart_E7
                - k_on_7_EXG*Cexg_Heart_E7*CFcRn_Heart_E7*V_Heart_E7
                + k_off_7_EXG*Cexg_Heart_bE7*V_Heart_E7
                + kint_PS*Cexg_Heart_bVM_Mem*V_Heart_VM
                + kint_PS*Cexg_Heart_bIM_Mem*V_Heart_IM)/V_Heart_E7;
dxdt_Cexg_Muscle_E7 = (CLup_Muscle*FR*Cexg_Muscle_VM
            + CLup_Muscle*(1.0-FR)*Cexg_Muscle_IM
                - CLup_Muscle*Cexg_Muscle_E7
                - k_on_7_EXG*Cexg_Muscle_E7*CFcRn_Muscle_E7*V_Muscle_E7
                + k_off_7_EXG*Cexg_Muscle_bE7*V_Muscle_E7
                + kint_PS*Cexg_Muscle_bVM_Mem*V_Muscle_VM
                + kint_PS*Cexg_Muscle_bIM_Mem*V_Muscle_IM)/V_Muscle_E7;
dxdt_Cexg_Skin_E7 = (CLup_Skin*FR*Cexg_Skin_VM
            + CLup_Skin*(1.0-FR)*Cexg_Skin_IM
                - CLup_Skin*Cexg_Skin_E7
                - k_on_7_EXG*Cexg_Skin_E7*CFcRn_Skin_E7*V_Skin_E7
                + k_off_7_EXG*Cexg_Skin_bE7*V_Skin_E7
                + kint_PS*Cexg_Skin_bVM_Mem*V_Skin_VM
                + kint_PS*Cexg_Skin_bIM_Mem*V_Skin_IM)/V_Skin_E7;
dxdt_Cexg_Adipose_E7 = (CLup_Adipose*FR*Cexg_Adipose_VM
            + CLup_Adipose*(1.0-FR)*Cexg_Adipose_IM
                - CLup_Adipose*Cexg_Adipose_E7
                - k_on_7_EXG*Cexg_Adipose_E7*CFcRn_Adipose_E7*V_Adipose_E7
                + k_off_7_EXG*Cexg_Adipose_bE7*V_Adipose_E7
                + kint_PS*Cexg_Adipose_bVM_Mem*V_Adipose_VM
                + kint_PS*Cexg_Adipose_bIM_Mem*V_Adipose_IM)/V_Adipose_E7;
dxdt_Cexg_Bone_E7 = (CLup_Bone*FR*Cexg_Bone_VM
            + CLup_Bone*(1.0-FR)*Cexg_Bone_IM
                - CLup_Bone*Cexg_Bone_E7
                - k_on_7_EXG*Cexg_Bone_E7*CFcRn_Bone_E7*V_Bone_E7
                + k_off_7_EXG*Cexg_Bone_bE7*V_Bone_E7
                + kint_PS*Cexg_Bone_bVM_Mem*V_Bone_VM
                + kint_PS*Cexg_Bone_bIM_Mem*V_Bone_IM)/V_Bone_E7;
dxdt_Cexg_Brain_E7 = (CLup_Brain*FR*Cexg_Brain_VM
            + CLup_Brain*(1.0-FR)*Cexg_Brain_IM
                - CLup_Brain*Cexg_Brain_E7
                - k_on_7_EXG*Cexg_Brain_E7*CFcRn_Brain_E7*V_Brain_E7
                + k_off_7_EXG*Cexg_Brain_bE7*V_Brain_E7
                + kint_PS*Cexg_Brain_bVM_Mem*V_Brain_VM
                + kint_PS*Cexg_Brain_bIM_Mem*V_Brain_IM)/V_Brain_E7;
dxdt_Cexg_Kidney_E7 = (CLup_Kidney*FR*Cexg_Kidney_VM
            + CLup_Kidney*(1.0-FR)*Cexg_Kidney_IM
                - CLup_Kidney*Cexg_Kidney_E7
                - k_on_7_EXG*Cexg_Kidney_E7*CFcRn_Kidney_E7*V_Kidney_E7
                + k_off_7_EXG*Cexg_Kidney_bE7*V_Kidney_E7
                + kint_PS*Cexg_Kidney_bVM_Mem*V_Kidney_VM
                + kint_PS*Cexg_Kidney_bIM_Mem*V_Kidney_IM)/V_Kidney_E7;
dxdt_Cexg_SI_E7 = (CLup_SI*FR*Cexg_SI_VM
            + CLup_SI*(1.0-FR)*Cexg_SI_IM
                - CLup_SI*Cexg_SI_E7
                - k_on_7_EXG*Cexg_SI_E7*CFcRn_SI_E7*V_SI_E7
                + k_off_7_EXG*Cexg_SI_bE7*V_SI_E7
                + kint_PS*Cexg_SI_bVM_Mem*V_SI_VM
                + kint_PS*Cexg_SI_bIM_Mem*V_SI_IM)/V_SI_E7;
dxdt_Cexg_LI_E7 = (CLup_LI*FR*Cexg_LI_VM
            + CLup_LI*(1.0-FR)*Cexg_LI_IM
                - CLup_LI*Cexg_LI_E7
                - k_on_7_EXG*Cexg_LI_E7*CFcRn_LI_E7*V_LI_E7
                + k_off_7_EXG*Cexg_LI_bE7*V_LI_E7
                + kint_PS*Cexg_LI_bVM_Mem*V_LI_VM
                + kint_PS*Cexg_LI_bIM_Mem*V_LI_IM)/V_LI_E7;
dxdt_Cexg_Pancreas_E7 = (CLup_Pancreas*FR*Cexg_Pancreas_VM
            + CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_IM
                - CLup_Pancreas*Cexg_Pancreas_E7
                - k_on_7_EXG*Cexg_Pancreas_E7*CFcRn_Pancreas_E7*V_Pancreas_E7
                + k_off_7_EXG*Cexg_Pancreas_bE7*V_Pancreas_E7
                + kint_PS*Cexg_Pancreas_bVM_Mem*V_Pancreas_VM
                + kint_PS*Cexg_Pancreas_bIM_Mem*V_Pancreas_IM)/V_Pancreas_E7;
dxdt_Cexg_Thymus_E7 = (CLup_Thymus*FR*Cexg_Thymus_VM
            + CLup_Thymus*(1.0-FR)*Cexg_Thymus_IM
                - CLup_Thymus*Cexg_Thymus_E7
                - k_on_7_EXG*Cexg_Thymus_E7*CFcRn_Thymus_E7*V_Thymus_E7
                + k_off_7_EXG*Cexg_Thymus_bE7*V_Thymus_E7
                + kint_PS*Cexg_Thymus_bVM_Mem*V_Thymus_VM
                + kint_PS*Cexg_Thymus_bIM_Mem*V_Thymus_IM)/V_Thymus_E7;
dxdt_Cexg_Spleen_E7 = (CLup_Spleen*FR*Cexg_Spleen_VM
            + CLup_Spleen*(1.0-FR)*Cexg_Spleen_IM
                - CLup_Spleen*Cexg_Spleen_E7
                - k_on_7_EXG*Cexg_Spleen_E7*CFcRn_Spleen_E7*V_Spleen_E7
                + k_off_7_EXG*Cexg_Spleen_bE7*V_Spleen_E7
                + kint_PS*Cexg_Spleen_bVM_Mem*V_Spleen_VM
                + kint_PS*Cexg_Spleen_bIM_Mem*V_Spleen_IM)/V_Spleen_E7;
dxdt_Cexg_Other_E7 = (CLup_Other*FR*Cexg_Other_VM
            + CLup_Other*(1.0-FR)*Cexg_Other_IM
                - CLup_Other*Cexg_Other_E7
                - k_on_7_EXG*Cexg_Other_E7*CFcRn_Other_E7*V_Other_E7
                + k_off_7_EXG*Cexg_Other_bE7*V_Other_E7
                + kint_PS*Cexg_Other_bVM_Mem*V_Other_VM
                + kint_PS*Cexg_Other_bIM_Mem*V_Other_IM)/V_Other_E7;
//Free EXG mAb in E6a
dxdt_Cexg_Lung_E6a = (CLup_Lung*Cexg_Lung_E7
          - CLup_Lung*Cexg_Lung_E6a
          - k_on_6_EXG*Cexg_Lung_E6a*CFcRn_Lung_E6a*V_Lung_E6a
          + k_off_6_EXG*Cexg_Lung_bE6a*V_Lung_E6a)/V_Lung_E6a;
dxdt_Cexg_Liver_E6a = (CLup_Liver*Cexg_Liver_E7
          - CLup_Liver*Cexg_Liver_E6a
          - k_on_6_EXG*Cexg_Liver_E6a*CFcRn_Liver_E6a*V_Liver_E6a
          + k_off_6_EXG*Cexg_Liver_bE6a*V_Liver_E6a)/V_Liver_E6a;
dxdt_Cexg_Heart_E6a = (CLup_Heart*Cexg_Heart_E7
          - CLup_Heart*Cexg_Heart_E6a
          - k_on_6_EXG*Cexg_Heart_E6a*CFcRn_Heart_E6a*V_Heart_E6a
          + k_off_6_EXG*Cexg_Heart_bE6a*V_Heart_E6a)/V_Heart_E6a;
dxdt_Cexg_Muscle_E6a = (CLup_Muscle*Cexg_Muscle_E7
          - CLup_Muscle*Cexg_Muscle_E6a
          - k_on_6_EXG*Cexg_Muscle_E6a*CFcRn_Muscle_E6a*V_Muscle_E6a
          + k_off_6_EXG*Cexg_Muscle_bE6a*V_Muscle_E6a)/V_Muscle_E6a;
dxdt_Cexg_Skin_E6a = (CLup_Skin*Cexg_Skin_E7
          - CLup_Skin*Cexg_Skin_E6a
          - k_on_6_EXG*Cexg_Skin_E6a*CFcRn_Skin_E6a*V_Skin_E6a
          + k_off_6_EXG*Cexg_Skin_bE6a*V_Skin_E6a)/V_Skin_E6a;
dxdt_Cexg_Adipose_E6a = (CLup_Adipose*Cexg_Adipose_E7
          - CLup_Adipose*Cexg_Adipose_E6a
          - k_on_6_EXG*Cexg_Adipose_E6a*CFcRn_Adipose_E6a*V_Adipose_E6a
          + k_off_6_EXG*Cexg_Adipose_bE6a*V_Adipose_E6a)/V_Adipose_E6a;
dxdt_Cexg_Bone_E6a = (CLup_Bone*Cexg_Bone_E7
          - CLup_Bone*Cexg_Bone_E6a
          - k_on_6_EXG*Cexg_Bone_E6a*CFcRn_Bone_E6a*V_Bone_E6a
          + k_off_6_EXG*Cexg_Bone_bE6a*V_Bone_E6a)/V_Bone_E6a;
dxdt_Cexg_Brain_E6a = (CLup_Brain*Cexg_Brain_E7
          - CLup_Brain*Cexg_Brain_E6a
          - k_on_6_EXG*Cexg_Brain_E6a*CFcRn_Brain_E6a*V_Brain_E6a
          + k_off_6_EXG*Cexg_Brain_bE6a*V_Brain_E6a)/V_Brain_E6a;
dxdt_Cexg_Kidney_E6a = (CLup_Kidney*Cexg_Kidney_E7
          - CLup_Kidney*Cexg_Kidney_E6a
          - k_on_6_EXG*Cexg_Kidney_E6a*CFcRn_Kidney_E6a*V_Kidney_E6a
          + k_off_6_EXG*Cexg_Kidney_bE6a*V_Kidney_E6a)/V_Kidney_E6a;
dxdt_Cexg_SI_E6a = (CLup_SI*Cexg_SI_E7
          - CLup_SI*Cexg_SI_E6a
          - k_on_6_EXG*Cexg_SI_E6a*CFcRn_SI_E6a*V_SI_E6a
          + k_off_6_EXG*Cexg_SI_bE6a*V_SI_E6a)/V_SI_E6a;
dxdt_Cexg_LI_E6a = (CLup_LI*Cexg_LI_E7
          - CLup_LI*Cexg_LI_E6a
          - k_on_6_EXG*Cexg_LI_E6a*CFcRn_LI_E6a*V_LI_E6a
          + k_off_6_EXG*Cexg_LI_bE6a*V_LI_E6a)/V_LI_E6a;
dxdt_Cexg_Pancreas_E6a = (CLup_Pancreas*Cexg_Pancreas_E7
          - CLup_Pancreas*Cexg_Pancreas_E6a
          - k_on_6_EXG*Cexg_Pancreas_E6a*CFcRn_Pancreas_E6a*V_Pancreas_E6a
          + k_off_6_EXG*Cexg_Pancreas_bE6a*V_Pancreas_E6a)/V_Pancreas_E6a;
dxdt_Cexg_Thymus_E6a = (CLup_Thymus*Cexg_Thymus_E7
          - CLup_Thymus*Cexg_Thymus_E6a
          - k_on_6_EXG*Cexg_Thymus_E6a*CFcRn_Thymus_E6a*V_Thymus_E6a
          + k_off_6_EXG*Cexg_Thymus_bE6a*V_Thymus_E6a)/V_Thymus_E6a;
dxdt_Cexg_Spleen_E6a = (CLup_Spleen*Cexg_Spleen_E7
          - CLup_Spleen*Cexg_Spleen_E6a
          - k_on_6_EXG*Cexg_Spleen_E6a*CFcRn_Spleen_E6a*V_Spleen_E6a
          + k_off_6_EXG*Cexg_Spleen_bE6a*V_Spleen_E6a)/V_Spleen_E6a;
dxdt_Cexg_Other_E6a = (CLup_Other*Cexg_Other_E7
          - CLup_Other*Cexg_Other_E6a
          - k_on_6_EXG*Cexg_Other_E6a*CFcRn_Other_E6a*V_Other_E6a
          + k_off_6_EXG*Cexg_Other_bE6a*V_Other_E6a)/V_Other_E6a;
// endosomal pH=7.4  b
dxdt_Cexg_Lung_E7b = (CLup_Lung*(1.0-Prob_deg)*Cexg_Lung_E6a
          - CLup_Lung*Cexg_Lung_E7b
          - k_on_7_EXG*Cexg_Lung_E7b*CFcRn_Lung_E7b*V_Lung_E7b
          + k_off_7_EXG*Cexg_Lung_bE7b*V_Lung_E7b)/V_Lung_E7b;
dxdt_Cexg_Liver_E7b = (CLup_Liver*(1.0-Prob_deg)*Cexg_Liver_E6a
          - CLup_Liver*Cexg_Liver_E7b
          - k_on_7_EXG*Cexg_Liver_E7b*CFcRn_Liver_E7b*V_Liver_E7b
          + k_off_7_EXG*Cexg_Liver_bE7b*V_Liver_E7b)/V_Liver_E7b;
dxdt_Cexg_Heart_E7b = (CLup_Heart*(1.0-Prob_deg)*Cexg_Heart_E6a
          - CLup_Heart*Cexg_Heart_E7b
          - k_on_7_EXG*Cexg_Heart_E7b*CFcRn_Heart_E7b*V_Heart_E7b
          + k_off_7_EXG*Cexg_Heart_bE7b*V_Heart_E7b)/V_Heart_E7b;
dxdt_Cexg_Muscle_E7b = (CLup_Muscle*(1.0-Prob_deg)*Cexg_Muscle_E6a
          - CLup_Muscle*Cexg_Muscle_E7b
          - k_on_7_EXG*Cexg_Muscle_E7b*CFcRn_Muscle_E7b*V_Muscle_E7b
          + k_off_7_EXG*Cexg_Muscle_bE7b*V_Muscle_E7b)/V_Muscle_E7b;
dxdt_Cexg_Skin_E7b = (CLup_Skin*(1.0-Prob_deg)*Cexg_Skin_E6a
          - CLup_Skin*Cexg_Skin_E7b
          - k_on_7_EXG*Cexg_Skin_E7b*CFcRn_Skin_E7b*V_Skin_E7b
          + k_off_7_EXG*Cexg_Skin_bE7b*V_Skin_E7b)/V_Skin_E7b;
dxdt_Cexg_Adipose_E7b = (CLup_Adipose*(1.0-Prob_deg)*Cexg_Adipose_E6a
          - CLup_Adipose*Cexg_Adipose_E7b
          - k_on_7_EXG*Cexg_Adipose_E7b*CFcRn_Adipose_E7b*V_Adipose_E7b
          + k_off_7_EXG*Cexg_Adipose_bE7b*V_Adipose_E7b)/V_Adipose_E7b;
dxdt_Cexg_Bone_E7b = (CLup_Bone*(1.0-Prob_deg)*Cexg_Bone_E6a
          - CLup_Bone*Cexg_Bone_E7b
          - k_on_7_EXG*Cexg_Bone_E7b*CFcRn_Bone_E7b*V_Bone_E7b
          + k_off_7_EXG*Cexg_Bone_bE7b*V_Bone_E7b)/V_Bone_E7b;
dxdt_Cexg_Brain_E7b = (CLup_Brain*(1.0-Prob_deg)*Cexg_Brain_E6a
          - CLup_Brain*Cexg_Brain_E7b
          - k_on_7_EXG*Cexg_Brain_E7b*CFcRn_Brain_E7b*V_Brain_E7b
          + k_off_7_EXG*Cexg_Brain_bE7b*V_Brain_E7b)/V_Brain_E7b;
dxdt_Cexg_Kidney_E7b = (CLup_Kidney*(1.0-Prob_deg)*Cexg_Kidney_E6a
          - CLup_Kidney*Cexg_Kidney_E7b
          - k_on_7_EXG*Cexg_Kidney_E7b*CFcRn_Kidney_E7b*V_Kidney_E7b
          + k_off_7_EXG*Cexg_Kidney_bE7b*V_Kidney_E7b)/V_Kidney_E7b;
dxdt_Cexg_SI_E7b = (CLup_SI*(1.0-Prob_deg)*Cexg_SI_E6a
          - CLup_SI*Cexg_SI_E7b
          - k_on_7_EXG*Cexg_SI_E7b*CFcRn_SI_E7b*V_SI_E7b
          + k_off_7_EXG*Cexg_SI_bE7b*V_SI_E7b)/V_SI_E7b;
dxdt_Cexg_LI_E7b = (CLup_LI*(1.0-Prob_deg)*Cexg_LI_E6a
          - CLup_LI*Cexg_LI_E7b
          - k_on_7_EXG*Cexg_LI_E7b*CFcRn_LI_E7b*V_LI_E7b
          + k_off_7_EXG*Cexg_LI_bE7b*V_LI_E7b)/V_LI_E7b;
dxdt_Cexg_Pancreas_E7b = (CLup_Pancreas*(1.0-Prob_deg)*Cexg_Pancreas_E6a
          - CLup_Pancreas*Cexg_Pancreas_E7b
          - k_on_7_EXG*Cexg_Pancreas_E7b*CFcRn_Pancreas_E7b*V_Pancreas_E7b
          + k_off_7_EXG*Cexg_Pancreas_bE7b*V_Pancreas_E7b)/V_Pancreas_E7b;
dxdt_Cexg_Thymus_E7b = (CLup_Thymus*(1.0-Prob_deg)*Cexg_Thymus_E6a
          - CLup_Thymus*Cexg_Thymus_E7b
          - k_on_7_EXG*Cexg_Thymus_E7b*CFcRn_Thymus_E7b*V_Thymus_E7b
          + k_off_7_EXG*Cexg_Thymus_bE7b*V_Thymus_E7b)/V_Thymus_E7b;
dxdt_Cexg_Spleen_E7b = (CLup_Spleen*(1.0-Prob_deg)*Cexg_Spleen_E6a
          - CLup_Spleen*Cexg_Spleen_E7b
          - k_on_7_EXG*Cexg_Spleen_E7b*CFcRn_Spleen_E7b*V_Spleen_E7b
          + k_off_7_EXG*Cexg_Spleen_bE7b*V_Spleen_E7b)/V_Spleen_E7b;
dxdt_Cexg_Other_E7b = (CLup_Other*(1.0-Prob_deg)*Cexg_Other_E6a
          - CLup_Other*Cexg_Other_E7b
          - k_on_7_EXG*Cexg_Other_E7b*CFcRn_Other_E7b*V_Other_E7b
          + k_off_7_EXG*Cexg_Other_bE7b*V_Other_E7b)/V_Other_E7b;
//;; IS side mem
dxdt_Cexg_Lung_IM = (CLup_Lung*(1.0-FR)*Cexg_Lung_IS
            - CLup_Lung*(1.0-FR)*Cexg_Lung_IM
                + CLup_Lung*(1.0-FR)*Cexg_Lung_E7b
                - CLup_Lung*(1.0-FR)*Cexg_Lung_IM
                - k_on_7_EXG*Cexg_Lung_IM*CFcRn_Lung_IM*V_Lung_IM
                + k_off_7_EXG*Cexg_Lung_bIM*V_Lung_IM
                - k_on_PS*Cexg_Lung_IM*C_mem*V_Lung_IM
                + k_off_PS*Cexg_Lung_bIM_Mem*V_Lung_IM)/V_Lung_IM;
dxdt_Cexg_Liver_IM = (CLup_Liver*(1.0-FR)*Cexg_Liver_IS
            - CLup_Liver*(1.0-FR)*Cexg_Liver_IM
                + CLup_Liver*(1.0-FR)*Cexg_Liver_E7b
                - CLup_Liver*(1.0-FR)*Cexg_Liver_IM
                - k_on_7_EXG*Cexg_Liver_IM*CFcRn_Liver_IM*V_Liver_IM
                + k_off_7_EXG*Cexg_Liver_bIM*V_Liver_IM
                - k_on_PS*Cexg_Liver_IM*C_mem*V_Liver_IM
                + k_off_PS*Cexg_Liver_bIM_Mem*V_Liver_IM)/V_Liver_IM;
dxdt_Cexg_Heart_IM = (CLup_Heart*(1.0-FR)*Cexg_Heart_IS
            - CLup_Heart*(1.0-FR)*Cexg_Heart_IM
                + CLup_Heart*(1.0-FR)*Cexg_Heart_E7b
                - CLup_Heart*(1.0-FR)*Cexg_Heart_IM
                - k_on_7_EXG*Cexg_Heart_IM*CFcRn_Heart_IM*V_Heart_IM
                + k_off_7_EXG*Cexg_Heart_bIM*V_Heart_IM
                - k_on_PS*Cexg_Heart_IM*C_mem*V_Heart_IM
                + k_off_PS*Cexg_Heart_bIM_Mem*V_Heart_IM)/V_Heart_IM;
dxdt_Cexg_Muscle_IM = (CLup_Muscle*(1.0-FR)*Cexg_Muscle_IS
            - CLup_Muscle*(1.0-FR)*Cexg_Muscle_IM
                + CLup_Muscle*(1.0-FR)*Cexg_Muscle_E7b
                - CLup_Muscle*(1.0-FR)*Cexg_Muscle_IM
                - k_on_7_EXG*Cexg_Muscle_IM*CFcRn_Muscle_IM*V_Muscle_IM
                + k_off_7_EXG*Cexg_Muscle_bIM*V_Muscle_IM
                - k_on_PS*Cexg_Muscle_IM*C_mem*V_Muscle_IM
                + k_off_PS*Cexg_Muscle_bIM_Mem*V_Muscle_IM)/V_Muscle_IM;
dxdt_Cexg_Skin_IM = (CLup_Skin*(1.0-FR)*Cexg_Skin_IS
            - CLup_Skin*(1.0-FR)*Cexg_Skin_IM
                + CLup_Skin*(1.0-FR)*Cexg_Skin_E7b
                - CLup_Skin*(1.0-FR)*Cexg_Skin_IM
                - k_on_7_EXG*Cexg_Skin_IM*CFcRn_Skin_IM*V_Skin_IM
                + k_off_7_EXG*Cexg_Skin_bIM*V_Skin_IM
                - k_on_PS*Cexg_Skin_IM*C_mem*V_Skin_IM
                + k_off_PS*Cexg_Skin_bIM_Mem*V_Skin_IM)/V_Skin_IM;
dxdt_Cexg_Adipose_IM = (CLup_Adipose*(1.0-FR)*Cexg_Adipose_IS
            - CLup_Adipose*(1.0-FR)*Cexg_Adipose_IM
                + CLup_Adipose*(1.0-FR)*Cexg_Adipose_E7b
                - CLup_Adipose*(1.0-FR)*Cexg_Adipose_IM
                - k_on_7_EXG*Cexg_Adipose_IM*CFcRn_Adipose_IM*V_Adipose_IM
                + k_off_7_EXG*Cexg_Adipose_bIM*V_Adipose_IM
                - k_on_PS*Cexg_Adipose_IM*C_mem*V_Adipose_IM
                + k_off_PS*Cexg_Adipose_bIM_Mem*V_Adipose_IM)/V_Adipose_IM;
dxdt_Cexg_Bone_IM = (CLup_Bone*(1.0-FR)*Cexg_Bone_IS
            - CLup_Bone*(1.0-FR)*Cexg_Bone_IM
                + CLup_Bone*(1.0-FR)*Cexg_Bone_E7b
                - CLup_Bone*(1.0-FR)*Cexg_Bone_IM
                - k_on_7_EXG*Cexg_Bone_IM*CFcRn_Bone_IM*V_Bone_IM
                + k_off_7_EXG*Cexg_Bone_bIM*V_Bone_IM
                - k_on_PS*Cexg_Bone_IM*C_mem*V_Bone_IM
                + k_off_PS*Cexg_Bone_bIM_Mem*V_Bone_IM)/V_Bone_IM;
dxdt_Cexg_Brain_IM = (CLup_Brain*(1.0-FR)*Cexg_Brain_IS
            - CLup_Brain*(1.0-FR)*Cexg_Brain_IM
                + CLup_Brain*(1.0-FR)*Cexg_Brain_E7b
                - CLup_Brain*(1.0-FR)*Cexg_Brain_IM
                - k_on_7_EXG*Cexg_Brain_IM*CFcRn_Brain_IM*V_Brain_IM
                + k_off_7_EXG*Cexg_Brain_bIM*V_Brain_IM
                - k_on_PS*Cexg_Brain_IM*C_mem*V_Brain_IM
                + k_off_PS*Cexg_Brain_bIM_Mem*V_Brain_IM)/V_Brain_IM;
dxdt_Cexg_Kidney_IM = (CLup_Kidney*(1.0-FR)*Cexg_Kidney_IS
            - CLup_Kidney*(1.0-FR)*Cexg_Kidney_IM
                + CLup_Kidney*(1.0-FR)*Cexg_Kidney_E7b
                - CLup_Kidney*(1.0-FR)*Cexg_Kidney_IM
                - k_on_7_EXG*Cexg_Kidney_IM*CFcRn_Kidney_IM*V_Kidney_IM
                + k_off_7_EXG*Cexg_Kidney_bIM*V_Kidney_IM
                - k_on_PS*Cexg_Kidney_IM*C_mem*V_Kidney_IM
                + k_off_PS*Cexg_Kidney_bIM_Mem*V_Kidney_IM)/V_Kidney_IM;
dxdt_Cexg_SI_IM = (CLup_SI*(1.0-FR)*Cexg_SI_IS
            - CLup_SI*(1.0-FR)*Cexg_SI_IM
                + CLup_SI*(1.0-FR)*Cexg_SI_E7b
                - CLup_SI*(1.0-FR)*Cexg_SI_IM
                - k_on_7_EXG*Cexg_SI_IM*CFcRn_SI_IM*V_SI_IM
                + k_off_7_EXG*Cexg_SI_bIM*V_SI_IM
                - k_on_PS*Cexg_SI_IM*C_mem*V_SI_IM
                + k_off_PS*Cexg_SI_bIM_Mem*V_SI_IM)/V_SI_IM;
dxdt_Cexg_LI_IM = (CLup_LI*(1.0-FR)*Cexg_LI_IS
            - CLup_LI*(1.0-FR)*Cexg_LI_IM
                + CLup_LI*(1.0-FR)*Cexg_LI_E7b
                - CLup_LI*(1.0-FR)*Cexg_LI_IM
                - k_on_7_EXG*Cexg_LI_IM*CFcRn_LI_IM*V_LI_IM
                + k_off_7_EXG*Cexg_LI_bIM*V_LI_IM
                - k_on_PS*Cexg_LI_IM*C_mem*V_LI_IM
                + k_off_PS*Cexg_LI_bIM_Mem*V_LI_IM)/V_LI_IM;
dxdt_Cexg_Pancreas_IM = (CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_IS
            - CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_IM
                + CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_E7b
                - CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_IM
                - k_on_7_EXG*Cexg_Pancreas_IM*CFcRn_Pancreas_IM*V_Pancreas_IM
                + k_off_7_EXG*Cexg_Pancreas_bIM*V_Pancreas_IM
                - k_on_PS*Cexg_Pancreas_IM*C_mem*V_Pancreas_IM
                + k_off_PS*Cexg_Pancreas_bIM_Mem*V_Pancreas_IM)/V_Pancreas_IM;
dxdt_Cexg_Thymus_IM = (CLup_Thymus*(1.0-FR)*Cexg_Thymus_IS
            - CLup_Thymus*(1.0-FR)*Cexg_Thymus_IM
                + CLup_Thymus*(1.0-FR)*Cexg_Thymus_E7b
                - CLup_Thymus*(1.0-FR)*Cexg_Thymus_IM
                - k_on_7_EXG*Cexg_Thymus_IM*CFcRn_Thymus_IM*V_Thymus_IM
                + k_off_7_EXG*Cexg_Thymus_bIM*V_Thymus_IM
                - k_on_PS*Cexg_Thymus_IM*C_mem*V_Thymus_IM
                + k_off_PS*Cexg_Thymus_bIM_Mem*V_Thymus_IM)/V_Thymus_IM;
dxdt_Cexg_Spleen_IM = (CLup_Spleen*(1.0-FR)*Cexg_Spleen_IS
            - CLup_Spleen*(1.0-FR)*Cexg_Spleen_IM
                + CLup_Spleen*(1.0-FR)*Cexg_Spleen_E7b
                - CLup_Spleen*(1.0-FR)*Cexg_Spleen_IM
                - k_on_7_EXG*Cexg_Spleen_IM*CFcRn_Spleen_IM*V_Spleen_IM
                + k_off_7_EXG*Cexg_Spleen_bIM*V_Spleen_IM
                - k_on_PS*Cexg_Spleen_IM*C_mem*V_Spleen_IM
                + k_off_PS*Cexg_Spleen_bIM_Mem*V_Spleen_IM)/V_Spleen_IM;
dxdt_Cexg_Other_IM = (CLup_Other*(1.0-FR)*Cexg_Other_IS
            - CLup_Other*(1.0-FR)*Cexg_Other_IM
                + CLup_Other*(1.0-FR)*Cexg_Other_E7b
                - CLup_Other*(1.0-FR)*Cexg_Other_IM
                - k_on_7_EXG*Cexg_Other_IM*CFcRn_Other_IM*V_Other_IM
                + k_off_7_EXG*Cexg_Other_bIM*V_Other_IM
                - k_on_PS*Cexg_Other_IM*C_mem*V_Other_IM
                + k_off_PS*Cexg_Other_bIM_Mem*V_Other_IM)/V_Other_IM;
dxdt_Cexg_Lung_bIM_Mem = (k_on_PS*Cexg_Lung_IM*C_mem*V_Lung_IM
          - k_off_PS*Cexg_Lung_bIM_Mem*V_Lung_IM
          - kint_PS*Cexg_Lung_bIM_Mem*V_Lung_IM)/V_Lung_IM;
dxdt_Cexg_Liver_bIM_Mem = (k_on_PS*Cexg_Liver_IM*C_mem*V_Liver_IM
          - k_off_PS*Cexg_Liver_bIM_Mem*V_Liver_IM
          - kint_PS*Cexg_Liver_bIM_Mem*V_Liver_IM)/V_Liver_IM;
dxdt_Cexg_Heart_bIM_Mem = (k_on_PS*Cexg_Heart_IM*C_mem*V_Heart_IM
          - k_off_PS*Cexg_Heart_bIM_Mem*V_Heart_IM
          - kint_PS*Cexg_Heart_bIM_Mem*V_Heart_IM)/V_Heart_IM;
dxdt_Cexg_Muscle_bIM_Mem = (k_on_PS*Cexg_Muscle_IM*C_mem*V_Muscle_IM
          - k_off_PS*Cexg_Muscle_bIM_Mem*V_Muscle_IM
          - kint_PS*Cexg_Muscle_bIM_Mem*V_Muscle_IM)/V_Muscle_IM;
dxdt_Cexg_Skin_bIM_Mem = (k_on_PS*Cexg_Skin_IM*C_mem*V_Skin_IM
          - k_off_PS*Cexg_Skin_bIM_Mem*V_Skin_IM
          - kint_PS*Cexg_Skin_bIM_Mem*V_Skin_IM)/V_Skin_IM;
dxdt_Cexg_Adipose_bIM_Mem = (k_on_PS*Cexg_Adipose_IM*C_mem*V_Adipose_IM
          - k_off_PS*Cexg_Adipose_bIM_Mem*V_Adipose_IM
          - kint_PS*Cexg_Adipose_bIM_Mem*V_Adipose_IM)/V_Adipose_IM;
dxdt_Cexg_Bone_bIM_Mem = (k_on_PS*Cexg_Bone_IM*C_mem*V_Bone_IM
          - k_off_PS*Cexg_Bone_bIM_Mem*V_Bone_IM
          - kint_PS*Cexg_Bone_bIM_Mem*V_Bone_IM)/V_Bone_IM;
dxdt_Cexg_Brain_bIM_Mem = (k_on_PS*Cexg_Brain_IM*C_mem*V_Brain_IM
          - k_off_PS*Cexg_Brain_bIM_Mem*V_Brain_IM
          - kint_PS*Cexg_Brain_bIM_Mem*V_Brain_IM)/V_Brain_IM;
dxdt_Cexg_Kidney_bIM_Mem = (k_on_PS*Cexg_Kidney_IM*C_mem*V_Kidney_IM
          - k_off_PS*Cexg_Kidney_bIM_Mem*V_Kidney_IM
          - kint_PS*Cexg_Kidney_bIM_Mem*V_Kidney_IM)/V_Kidney_IM;
dxdt_Cexg_SI_bIM_Mem = (k_on_PS*Cexg_SI_IM*C_mem*V_SI_IM
          - k_off_PS*Cexg_SI_bIM_Mem*V_SI_IM
          - kint_PS*Cexg_SI_bIM_Mem*V_SI_IM)/V_SI_IM;
dxdt_Cexg_LI_bIM_Mem = (k_on_PS*Cexg_LI_IM*C_mem*V_LI_IM
          - k_off_PS*Cexg_LI_bIM_Mem*V_LI_IM
          - kint_PS*Cexg_LI_bIM_Mem*V_LI_IM)/V_LI_IM;
dxdt_Cexg_Pancreas_bIM_Mem = (k_on_PS*Cexg_Pancreas_IM*C_mem*V_Pancreas_IM
          - k_off_PS*Cexg_Pancreas_bIM_Mem*V_Pancreas_IM
          - kint_PS*Cexg_Pancreas_bIM_Mem*V_Pancreas_IM)/V_Pancreas_IM;
dxdt_Cexg_Thymus_bIM_Mem = (k_on_PS*Cexg_Thymus_IM*C_mem*V_Thymus_IM
          - k_off_PS*Cexg_Thymus_bIM_Mem*V_Thymus_IM
          - kint_PS*Cexg_Thymus_bIM_Mem*V_Thymus_IM)/V_Thymus_IM;
dxdt_Cexg_Spleen_bIM_Mem = (k_on_PS*Cexg_Spleen_IM*C_mem*V_Spleen_IM
          - k_off_PS*Cexg_Spleen_bIM_Mem*V_Spleen_IM
          - kint_PS*Cexg_Spleen_bIM_Mem*V_Spleen_IM)/V_Spleen_IM;
dxdt_Cexg_Other_bIM_Mem = (k_on_PS*Cexg_Other_IM*C_mem*V_Other_IM
          - k_off_PS*Cexg_Other_bIM_Mem*V_Other_IM
          - kint_PS*Cexg_Other_bIM_Mem*V_Other_IM)/V_Other_IM;
//;; Interstitial space
dxdt_Cexg_Lung_IS = ((1.0-SV_Lung)*LF_Lung*Cexg_Lung_V
          - CLup_Lung*(1.0-FR)*Cexg_Lung_IS
          + CLup_Lung*(1.0-FR)*Cexg_Lung_IM
          - (1.0-SIS_Lung)*LF_Lung*Cexg_Lung_IS)/V_Lung_IS;
dxdt_Cexg_Liver_IS = ((1.0-SV_Liver)*LF_Liver*Cexg_Liver_V
          - CLup_Liver*(1.0-FR)*Cexg_Liver_IS
          + CLup_Liver*(1.0-FR)*Cexg_Liver_IM
          - (1.0-SIS_Liver)*LF_Liver*Cexg_Liver_IS)/V_Liver_IS;
dxdt_Cexg_Heart_IS = ((1.0-SV_Heart)*LF_Heart*Cexg_Heart_V
          - CLup_Heart*(1.0-FR)*Cexg_Heart_IS
          + CLup_Heart*(1.0-FR)*Cexg_Heart_IM
          - (1.0-SIS_Heart)*LF_Heart*Cexg_Heart_IS)/V_Heart_IS;
dxdt_Cexg_Muscle_IS = ((1.0-SV_Muscle)*LF_Muscle*Cexg_Muscle_V
          - CLup_Muscle*(1.0-FR)*Cexg_Muscle_IS
          + CLup_Muscle*(1.0-FR)*Cexg_Muscle_IM
          - (1.0-SIS_Muscle)*LF_Muscle*Cexg_Muscle_IS)/V_Muscle_IS;
dxdt_Cexg_Skin_IS = ((1.0-SV_Skin)*LF_Skin*Cexg_Skin_V
          - CLup_Skin*(1.0-FR)*Cexg_Skin_IS
          + CLup_Skin*(1.0-FR)*Cexg_Skin_IM
          - (1.0-SIS_Skin)*LF_Skin*Cexg_Skin_IS)/V_Skin_IS;
dxdt_Cexg_Adipose_IS = ((1.0-SV_Adipose)*LF_Adipose*Cexg_Adipose_V
          - CLup_Adipose*(1.0-FR)*Cexg_Adipose_IS
          + CLup_Adipose*(1.0-FR)*Cexg_Adipose_IM
          - (1.0-SIS_Adipose)*LF_Adipose*Cexg_Adipose_IS)/V_Adipose_IS;
dxdt_Cexg_Bone_IS = ((1.0-SV_Bone)*LF_Bone*Cexg_Bone_V
          - CLup_Bone*(1.0-FR)*Cexg_Bone_IS
          + CLup_Bone*(1.0-FR)*Cexg_Bone_IM
          - (1.0-SIS_Bone)*LF_Bone*Cexg_Bone_IS)/V_Bone_IS;
dxdt_Cexg_Brain_IS = ((1.0-SV_Brain)*LF_Brain*Cexg_Brain_V
          - CLup_Brain*(1.0-FR)*Cexg_Brain_IS
          + CLup_Brain*(1.0-FR)*Cexg_Brain_IM
          - (1.0-SIS_Brain)*LF_Brain*Cexg_Brain_IS)/V_Brain_IS;
dxdt_Cexg_Kidney_IS = ((1.0-SV_Kidney)*LF_Kidney*Cexg_Kidney_V
          - CLup_Kidney*(1.0-FR)*Cexg_Kidney_IS
          + CLup_Kidney*(1.0-FR)*Cexg_Kidney_IM
          - (1.0-SIS_Kidney)*LF_Kidney*Cexg_Kidney_IS)/V_Kidney_IS;
dxdt_Cexg_SI_IS = ((1.0-SV_SI)*LF_SI*Cexg_SI_V
          - CLup_SI*(1.0-FR)*Cexg_SI_IS
          + CLup_SI*(1.0-FR)*Cexg_SI_IM
          - (1.0-SIS_SI)*LF_SI*Cexg_SI_IS)/V_SI_IS;
dxdt_Cexg_LI_IS = ((1.0-SV_LI)*LF_LI*Cexg_LI_V
          - CLup_LI*(1.0-FR)*Cexg_LI_IS
          + CLup_LI*(1.0-FR)*Cexg_LI_IM
          - (1.0-SIS_LI)*LF_LI*Cexg_LI_IS)/V_LI_IS;
dxdt_Cexg_Pancreas_IS = ((1.0-SV_Pancreas)*LF_Pancreas*Cexg_Pancreas_V
          - CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_IS
          + CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_IM
          - (1.0-SIS_Pancreas)*LF_Pancreas*Cexg_Pancreas_IS)/V_Pancreas_IS;
dxdt_Cexg_Thymus_IS = ((1.0-SV_Thymus)*LF_Thymus*Cexg_Thymus_V
          - CLup_Thymus*(1.0-FR)*Cexg_Thymus_IS
          + CLup_Thymus*(1.0-FR)*Cexg_Thymus_IM
          - (1.0-SIS_Thymus)*LF_Thymus*Cexg_Thymus_IS)/V_Thymus_IS;
dxdt_Cexg_Spleen_IS = ((1.0-SV_Spleen)*LF_Spleen*Cexg_Spleen_V
          - CLup_Spleen*(1.0-FR)*Cexg_Spleen_IS
          + CLup_Spleen*(1.0-FR)*Cexg_Spleen_IM
          - (1.0-SIS_Spleen)*LF_Spleen*Cexg_Spleen_IS)/V_Spleen_IS;
dxdt_Cexg_Other_IS = ((1.0-SV_Other)*LF_Other*Cexg_Other_V
          - CLup_Other*(1.0-FR)*Cexg_Other_IS
          + CLup_Other*(1.0-FR)*Cexg_Other_IM
          - (1.0-SIS_Other)*LF_Other*Cexg_Other_IS)/V_Other_IS;
//;;;;;;;;;;;;;;;; For FcRn-IgG (bounded)
dxdt_Cexg_Lung_bVM = (k_on_7_EXG*Cexg_Lung_VM*CFcRn_Lung_VM*V_Lung_VM
          - k_off_7_EXG*Cexg_Lung_bVM*V_Lung_VM
          - k_on_7_EXG2*Cexg_Lung_bVM*CFcRn_Lung_VM*V_Lung_VM
          + k_off_7_EXG2*Cexg_Lung_b2VM*V_Lung_VM
          - CLup_Lung*FR*Cexg_Lung_bVM
          + CLup_Lung*FR*Cexg_Lung_bE7b
          - kdeg_FcRn_Ab*Cexg_Lung_bVM*V_Lung_VM)/V_Lung_VM;
dxdt_Cexg_Liver_bVM = (k_on_7_EXG*Cexg_Liver_VM*CFcRn_Liver_VM*V_Liver_VM
          - k_off_7_EXG*Cexg_Liver_bVM*V_Liver_VM
          - k_on_7_EXG2*Cexg_Liver_bVM*CFcRn_Liver_VM*V_Liver_VM
          + k_off_7_EXG2*Cexg_Liver_b2VM*V_Liver_VM
          - CLup_Liver*FR*Cexg_Liver_bVM
          + CLup_Liver*FR*Cexg_Liver_bE7b
          - kdeg_FcRn_Ab*Cexg_Liver_bVM*V_Liver_VM)/V_Liver_VM;
dxdt_Cexg_Heart_bVM = (k_on_7_EXG*Cexg_Heart_VM*CFcRn_Heart_VM*V_Heart_VM
          - k_off_7_EXG*Cexg_Heart_bVM*V_Heart_VM
          - k_on_7_EXG2*Cexg_Heart_bVM*CFcRn_Heart_VM*V_Heart_VM
          + k_off_7_EXG2*Cexg_Heart_b2VM*V_Heart_VM
          - CLup_Heart*FR*Cexg_Heart_bVM
          + CLup_Heart*FR*Cexg_Heart_bE7b
          - kdeg_FcRn_Ab*Cexg_Heart_bVM*V_Heart_VM)/V_Heart_VM;
dxdt_Cexg_Muscle_bVM = (k_on_7_EXG*Cexg_Muscle_VM*CFcRn_Muscle_VM*V_Muscle_VM
          - k_off_7_EXG*Cexg_Muscle_bVM*V_Muscle_VM
          - k_on_7_EXG2*Cexg_Muscle_bVM*CFcRn_Muscle_VM*V_Muscle_VM
          + k_off_7_EXG2*Cexg_Muscle_b2VM*V_Muscle_VM
          - CLup_Muscle*FR*Cexg_Muscle_bVM
          + CLup_Muscle*FR*Cexg_Muscle_bE7b
          - kdeg_FcRn_Ab*Cexg_Muscle_bVM*V_Muscle_VM)/V_Muscle_VM;
dxdt_Cexg_Skin_bVM = (k_on_7_EXG*Cexg_Skin_VM*CFcRn_Skin_VM*V_Skin_VM
          - k_off_7_EXG*Cexg_Skin_bVM*V_Skin_VM
          - k_on_7_EXG2*Cexg_Skin_bVM*CFcRn_Skin_VM*V_Skin_VM
          + k_off_7_EXG2*Cexg_Skin_b2VM*V_Skin_VM
          - CLup_Skin*FR*Cexg_Skin_bVM
          + CLup_Skin*FR*Cexg_Skin_bE7b
          - kdeg_FcRn_Ab*Cexg_Skin_bVM*V_Skin_VM)/V_Skin_VM;
dxdt_Cexg_Adipose_bVM = (k_on_7_EXG*Cexg_Adipose_VM*CFcRn_Adipose_VM*V_Adipose_VM
          - k_off_7_EXG*Cexg_Adipose_bVM*V_Adipose_VM
          - k_on_7_EXG2*Cexg_Adipose_bVM*CFcRn_Adipose_VM*V_Adipose_VM
          + k_off_7_EXG2*Cexg_Adipose_b2VM*V_Adipose_VM
          - CLup_Adipose*FR*Cexg_Adipose_bVM
          + CLup_Adipose*FR*Cexg_Adipose_bE7b
          - kdeg_FcRn_Ab*Cexg_Adipose_bVM*V_Adipose_VM)/V_Adipose_VM;
dxdt_Cexg_Bone_bVM = (k_on_7_EXG*Cexg_Bone_VM*CFcRn_Bone_VM*V_Bone_VM
          - k_off_7_EXG*Cexg_Bone_bVM*V_Bone_VM
          - k_on_7_EXG2*Cexg_Bone_bVM*CFcRn_Bone_VM*V_Bone_VM
          + k_off_7_EXG2*Cexg_Bone_b2VM*V_Bone_VM
          - CLup_Bone*FR*Cexg_Bone_bVM
          + CLup_Bone*FR*Cexg_Bone_bE7b
          - kdeg_FcRn_Ab*Cexg_Bone_bVM*V_Bone_VM)/V_Bone_VM;
dxdt_Cexg_Brain_bVM = (k_on_7_EXG*Cexg_Brain_VM*CFcRn_Brain_VM*V_Brain_VM
          - k_off_7_EXG*Cexg_Brain_bVM*V_Brain_VM
          - k_on_7_EXG2*Cexg_Brain_bVM*CFcRn_Brain_VM*V_Brain_VM
          + k_off_7_EXG2*Cexg_Brain_b2VM*V_Brain_VM
          - CLup_Brain*FR*Cexg_Brain_bVM
          + CLup_Brain*FR*Cexg_Brain_bE7b
          - kdeg_FcRn_Ab*Cexg_Brain_bVM*V_Brain_VM)/V_Brain_VM;
dxdt_Cexg_Kidney_bVM = (k_on_7_EXG*Cexg_Kidney_VM*CFcRn_Kidney_VM*V_Kidney_VM
          - k_off_7_EXG*Cexg_Kidney_bVM*V_Kidney_VM
          - k_on_7_EXG2*Cexg_Kidney_bVM*CFcRn_Kidney_VM*V_Kidney_VM
          + k_off_7_EXG2*Cexg_Kidney_b2VM*V_Kidney_VM
          - CLup_Kidney*FR*Cexg_Kidney_bVM
          + CLup_Kidney*FR*Cexg_Kidney_bE7b
          - kdeg_FcRn_Ab*Cexg_Kidney_bVM*V_Kidney_VM)/V_Kidney_VM;
dxdt_Cexg_SI_bVM = (k_on_7_EXG*Cexg_SI_VM*CFcRn_SI_VM*V_SI_VM
          - k_off_7_EXG*Cexg_SI_bVM*V_SI_VM
          - k_on_7_EXG2*Cexg_SI_bVM*CFcRn_SI_VM*V_SI_VM
          + k_off_7_EXG2*Cexg_SI_b2VM*V_SI_VM
          - CLup_SI*FR*Cexg_SI_bVM
          + CLup_SI*FR*Cexg_SI_bE7b
          - kdeg_FcRn_Ab*Cexg_SI_bVM*V_SI_VM)/V_SI_VM;
dxdt_Cexg_LI_bVM = (k_on_7_EXG*Cexg_LI_VM*CFcRn_LI_VM*V_LI_VM
          - k_off_7_EXG*Cexg_LI_bVM*V_LI_VM
          - k_on_7_EXG2*Cexg_LI_bVM*CFcRn_LI_VM*V_LI_VM
          + k_off_7_EXG2*Cexg_LI_b2VM*V_LI_VM
          - CLup_LI*FR*Cexg_LI_bVM
          + CLup_LI*FR*Cexg_LI_bE7b
          - kdeg_FcRn_Ab*Cexg_LI_bVM*V_LI_VM)/V_LI_VM;
dxdt_Cexg_Pancreas_bVM = (k_on_7_EXG*Cexg_Pancreas_VM*CFcRn_Pancreas_VM*V_Pancreas_VM
          - k_off_7_EXG*Cexg_Pancreas_bVM*V_Pancreas_VM
          - k_on_7_EXG2*Cexg_Pancreas_bVM*CFcRn_Pancreas_VM*V_Pancreas_VM
          + k_off_7_EXG2*Cexg_Pancreas_b2VM*V_Pancreas_VM
          - CLup_Pancreas*FR*Cexg_Pancreas_bVM
          + CLup_Pancreas*FR*Cexg_Pancreas_bE7b
          - kdeg_FcRn_Ab*Cexg_Pancreas_bVM*V_Pancreas_VM)/V_Pancreas_VM;
dxdt_Cexg_Thymus_bVM = (k_on_7_EXG*Cexg_Thymus_VM*CFcRn_Thymus_VM*V_Thymus_VM
          - k_off_7_EXG*Cexg_Thymus_bVM*V_Thymus_VM
          - k_on_7_EXG2*Cexg_Thymus_bVM*CFcRn_Thymus_VM*V_Thymus_VM
          + k_off_7_EXG2*Cexg_Thymus_b2VM*V_Thymus_VM
          - CLup_Thymus*FR*Cexg_Thymus_bVM
          + CLup_Thymus*FR*Cexg_Thymus_bE7b
          - kdeg_FcRn_Ab*Cexg_Thymus_bVM*V_Thymus_VM)/V_Thymus_VM;
dxdt_Cexg_Spleen_bVM = (k_on_7_EXG*Cexg_Spleen_VM*CFcRn_Spleen_VM*V_Spleen_VM
          - k_off_7_EXG*Cexg_Spleen_bVM*V_Spleen_VM
          - k_on_7_EXG2*Cexg_Spleen_bVM*CFcRn_Spleen_VM*V_Spleen_VM
          + k_off_7_EXG2*Cexg_Spleen_b2VM*V_Spleen_VM
          - CLup_Spleen*FR*Cexg_Spleen_bVM
          + CLup_Spleen*FR*Cexg_Spleen_bE7b
          - kdeg_FcRn_Ab*Cexg_Spleen_bVM*V_Spleen_VM)/V_Spleen_VM;
dxdt_Cexg_Other_bVM = (k_on_7_EXG*Cexg_Other_VM*CFcRn_Other_VM*V_Other_VM
          - k_off_7_EXG*Cexg_Other_bVM*V_Other_VM
          - k_on_7_EXG2*Cexg_Other_bVM*CFcRn_Other_VM*V_Other_VM
          + k_off_7_EXG2*Cexg_Other_b2VM*V_Other_VM
          - CLup_Other*FR*Cexg_Other_bVM
          + CLup_Other*FR*Cexg_Other_bE7b
          - kdeg_FcRn_Ab*Cexg_Other_bVM*V_Other_VM)/V_Other_VM;
dxdt_Cexg_Lung_b2VM = (k_on_7_EXG2 * Cexg_Lung_bVM*CFcRn_Lung_VM*V_Lung_VM
          - k_off_7_EXG2 * Cexg_Lung_b2VM*V_Lung_VM
          - CLup_Lung*FR*Cexg_Lung_b2VM
          + CLup_Lung*FR*Cexg_Lung_b2E7b
          - kdeg_FcRn_Ab*Cexg_Lung_b2VM*V_Lung_VM)/V_Lung_VM;
dxdt_Cexg_Liver_b2VM = (k_on_7_EXG2 * Cexg_Liver_bVM*CFcRn_Liver_VM*V_Liver_VM
          - k_off_7_EXG2 * Cexg_Liver_b2VM*V_Liver_VM
          - CLup_Liver*FR*Cexg_Liver_b2VM
          + CLup_Liver*FR*Cexg_Liver_b2E7b
          - kdeg_FcRn_Ab*Cexg_Liver_b2VM*V_Liver_VM)/V_Liver_VM;
dxdt_Cexg_Heart_b2VM = (k_on_7_EXG2 * Cexg_Heart_bVM*CFcRn_Heart_VM*V_Heart_VM
          - k_off_7_EXG2 * Cexg_Heart_b2VM*V_Heart_VM
          - CLup_Heart*FR*Cexg_Heart_b2VM
          + CLup_Heart*FR*Cexg_Heart_b2E7b
          - kdeg_FcRn_Ab*Cexg_Heart_b2VM*V_Heart_VM)/V_Heart_VM;
dxdt_Cexg_Muscle_b2VM = (k_on_7_EXG2 * Cexg_Muscle_bVM*CFcRn_Muscle_VM*V_Muscle_VM
          - k_off_7_EXG2 * Cexg_Muscle_b2VM*V_Muscle_VM
          - CLup_Muscle*FR*Cexg_Muscle_b2VM
          + CLup_Muscle*FR*Cexg_Muscle_b2E7b
          - kdeg_FcRn_Ab*Cexg_Muscle_b2VM*V_Muscle_VM)/V_Muscle_VM;
dxdt_Cexg_Skin_b2VM = (k_on_7_EXG2 * Cexg_Skin_bVM*CFcRn_Skin_VM*V_Skin_VM
          - k_off_7_EXG2 * Cexg_Skin_b2VM*V_Skin_VM
          - CLup_Skin*FR*Cexg_Skin_b2VM
          + CLup_Skin*FR*Cexg_Skin_b2E7b
          - kdeg_FcRn_Ab*Cexg_Skin_b2VM*V_Skin_VM)/V_Skin_VM;
dxdt_Cexg_Adipose_b2VM = (k_on_7_EXG2 * Cexg_Adipose_bVM*CFcRn_Adipose_VM*V_Adipose_VM
          - k_off_7_EXG2 * Cexg_Adipose_b2VM*V_Adipose_VM
          - CLup_Adipose*FR*Cexg_Adipose_b2VM
          + CLup_Adipose*FR*Cexg_Adipose_b2E7b
          - kdeg_FcRn_Ab*Cexg_Adipose_b2VM*V_Adipose_VM)/V_Adipose_VM;
dxdt_Cexg_Bone_b2VM = (k_on_7_EXG2 * Cexg_Bone_bVM*CFcRn_Bone_VM*V_Bone_VM
          - k_off_7_EXG2 * Cexg_Bone_b2VM*V_Bone_VM
          - CLup_Bone*FR*Cexg_Bone_b2VM
          + CLup_Bone*FR*Cexg_Bone_b2E7b
          - kdeg_FcRn_Ab*Cexg_Bone_b2VM*V_Bone_VM)/V_Bone_VM;
dxdt_Cexg_Brain_b2VM = (k_on_7_EXG2 * Cexg_Brain_bVM*CFcRn_Brain_VM*V_Brain_VM
          - k_off_7_EXG2 * Cexg_Brain_b2VM*V_Brain_VM
          - CLup_Brain*FR*Cexg_Brain_b2VM
          + CLup_Brain*FR*Cexg_Brain_b2E7b
          - kdeg_FcRn_Ab*Cexg_Brain_b2VM*V_Brain_VM)/V_Brain_VM;
dxdt_Cexg_Kidney_b2VM = (k_on_7_EXG2 * Cexg_Kidney_bVM*CFcRn_Kidney_VM*V_Kidney_VM
          - k_off_7_EXG2 * Cexg_Kidney_b2VM*V_Kidney_VM
          - CLup_Kidney*FR*Cexg_Kidney_b2VM
          + CLup_Kidney*FR*Cexg_Kidney_b2E7b
          - kdeg_FcRn_Ab*Cexg_Kidney_b2VM*V_Kidney_VM)/V_Kidney_VM;
dxdt_Cexg_SI_b2VM = (k_on_7_EXG2 * Cexg_SI_bVM*CFcRn_SI_VM*V_SI_VM
          - k_off_7_EXG2 * Cexg_SI_b2VM*V_SI_VM
          - CLup_SI*FR*Cexg_SI_b2VM
          + CLup_SI*FR*Cexg_SI_b2E7b
          - kdeg_FcRn_Ab*Cexg_SI_b2VM*V_SI_VM)/V_SI_VM;
dxdt_Cexg_LI_b2VM = (k_on_7_EXG2 * Cexg_LI_bVM*CFcRn_LI_VM*V_LI_VM
          - k_off_7_EXG2 * Cexg_LI_b2VM*V_LI_VM
          - CLup_LI*FR*Cexg_LI_b2VM
          + CLup_LI*FR*Cexg_LI_b2E7b
          - kdeg_FcRn_Ab*Cexg_LI_b2VM*V_LI_VM)/V_LI_VM;
dxdt_Cexg_Pancreas_b2VM = (k_on_7_EXG2 * Cexg_Pancreas_bVM*CFcRn_Pancreas_VM*V_Pancreas_VM
          - k_off_7_EXG2 * Cexg_Pancreas_b2VM*V_Pancreas_VM
          - CLup_Pancreas*FR*Cexg_Pancreas_b2VM
          + CLup_Pancreas*FR*Cexg_Pancreas_b2E7b
          - kdeg_FcRn_Ab*Cexg_Pancreas_b2VM*V_Pancreas_VM)/V_Pancreas_VM;
dxdt_Cexg_Thymus_b2VM = (k_on_7_EXG2 * Cexg_Thymus_bVM*CFcRn_Thymus_VM*V_Thymus_VM
          - k_off_7_EXG2 * Cexg_Thymus_b2VM*V_Thymus_VM
          - CLup_Thymus*FR*Cexg_Thymus_b2VM
          + CLup_Thymus*FR*Cexg_Thymus_b2E7b
          - kdeg_FcRn_Ab*Cexg_Thymus_b2VM*V_Thymus_VM)/V_Thymus_VM;
dxdt_Cexg_Spleen_b2VM = (k_on_7_EXG2 * Cexg_Spleen_bVM*CFcRn_Spleen_VM*V_Spleen_VM
          - k_off_7_EXG2 * Cexg_Spleen_b2VM*V_Spleen_VM
          - CLup_Spleen*FR*Cexg_Spleen_b2VM
          + CLup_Spleen*FR*Cexg_Spleen_b2E7b
          - kdeg_FcRn_Ab*Cexg_Spleen_b2VM*V_Spleen_VM)/V_Spleen_VM;
dxdt_Cexg_Other_b2VM = (k_on_7_EXG2 * Cexg_Other_bVM*CFcRn_Other_VM*V_Other_VM
          - k_off_7_EXG2 * Cexg_Other_b2VM*V_Other_VM
          - CLup_Other*FR*Cexg_Other_b2VM
          + CLup_Other*FR*Cexg_Other_b2E7b
          - kdeg_FcRn_Ab*Cexg_Other_b2VM*V_Other_VM)/V_Other_VM;
//;; endosomal space
dxdt_Cexg_Lung_bE7 = (k_on_7_EXG*Cexg_Lung_E7*CFcRn_Lung_E7*V_Lung_E7
          - k_off_7_EXG*Cexg_Lung_bE7*V_Lung_E7
          - k_on_7_EXG2*Cexg_Lung_bE7*CFcRn_Lung_E7*V_Lung_E7
          + k_off_7_EXG2*Cexg_Lung_b2E7*V_Lung_E7
          - CLup_Lung*Cexg_Lung_bE7
          + CLup_Lung*FR*Cexg_Lung_bVM
          + CLup_Lung*(1.0-FR)*Cexg_Lung_bIM)/V_Lung_E7;
dxdt_Cexg_Liver_bE7 = (k_on_7_EXG*Cexg_Liver_E7*CFcRn_Liver_E7*V_Liver_E7
          - k_off_7_EXG*Cexg_Liver_bE7*V_Liver_E7
          - k_on_7_EXG2*Cexg_Liver_bE7*CFcRn_Liver_E7*V_Liver_E7
          + k_off_7_EXG2*Cexg_Liver_b2E7*V_Liver_E7
          - CLup_Liver*Cexg_Liver_bE7
          + CLup_Liver*FR*Cexg_Liver_bVM
          + CLup_Liver*(1.0-FR)*Cexg_Liver_bIM)/V_Liver_E7;
dxdt_Cexg_Heart_bE7 = (k_on_7_EXG*Cexg_Heart_E7*CFcRn_Heart_E7*V_Heart_E7
          - k_off_7_EXG*Cexg_Heart_bE7*V_Heart_E7
          - k_on_7_EXG2*Cexg_Heart_bE7*CFcRn_Heart_E7*V_Heart_E7
          + k_off_7_EXG2*Cexg_Heart_b2E7*V_Heart_E7
          - CLup_Heart*Cexg_Heart_bE7
          + CLup_Heart*FR*Cexg_Heart_bVM
          + CLup_Heart*(1.0-FR)*Cexg_Heart_bIM)/V_Heart_E7;
dxdt_Cexg_Muscle_bE7 = (k_on_7_EXG*Cexg_Muscle_E7*CFcRn_Muscle_E7*V_Muscle_E7
          - k_off_7_EXG*Cexg_Muscle_bE7*V_Muscle_E7
          - k_on_7_EXG2*Cexg_Muscle_bE7*CFcRn_Muscle_E7*V_Muscle_E7
          + k_off_7_EXG2*Cexg_Muscle_b2E7*V_Muscle_E7
          - CLup_Muscle*Cexg_Muscle_bE7
          + CLup_Muscle*FR*Cexg_Muscle_bVM
          + CLup_Muscle*(1.0-FR)*Cexg_Muscle_bIM)/V_Muscle_E7;
dxdt_Cexg_Skin_bE7 = (k_on_7_EXG*Cexg_Skin_E7*CFcRn_Skin_E7*V_Skin_E7
          - k_off_7_EXG*Cexg_Skin_bE7*V_Skin_E7
          - k_on_7_EXG2*Cexg_Skin_bE7*CFcRn_Skin_E7*V_Skin_E7
          + k_off_7_EXG2*Cexg_Skin_b2E7*V_Skin_E7
          - CLup_Skin*Cexg_Skin_bE7
          + CLup_Skin*FR*Cexg_Skin_bVM
          + CLup_Skin*(1.0-FR)*Cexg_Skin_bIM)/V_Skin_E7;
dxdt_Cexg_Adipose_bE7 = (k_on_7_EXG*Cexg_Adipose_E7*CFcRn_Adipose_E7*V_Adipose_E7
          - k_off_7_EXG*Cexg_Adipose_bE7*V_Adipose_E7
          - k_on_7_EXG2*Cexg_Adipose_bE7*CFcRn_Adipose_E7*V_Adipose_E7
          + k_off_7_EXG2*Cexg_Adipose_b2E7*V_Adipose_E7
          - CLup_Adipose*Cexg_Adipose_bE7
          + CLup_Adipose*FR*Cexg_Adipose_bVM
          + CLup_Adipose*(1.0-FR)*Cexg_Adipose_bIM)/V_Adipose_E7;
dxdt_Cexg_Bone_bE7 = (k_on_7_EXG*Cexg_Bone_E7*CFcRn_Bone_E7*V_Bone_E7
          - k_off_7_EXG*Cexg_Bone_bE7*V_Bone_E7
          - k_on_7_EXG2*Cexg_Bone_bE7*CFcRn_Bone_E7*V_Bone_E7
          + k_off_7_EXG2*Cexg_Bone_b2E7*V_Bone_E7
          - CLup_Bone*Cexg_Bone_bE7
          + CLup_Bone*FR*Cexg_Bone_bVM
          + CLup_Bone*(1.0-FR)*Cexg_Bone_bIM)/V_Bone_E7;
dxdt_Cexg_Brain_bE7 = (k_on_7_EXG*Cexg_Brain_E7*CFcRn_Brain_E7*V_Brain_E7
          - k_off_7_EXG*Cexg_Brain_bE7*V_Brain_E7
          - k_on_7_EXG2*Cexg_Brain_bE7*CFcRn_Brain_E7*V_Brain_E7
          + k_off_7_EXG2*Cexg_Brain_b2E7*V_Brain_E7
          - CLup_Brain*Cexg_Brain_bE7
          + CLup_Brain*FR*Cexg_Brain_bVM
          + CLup_Brain*(1.0-FR)*Cexg_Brain_bIM)/V_Brain_E7;
dxdt_Cexg_Kidney_bE7 = (k_on_7_EXG*Cexg_Kidney_E7*CFcRn_Kidney_E7*V_Kidney_E7
          - k_off_7_EXG*Cexg_Kidney_bE7*V_Kidney_E7
          - k_on_7_EXG2*Cexg_Kidney_bE7*CFcRn_Kidney_E7*V_Kidney_E7
          + k_off_7_EXG2*Cexg_Kidney_b2E7*V_Kidney_E7
          - CLup_Kidney*Cexg_Kidney_bE7
          + CLup_Kidney*FR*Cexg_Kidney_bVM
          + CLup_Kidney*(1.0-FR)*Cexg_Kidney_bIM)/V_Kidney_E7;
dxdt_Cexg_SI_bE7 = (k_on_7_EXG*Cexg_SI_E7*CFcRn_SI_E7*V_SI_E7
          - k_off_7_EXG*Cexg_SI_bE7*V_SI_E7
          - k_on_7_EXG2*Cexg_SI_bE7*CFcRn_SI_E7*V_SI_E7
          + k_off_7_EXG2*Cexg_SI_b2E7*V_SI_E7
          - CLup_SI*Cexg_SI_bE7
          + CLup_SI*FR*Cexg_SI_bVM
          + CLup_SI*(1.0-FR)*Cexg_SI_bIM)/V_SI_E7;
dxdt_Cexg_LI_bE7 = (k_on_7_EXG*Cexg_LI_E7*CFcRn_LI_E7*V_LI_E7
          - k_off_7_EXG*Cexg_LI_bE7*V_LI_E7
          - k_on_7_EXG2*Cexg_LI_bE7*CFcRn_LI_E7*V_LI_E7
          + k_off_7_EXG2*Cexg_LI_b2E7*V_LI_E7
          - CLup_LI*Cexg_LI_bE7
          + CLup_LI*FR*Cexg_LI_bVM
          + CLup_LI*(1.0-FR)*Cexg_LI_bIM)/V_LI_E7;
dxdt_Cexg_Pancreas_bE7 = (k_on_7_EXG*Cexg_Pancreas_E7*CFcRn_Pancreas_E7*V_Pancreas_E7
          - k_off_7_EXG*Cexg_Pancreas_bE7*V_Pancreas_E7
          - k_on_7_EXG2*Cexg_Pancreas_bE7*CFcRn_Pancreas_E7*V_Pancreas_E7
          + k_off_7_EXG2*Cexg_Pancreas_b2E7*V_Pancreas_E7
          - CLup_Pancreas*Cexg_Pancreas_bE7
          + CLup_Pancreas*FR*Cexg_Pancreas_bVM
          + CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_bIM)/V_Pancreas_E7;
dxdt_Cexg_Thymus_bE7 = (k_on_7_EXG*Cexg_Thymus_E7*CFcRn_Thymus_E7*V_Thymus_E7
          - k_off_7_EXG*Cexg_Thymus_bE7*V_Thymus_E7
          - k_on_7_EXG2*Cexg_Thymus_bE7*CFcRn_Thymus_E7*V_Thymus_E7
          + k_off_7_EXG2*Cexg_Thymus_b2E7*V_Thymus_E7
          - CLup_Thymus*Cexg_Thymus_bE7
          + CLup_Thymus*FR*Cexg_Thymus_bVM
          + CLup_Thymus*(1.0-FR)*Cexg_Thymus_bIM)/V_Thymus_E7;
dxdt_Cexg_Spleen_bE7 = (k_on_7_EXG*Cexg_Spleen_E7*CFcRn_Spleen_E7*V_Spleen_E7
          - k_off_7_EXG*Cexg_Spleen_bE7*V_Spleen_E7
          - k_on_7_EXG2*Cexg_Spleen_bE7*CFcRn_Spleen_E7*V_Spleen_E7
          + k_off_7_EXG2*Cexg_Spleen_b2E7*V_Spleen_E7
          - CLup_Spleen*Cexg_Spleen_bE7
          + CLup_Spleen*FR*Cexg_Spleen_bVM
          + CLup_Spleen*(1.0-FR)*Cexg_Spleen_bIM)/V_Spleen_E7;
dxdt_Cexg_Other_bE7 = (k_on_7_EXG*Cexg_Other_E7*CFcRn_Other_E7*V_Other_E7
          - k_off_7_EXG*Cexg_Other_bE7*V_Other_E7
          - k_on_7_EXG2*Cexg_Other_bE7*CFcRn_Other_E7*V_Other_E7
          + k_off_7_EXG2*Cexg_Other_b2E7*V_Other_E7
          - CLup_Other*Cexg_Other_bE7
          + CLup_Other*FR*Cexg_Other_bVM
          + CLup_Other*(1.0-FR)*Cexg_Other_bIM)/V_Other_E7;
dxdt_Cexg_Lung_b2E7 = (k_on_7_EXG2 * Cexg_Lung_bE7*CFcRn_Lung_E7*V_Lung_E7
          - k_off_7_EXG2 * Cexg_Lung_b2E7*V_Lung_E7
          - CLup_Lung*Cexg_Lung_b2E7
          + CLup_Lung*FR*Cexg_Lung_b2VM
          + CLup_Lung*(1.0-FR)*Cexg_Lung_b2IM)/V_Lung_E7;
dxdt_Cexg_Liver_b2E7 = (k_on_7_EXG2 * Cexg_Liver_bE7*CFcRn_Liver_E7*V_Liver_E7
          - k_off_7_EXG2 * Cexg_Liver_b2E7*V_Liver_E7
          - CLup_Liver*Cexg_Liver_b2E7
          + CLup_Liver*FR*Cexg_Liver_b2VM
          + CLup_Liver*(1.0-FR)*Cexg_Liver_b2IM)/V_Liver_E7;
dxdt_Cexg_Heart_b2E7 = (k_on_7_EXG2 * Cexg_Heart_bE7*CFcRn_Heart_E7*V_Heart_E7
          - k_off_7_EXG2 * Cexg_Heart_b2E7*V_Heart_E7
          - CLup_Heart*Cexg_Heart_b2E7
          + CLup_Heart*FR*Cexg_Heart_b2VM
          + CLup_Heart*(1.0-FR)*Cexg_Heart_b2IM)/V_Heart_E7;
dxdt_Cexg_Muscle_b2E7 = (k_on_7_EXG2 * Cexg_Muscle_bE7*CFcRn_Muscle_E7*V_Muscle_E7
          - k_off_7_EXG2 * Cexg_Muscle_b2E7*V_Muscle_E7
          - CLup_Muscle*Cexg_Muscle_b2E7
          + CLup_Muscle*FR*Cexg_Muscle_b2VM
          + CLup_Muscle*(1.0-FR)*Cexg_Muscle_b2IM)/V_Muscle_E7;
dxdt_Cexg_Skin_b2E7 = (k_on_7_EXG2 * Cexg_Skin_bE7*CFcRn_Skin_E7*V_Skin_E7
          - k_off_7_EXG2 * Cexg_Skin_b2E7*V_Skin_E7
          - CLup_Skin*Cexg_Skin_b2E7
          + CLup_Skin*FR*Cexg_Skin_b2VM
          + CLup_Skin*(1.0-FR)*Cexg_Skin_b2IM)/V_Skin_E7;
dxdt_Cexg_Adipose_b2E7 = (k_on_7_EXG2 * Cexg_Adipose_bE7*CFcRn_Adipose_E7*V_Adipose_E7
          - k_off_7_EXG2 * Cexg_Adipose_b2E7*V_Adipose_E7
          - CLup_Adipose*Cexg_Adipose_b2E7
          + CLup_Adipose*FR*Cexg_Adipose_b2VM
          + CLup_Adipose*(1.0-FR)*Cexg_Adipose_b2IM)/V_Adipose_E7;
dxdt_Cexg_Bone_b2E7 = (k_on_7_EXG2 * Cexg_Bone_bE7*CFcRn_Bone_E7*V_Bone_E7
          - k_off_7_EXG2 * Cexg_Bone_b2E7*V_Bone_E7
          - CLup_Bone*Cexg_Bone_b2E7
          + CLup_Bone*FR*Cexg_Bone_b2VM
          + CLup_Bone*(1.0-FR)*Cexg_Bone_b2IM)/V_Bone_E7;
dxdt_Cexg_Brain_b2E7 = (k_on_7_EXG2 * Cexg_Brain_bE7*CFcRn_Brain_E7*V_Brain_E7
          - k_off_7_EXG2 * Cexg_Brain_b2E7*V_Brain_E7
          - CLup_Brain*Cexg_Brain_b2E7
          + CLup_Brain*FR*Cexg_Brain_b2VM
          + CLup_Brain*(1.0-FR)*Cexg_Brain_b2IM)/V_Brain_E7;
dxdt_Cexg_Kidney_b2E7 = (k_on_7_EXG2 * Cexg_Kidney_bE7*CFcRn_Kidney_E7*V_Kidney_E7
          - k_off_7_EXG2 * Cexg_Kidney_b2E7*V_Kidney_E7
          - CLup_Kidney*Cexg_Kidney_b2E7
          + CLup_Kidney*FR*Cexg_Kidney_b2VM
          + CLup_Kidney*(1.0-FR)*Cexg_Kidney_b2IM)/V_Kidney_E7;
dxdt_Cexg_SI_b2E7 = (k_on_7_EXG2 * Cexg_SI_bE7*CFcRn_SI_E7*V_SI_E7
          - k_off_7_EXG2 * Cexg_SI_b2E7*V_SI_E7
          - CLup_SI*Cexg_SI_b2E7
          + CLup_SI*FR*Cexg_SI_b2VM
          + CLup_SI*(1.0-FR)*Cexg_SI_b2IM)/V_SI_E7;
dxdt_Cexg_LI_b2E7 = (k_on_7_EXG2 * Cexg_LI_bE7*CFcRn_LI_E7*V_LI_E7
          - k_off_7_EXG2 * Cexg_LI_b2E7*V_LI_E7
          - CLup_LI*Cexg_LI_b2E7
          + CLup_LI*FR*Cexg_LI_b2VM
          + CLup_LI*(1.0-FR)*Cexg_LI_b2IM)/V_LI_E7;
dxdt_Cexg_Pancreas_b2E7 = (k_on_7_EXG2 * Cexg_Pancreas_bE7*CFcRn_Pancreas_E7*V_Pancreas_E7
          - k_off_7_EXG2 * Cexg_Pancreas_b2E7*V_Pancreas_E7
          - CLup_Pancreas*Cexg_Pancreas_b2E7
          + CLup_Pancreas*FR*Cexg_Pancreas_b2VM
          + CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_b2IM)/V_Pancreas_E7;
dxdt_Cexg_Thymus_b2E7 = (k_on_7_EXG2 * Cexg_Thymus_bE7*CFcRn_Thymus_E7*V_Thymus_E7
          - k_off_7_EXG2 * Cexg_Thymus_b2E7*V_Thymus_E7
          - CLup_Thymus*Cexg_Thymus_b2E7
          + CLup_Thymus*FR*Cexg_Thymus_b2VM
          + CLup_Thymus*(1.0-FR)*Cexg_Thymus_b2IM)/V_Thymus_E7;
dxdt_Cexg_Spleen_b2E7 = (k_on_7_EXG2 * Cexg_Spleen_bE7*CFcRn_Spleen_E7*V_Spleen_E7
          - k_off_7_EXG2 * Cexg_Spleen_b2E7*V_Spleen_E7
          - CLup_Spleen*Cexg_Spleen_b2E7
          + CLup_Spleen*FR*Cexg_Spleen_b2VM
          + CLup_Spleen*(1.0-FR)*Cexg_Spleen_b2IM)/V_Spleen_E7;
dxdt_Cexg_Other_b2E7 = (k_on_7_EXG2 * Cexg_Other_bE7*CFcRn_Other_E7*V_Other_E7
          - k_off_7_EXG2 * Cexg_Other_b2E7*V_Other_E7
          - CLup_Other*Cexg_Other_b2E7
          + CLup_Other*FR*Cexg_Other_b2VM
          + CLup_Other*(1.0-FR)*Cexg_Other_b2IM)/V_Other_E7;
//;; endosomal pH=6 a
dxdt_Cexg_Lung_bE6a = (k_on_6_EXG*Cexg_Lung_E6a*CFcRn_Lung_E6a*V_Lung_E6a
          - k_off_6_EXG*Cexg_Lung_bE6a*V_Lung_E6a
          - k_on_6_EXG2*Cexg_Lung_bE6a*CFcRn_Lung_E6a*V_Lung_E6a
          + k_off_6_EXG2*Cexg_Lung_b2E6a*V_Lung_E6a
          + CLup_Lung*Cexg_Lung_bE7
          - CLup_Lung*Cexg_Lung_bE6a)/V_Lung_E6a;
dxdt_Cexg_Liver_bE6a = (k_on_6_EXG*Cexg_Liver_E6a*CFcRn_Liver_E6a*V_Liver_E6a
          - k_off_6_EXG*Cexg_Liver_bE6a*V_Liver_E6a
          - k_on_6_EXG2*Cexg_Liver_bE6a*CFcRn_Liver_E6a*V_Liver_E6a
          + k_off_6_EXG2*Cexg_Liver_b2E6a*V_Liver_E6a
          + CLup_Liver*Cexg_Liver_bE7
          - CLup_Liver*Cexg_Liver_bE6a)/V_Liver_E6a;
dxdt_Cexg_Heart_bE6a = (k_on_6_EXG*Cexg_Heart_E6a*CFcRn_Heart_E6a*V_Heart_E6a
          - k_off_6_EXG*Cexg_Heart_bE6a*V_Heart_E6a
          - k_on_6_EXG2*Cexg_Heart_bE6a*CFcRn_Heart_E6a*V_Heart_E6a
          + k_off_6_EXG2*Cexg_Heart_b2E6a*V_Heart_E6a
          + CLup_Heart*Cexg_Heart_bE7
          - CLup_Heart*Cexg_Heart_bE6a)/V_Heart_E6a;
dxdt_Cexg_Muscle_bE6a = (k_on_6_EXG*Cexg_Muscle_E6a*CFcRn_Muscle_E6a*V_Muscle_E6a
          - k_off_6_EXG*Cexg_Muscle_bE6a*V_Muscle_E6a
          - k_on_6_EXG2*Cexg_Muscle_bE6a*CFcRn_Muscle_E6a*V_Muscle_E6a
          + k_off_6_EXG2*Cexg_Muscle_b2E6a*V_Muscle_E6a
          + CLup_Muscle*Cexg_Muscle_bE7
          - CLup_Muscle*Cexg_Muscle_bE6a)/V_Muscle_E6a;
dxdt_Cexg_Skin_bE6a = (k_on_6_EXG*Cexg_Skin_E6a*CFcRn_Skin_E6a*V_Skin_E6a
          - k_off_6_EXG*Cexg_Skin_bE6a*V_Skin_E6a
          - k_on_6_EXG2*Cexg_Skin_bE6a*CFcRn_Skin_E6a*V_Skin_E6a
          + k_off_6_EXG2*Cexg_Skin_b2E6a*V_Skin_E6a
          + CLup_Skin*Cexg_Skin_bE7
          - CLup_Skin*Cexg_Skin_bE6a)/V_Skin_E6a;
dxdt_Cexg_Adipose_bE6a = (k_on_6_EXG*Cexg_Adipose_E6a*CFcRn_Adipose_E6a*V_Adipose_E6a
          - k_off_6_EXG*Cexg_Adipose_bE6a*V_Adipose_E6a
          - k_on_6_EXG2*Cexg_Adipose_bE6a*CFcRn_Adipose_E6a*V_Adipose_E6a
          + k_off_6_EXG2*Cexg_Adipose_b2E6a*V_Adipose_E6a
          + CLup_Adipose*Cexg_Adipose_bE7
          - CLup_Adipose*Cexg_Adipose_bE6a)/V_Adipose_E6a;
dxdt_Cexg_Bone_bE6a = (k_on_6_EXG*Cexg_Bone_E6a*CFcRn_Bone_E6a*V_Bone_E6a
          - k_off_6_EXG*Cexg_Bone_bE6a*V_Bone_E6a
          - k_on_6_EXG2*Cexg_Bone_bE6a*CFcRn_Bone_E6a*V_Bone_E6a
          + k_off_6_EXG2*Cexg_Bone_b2E6a*V_Bone_E6a
          + CLup_Bone*Cexg_Bone_bE7
          - CLup_Bone*Cexg_Bone_bE6a)/V_Bone_E6a;
dxdt_Cexg_Brain_bE6a = (k_on_6_EXG*Cexg_Brain_E6a*CFcRn_Brain_E6a*V_Brain_E6a
          - k_off_6_EXG*Cexg_Brain_bE6a*V_Brain_E6a
          - k_on_6_EXG2*Cexg_Brain_bE6a*CFcRn_Brain_E6a*V_Brain_E6a
          + k_off_6_EXG2*Cexg_Brain_b2E6a*V_Brain_E6a
          + CLup_Brain*Cexg_Brain_bE7
          - CLup_Brain*Cexg_Brain_bE6a)/V_Brain_E6a;
dxdt_Cexg_Kidney_bE6a = (k_on_6_EXG*Cexg_Kidney_E6a*CFcRn_Kidney_E6a*V_Kidney_E6a
          - k_off_6_EXG*Cexg_Kidney_bE6a*V_Kidney_E6a
          - k_on_6_EXG2*Cexg_Kidney_bE6a*CFcRn_Kidney_E6a*V_Kidney_E6a
          + k_off_6_EXG2*Cexg_Kidney_b2E6a*V_Kidney_E6a
          + CLup_Kidney*Cexg_Kidney_bE7
          - CLup_Kidney*Cexg_Kidney_bE6a)/V_Kidney_E6a;
dxdt_Cexg_SI_bE6a = (k_on_6_EXG*Cexg_SI_E6a*CFcRn_SI_E6a*V_SI_E6a
          - k_off_6_EXG*Cexg_SI_bE6a*V_SI_E6a
          - k_on_6_EXG2*Cexg_SI_bE6a*CFcRn_SI_E6a*V_SI_E6a
          + k_off_6_EXG2*Cexg_SI_b2E6a*V_SI_E6a
          + CLup_SI*Cexg_SI_bE7
          - CLup_SI*Cexg_SI_bE6a)/V_SI_E6a;
dxdt_Cexg_LI_bE6a = (k_on_6_EXG*Cexg_LI_E6a*CFcRn_LI_E6a*V_LI_E6a
          - k_off_6_EXG*Cexg_LI_bE6a*V_LI_E6a
          - k_on_6_EXG2*Cexg_LI_bE6a*CFcRn_LI_E6a*V_LI_E6a
          + k_off_6_EXG2*Cexg_LI_b2E6a*V_LI_E6a
          + CLup_LI*Cexg_LI_bE7
          - CLup_LI*Cexg_LI_bE6a)/V_LI_E6a;
dxdt_Cexg_Pancreas_bE6a = (k_on_6_EXG*Cexg_Pancreas_E6a*CFcRn_Pancreas_E6a*V_Pancreas_E6a
          - k_off_6_EXG*Cexg_Pancreas_bE6a*V_Pancreas_E6a
          - k_on_6_EXG2*Cexg_Pancreas_bE6a*CFcRn_Pancreas_E6a*V_Pancreas_E6a
          + k_off_6_EXG2*Cexg_Pancreas_b2E6a*V_Pancreas_E6a
          + CLup_Pancreas*Cexg_Pancreas_bE7
          - CLup_Pancreas*Cexg_Pancreas_bE6a)/V_Pancreas_E6a;
dxdt_Cexg_Thymus_bE6a = (k_on_6_EXG*Cexg_Thymus_E6a*CFcRn_Thymus_E6a*V_Thymus_E6a
          - k_off_6_EXG*Cexg_Thymus_bE6a*V_Thymus_E6a
          - k_on_6_EXG2*Cexg_Thymus_bE6a*CFcRn_Thymus_E6a*V_Thymus_E6a
          + k_off_6_EXG2*Cexg_Thymus_b2E6a*V_Thymus_E6a
          + CLup_Thymus*Cexg_Thymus_bE7
          - CLup_Thymus*Cexg_Thymus_bE6a)/V_Thymus_E6a;
dxdt_Cexg_Spleen_bE6a = (k_on_6_EXG*Cexg_Spleen_E6a*CFcRn_Spleen_E6a*V_Spleen_E6a
          - k_off_6_EXG*Cexg_Spleen_bE6a*V_Spleen_E6a
          - k_on_6_EXG2*Cexg_Spleen_bE6a*CFcRn_Spleen_E6a*V_Spleen_E6a
          + k_off_6_EXG2*Cexg_Spleen_b2E6a*V_Spleen_E6a
          + CLup_Spleen*Cexg_Spleen_bE7
          - CLup_Spleen*Cexg_Spleen_bE6a)/V_Spleen_E6a;
dxdt_Cexg_Other_bE6a = (k_on_6_EXG*Cexg_Other_E6a*CFcRn_Other_E6a*V_Other_E6a
          - k_off_6_EXG*Cexg_Other_bE6a*V_Other_E6a
          - k_on_6_EXG2*Cexg_Other_bE6a*CFcRn_Other_E6a*V_Other_E6a
          + k_off_6_EXG2*Cexg_Other_b2E6a*V_Other_E6a
          + CLup_Other*Cexg_Other_bE7
          - CLup_Other*Cexg_Other_bE6a)/V_Other_E6a;
dxdt_Cexg_Lung_b2E6a = (k_on_6_EXG2*Cexg_Lung_bE6a*CFcRn_Lung_E6a*V_Lung_E6a
          - k_off_6_EXG2*Cexg_Lung_b2E6a*V_Lung_E6a
          + CLup_Lung*Cexg_Lung_b2E7
          - CLup_Lung*Cexg_Lung_b2E6a)/V_Lung_E6a;
dxdt_Cexg_Liver_b2E6a = (k_on_6_EXG2*Cexg_Liver_bE6a*CFcRn_Liver_E6a*V_Liver_E6a
          - k_off_6_EXG2*Cexg_Liver_b2E6a*V_Liver_E6a
          + CLup_Liver*Cexg_Liver_b2E7
          - CLup_Liver*Cexg_Liver_b2E6a)/V_Liver_E6a;
dxdt_Cexg_Heart_b2E6a = (k_on_6_EXG2*Cexg_Heart_bE6a*CFcRn_Heart_E6a*V_Heart_E6a
          - k_off_6_EXG2*Cexg_Heart_b2E6a*V_Heart_E6a
          + CLup_Heart*Cexg_Heart_b2E7
          - CLup_Heart*Cexg_Heart_b2E6a)/V_Heart_E6a;
dxdt_Cexg_Muscle_b2E6a = (k_on_6_EXG2*Cexg_Muscle_bE6a*CFcRn_Muscle_E6a*V_Muscle_E6a
          - k_off_6_EXG2*Cexg_Muscle_b2E6a*V_Muscle_E6a
          + CLup_Muscle*Cexg_Muscle_b2E7
          - CLup_Muscle*Cexg_Muscle_b2E6a)/V_Muscle_E6a;
dxdt_Cexg_Skin_b2E6a = (k_on_6_EXG2*Cexg_Skin_bE6a*CFcRn_Skin_E6a*V_Skin_E6a
          - k_off_6_EXG2*Cexg_Skin_b2E6a*V_Skin_E6a
          + CLup_Skin*Cexg_Skin_b2E7
          - CLup_Skin*Cexg_Skin_b2E6a)/V_Skin_E6a;
dxdt_Cexg_Adipose_b2E6a = (k_on_6_EXG2*Cexg_Adipose_bE6a*CFcRn_Adipose_E6a*V_Adipose_E6a
          - k_off_6_EXG2*Cexg_Adipose_b2E6a*V_Adipose_E6a
          + CLup_Adipose*Cexg_Adipose_b2E7
          - CLup_Adipose*Cexg_Adipose_b2E6a)/V_Adipose_E6a;
dxdt_Cexg_Bone_b2E6a = (k_on_6_EXG2*Cexg_Bone_bE6a*CFcRn_Bone_E6a*V_Bone_E6a
          - k_off_6_EXG2*Cexg_Bone_b2E6a*V_Bone_E6a
          + CLup_Bone*Cexg_Bone_b2E7
          - CLup_Bone*Cexg_Bone_b2E6a)/V_Bone_E6a;
dxdt_Cexg_Brain_b2E6a = (k_on_6_EXG2*Cexg_Brain_bE6a*CFcRn_Brain_E6a*V_Brain_E6a
          - k_off_6_EXG2*Cexg_Brain_b2E6a*V_Brain_E6a
          + CLup_Brain*Cexg_Brain_b2E7
          - CLup_Brain*Cexg_Brain_b2E6a)/V_Brain_E6a;
dxdt_Cexg_Kidney_b2E6a = (k_on_6_EXG2*Cexg_Kidney_bE6a*CFcRn_Kidney_E6a*V_Kidney_E6a
          - k_off_6_EXG2*Cexg_Kidney_b2E6a*V_Kidney_E6a
          + CLup_Kidney*Cexg_Kidney_b2E7
          - CLup_Kidney*Cexg_Kidney_b2E6a)/V_Kidney_E6a;
dxdt_Cexg_SI_b2E6a = (k_on_6_EXG2*Cexg_SI_bE6a*CFcRn_SI_E6a*V_SI_E6a
          - k_off_6_EXG2*Cexg_SI_b2E6a*V_SI_E6a
          + CLup_SI*Cexg_SI_b2E7
          - CLup_SI*Cexg_SI_b2E6a)/V_SI_E6a;
dxdt_Cexg_LI_b2E6a = (k_on_6_EXG2*Cexg_LI_bE6a*CFcRn_LI_E6a*V_LI_E6a
          - k_off_6_EXG2*Cexg_LI_b2E6a*V_LI_E6a
          + CLup_LI*Cexg_LI_b2E7
          - CLup_LI*Cexg_LI_b2E6a)/V_LI_E6a;
dxdt_Cexg_Pancreas_b2E6a = (k_on_6_EXG2*Cexg_Pancreas_bE6a*CFcRn_Pancreas_E6a*V_Pancreas_E6a
          - k_off_6_EXG2*Cexg_Pancreas_b2E6a*V_Pancreas_E6a
          + CLup_Pancreas*Cexg_Pancreas_b2E7
          - CLup_Pancreas*Cexg_Pancreas_b2E6a)/V_Pancreas_E6a;
dxdt_Cexg_Thymus_b2E6a = (k_on_6_EXG2*Cexg_Thymus_bE6a*CFcRn_Thymus_E6a*V_Thymus_E6a
          - k_off_6_EXG2*Cexg_Thymus_b2E6a*V_Thymus_E6a
          + CLup_Thymus*Cexg_Thymus_b2E7
          - CLup_Thymus*Cexg_Thymus_b2E6a)/V_Thymus_E6a;
dxdt_Cexg_Spleen_b2E6a = (k_on_6_EXG2*Cexg_Spleen_bE6a*CFcRn_Spleen_E6a*V_Spleen_E6a
          - k_off_6_EXG2*Cexg_Spleen_b2E6a*V_Spleen_E6a
          + CLup_Spleen*Cexg_Spleen_b2E7
          - CLup_Spleen*Cexg_Spleen_b2E6a)/V_Spleen_E6a;
dxdt_Cexg_Other_b2E6a = (k_on_6_EXG2*Cexg_Other_bE6a*CFcRn_Other_E6a*V_Other_E6a
          - k_off_6_EXG2*Cexg_Other_b2E6a*V_Other_E6a
          + CLup_Other*Cexg_Other_b2E7
          - CLup_Other*Cexg_Other_b2E6a)/V_Other_E6a;
//;; endosomal pH=7.4  b
dxdt_Cexg_Lung_bE7b = (k_on_7_EXG*Cexg_Lung_E7b*CFcRn_Lung_E7b*V_Lung_E7b
          - k_off_7_EXG*Cexg_Lung_bE7b*V_Lung_E7b
          - k_on_7_EXG2*Cexg_Lung_bE7b*CFcRn_Lung_E7b*V_Lung_E7b
          + k_off_7_EXG2*Cexg_Lung_b2E7b*V_Lung_E7b
          + CLup_Lung*Cexg_Lung_bE6a
          - CLup_Lung*Cexg_Lung_bE7b)/V_Lung_E7b;
dxdt_Cexg_Liver_bE7b = (k_on_7_EXG*Cexg_Liver_E7b*CFcRn_Liver_E7b*V_Liver_E7b
          - k_off_7_EXG*Cexg_Liver_bE7b*V_Liver_E7b
          - k_on_7_EXG2*Cexg_Liver_bE7b*CFcRn_Liver_E7b*V_Liver_E7b
          + k_off_7_EXG2*Cexg_Liver_b2E7b*V_Liver_E7b
          + CLup_Liver*Cexg_Liver_bE6a
          - CLup_Liver*Cexg_Liver_bE7b)/V_Liver_E7b;
dxdt_Cexg_Heart_bE7b = (k_on_7_EXG*Cexg_Heart_E7b*CFcRn_Heart_E7b*V_Heart_E7b
          - k_off_7_EXG*Cexg_Heart_bE7b*V_Heart_E7b
          - k_on_7_EXG2*Cexg_Heart_bE7b*CFcRn_Heart_E7b*V_Heart_E7b
          + k_off_7_EXG2*Cexg_Heart_b2E7b*V_Heart_E7b
          + CLup_Heart*Cexg_Heart_bE6a
          - CLup_Heart*Cexg_Heart_bE7b)/V_Heart_E7b;
dxdt_Cexg_Muscle_bE7b = (k_on_7_EXG*Cexg_Muscle_E7b*CFcRn_Muscle_E7b*V_Muscle_E7b
          - k_off_7_EXG*Cexg_Muscle_bE7b*V_Muscle_E7b
          - k_on_7_EXG2*Cexg_Muscle_bE7b*CFcRn_Muscle_E7b*V_Muscle_E7b
          + k_off_7_EXG2*Cexg_Muscle_b2E7b*V_Muscle_E7b
          + CLup_Muscle*Cexg_Muscle_bE6a
          - CLup_Muscle*Cexg_Muscle_bE7b)/V_Muscle_E7b;
dxdt_Cexg_Skin_bE7b = (k_on_7_EXG*Cexg_Skin_E7b*CFcRn_Skin_E7b*V_Skin_E7b
          - k_off_7_EXG*Cexg_Skin_bE7b*V_Skin_E7b
          - k_on_7_EXG2*Cexg_Skin_bE7b*CFcRn_Skin_E7b*V_Skin_E7b
          + k_off_7_EXG2*Cexg_Skin_b2E7b*V_Skin_E7b
          + CLup_Skin*Cexg_Skin_bE6a
          - CLup_Skin*Cexg_Skin_bE7b)/V_Skin_E7b;
dxdt_Cexg_Adipose_bE7b = (k_on_7_EXG*Cexg_Adipose_E7b*CFcRn_Adipose_E7b*V_Adipose_E7b
          - k_off_7_EXG*Cexg_Adipose_bE7b*V_Adipose_E7b
          - k_on_7_EXG2*Cexg_Adipose_bE7b*CFcRn_Adipose_E7b*V_Adipose_E7b
          + k_off_7_EXG2*Cexg_Adipose_b2E7b*V_Adipose_E7b
          + CLup_Adipose*Cexg_Adipose_bE6a
          - CLup_Adipose*Cexg_Adipose_bE7b)/V_Adipose_E7b;
dxdt_Cexg_Bone_bE7b = (k_on_7_EXG*Cexg_Bone_E7b*CFcRn_Bone_E7b*V_Bone_E7b
          - k_off_7_EXG*Cexg_Bone_bE7b*V_Bone_E7b
          - k_on_7_EXG2*Cexg_Bone_bE7b*CFcRn_Bone_E7b*V_Bone_E7b
          + k_off_7_EXG2*Cexg_Bone_b2E7b*V_Bone_E7b
          + CLup_Bone*Cexg_Bone_bE6a
          - CLup_Bone*Cexg_Bone_bE7b)/V_Bone_E7b;
dxdt_Cexg_Brain_bE7b = (k_on_7_EXG*Cexg_Brain_E7b*CFcRn_Brain_E7b*V_Brain_E7b
          - k_off_7_EXG*Cexg_Brain_bE7b*V_Brain_E7b
          - k_on_7_EXG2*Cexg_Brain_bE7b*CFcRn_Brain_E7b*V_Brain_E7b
          + k_off_7_EXG2*Cexg_Brain_b2E7b*V_Brain_E7b
          + CLup_Brain*Cexg_Brain_bE6a
          - CLup_Brain*Cexg_Brain_bE7b)/V_Brain_E7b;
dxdt_Cexg_Kidney_bE7b = (k_on_7_EXG*Cexg_Kidney_E7b*CFcRn_Kidney_E7b*V_Kidney_E7b
          - k_off_7_EXG*Cexg_Kidney_bE7b*V_Kidney_E7b
          - k_on_7_EXG2*Cexg_Kidney_bE7b*CFcRn_Kidney_E7b*V_Kidney_E7b
          + k_off_7_EXG2*Cexg_Kidney_b2E7b*V_Kidney_E7b
          + CLup_Kidney*Cexg_Kidney_bE6a
          - CLup_Kidney*Cexg_Kidney_bE7b)/V_Kidney_E7b;
dxdt_Cexg_SI_bE7b = (k_on_7_EXG*Cexg_SI_E7b*CFcRn_SI_E7b*V_SI_E7b
          - k_off_7_EXG*Cexg_SI_bE7b*V_SI_E7b
          - k_on_7_EXG2*Cexg_SI_bE7b*CFcRn_SI_E7b*V_SI_E7b
          + k_off_7_EXG2*Cexg_SI_b2E7b*V_SI_E7b
          + CLup_SI*Cexg_SI_bE6a
          - CLup_SI*Cexg_SI_bE7b)/V_SI_E7b;
dxdt_Cexg_LI_bE7b = (k_on_7_EXG*Cexg_LI_E7b*CFcRn_LI_E7b*V_LI_E7b
          - k_off_7_EXG*Cexg_LI_bE7b*V_LI_E7b
          - k_on_7_EXG2*Cexg_LI_bE7b*CFcRn_LI_E7b*V_LI_E7b
          + k_off_7_EXG2*Cexg_LI_b2E7b*V_LI_E7b
          + CLup_LI*Cexg_LI_bE6a
          - CLup_LI*Cexg_LI_bE7b)/V_LI_E7b;
dxdt_Cexg_Pancreas_bE7b = (k_on_7_EXG*Cexg_Pancreas_E7b*CFcRn_Pancreas_E7b*V_Pancreas_E7b
          - k_off_7_EXG*Cexg_Pancreas_bE7b*V_Pancreas_E7b
          - k_on_7_EXG2*Cexg_Pancreas_bE7b*CFcRn_Pancreas_E7b*V_Pancreas_E7b
          + k_off_7_EXG2*Cexg_Pancreas_b2E7b*V_Pancreas_E7b
          + CLup_Pancreas*Cexg_Pancreas_bE6a
          - CLup_Pancreas*Cexg_Pancreas_bE7b)/V_Pancreas_E7b;
dxdt_Cexg_Thymus_bE7b = (k_on_7_EXG*Cexg_Thymus_E7b*CFcRn_Thymus_E7b*V_Thymus_E7b
          - k_off_7_EXG*Cexg_Thymus_bE7b*V_Thymus_E7b
          - k_on_7_EXG2*Cexg_Thymus_bE7b*CFcRn_Thymus_E7b*V_Thymus_E7b
          + k_off_7_EXG2*Cexg_Thymus_b2E7b*V_Thymus_E7b
          + CLup_Thymus*Cexg_Thymus_bE6a
          - CLup_Thymus*Cexg_Thymus_bE7b)/V_Thymus_E7b;
dxdt_Cexg_Spleen_bE7b = (k_on_7_EXG*Cexg_Spleen_E7b*CFcRn_Spleen_E7b*V_Spleen_E7b
          - k_off_7_EXG*Cexg_Spleen_bE7b*V_Spleen_E7b
          - k_on_7_EXG2*Cexg_Spleen_bE7b*CFcRn_Spleen_E7b*V_Spleen_E7b
          + k_off_7_EXG2*Cexg_Spleen_b2E7b*V_Spleen_E7b
          + CLup_Spleen*Cexg_Spleen_bE6a
          - CLup_Spleen*Cexg_Spleen_bE7b)/V_Spleen_E7b;
dxdt_Cexg_Other_bE7b = (k_on_7_EXG*Cexg_Other_E7b*CFcRn_Other_E7b*V_Other_E7b
          - k_off_7_EXG*Cexg_Other_bE7b*V_Other_E7b
          - k_on_7_EXG2*Cexg_Other_bE7b*CFcRn_Other_E7b*V_Other_E7b
          + k_off_7_EXG2*Cexg_Other_b2E7b*V_Other_E7b
          + CLup_Other*Cexg_Other_bE6a
          - CLup_Other*Cexg_Other_bE7b)/V_Other_E7b;
dxdt_Cexg_Lung_b2E7b = (k_on_7_EXG2*Cexg_Lung_bE7b*CFcRn_Lung_E7b*V_Lung_E7b
          - k_off_7_EXG2*Cexg_Lung_b2E7b*V_Lung_E7b
          + CLup_Lung*Cexg_Lung_b2E6a
          - CLup_Lung*Cexg_Lung_b2E7b)/V_Lung_E7b;
dxdt_Cexg_Liver_b2E7b = (k_on_7_EXG2*Cexg_Liver_bE7b*CFcRn_Liver_E7b*V_Liver_E7b
          - k_off_7_EXG2*Cexg_Liver_b2E7b*V_Liver_E7b
          + CLup_Liver*Cexg_Liver_b2E6a
          - CLup_Liver*Cexg_Liver_b2E7b)/V_Liver_E7b;
dxdt_Cexg_Heart_b2E7b = (k_on_7_EXG2*Cexg_Heart_bE7b*CFcRn_Heart_E7b*V_Heart_E7b
          - k_off_7_EXG2*Cexg_Heart_b2E7b*V_Heart_E7b
          + CLup_Heart*Cexg_Heart_b2E6a
          - CLup_Heart*Cexg_Heart_b2E7b)/V_Heart_E7b;
dxdt_Cexg_Muscle_b2E7b = (k_on_7_EXG2*Cexg_Muscle_bE7b*CFcRn_Muscle_E7b*V_Muscle_E7b
          - k_off_7_EXG2*Cexg_Muscle_b2E7b*V_Muscle_E7b
          + CLup_Muscle*Cexg_Muscle_b2E6a
          - CLup_Muscle*Cexg_Muscle_b2E7b)/V_Muscle_E7b;
dxdt_Cexg_Skin_b2E7b = (k_on_7_EXG2*Cexg_Skin_bE7b*CFcRn_Skin_E7b*V_Skin_E7b
          - k_off_7_EXG2*Cexg_Skin_b2E7b*V_Skin_E7b
          + CLup_Skin*Cexg_Skin_b2E6a
          - CLup_Skin*Cexg_Skin_b2E7b)/V_Skin_E7b;
dxdt_Cexg_Adipose_b2E7b = (k_on_7_EXG2*Cexg_Adipose_bE7b*CFcRn_Adipose_E7b*V_Adipose_E7b
          - k_off_7_EXG2*Cexg_Adipose_b2E7b*V_Adipose_E7b
          + CLup_Adipose*Cexg_Adipose_b2E6a
          - CLup_Adipose*Cexg_Adipose_b2E7b)/V_Adipose_E7b;
dxdt_Cexg_Bone_b2E7b = (k_on_7_EXG2*Cexg_Bone_bE7b*CFcRn_Bone_E7b*V_Bone_E7b
          - k_off_7_EXG2*Cexg_Bone_b2E7b*V_Bone_E7b
          + CLup_Bone*Cexg_Bone_b2E6a
          - CLup_Bone*Cexg_Bone_b2E7b)/V_Bone_E7b;
dxdt_Cexg_Brain_b2E7b = (k_on_7_EXG2*Cexg_Brain_bE7b*CFcRn_Brain_E7b*V_Brain_E7b
          - k_off_7_EXG2*Cexg_Brain_b2E7b*V_Brain_E7b
          + CLup_Brain*Cexg_Brain_b2E6a
          - CLup_Brain*Cexg_Brain_b2E7b)/V_Brain_E7b;
dxdt_Cexg_Kidney_b2E7b = (k_on_7_EXG2*Cexg_Kidney_bE7b*CFcRn_Kidney_E7b*V_Kidney_E7b
          - k_off_7_EXG2*Cexg_Kidney_b2E7b*V_Kidney_E7b
          + CLup_Kidney*Cexg_Kidney_b2E6a
          - CLup_Kidney*Cexg_Kidney_b2E7b)/V_Kidney_E7b;
dxdt_Cexg_SI_b2E7b = (k_on_7_EXG2*Cexg_SI_bE7b*CFcRn_SI_E7b*V_SI_E7b
          - k_off_7_EXG2*Cexg_SI_b2E7b*V_SI_E7b
          + CLup_SI*Cexg_SI_b2E6a
          - CLup_SI*Cexg_SI_b2E7b)/V_SI_E7b;
dxdt_Cexg_LI_b2E7b = (k_on_7_EXG2*Cexg_LI_bE7b*CFcRn_LI_E7b*V_LI_E7b
          - k_off_7_EXG2*Cexg_LI_b2E7b*V_LI_E7b
          + CLup_LI*Cexg_LI_b2E6a
          - CLup_LI*Cexg_LI_b2E7b)/V_LI_E7b;
dxdt_Cexg_Pancreas_b2E7b = (k_on_7_EXG2*Cexg_Pancreas_bE7b*CFcRn_Pancreas_E7b*V_Pancreas_E7b
          - k_off_7_EXG2*Cexg_Pancreas_b2E7b*V_Pancreas_E7b
          + CLup_Pancreas*Cexg_Pancreas_b2E6a
          - CLup_Pancreas*Cexg_Pancreas_b2E7b)/V_Pancreas_E7b;
dxdt_Cexg_Thymus_b2E7b = (k_on_7_EXG2*Cexg_Thymus_bE7b*CFcRn_Thymus_E7b*V_Thymus_E7b
          - k_off_7_EXG2*Cexg_Thymus_b2E7b*V_Thymus_E7b
          + CLup_Thymus*Cexg_Thymus_b2E6a
          - CLup_Thymus*Cexg_Thymus_b2E7b)/V_Thymus_E7b;
dxdt_Cexg_Spleen_b2E7b = (k_on_7_EXG2*Cexg_Spleen_bE7b*CFcRn_Spleen_E7b*V_Spleen_E7b
          - k_off_7_EXG2*Cexg_Spleen_b2E7b*V_Spleen_E7b
          + CLup_Spleen*Cexg_Spleen_b2E6a
          - CLup_Spleen*Cexg_Spleen_b2E7b)/V_Spleen_E7b;
dxdt_Cexg_Other_b2E7b = (k_on_7_EXG2*Cexg_Other_bE7b*CFcRn_Other_E7b*V_Other_E7b
          - k_off_7_EXG2*Cexg_Other_b2E7b*V_Other_E7b
          + CLup_Other*Cexg_Other_b2E6a
          - CLup_Other*Cexg_Other_b2E7b)/V_Other_E7b;
//;;; Interstitial membrane
dxdt_Cexg_Lung_bIM = (k_on_7_EXG*Cexg_Lung_IM*CFcRn_Lung_IM*V_Lung_IM
          - k_off_7_EXG*Cexg_Lung_bIM*V_Lung_IM
          - k_on_7_EXG2*Cexg_Lung_bIM*CFcRn_Lung_IM*V_Lung_IM
          + k_off_7_EXG2*Cexg_Lung_b2IM*V_Lung_IM
          + CLup_Lung*(1.0-FR)*Cexg_Lung_bE7b
          - CLup_Lung*(1.0-FR)*Cexg_Lung_bIM
          - kdeg_FcRn_Ab*Cexg_Lung_bIM*V_Lung_IM)/V_Lung_IM;
dxdt_Cexg_Liver_bIM = (k_on_7_EXG*Cexg_Liver_IM*CFcRn_Liver_IM*V_Liver_IM
          - k_off_7_EXG*Cexg_Liver_bIM*V_Liver_IM
          - k_on_7_EXG2*Cexg_Liver_bIM*CFcRn_Liver_IM*V_Liver_IM
          + k_off_7_EXG2*Cexg_Liver_b2IM*V_Liver_IM
          + CLup_Liver*(1.0-FR)*Cexg_Liver_bE7b
          - CLup_Liver*(1.0-FR)*Cexg_Liver_bIM
          - kdeg_FcRn_Ab*Cexg_Liver_bIM*V_Liver_IM)/V_Liver_IM;
dxdt_Cexg_Heart_bIM = (k_on_7_EXG*Cexg_Heart_IM*CFcRn_Heart_IM*V_Heart_IM
          - k_off_7_EXG*Cexg_Heart_bIM*V_Heart_IM
          - k_on_7_EXG2*Cexg_Heart_bIM*CFcRn_Heart_IM*V_Heart_IM
          + k_off_7_EXG2*Cexg_Heart_b2IM*V_Heart_IM
          + CLup_Heart*(1.0-FR)*Cexg_Heart_bE7b
          - CLup_Heart*(1.0-FR)*Cexg_Heart_bIM
          - kdeg_FcRn_Ab*Cexg_Heart_bIM*V_Heart_IM)/V_Heart_IM;
dxdt_Cexg_Muscle_bIM = (k_on_7_EXG*Cexg_Muscle_IM*CFcRn_Muscle_IM*V_Muscle_IM
          - k_off_7_EXG*Cexg_Muscle_bIM*V_Muscle_IM
          - k_on_7_EXG2*Cexg_Muscle_bIM*CFcRn_Muscle_IM*V_Muscle_IM
          + k_off_7_EXG2*Cexg_Muscle_b2IM*V_Muscle_IM
          + CLup_Muscle*(1.0-FR)*Cexg_Muscle_bE7b
          - CLup_Muscle*(1.0-FR)*Cexg_Muscle_bIM
          - kdeg_FcRn_Ab*Cexg_Muscle_bIM*V_Muscle_IM)/V_Muscle_IM;
dxdt_Cexg_Skin_bIM = (k_on_7_EXG*Cexg_Skin_IM*CFcRn_Skin_IM*V_Skin_IM
          - k_off_7_EXG*Cexg_Skin_bIM*V_Skin_IM
          - k_on_7_EXG2*Cexg_Skin_bIM*CFcRn_Skin_IM*V_Skin_IM
          + k_off_7_EXG2*Cexg_Skin_b2IM*V_Skin_IM
          + CLup_Skin*(1.0-FR)*Cexg_Skin_bE7b
          - CLup_Skin*(1.0-FR)*Cexg_Skin_bIM
          - kdeg_FcRn_Ab*Cexg_Skin_bIM*V_Skin_IM)/V_Skin_IM;
dxdt_Cexg_Adipose_bIM = (k_on_7_EXG*Cexg_Adipose_IM*CFcRn_Adipose_IM*V_Adipose_IM
          - k_off_7_EXG*Cexg_Adipose_bIM*V_Adipose_IM
          - k_on_7_EXG2*Cexg_Adipose_bIM*CFcRn_Adipose_IM*V_Adipose_IM
          + k_off_7_EXG2*Cexg_Adipose_b2IM*V_Adipose_IM
          + CLup_Adipose*(1.0-FR)*Cexg_Adipose_bE7b
          - CLup_Adipose*(1.0-FR)*Cexg_Adipose_bIM
          - kdeg_FcRn_Ab*Cexg_Adipose_bIM*V_Adipose_IM)/V_Adipose_IM;
dxdt_Cexg_Bone_bIM = (k_on_7_EXG*Cexg_Bone_IM*CFcRn_Bone_IM*V_Bone_IM
          - k_off_7_EXG*Cexg_Bone_bIM*V_Bone_IM
          - k_on_7_EXG2*Cexg_Bone_bIM*CFcRn_Bone_IM*V_Bone_IM
          + k_off_7_EXG2*Cexg_Bone_b2IM*V_Bone_IM
          + CLup_Bone*(1.0-FR)*Cexg_Bone_bE7b
          - CLup_Bone*(1.0-FR)*Cexg_Bone_bIM
          - kdeg_FcRn_Ab*Cexg_Bone_bIM*V_Bone_IM)/V_Bone_IM;
dxdt_Cexg_Brain_bIM = (k_on_7_EXG*Cexg_Brain_IM*CFcRn_Brain_IM*V_Brain_IM
          - k_off_7_EXG*Cexg_Brain_bIM*V_Brain_IM
          - k_on_7_EXG2*Cexg_Brain_bIM*CFcRn_Brain_IM*V_Brain_IM
          + k_off_7_EXG2*Cexg_Brain_b2IM*V_Brain_IM
          + CLup_Brain*(1.0-FR)*Cexg_Brain_bE7b
          - CLup_Brain*(1.0-FR)*Cexg_Brain_bIM
          - kdeg_FcRn_Ab*Cexg_Brain_bIM*V_Brain_IM)/V_Brain_IM;
dxdt_Cexg_Kidney_bIM = (k_on_7_EXG*Cexg_Kidney_IM*CFcRn_Kidney_IM*V_Kidney_IM
          - k_off_7_EXG*Cexg_Kidney_bIM*V_Kidney_IM
          - k_on_7_EXG2*Cexg_Kidney_bIM*CFcRn_Kidney_IM*V_Kidney_IM
          + k_off_7_EXG2*Cexg_Kidney_b2IM*V_Kidney_IM
          + CLup_Kidney*(1.0-FR)*Cexg_Kidney_bE7b
          - CLup_Kidney*(1.0-FR)*Cexg_Kidney_bIM
          - kdeg_FcRn_Ab*Cexg_Kidney_bIM*V_Kidney_IM)/V_Kidney_IM;
dxdt_Cexg_SI_bIM = (k_on_7_EXG*Cexg_SI_IM*CFcRn_SI_IM*V_SI_IM
          - k_off_7_EXG*Cexg_SI_bIM*V_SI_IM
          - k_on_7_EXG2*Cexg_SI_bIM*CFcRn_SI_IM*V_SI_IM
          + k_off_7_EXG2*Cexg_SI_b2IM*V_SI_IM
          + CLup_SI*(1.0-FR)*Cexg_SI_bE7b
          - CLup_SI*(1.0-FR)*Cexg_SI_bIM
          - kdeg_FcRn_Ab*Cexg_SI_bIM*V_SI_IM)/V_SI_IM;
dxdt_Cexg_LI_bIM = (k_on_7_EXG*Cexg_LI_IM*CFcRn_LI_IM*V_LI_IM
          - k_off_7_EXG*Cexg_LI_bIM*V_LI_IM
          - k_on_7_EXG2*Cexg_LI_bIM*CFcRn_LI_IM*V_LI_IM
          + k_off_7_EXG2*Cexg_LI_b2IM*V_LI_IM
          + CLup_LI*(1.0-FR)*Cexg_LI_bE7b
          - CLup_LI*(1.0-FR)*Cexg_LI_bIM
          - kdeg_FcRn_Ab*Cexg_LI_bIM*V_LI_IM)/V_LI_IM;
dxdt_Cexg_Pancreas_bIM = (k_on_7_EXG*Cexg_Pancreas_IM*CFcRn_Pancreas_IM*V_Pancreas_IM
          - k_off_7_EXG*Cexg_Pancreas_bIM*V_Pancreas_IM
          - k_on_7_EXG2*Cexg_Pancreas_bIM*CFcRn_Pancreas_IM*V_Pancreas_IM
          + k_off_7_EXG2*Cexg_Pancreas_b2IM*V_Pancreas_IM
          + CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_bE7b
          - CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_bIM
          - kdeg_FcRn_Ab*Cexg_Pancreas_bIM*V_Pancreas_IM)/V_Pancreas_IM;
dxdt_Cexg_Thymus_bIM = (k_on_7_EXG*Cexg_Thymus_IM*CFcRn_Thymus_IM*V_Thymus_IM
          - k_off_7_EXG*Cexg_Thymus_bIM*V_Thymus_IM
          - k_on_7_EXG2*Cexg_Thymus_bIM*CFcRn_Thymus_IM*V_Thymus_IM
          + k_off_7_EXG2*Cexg_Thymus_b2IM*V_Thymus_IM
          + CLup_Thymus*(1.0-FR)*Cexg_Thymus_bE7b
          - CLup_Thymus*(1.0-FR)*Cexg_Thymus_bIM
          - kdeg_FcRn_Ab*Cexg_Thymus_bIM*V_Thymus_IM)/V_Thymus_IM;
dxdt_Cexg_Spleen_bIM = (k_on_7_EXG*Cexg_Spleen_IM*CFcRn_Spleen_IM*V_Spleen_IM
          - k_off_7_EXG*Cexg_Spleen_bIM*V_Spleen_IM
          - k_on_7_EXG2*Cexg_Spleen_bIM*CFcRn_Spleen_IM*V_Spleen_IM
          + k_off_7_EXG2*Cexg_Spleen_b2IM*V_Spleen_IM
          + CLup_Spleen*(1.0-FR)*Cexg_Spleen_bE7b
          - CLup_Spleen*(1.0-FR)*Cexg_Spleen_bIM
          - kdeg_FcRn_Ab*Cexg_Spleen_bIM*V_Spleen_IM)/V_Spleen_IM;
dxdt_Cexg_Other_bIM = (k_on_7_EXG*Cexg_Other_IM*CFcRn_Other_IM*V_Other_IM
          - k_off_7_EXG*Cexg_Other_bIM*V_Other_IM
          - k_on_7_EXG2*Cexg_Other_bIM*CFcRn_Other_IM*V_Other_IM
          + k_off_7_EXG2*Cexg_Other_b2IM*V_Other_IM
          + CLup_Other*(1.0-FR)*Cexg_Other_bE7b
          - CLup_Other*(1.0-FR)*Cexg_Other_bIM
          - kdeg_FcRn_Ab*Cexg_Other_bIM*V_Other_IM)/V_Other_IM;
dxdt_Cexg_Lung_b2IM = (k_on_7_EXG2*Cexg_Lung_bIM*CFcRn_Lung_IM*V_Lung_IM
          - k_off_7_EXG2*Cexg_Lung_b2IM*V_Lung_IM
          + CLup_Lung*(1.0-FR)*Cexg_Lung_b2E7b
          - CLup_Lung*(1.0-FR)*Cexg_Lung_b2IM
          - kdeg_FcRn_Ab*Cexg_Lung_b2IM*V_Lung_IM)/V_Lung_IM;
dxdt_Cexg_Liver_b2IM = (k_on_7_EXG2*Cexg_Liver_bIM*CFcRn_Liver_IM*V_Liver_IM
          - k_off_7_EXG2*Cexg_Liver_b2IM*V_Liver_IM
          + CLup_Liver*(1.0-FR)*Cexg_Liver_b2E7b
          - CLup_Liver*(1.0-FR)*Cexg_Liver_b2IM
          - kdeg_FcRn_Ab*Cexg_Liver_b2IM*V_Liver_IM)/V_Liver_IM;
dxdt_Cexg_Heart_b2IM = (k_on_7_EXG2*Cexg_Heart_bIM*CFcRn_Heart_IM*V_Heart_IM
          - k_off_7_EXG2*Cexg_Heart_b2IM*V_Heart_IM
          + CLup_Heart*(1.0-FR)*Cexg_Heart_b2E7b
          - CLup_Heart*(1.0-FR)*Cexg_Heart_b2IM
          - kdeg_FcRn_Ab*Cexg_Heart_b2IM*V_Heart_IM)/V_Heart_IM;
dxdt_Cexg_Muscle_b2IM = (k_on_7_EXG2*Cexg_Muscle_bIM*CFcRn_Muscle_IM*V_Muscle_IM
          - k_off_7_EXG2*Cexg_Muscle_b2IM*V_Muscle_IM
          + CLup_Muscle*(1.0-FR)*Cexg_Muscle_b2E7b
          - CLup_Muscle*(1.0-FR)*Cexg_Muscle_b2IM
          - kdeg_FcRn_Ab*Cexg_Muscle_b2IM*V_Muscle_IM)/V_Muscle_IM;
dxdt_Cexg_Skin_b2IM = (k_on_7_EXG2*Cexg_Skin_bIM*CFcRn_Skin_IM*V_Skin_IM
          - k_off_7_EXG2*Cexg_Skin_b2IM*V_Skin_IM
          + CLup_Skin*(1.0-FR)*Cexg_Skin_b2E7b
          - CLup_Skin*(1.0-FR)*Cexg_Skin_b2IM
          - kdeg_FcRn_Ab*Cexg_Skin_b2IM*V_Skin_IM)/V_Skin_IM;
dxdt_Cexg_Adipose_b2IM = (k_on_7_EXG2*Cexg_Adipose_bIM*CFcRn_Adipose_IM*V_Adipose_IM
          - k_off_7_EXG2*Cexg_Adipose_b2IM*V_Adipose_IM
          + CLup_Adipose*(1.0-FR)*Cexg_Adipose_b2E7b
          - CLup_Adipose*(1.0-FR)*Cexg_Adipose_b2IM
          - kdeg_FcRn_Ab*Cexg_Adipose_b2IM*V_Adipose_IM)/V_Adipose_IM;
dxdt_Cexg_Bone_b2IM = (k_on_7_EXG2*Cexg_Bone_bIM*CFcRn_Bone_IM*V_Bone_IM
          - k_off_7_EXG2*Cexg_Bone_b2IM*V_Bone_IM
          + CLup_Bone*(1.0-FR)*Cexg_Bone_b2E7b
          - CLup_Bone*(1.0-FR)*Cexg_Bone_b2IM
          - kdeg_FcRn_Ab*Cexg_Bone_b2IM*V_Bone_IM)/V_Bone_IM;
dxdt_Cexg_Brain_b2IM = (k_on_7_EXG2*Cexg_Brain_bIM*CFcRn_Brain_IM*V_Brain_IM
          - k_off_7_EXG2*Cexg_Brain_b2IM*V_Brain_IM
          + CLup_Brain*(1.0-FR)*Cexg_Brain_b2E7b
          - CLup_Brain*(1.0-FR)*Cexg_Brain_b2IM
          - kdeg_FcRn_Ab*Cexg_Brain_b2IM*V_Brain_IM)/V_Brain_IM;
dxdt_Cexg_Kidney_b2IM = (k_on_7_EXG2*Cexg_Kidney_bIM*CFcRn_Kidney_IM*V_Kidney_IM
          - k_off_7_EXG2*Cexg_Kidney_b2IM*V_Kidney_IM
          + CLup_Kidney*(1.0-FR)*Cexg_Kidney_b2E7b
          - CLup_Kidney*(1.0-FR)*Cexg_Kidney_b2IM
          - kdeg_FcRn_Ab*Cexg_Kidney_b2IM*V_Kidney_IM)/V_Kidney_IM;
dxdt_Cexg_SI_b2IM = (k_on_7_EXG2*Cexg_SI_bIM*CFcRn_SI_IM*V_SI_IM
          - k_off_7_EXG2*Cexg_SI_b2IM*V_SI_IM
          + CLup_SI*(1.0-FR)*Cexg_SI_b2E7b
          - CLup_SI*(1.0-FR)*Cexg_SI_b2IM
          - kdeg_FcRn_Ab*Cexg_SI_b2IM*V_SI_IM)/V_SI_IM;
dxdt_Cexg_LI_b2IM = (k_on_7_EXG2*Cexg_LI_bIM*CFcRn_LI_IM*V_LI_IM
          - k_off_7_EXG2*Cexg_LI_b2IM*V_LI_IM
          + CLup_LI*(1.0-FR)*Cexg_LI_b2E7b
          - CLup_LI*(1.0-FR)*Cexg_LI_b2IM
          - kdeg_FcRn_Ab*Cexg_LI_b2IM*V_LI_IM)/V_LI_IM;
dxdt_Cexg_Pancreas_b2IM = (k_on_7_EXG2*Cexg_Pancreas_bIM*CFcRn_Pancreas_IM*V_Pancreas_IM
          - k_off_7_EXG2*Cexg_Pancreas_b2IM*V_Pancreas_IM
          + CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_b2E7b
          - CLup_Pancreas*(1.0-FR)*Cexg_Pancreas_b2IM
          - kdeg_FcRn_Ab*Cexg_Pancreas_b2IM*V_Pancreas_IM)/V_Pancreas_IM;
dxdt_Cexg_Thymus_b2IM = (k_on_7_EXG2*Cexg_Thymus_bIM*CFcRn_Thymus_IM*V_Thymus_IM
          - k_off_7_EXG2*Cexg_Thymus_b2IM*V_Thymus_IM
          + CLup_Thymus*(1.0-FR)*Cexg_Thymus_b2E7b
          - CLup_Thymus*(1.0-FR)*Cexg_Thymus_b2IM
          - kdeg_FcRn_Ab*Cexg_Thymus_b2IM*V_Thymus_IM)/V_Thymus_IM;
dxdt_Cexg_Spleen_b2IM = (k_on_7_EXG2*Cexg_Spleen_bIM*CFcRn_Spleen_IM*V_Spleen_IM
          - k_off_7_EXG2*Cexg_Spleen_b2IM*V_Spleen_IM
          + CLup_Spleen*(1.0-FR)*Cexg_Spleen_b2E7b
          - CLup_Spleen*(1.0-FR)*Cexg_Spleen_b2IM
          - kdeg_FcRn_Ab*Cexg_Spleen_b2IM*V_Spleen_IM)/V_Spleen_IM;
dxdt_Cexg_Other_b2IM = (k_on_7_EXG2*Cexg_Other_bIM*CFcRn_Other_IM*V_Other_IM
          - k_off_7_EXG2*Cexg_Other_b2IM*V_Other_IM
          + CLup_Other*(1.0-FR)*Cexg_Other_b2E7b
          - CLup_Other*(1.0-FR)*Cexg_Other_b2IM
          - kdeg_FcRn_Ab*Cexg_Other_b2IM*V_Other_IM)/V_Other_IM;
//====================================ENDOGENOUS IgG=========================
      //vascular side membrane
dxdt_Cedg_Lung_VM = (CLup_Lung*FR*Cedg_Lung_V
          - CLup_Lung*FR*Cedg_Lung_VM
                - CLup_Lung*FR*Cedg_Lung_VM
                + CLup_Lung*FR*Cedg_Lung_E7b
                - k_on_7_EXG*Cedg_Lung_VM*CFcRn_Lung_VM*V_Lung_VM
                + k_off_7_EXG*Cedg_Lung_bVM*V_Lung_VM)/V_Lung_VM;
dxdt_Cedg_Liver_VM = (CLup_Liver*FR*Cedg_Liver_V
          - CLup_Liver*FR*Cedg_Liver_VM
                - CLup_Liver*FR*Cedg_Liver_VM
                + CLup_Liver*FR*Cedg_Liver_E7b
                - k_on_7_EXG*Cedg_Liver_VM*CFcRn_Liver_VM*V_Liver_VM
                + k_off_7_EXG*Cedg_Liver_bVM*V_Liver_VM)/V_Liver_VM;
dxdt_Cedg_Heart_VM = (CLup_Heart*FR*Cedg_Heart_V
          - CLup_Heart*FR*Cedg_Heart_VM
                - CLup_Heart*FR*Cedg_Heart_VM
                + CLup_Heart*FR*Cedg_Heart_E7b
                - k_on_7_EXG*Cedg_Heart_VM*CFcRn_Heart_VM*V_Heart_VM
                + k_off_7_EXG*Cedg_Heart_bVM*V_Heart_VM)/V_Heart_VM;
dxdt_Cedg_Muscle_VM = (CLup_Muscle*FR*Cedg_Muscle_V
          - CLup_Muscle*FR*Cedg_Muscle_VM
                - CLup_Muscle*FR*Cedg_Muscle_VM
                + CLup_Muscle*FR*Cedg_Muscle_E7b
                - k_on_7_EXG*Cedg_Muscle_VM*CFcRn_Muscle_VM*V_Muscle_VM
                + k_off_7_EXG*Cedg_Muscle_bVM*V_Muscle_VM)/V_Muscle_VM;
dxdt_Cedg_Skin_VM = (CLup_Skin*FR*Cedg_Skin_V
          - CLup_Skin*FR*Cedg_Skin_VM
                - CLup_Skin*FR*Cedg_Skin_VM
                + CLup_Skin*FR*Cedg_Skin_E7b
                - k_on_7_EXG*Cedg_Skin_VM*CFcRn_Skin_VM*V_Skin_VM
                + k_off_7_EXG*Cedg_Skin_bVM*V_Skin_VM)/V_Skin_VM;
dxdt_Cedg_Adipose_VM = (CLup_Adipose*FR*Cedg_Adipose_V
          - CLup_Adipose*FR*Cedg_Adipose_VM
                - CLup_Adipose*FR*Cedg_Adipose_VM
                + CLup_Adipose*FR*Cedg_Adipose_E7b
                - k_on_7_EXG*Cedg_Adipose_VM*CFcRn_Adipose_VM*V_Adipose_VM
                + k_off_7_EXG*Cedg_Adipose_bVM*V_Adipose_VM)/V_Adipose_VM;
dxdt_Cedg_Bone_VM = (CLup_Bone*FR*Cedg_Bone_V
          - CLup_Bone*FR*Cedg_Bone_VM
                - CLup_Bone*FR*Cedg_Bone_VM
                + CLup_Bone*FR*Cedg_Bone_E7b
                - k_on_7_EXG*Cedg_Bone_VM*CFcRn_Bone_VM*V_Bone_VM
                + k_off_7_EXG*Cedg_Bone_bVM*V_Bone_VM)/V_Bone_VM;
dxdt_Cedg_Brain_VM = (CLup_Brain*FR*Cedg_Brain_V
          - CLup_Brain*FR*Cedg_Brain_VM
                - CLup_Brain*FR*Cedg_Brain_VM
                + CLup_Brain*FR*Cedg_Brain_E7b
                - k_on_7_EXG*Cedg_Brain_VM*CFcRn_Brain_VM*V_Brain_VM
                + k_off_7_EXG*Cedg_Brain_bVM*V_Brain_VM)/V_Brain_VM;
dxdt_Cedg_Kidney_VM = (CLup_Kidney*FR*Cedg_Kidney_V
          - CLup_Kidney*FR*Cedg_Kidney_VM
                - CLup_Kidney*FR*Cedg_Kidney_VM
                + CLup_Kidney*FR*Cedg_Kidney_E7b
                - k_on_7_EXG*Cedg_Kidney_VM*CFcRn_Kidney_VM*V_Kidney_VM
                + k_off_7_EXG*Cedg_Kidney_bVM*V_Kidney_VM)/V_Kidney_VM;
dxdt_Cedg_SI_VM = (CLup_SI*FR*Cedg_SI_V
          - CLup_SI*FR*Cedg_SI_VM
                - CLup_SI*FR*Cedg_SI_VM
                + CLup_SI*FR*Cedg_SI_E7b
                - k_on_7_EXG*Cedg_SI_VM*CFcRn_SI_VM*V_SI_VM
                + k_off_7_EXG*Cedg_SI_bVM*V_SI_VM)/V_SI_VM;
dxdt_Cedg_LI_VM = (CLup_LI*FR*Cedg_LI_V
          - CLup_LI*FR*Cedg_LI_VM
                - CLup_LI*FR*Cedg_LI_VM
                + CLup_LI*FR*Cedg_LI_E7b
                - k_on_7_EXG*Cedg_LI_VM*CFcRn_LI_VM*V_LI_VM
                + k_off_7_EXG*Cedg_LI_bVM*V_LI_VM)/V_LI_VM;
dxdt_Cedg_Pancreas_VM = (CLup_Pancreas*FR*Cedg_Pancreas_V
          - CLup_Pancreas*FR*Cedg_Pancreas_VM
                - CLup_Pancreas*FR*Cedg_Pancreas_VM
                + CLup_Pancreas*FR*Cedg_Pancreas_E7b
                - k_on_7_EXG*Cedg_Pancreas_VM*CFcRn_Pancreas_VM*V_Pancreas_VM
                + k_off_7_EXG*Cedg_Pancreas_bVM*V_Pancreas_VM)/V_Pancreas_VM;
dxdt_Cedg_Thymus_VM = (CLup_Thymus*FR*Cedg_Thymus_V
          - CLup_Thymus*FR*Cedg_Thymus_VM
                - CLup_Thymus*FR*Cedg_Thymus_VM
                + CLup_Thymus*FR*Cedg_Thymus_E7b
                - k_on_7_EXG*Cedg_Thymus_VM*CFcRn_Thymus_VM*V_Thymus_VM
                + k_off_7_EXG*Cedg_Thymus_bVM*V_Thymus_VM)/V_Thymus_VM;
dxdt_Cedg_Spleen_VM = (CLup_Spleen*FR*Cedg_Spleen_V
          - CLup_Spleen*FR*Cedg_Spleen_VM
                - CLup_Spleen*FR*Cedg_Spleen_VM
                + CLup_Spleen*FR*Cedg_Spleen_E7b
                - k_on_7_EXG*Cedg_Spleen_VM*CFcRn_Spleen_VM*V_Spleen_VM
                + k_off_7_EXG*Cedg_Spleen_bVM*V_Spleen_VM)/V_Spleen_VM;
dxdt_Cedg_Other_VM = (CLup_Other*FR*Cedg_Other_V
          - CLup_Other*FR*Cedg_Other_VM
                - CLup_Other*FR*Cedg_Other_VM
                + CLup_Other*FR*Cedg_Other_E7b
                - k_on_7_EXG*Cedg_Other_VM*CFcRn_Other_VM*V_Other_VM
                + k_off_7_EXG*Cedg_Other_bVM*V_Other_VM)/V_Other_VM;
//endosomal pH=7.4
dxdt_Cedg_Lung_E7 = (CLup_Lung*FR*Cedg_Lung_VM
            + CLup_Lung*(1.0-FR)*Cedg_Lung_IM
                - CLup_Lung*Cedg_Lung_E7
                - k_on_7_EXG*Cedg_Lung_E7*CFcRn_Lung_E7*V_Lung_E7
                + k_off_7_EXG*Cedg_Lung_bE7*V_Lung_E7)/V_Lung_E7;
dxdt_Cedg_Liver_E7 = (CLup_Liver*FR*Cedg_Liver_VM
            + CLup_Liver*(1.0-FR)*Cedg_Liver_IM
                - CLup_Liver*Cedg_Liver_E7
                - k_on_7_EXG*Cedg_Liver_E7*CFcRn_Liver_E7*V_Liver_E7
                + k_off_7_EXG*Cedg_Liver_bE7*V_Liver_E7)/V_Liver_E7;
dxdt_Cedg_Heart_E7 = (CLup_Heart*FR*Cedg_Heart_VM
            + CLup_Heart*(1.0-FR)*Cedg_Heart_IM
                - CLup_Heart*Cedg_Heart_E7
                - k_on_7_EXG*Cedg_Heart_E7*CFcRn_Heart_E7*V_Heart_E7
                + k_off_7_EXG*Cedg_Heart_bE7*V_Heart_E7)/V_Heart_E7;
dxdt_Cedg_Muscle_E7 = (CLup_Muscle*FR*Cedg_Muscle_VM
            + CLup_Muscle*(1.0-FR)*Cedg_Muscle_IM
                - CLup_Muscle*Cedg_Muscle_E7
                - k_on_7_EXG*Cedg_Muscle_E7*CFcRn_Muscle_E7*V_Muscle_E7
                + k_off_7_EXG*Cedg_Muscle_bE7*V_Muscle_E7)/V_Muscle_E7;
dxdt_Cedg_Skin_E7 = (CLup_Skin*FR*Cedg_Skin_VM
            + CLup_Skin*(1.0-FR)*Cedg_Skin_IM
                - CLup_Skin*Cedg_Skin_E7
                - k_on_7_EXG*Cedg_Skin_E7*CFcRn_Skin_E7*V_Skin_E7
                + k_off_7_EXG*Cedg_Skin_bE7*V_Skin_E7)/V_Skin_E7;
dxdt_Cedg_Adipose_E7 = (CLup_Adipose*FR*Cedg_Adipose_VM
            + CLup_Adipose*(1.0-FR)*Cedg_Adipose_IM
                - CLup_Adipose*Cedg_Adipose_E7
                - k_on_7_EXG*Cedg_Adipose_E7*CFcRn_Adipose_E7*V_Adipose_E7
                + k_off_7_EXG*Cedg_Adipose_bE7*V_Adipose_E7)/V_Adipose_E7;
dxdt_Cedg_Bone_E7 = (CLup_Bone*FR*Cedg_Bone_VM
            + CLup_Bone*(1.0-FR)*Cedg_Bone_IM
                - CLup_Bone*Cedg_Bone_E7
                - k_on_7_EXG*Cedg_Bone_E7*CFcRn_Bone_E7*V_Bone_E7
                + k_off_7_EXG*Cedg_Bone_bE7*V_Bone_E7)/V_Bone_E7;
dxdt_Cedg_Brain_E7 = (CLup_Brain*FR*Cedg_Brain_VM
            + CLup_Brain*(1.0-FR)*Cedg_Brain_IM
                - CLup_Brain*Cedg_Brain_E7
                - k_on_7_EXG*Cedg_Brain_E7*CFcRn_Brain_E7*V_Brain_E7
                + k_off_7_EXG*Cedg_Brain_bE7*V_Brain_E7)/V_Brain_E7;
dxdt_Cedg_Kidney_E7 = (CLup_Kidney*FR*Cedg_Kidney_VM
            + CLup_Kidney*(1.0-FR)*Cedg_Kidney_IM
                - CLup_Kidney*Cedg_Kidney_E7
                - k_on_7_EXG*Cedg_Kidney_E7*CFcRn_Kidney_E7*V_Kidney_E7
                + k_off_7_EXG*Cedg_Kidney_bE7*V_Kidney_E7)/V_Kidney_E7;
dxdt_Cedg_SI_E7 = (CLup_SI*FR*Cedg_SI_VM
            + CLup_SI*(1.0-FR)*Cedg_SI_IM
                - CLup_SI*Cedg_SI_E7
                - k_on_7_EXG*Cedg_SI_E7*CFcRn_SI_E7*V_SI_E7
                + k_off_7_EXG*Cedg_SI_bE7*V_SI_E7)/V_SI_E7;
dxdt_Cedg_LI_E7 = (CLup_LI*FR*Cedg_LI_VM
            + CLup_LI*(1.0-FR)*Cedg_LI_IM
                - CLup_LI*Cedg_LI_E7
                - k_on_7_EXG*Cedg_LI_E7*CFcRn_LI_E7*V_LI_E7
                + k_off_7_EXG*Cedg_LI_bE7*V_LI_E7)/V_LI_E7;
dxdt_Cedg_Pancreas_E7 = (CLup_Pancreas*FR*Cedg_Pancreas_VM
            + CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_IM
                - CLup_Pancreas*Cedg_Pancreas_E7
                - k_on_7_EXG*Cedg_Pancreas_E7*CFcRn_Pancreas_E7*V_Pancreas_E7
                + k_off_7_EXG*Cedg_Pancreas_bE7*V_Pancreas_E7)/V_Pancreas_E7;
dxdt_Cedg_Thymus_E7 = (CLup_Thymus*FR*Cedg_Thymus_VM
            + CLup_Thymus*(1.0-FR)*Cedg_Thymus_IM
                - CLup_Thymus*Cedg_Thymus_E7
                - k_on_7_EXG*Cedg_Thymus_E7*CFcRn_Thymus_E7*V_Thymus_E7
                + k_off_7_EXG*Cedg_Thymus_bE7*V_Thymus_E7)/V_Thymus_E7;
dxdt_Cedg_Spleen_E7 = (CLup_Spleen*FR*Cedg_Spleen_VM
            + CLup_Spleen*(1.0-FR)*Cedg_Spleen_IM
                - CLup_Spleen*Cedg_Spleen_E7
                - k_on_7_EXG*Cedg_Spleen_E7*CFcRn_Spleen_E7*V_Spleen_E7
                + k_off_7_EXG*Cedg_Spleen_bE7*V_Spleen_E7)/V_Spleen_E7;
dxdt_Cedg_Other_E7 = (CLup_Other*FR*Cedg_Other_VM
            + CLup_Other*(1.0-FR)*Cedg_Other_IM
                - CLup_Other*Cedg_Other_E7
                - k_on_7_EXG*Cedg_Other_E7*CFcRn_Other_E7*V_Other_E7
                + k_off_7_EXG*Cedg_Other_bE7*V_Other_E7)/V_Other_E7;
//Free EXG mAb in E6a
dxdt_Cedg_Lung_E6a = (CLup_Lung*Cedg_Lung_E7
          - CLup_Lung*Cedg_Lung_E6a
          - k_on_6_EXG*Cedg_Lung_E6a*CFcRn_Lung_E6a*V_Lung_E6a
          + k_off_6_EXG*Cedg_Lung_bE6a*V_Lung_E6a)/V_Lung_E6a;
dxdt_Cedg_Liver_E6a = (CLup_Liver*Cedg_Liver_E7
          - CLup_Liver*Cedg_Liver_E6a
          - k_on_6_EXG*Cedg_Liver_E6a*CFcRn_Liver_E6a*V_Liver_E6a
          + k_off_6_EXG*Cedg_Liver_bE6a*V_Liver_E6a)/V_Liver_E6a;
dxdt_Cedg_Heart_E6a = (CLup_Heart*Cedg_Heart_E7
          - CLup_Heart*Cedg_Heart_E6a
          - k_on_6_EXG*Cedg_Heart_E6a*CFcRn_Heart_E6a*V_Heart_E6a
          + k_off_6_EXG*Cedg_Heart_bE6a*V_Heart_E6a)/V_Heart_E6a;
dxdt_Cedg_Muscle_E6a = (CLup_Muscle*Cedg_Muscle_E7
          - CLup_Muscle*Cedg_Muscle_E6a
          - k_on_6_EXG*Cedg_Muscle_E6a*CFcRn_Muscle_E6a*V_Muscle_E6a
          + k_off_6_EXG*Cedg_Muscle_bE6a*V_Muscle_E6a)/V_Muscle_E6a;
dxdt_Cedg_Skin_E6a = (CLup_Skin*Cedg_Skin_E7
          - CLup_Skin*Cedg_Skin_E6a
          - k_on_6_EXG*Cedg_Skin_E6a*CFcRn_Skin_E6a*V_Skin_E6a
          + k_off_6_EXG*Cedg_Skin_bE6a*V_Skin_E6a)/V_Skin_E6a;
dxdt_Cedg_Adipose_E6a = (CLup_Adipose*Cedg_Adipose_E7
          - CLup_Adipose*Cedg_Adipose_E6a
          - k_on_6_EXG*Cedg_Adipose_E6a*CFcRn_Adipose_E6a*V_Adipose_E6a
          + k_off_6_EXG*Cedg_Adipose_bE6a*V_Adipose_E6a)/V_Adipose_E6a;
dxdt_Cedg_Bone_E6a = (CLup_Bone*Cedg_Bone_E7
          - CLup_Bone*Cedg_Bone_E6a
          - k_on_6_EXG*Cedg_Bone_E6a*CFcRn_Bone_E6a*V_Bone_E6a
          + k_off_6_EXG*Cedg_Bone_bE6a*V_Bone_E6a)/V_Bone_E6a;
dxdt_Cedg_Brain_E6a = (CLup_Brain*Cedg_Brain_E7
          - CLup_Brain*Cedg_Brain_E6a
          - k_on_6_EXG*Cedg_Brain_E6a*CFcRn_Brain_E6a*V_Brain_E6a
          + k_off_6_EXG*Cedg_Brain_bE6a*V_Brain_E6a)/V_Brain_E6a;
dxdt_Cedg_Kidney_E6a = (CLup_Kidney*Cedg_Kidney_E7
          - CLup_Kidney*Cedg_Kidney_E6a
          - k_on_6_EXG*Cedg_Kidney_E6a*CFcRn_Kidney_E6a*V_Kidney_E6a
          + k_off_6_EXG*Cedg_Kidney_bE6a*V_Kidney_E6a)/V_Kidney_E6a;
dxdt_Cedg_SI_E6a = (CLup_SI*Cedg_SI_E7
          - CLup_SI*Cedg_SI_E6a
          - k_on_6_EXG*Cedg_SI_E6a*CFcRn_SI_E6a*V_SI_E6a
          + k_off_6_EXG*Cedg_SI_bE6a*V_SI_E6a)/V_SI_E6a;
dxdt_Cedg_LI_E6a = (CLup_LI*Cedg_LI_E7
          - CLup_LI*Cedg_LI_E6a
          - k_on_6_EXG*Cedg_LI_E6a*CFcRn_LI_E6a*V_LI_E6a
          + k_off_6_EXG*Cedg_LI_bE6a*V_LI_E6a)/V_LI_E6a;
dxdt_Cedg_Pancreas_E6a = (CLup_Pancreas*Cedg_Pancreas_E7
          - CLup_Pancreas*Cedg_Pancreas_E6a
          - k_on_6_EXG*Cedg_Pancreas_E6a*CFcRn_Pancreas_E6a*V_Pancreas_E6a
          + k_off_6_EXG*Cedg_Pancreas_bE6a*V_Pancreas_E6a)/V_Pancreas_E6a;
dxdt_Cedg_Thymus_E6a = (CLup_Thymus*Cedg_Thymus_E7
          - CLup_Thymus*Cedg_Thymus_E6a
          - k_on_6_EXG*Cedg_Thymus_E6a*CFcRn_Thymus_E6a*V_Thymus_E6a
          + k_off_6_EXG*Cedg_Thymus_bE6a*V_Thymus_E6a)/V_Thymus_E6a;
dxdt_Cedg_Spleen_E6a = (CLup_Spleen*Cedg_Spleen_E7
          - CLup_Spleen*Cedg_Spleen_E6a
          - k_on_6_EXG*Cedg_Spleen_E6a*CFcRn_Spleen_E6a*V_Spleen_E6a
          + k_off_6_EXG*Cedg_Spleen_bE6a*V_Spleen_E6a)/V_Spleen_E6a;
dxdt_Cedg_Other_E6a = (CLup_Other*Cedg_Other_E7
          - CLup_Other*Cedg_Other_E6a
          - k_on_6_EXG*Cedg_Other_E6a*CFcRn_Other_E6a*V_Other_E6a
          + k_off_6_EXG*Cedg_Other_bE6a*V_Other_E6a)/V_Other_E6a;
// endosomal pH=7.4  b
dxdt_Cedg_Lung_E7b = (CLup_Lung*(1.0-Prob_deg)*Cedg_Lung_E6a
          - CLup_Lung*Cedg_Lung_E7b
          - k_on_7_EXG*Cedg_Lung_E7b*CFcRn_Lung_E7b*V_Lung_E7b
          + k_off_7_EXG*Cedg_Lung_bE7b*V_Lung_E7b)/V_Lung_E7b;
dxdt_Cedg_Liver_E7b = (CLup_Liver*(1.0-Prob_deg)*Cedg_Liver_E6a
          - CLup_Liver*Cedg_Liver_E7b
          - k_on_7_EXG*Cedg_Liver_E7b*CFcRn_Liver_E7b*V_Liver_E7b
          + k_off_7_EXG*Cedg_Liver_bE7b*V_Liver_E7b)/V_Liver_E7b;
dxdt_Cedg_Heart_E7b = (CLup_Heart*(1.0-Prob_deg)*Cedg_Heart_E6a
          - CLup_Heart*Cedg_Heart_E7b
          - k_on_7_EXG*Cedg_Heart_E7b*CFcRn_Heart_E7b*V_Heart_E7b
          + k_off_7_EXG*Cedg_Heart_bE7b*V_Heart_E7b)/V_Heart_E7b;
dxdt_Cedg_Muscle_E7b = (CLup_Muscle*(1.0-Prob_deg)*Cedg_Muscle_E6a
          - CLup_Muscle*Cedg_Muscle_E7b
          - k_on_7_EXG*Cedg_Muscle_E7b*CFcRn_Muscle_E7b*V_Muscle_E7b
          + k_off_7_EXG*Cedg_Muscle_bE7b*V_Muscle_E7b)/V_Muscle_E7b;
dxdt_Cedg_Skin_E7b = (CLup_Skin*(1.0-Prob_deg)*Cedg_Skin_E6a
          - CLup_Skin*Cedg_Skin_E7b
          - k_on_7_EXG*Cedg_Skin_E7b*CFcRn_Skin_E7b*V_Skin_E7b
          + k_off_7_EXG*Cedg_Skin_bE7b*V_Skin_E7b)/V_Skin_E7b;
dxdt_Cedg_Adipose_E7b = (CLup_Adipose*(1.0-Prob_deg)*Cedg_Adipose_E6a
          - CLup_Adipose*Cedg_Adipose_E7b
          - k_on_7_EXG*Cedg_Adipose_E7b*CFcRn_Adipose_E7b*V_Adipose_E7b
          + k_off_7_EXG*Cedg_Adipose_bE7b*V_Adipose_E7b)/V_Adipose_E7b;
dxdt_Cedg_Bone_E7b = (CLup_Bone*(1.0-Prob_deg)*Cedg_Bone_E6a
          - CLup_Bone*Cedg_Bone_E7b
          - k_on_7_EXG*Cedg_Bone_E7b*CFcRn_Bone_E7b*V_Bone_E7b
          + k_off_7_EXG*Cedg_Bone_bE7b*V_Bone_E7b)/V_Bone_E7b;
dxdt_Cedg_Brain_E7b = (CLup_Brain*(1.0-Prob_deg)*Cedg_Brain_E6a
          - CLup_Brain*Cedg_Brain_E7b
          - k_on_7_EXG*Cedg_Brain_E7b*CFcRn_Brain_E7b*V_Brain_E7b
          + k_off_7_EXG*Cedg_Brain_bE7b*V_Brain_E7b)/V_Brain_E7b;
dxdt_Cedg_Kidney_E7b = (CLup_Kidney*(1.0-Prob_deg)*Cedg_Kidney_E6a
          - CLup_Kidney*Cedg_Kidney_E7b
          - k_on_7_EXG*Cedg_Kidney_E7b*CFcRn_Kidney_E7b*V_Kidney_E7b
          + k_off_7_EXG*Cedg_Kidney_bE7b*V_Kidney_E7b)/V_Kidney_E7b;
dxdt_Cedg_SI_E7b = (CLup_SI*(1.0-Prob_deg)*Cedg_SI_E6a
          - CLup_SI*Cedg_SI_E7b
          - k_on_7_EXG*Cedg_SI_E7b*CFcRn_SI_E7b*V_SI_E7b
          + k_off_7_EXG*Cedg_SI_bE7b*V_SI_E7b)/V_SI_E7b;
dxdt_Cedg_LI_E7b = (CLup_LI*(1.0-Prob_deg)*Cedg_LI_E6a
          - CLup_LI*Cedg_LI_E7b
          - k_on_7_EXG*Cedg_LI_E7b*CFcRn_LI_E7b*V_LI_E7b
          + k_off_7_EXG*Cedg_LI_bE7b*V_LI_E7b)/V_LI_E7b;
dxdt_Cedg_Pancreas_E7b = (CLup_Pancreas*(1.0-Prob_deg)*Cedg_Pancreas_E6a
          - CLup_Pancreas*Cedg_Pancreas_E7b
          - k_on_7_EXG*Cedg_Pancreas_E7b*CFcRn_Pancreas_E7b*V_Pancreas_E7b
          + k_off_7_EXG*Cedg_Pancreas_bE7b*V_Pancreas_E7b)/V_Pancreas_E7b;
dxdt_Cedg_Thymus_E7b = (CLup_Thymus*(1.0-Prob_deg)*Cedg_Thymus_E6a
          - CLup_Thymus*Cedg_Thymus_E7b
          - k_on_7_EXG*Cedg_Thymus_E7b*CFcRn_Thymus_E7b*V_Thymus_E7b
          + k_off_7_EXG*Cedg_Thymus_bE7b*V_Thymus_E7b)/V_Thymus_E7b;
dxdt_Cedg_Spleen_E7b = (CLup_Spleen*(1.0-Prob_deg)*Cedg_Spleen_E6a
          - CLup_Spleen*Cedg_Spleen_E7b
          - k_on_7_EXG*Cedg_Spleen_E7b*CFcRn_Spleen_E7b*V_Spleen_E7b
          + k_off_7_EXG*Cedg_Spleen_bE7b*V_Spleen_E7b)/V_Spleen_E7b;
dxdt_Cedg_Other_E7b = (CLup_Other*(1.0-Prob_deg)*Cedg_Other_E6a
          - CLup_Other*Cedg_Other_E7b
          - k_on_7_EXG*Cedg_Other_E7b*CFcRn_Other_E7b*V_Other_E7b
          + k_off_7_EXG*Cedg_Other_bE7b*V_Other_E7b)/V_Other_E7b;
//;; IS side mem
dxdt_Cedg_Lung_IM = (CLup_Lung*(1.0-FR)*Cedg_Lung_IS
            - CLup_Lung*(1.0-FR)*Cedg_Lung_IM
                + CLup_Lung*(1.0-FR)*Cedg_Lung_E7b
                - CLup_Lung*(1.0-FR)*Cedg_Lung_IM
                - k_on_7_EXG*Cedg_Lung_IM*CFcRn_Lung_IM*V_Lung_IM
                + k_off_7_EXG*Cedg_Lung_bIM*V_Lung_IM)/V_Lung_IM;
dxdt_Cedg_Liver_IM = (CLup_Liver*(1.0-FR)*Cedg_Liver_IS
            - CLup_Liver*(1.0-FR)*Cedg_Liver_IM
                + CLup_Liver*(1.0-FR)*Cedg_Liver_E7b
                - CLup_Liver*(1.0-FR)*Cedg_Liver_IM
                - k_on_7_EXG*Cedg_Liver_IM*CFcRn_Liver_IM*V_Liver_IM
                + k_off_7_EXG*Cedg_Liver_bIM*V_Liver_IM)/V_Liver_IM;
dxdt_Cedg_Heart_IM = (CLup_Heart*(1.0-FR)*Cedg_Heart_IS
            - CLup_Heart*(1.0-FR)*Cedg_Heart_IM
                + CLup_Heart*(1.0-FR)*Cedg_Heart_E7b
                - CLup_Heart*(1.0-FR)*Cedg_Heart_IM
                - k_on_7_EXG*Cedg_Heart_IM*CFcRn_Heart_IM*V_Heart_IM
                + k_off_7_EXG*Cedg_Heart_bIM*V_Heart_IM)/V_Heart_IM;
dxdt_Cedg_Muscle_IM = (CLup_Muscle*(1.0-FR)*Cedg_Muscle_IS
            - CLup_Muscle*(1.0-FR)*Cedg_Muscle_IM
                + CLup_Muscle*(1.0-FR)*Cedg_Muscle_E7b
                - CLup_Muscle*(1.0-FR)*Cedg_Muscle_IM
                - k_on_7_EXG*Cedg_Muscle_IM*CFcRn_Muscle_IM*V_Muscle_IM
                + k_off_7_EXG*Cedg_Muscle_bIM*V_Muscle_IM)/V_Muscle_IM;
dxdt_Cedg_Skin_IM = (CLup_Skin*(1.0-FR)*Cedg_Skin_IS
            - CLup_Skin*(1.0-FR)*Cedg_Skin_IM
                + CLup_Skin*(1.0-FR)*Cedg_Skin_E7b
                - CLup_Skin*(1.0-FR)*Cedg_Skin_IM
                - k_on_7_EXG*Cedg_Skin_IM*CFcRn_Skin_IM*V_Skin_IM
                + k_off_7_EXG*Cedg_Skin_bIM*V_Skin_IM)/V_Skin_IM;
dxdt_Cedg_Adipose_IM = (CLup_Adipose*(1.0-FR)*Cedg_Adipose_IS
            - CLup_Adipose*(1.0-FR)*Cedg_Adipose_IM
                + CLup_Adipose*(1.0-FR)*Cedg_Adipose_E7b
                - CLup_Adipose*(1.0-FR)*Cedg_Adipose_IM
                - k_on_7_EXG*Cedg_Adipose_IM*CFcRn_Adipose_IM*V_Adipose_IM
                + k_off_7_EXG*Cedg_Adipose_bIM*V_Adipose_IM)/V_Adipose_IM;
dxdt_Cedg_Bone_IM = (CLup_Bone*(1.0-FR)*Cedg_Bone_IS
            - CLup_Bone*(1.0-FR)*Cedg_Bone_IM
                + CLup_Bone*(1.0-FR)*Cedg_Bone_E7b
                - CLup_Bone*(1.0-FR)*Cedg_Bone_IM
                - k_on_7_EXG*Cedg_Bone_IM*CFcRn_Bone_IM*V_Bone_IM
                + k_off_7_EXG*Cedg_Bone_bIM*V_Bone_IM)/V_Bone_IM;
dxdt_Cedg_Brain_IM = (CLup_Brain*(1.0-FR)*Cedg_Brain_IS
            - CLup_Brain*(1.0-FR)*Cedg_Brain_IM
                + CLup_Brain*(1.0-FR)*Cedg_Brain_E7b
                - CLup_Brain*(1.0-FR)*Cedg_Brain_IM
                - k_on_7_EXG*Cedg_Brain_IM*CFcRn_Brain_IM*V_Brain_IM
                + k_off_7_EXG*Cedg_Brain_bIM*V_Brain_IM)/V_Brain_IM;
dxdt_Cedg_Kidney_IM = (CLup_Kidney*(1.0-FR)*Cedg_Kidney_IS
            - CLup_Kidney*(1.0-FR)*Cedg_Kidney_IM
                + CLup_Kidney*(1.0-FR)*Cedg_Kidney_E7b
                - CLup_Kidney*(1.0-FR)*Cedg_Kidney_IM
                - k_on_7_EXG*Cedg_Kidney_IM*CFcRn_Kidney_IM*V_Kidney_IM
                + k_off_7_EXG*Cedg_Kidney_bIM*V_Kidney_IM)/V_Kidney_IM;
dxdt_Cedg_SI_IM = (CLup_SI*(1.0-FR)*Cedg_SI_IS
            - CLup_SI*(1.0-FR)*Cedg_SI_IM
                + CLup_SI*(1.0-FR)*Cedg_SI_E7b
                - CLup_SI*(1.0-FR)*Cedg_SI_IM
                - k_on_7_EXG*Cedg_SI_IM*CFcRn_SI_IM*V_SI_IM
                + k_off_7_EXG*Cedg_SI_bIM*V_SI_IM)/V_SI_IM;
dxdt_Cedg_LI_IM = (CLup_LI*(1.0-FR)*Cedg_LI_IS
            - CLup_LI*(1.0-FR)*Cedg_LI_IM
                + CLup_LI*(1.0-FR)*Cedg_LI_E7b
                - CLup_LI*(1.0-FR)*Cedg_LI_IM
                - k_on_7_EXG*Cedg_LI_IM*CFcRn_LI_IM*V_LI_IM
                + k_off_7_EXG*Cedg_LI_bIM*V_LI_IM)/V_LI_IM;
dxdt_Cedg_Pancreas_IM = (CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_IS
            - CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_IM
                + CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_E7b
                - CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_IM
                - k_on_7_EXG*Cedg_Pancreas_IM*CFcRn_Pancreas_IM*V_Pancreas_IM
                + k_off_7_EXG*Cedg_Pancreas_bIM*V_Pancreas_IM)/V_Pancreas_IM;
dxdt_Cedg_Thymus_IM = (CLup_Thymus*(1.0-FR)*Cedg_Thymus_IS
            - CLup_Thymus*(1.0-FR)*Cedg_Thymus_IM
                + CLup_Thymus*(1.0-FR)*Cedg_Thymus_E7b
                - CLup_Thymus*(1.0-FR)*Cedg_Thymus_IM
                - k_on_7_EXG*Cedg_Thymus_IM*CFcRn_Thymus_IM*V_Thymus_IM
                + k_off_7_EXG*Cedg_Thymus_bIM*V_Thymus_IM)/V_Thymus_IM;
dxdt_Cedg_Spleen_IM = (CLup_Spleen*(1.0-FR)*Cedg_Spleen_IS
            - CLup_Spleen*(1.0-FR)*Cedg_Spleen_IM
                + CLup_Spleen*(1.0-FR)*Cedg_Spleen_E7b
                - CLup_Spleen*(1.0-FR)*Cedg_Spleen_IM
                - k_on_7_EXG*Cedg_Spleen_IM*CFcRn_Spleen_IM*V_Spleen_IM
                + k_off_7_EXG*Cedg_Spleen_bIM*V_Spleen_IM)/V_Spleen_IM;
dxdt_Cedg_Other_IM = (CLup_Other*(1.0-FR)*Cedg_Other_IS
            - CLup_Other*(1.0-FR)*Cedg_Other_IM
                + CLup_Other*(1.0-FR)*Cedg_Other_E7b
                - CLup_Other*(1.0-FR)*Cedg_Other_IM
                - k_on_7_EXG*Cedg_Other_IM*CFcRn_Other_IM*V_Other_IM
                + k_off_7_EXG*Cedg_Other_bIM*V_Other_IM)/V_Other_IM;
//;; Interstitial space
dxdt_Cedg_Lung_IS = ((1.0-SV_Lung)*LF_Lung*Cedg_Lung_V
          - CLup_Lung*(1.0-FR)*Cedg_Lung_IS
          + CLup_Lung*(1.0-FR)*Cedg_Lung_IM
          - (1.0-SIS_Lung)*LF_Lung*Cedg_Lung_IS)/V_Lung_IS;
dxdt_Cedg_Liver_IS = ((1.0-SV_Liver)*LF_Liver*Cedg_Liver_V
          - CLup_Liver*(1.0-FR)*Cedg_Liver_IS
          + CLup_Liver*(1.0-FR)*Cedg_Liver_IM
          - (1.0-SIS_Liver)*LF_Liver*Cedg_Liver_IS)/V_Liver_IS;
dxdt_Cedg_Heart_IS = ((1.0-SV_Heart)*LF_Heart*Cedg_Heart_V
          - CLup_Heart*(1.0-FR)*Cedg_Heart_IS
          + CLup_Heart*(1.0-FR)*Cedg_Heart_IM
          - (1.0-SIS_Heart)*LF_Heart*Cedg_Heart_IS)/V_Heart_IS;
dxdt_Cedg_Muscle_IS = ((1.0-SV_Muscle)*LF_Muscle*Cedg_Muscle_V
          - CLup_Muscle*(1.0-FR)*Cedg_Muscle_IS
          + CLup_Muscle*(1.0-FR)*Cedg_Muscle_IM
          - (1.0-SIS_Muscle)*LF_Muscle*Cedg_Muscle_IS)/V_Muscle_IS;
dxdt_Cedg_Skin_IS = ((1.0-SV_Skin)*LF_Skin*Cedg_Skin_V
          - CLup_Skin*(1.0-FR)*Cedg_Skin_IS
          + CLup_Skin*(1.0-FR)*Cedg_Skin_IM
          - (1.0-SIS_Skin)*LF_Skin*Cedg_Skin_IS)/V_Skin_IS;
dxdt_Cedg_Adipose_IS = ((1.0-SV_Adipose)*LF_Adipose*Cedg_Adipose_V
          - CLup_Adipose*(1.0-FR)*Cedg_Adipose_IS
          + CLup_Adipose*(1.0-FR)*Cedg_Adipose_IM
          - (1.0-SIS_Adipose)*LF_Adipose*Cedg_Adipose_IS)/V_Adipose_IS;
dxdt_Cedg_Bone_IS = ((1.0-SV_Bone)*LF_Bone*Cedg_Bone_V
          - CLup_Bone*(1.0-FR)*Cedg_Bone_IS
          + CLup_Bone*(1.0-FR)*Cedg_Bone_IM
          - (1.0-SIS_Bone)*LF_Bone*Cedg_Bone_IS)/V_Bone_IS;
dxdt_Cedg_Brain_IS = ((1.0-SV_Brain)*LF_Brain*Cedg_Brain_V
          - CLup_Brain*(1.0-FR)*Cedg_Brain_IS
          + CLup_Brain*(1.0-FR)*Cedg_Brain_IM
          - (1.0-SIS_Brain)*LF_Brain*Cedg_Brain_IS)/V_Brain_IS;
dxdt_Cedg_Kidney_IS = ((1.0-SV_Kidney)*LF_Kidney*Cedg_Kidney_V
          - CLup_Kidney*(1.0-FR)*Cedg_Kidney_IS
          + CLup_Kidney*(1.0-FR)*Cedg_Kidney_IM
          - (1.0-SIS_Kidney)*LF_Kidney*Cedg_Kidney_IS)/V_Kidney_IS;
dxdt_Cedg_SI_IS = ((1.0-SV_SI)*LF_SI*Cedg_SI_V
          - CLup_SI*(1.0-FR)*Cedg_SI_IS
          + CLup_SI*(1.0-FR)*Cedg_SI_IM
          - (1.0-SIS_SI)*LF_SI*Cedg_SI_IS)/V_SI_IS;
dxdt_Cedg_LI_IS = ((1.0-SV_LI)*LF_LI*Cedg_LI_V
          - CLup_LI*(1.0-FR)*Cedg_LI_IS
          + CLup_LI*(1.0-FR)*Cedg_LI_IM
          - (1.0-SIS_LI)*LF_LI*Cedg_LI_IS)/V_LI_IS;
dxdt_Cedg_Pancreas_IS = ((1.0-SV_Pancreas)*LF_Pancreas*Cedg_Pancreas_V
          - CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_IS
          + CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_IM
          - (1.0-SIS_Pancreas)*LF_Pancreas*Cedg_Pancreas_IS)/V_Pancreas_IS;
dxdt_Cedg_Thymus_IS = ((1.0-SV_Thymus)*LF_Thymus*Cedg_Thymus_V
          - CLup_Thymus*(1.0-FR)*Cedg_Thymus_IS
          + CLup_Thymus*(1.0-FR)*Cedg_Thymus_IM
          - (1.0-SIS_Thymus)*LF_Thymus*Cedg_Thymus_IS)/V_Thymus_IS;
dxdt_Cedg_Spleen_IS = ((1.0-SV_Spleen)*LF_Spleen*Cedg_Spleen_V
          - CLup_Spleen*(1.0-FR)*Cedg_Spleen_IS
          + CLup_Spleen*(1.0-FR)*Cedg_Spleen_IM
          - (1.0-SIS_Spleen)*LF_Spleen*Cedg_Spleen_IS)/V_Spleen_IS;
dxdt_Cedg_Other_IS = ((1.0-SV_Other)*LF_Other*Cedg_Other_V
          - CLup_Other*(1.0-FR)*Cedg_Other_IS
          + CLup_Other*(1.0-FR)*Cedg_Other_IM
          - (1.0-SIS_Other)*LF_Other*Cedg_Other_IS)/V_Other_IS;
//;;;;;;;;;;;;;;;; For FcRn-IgG (bounded)
dxdt_Cedg_Lung_bVM = (k_on_7_EXG*Cedg_Lung_VM*CFcRn_Lung_VM*V_Lung_VM
          - k_off_7_EXG*Cedg_Lung_bVM*V_Lung_VM
          - k_on_7_EXG2*Cedg_Lung_bVM*CFcRn_Lung_VM*V_Lung_VM
          + k_off_7_EXG2*Cedg_Lung_b2VM*V_Lung_VM
          - CLup_Lung*FR*Cedg_Lung_bVM
          + CLup_Lung*FR*Cedg_Lung_bE7b
          - kdeg_FcRn_Ab*Cedg_Lung_bVM*V_Lung_VM)/V_Lung_VM;
dxdt_Cedg_Liver_bVM = (k_on_7_EXG*Cedg_Liver_VM*CFcRn_Liver_VM*V_Liver_VM
          - k_off_7_EXG*Cedg_Liver_bVM*V_Liver_VM
          - k_on_7_EXG2*Cedg_Liver_bVM*CFcRn_Liver_VM*V_Liver_VM
          + k_off_7_EXG2*Cedg_Liver_b2VM*V_Liver_VM
          - CLup_Liver*FR*Cedg_Liver_bVM
          + CLup_Liver*FR*Cedg_Liver_bE7b
          - kdeg_FcRn_Ab*Cedg_Liver_bVM*V_Liver_VM)/V_Liver_VM;
dxdt_Cedg_Heart_bVM = (k_on_7_EXG*Cedg_Heart_VM*CFcRn_Heart_VM*V_Heart_VM
          - k_off_7_EXG*Cedg_Heart_bVM*V_Heart_VM
          - k_on_7_EXG2*Cedg_Heart_bVM*CFcRn_Heart_VM*V_Heart_VM
          + k_off_7_EXG2*Cedg_Heart_b2VM*V_Heart_VM
          - CLup_Heart*FR*Cedg_Heart_bVM
          + CLup_Heart*FR*Cedg_Heart_bE7b
          - kdeg_FcRn_Ab*Cedg_Heart_bVM*V_Heart_VM)/V_Heart_VM;
dxdt_Cedg_Muscle_bVM = (k_on_7_EXG*Cedg_Muscle_VM*CFcRn_Muscle_VM*V_Muscle_VM
          - k_off_7_EXG*Cedg_Muscle_bVM*V_Muscle_VM
          - k_on_7_EXG2*Cedg_Muscle_bVM*CFcRn_Muscle_VM*V_Muscle_VM
          + k_off_7_EXG2*Cedg_Muscle_b2VM*V_Muscle_VM
          - CLup_Muscle*FR*Cedg_Muscle_bVM
          + CLup_Muscle*FR*Cedg_Muscle_bE7b
          - kdeg_FcRn_Ab*Cedg_Muscle_bVM*V_Muscle_VM)/V_Muscle_VM;
dxdt_Cedg_Skin_bVM = (k_on_7_EXG*Cedg_Skin_VM*CFcRn_Skin_VM*V_Skin_VM
          - k_off_7_EXG*Cedg_Skin_bVM*V_Skin_VM
          - k_on_7_EXG2*Cedg_Skin_bVM*CFcRn_Skin_VM*V_Skin_VM
          + k_off_7_EXG2*Cedg_Skin_b2VM*V_Skin_VM
          - CLup_Skin*FR*Cedg_Skin_bVM
          + CLup_Skin*FR*Cedg_Skin_bE7b
          - kdeg_FcRn_Ab*Cedg_Skin_bVM*V_Skin_VM)/V_Skin_VM;
dxdt_Cedg_Adipose_bVM = (k_on_7_EXG*Cedg_Adipose_VM*CFcRn_Adipose_VM*V_Adipose_VM
          - k_off_7_EXG*Cedg_Adipose_bVM*V_Adipose_VM
          - k_on_7_EXG2*Cedg_Adipose_bVM*CFcRn_Adipose_VM*V_Adipose_VM
          + k_off_7_EXG2*Cedg_Adipose_b2VM*V_Adipose_VM
          - CLup_Adipose*FR*Cedg_Adipose_bVM
          + CLup_Adipose*FR*Cedg_Adipose_bE7b
          - kdeg_FcRn_Ab*Cedg_Adipose_bVM*V_Adipose_VM)/V_Adipose_VM;
dxdt_Cedg_Bone_bVM = (k_on_7_EXG*Cedg_Bone_VM*CFcRn_Bone_VM*V_Bone_VM
          - k_off_7_EXG*Cedg_Bone_bVM*V_Bone_VM
          - k_on_7_EXG2*Cedg_Bone_bVM*CFcRn_Bone_VM*V_Bone_VM
          + k_off_7_EXG2*Cedg_Bone_b2VM*V_Bone_VM
          - CLup_Bone*FR*Cedg_Bone_bVM
          + CLup_Bone*FR*Cedg_Bone_bE7b
          - kdeg_FcRn_Ab*Cedg_Bone_bVM*V_Bone_VM)/V_Bone_VM;
dxdt_Cedg_Brain_bVM = (k_on_7_EXG*Cedg_Brain_VM*CFcRn_Brain_VM*V_Brain_VM
          - k_off_7_EXG*Cedg_Brain_bVM*V_Brain_VM
          - k_on_7_EXG2*Cedg_Brain_bVM*CFcRn_Brain_VM*V_Brain_VM
          + k_off_7_EXG2*Cedg_Brain_b2VM*V_Brain_VM
          - CLup_Brain*FR*Cedg_Brain_bVM
          + CLup_Brain*FR*Cedg_Brain_bE7b
          - kdeg_FcRn_Ab*Cedg_Brain_bVM*V_Brain_VM)/V_Brain_VM;
dxdt_Cedg_Kidney_bVM = (k_on_7_EXG*Cedg_Kidney_VM*CFcRn_Kidney_VM*V_Kidney_VM
          - k_off_7_EXG*Cedg_Kidney_bVM*V_Kidney_VM
          - k_on_7_EXG2*Cedg_Kidney_bVM*CFcRn_Kidney_VM*V_Kidney_VM
          + k_off_7_EXG2*Cedg_Kidney_b2VM*V_Kidney_VM
          - CLup_Kidney*FR*Cedg_Kidney_bVM
          + CLup_Kidney*FR*Cedg_Kidney_bE7b
          - kdeg_FcRn_Ab*Cedg_Kidney_bVM*V_Kidney_VM)/V_Kidney_VM;
dxdt_Cedg_SI_bVM = (k_on_7_EXG*Cedg_SI_VM*CFcRn_SI_VM*V_SI_VM
          - k_off_7_EXG*Cedg_SI_bVM*V_SI_VM
          - k_on_7_EXG2*Cedg_SI_bVM*CFcRn_SI_VM*V_SI_VM
          + k_off_7_EXG2*Cedg_SI_b2VM*V_SI_VM
          - CLup_SI*FR*Cedg_SI_bVM
          + CLup_SI*FR*Cedg_SI_bE7b
          - kdeg_FcRn_Ab*Cedg_SI_bVM*V_SI_VM)/V_SI_VM;
dxdt_Cedg_LI_bVM = (k_on_7_EXG*Cedg_LI_VM*CFcRn_LI_VM*V_LI_VM
          - k_off_7_EXG*Cedg_LI_bVM*V_LI_VM
          - k_on_7_EXG2*Cedg_LI_bVM*CFcRn_LI_VM*V_LI_VM
          + k_off_7_EXG2*Cedg_LI_b2VM*V_LI_VM
          - CLup_LI*FR*Cedg_LI_bVM
          + CLup_LI*FR*Cedg_LI_bE7b
          - kdeg_FcRn_Ab*Cedg_LI_bVM*V_LI_VM)/V_LI_VM;
dxdt_Cedg_Pancreas_bVM = (k_on_7_EXG*Cedg_Pancreas_VM*CFcRn_Pancreas_VM*V_Pancreas_VM
          - k_off_7_EXG*Cedg_Pancreas_bVM*V_Pancreas_VM
          - k_on_7_EXG2*Cedg_Pancreas_bVM*CFcRn_Pancreas_VM*V_Pancreas_VM
          + k_off_7_EXG2*Cedg_Pancreas_b2VM*V_Pancreas_VM
          - CLup_Pancreas*FR*Cedg_Pancreas_bVM
          + CLup_Pancreas*FR*Cedg_Pancreas_bE7b
          - kdeg_FcRn_Ab*Cedg_Pancreas_bVM*V_Pancreas_VM)/V_Pancreas_VM;
dxdt_Cedg_Thymus_bVM = (k_on_7_EXG*Cedg_Thymus_VM*CFcRn_Thymus_VM*V_Thymus_VM
          - k_off_7_EXG*Cedg_Thymus_bVM*V_Thymus_VM
          - k_on_7_EXG2*Cedg_Thymus_bVM*CFcRn_Thymus_VM*V_Thymus_VM
          + k_off_7_EXG2*Cedg_Thymus_b2VM*V_Thymus_VM
          - CLup_Thymus*FR*Cedg_Thymus_bVM
          + CLup_Thymus*FR*Cedg_Thymus_bE7b
          - kdeg_FcRn_Ab*Cedg_Thymus_bVM*V_Thymus_VM)/V_Thymus_VM;
dxdt_Cedg_Spleen_bVM = (k_on_7_EXG*Cedg_Spleen_VM*CFcRn_Spleen_VM*V_Spleen_VM
          - k_off_7_EXG*Cedg_Spleen_bVM*V_Spleen_VM
          - k_on_7_EXG2*Cedg_Spleen_bVM*CFcRn_Spleen_VM*V_Spleen_VM
          + k_off_7_EXG2*Cedg_Spleen_b2VM*V_Spleen_VM
          - CLup_Spleen*FR*Cedg_Spleen_bVM
          + CLup_Spleen*FR*Cedg_Spleen_bE7b
          - kdeg_FcRn_Ab*Cedg_Spleen_bVM*V_Spleen_VM)/V_Spleen_VM;
dxdt_Cedg_Other_bVM = (k_on_7_EXG*Cedg_Other_VM*CFcRn_Other_VM*V_Other_VM
          - k_off_7_EXG*Cedg_Other_bVM*V_Other_VM
          - k_on_7_EXG2*Cedg_Other_bVM*CFcRn_Other_VM*V_Other_VM
          + k_off_7_EXG2*Cedg_Other_b2VM*V_Other_VM
          - CLup_Other*FR*Cedg_Other_bVM
          + CLup_Other*FR*Cedg_Other_bE7b
          - kdeg_FcRn_Ab*Cedg_Other_bVM*V_Other_VM)/V_Other_VM;
dxdt_Cedg_Lung_b2VM = (k_on_7_EXG2 * Cedg_Lung_bVM*CFcRn_Lung_VM*V_Lung_VM
          - k_off_7_EXG2 * Cedg_Lung_b2VM*V_Lung_VM
          - CLup_Lung*FR*Cedg_Lung_b2VM
          + CLup_Lung*FR*Cedg_Lung_b2E7b
          - kdeg_FcRn_Ab*Cedg_Lung_b2VM*V_Lung_VM)/V_Lung_VM;
dxdt_Cedg_Liver_b2VM = (k_on_7_EXG2 * Cedg_Liver_bVM*CFcRn_Liver_VM*V_Liver_VM
          - k_off_7_EXG2 * Cedg_Liver_b2VM*V_Liver_VM
          - CLup_Liver*FR*Cedg_Liver_b2VM
          + CLup_Liver*FR*Cedg_Liver_b2E7b
          - kdeg_FcRn_Ab*Cedg_Liver_b2VM*V_Liver_VM)/V_Liver_VM;
dxdt_Cedg_Heart_b2VM = (k_on_7_EXG2 * Cedg_Heart_bVM*CFcRn_Heart_VM*V_Heart_VM
          - k_off_7_EXG2 * Cedg_Heart_b2VM*V_Heart_VM
          - CLup_Heart*FR*Cedg_Heart_b2VM
          + CLup_Heart*FR*Cedg_Heart_b2E7b
          - kdeg_FcRn_Ab*Cedg_Heart_b2VM*V_Heart_VM)/V_Heart_VM;
dxdt_Cedg_Muscle_b2VM = (k_on_7_EXG2 * Cedg_Muscle_bVM*CFcRn_Muscle_VM*V_Muscle_VM
          - k_off_7_EXG2 * Cedg_Muscle_b2VM*V_Muscle_VM
          - CLup_Muscle*FR*Cedg_Muscle_b2VM
          + CLup_Muscle*FR*Cedg_Muscle_b2E7b
          - kdeg_FcRn_Ab*Cedg_Muscle_b2VM*V_Muscle_VM)/V_Muscle_VM;
dxdt_Cedg_Skin_b2VM = (k_on_7_EXG2 * Cedg_Skin_bVM*CFcRn_Skin_VM*V_Skin_VM
          - k_off_7_EXG2 * Cedg_Skin_b2VM*V_Skin_VM
          - CLup_Skin*FR*Cedg_Skin_b2VM
          + CLup_Skin*FR*Cedg_Skin_b2E7b
          - kdeg_FcRn_Ab*Cedg_Skin_b2VM*V_Skin_VM)/V_Skin_VM;
dxdt_Cedg_Adipose_b2VM = (k_on_7_EXG2 * Cedg_Adipose_bVM*CFcRn_Adipose_VM*V_Adipose_VM
          - k_off_7_EXG2 * Cedg_Adipose_b2VM*V_Adipose_VM
          - CLup_Adipose*FR*Cedg_Adipose_b2VM
          + CLup_Adipose*FR*Cedg_Adipose_b2E7b
          - kdeg_FcRn_Ab*Cedg_Adipose_b2VM*V_Adipose_VM)/V_Adipose_VM;
dxdt_Cedg_Bone_b2VM = (k_on_7_EXG2 * Cedg_Bone_bVM*CFcRn_Bone_VM*V_Bone_VM
          - k_off_7_EXG2 * Cedg_Bone_b2VM*V_Bone_VM
          - CLup_Bone*FR*Cedg_Bone_b2VM
          + CLup_Bone*FR*Cedg_Bone_b2E7b
          - kdeg_FcRn_Ab*Cedg_Bone_b2VM*V_Bone_VM)/V_Bone_VM;
dxdt_Cedg_Brain_b2VM = (k_on_7_EXG2 * Cedg_Brain_bVM*CFcRn_Brain_VM*V_Brain_VM
          - k_off_7_EXG2 * Cedg_Brain_b2VM*V_Brain_VM
          - CLup_Brain*FR*Cedg_Brain_b2VM
          + CLup_Brain*FR*Cedg_Brain_b2E7b
          - kdeg_FcRn_Ab*Cedg_Brain_b2VM*V_Brain_VM)/V_Brain_VM;
dxdt_Cedg_Kidney_b2VM = (k_on_7_EXG2 * Cedg_Kidney_bVM*CFcRn_Kidney_VM*V_Kidney_VM
          - k_off_7_EXG2 * Cedg_Kidney_b2VM*V_Kidney_VM
          - CLup_Kidney*FR*Cedg_Kidney_b2VM
          + CLup_Kidney*FR*Cedg_Kidney_b2E7b
          - kdeg_FcRn_Ab*Cedg_Kidney_b2VM*V_Kidney_VM)/V_Kidney_VM;
dxdt_Cedg_SI_b2VM = (k_on_7_EXG2 * Cedg_SI_bVM*CFcRn_SI_VM*V_SI_VM
          - k_off_7_EXG2 * Cedg_SI_b2VM*V_SI_VM
          - CLup_SI*FR*Cedg_SI_b2VM
          + CLup_SI*FR*Cedg_SI_b2E7b
          - kdeg_FcRn_Ab*Cedg_SI_b2VM*V_SI_VM)/V_SI_VM;
dxdt_Cedg_LI_b2VM = (k_on_7_EXG2 * Cedg_LI_bVM*CFcRn_LI_VM*V_LI_VM
          - k_off_7_EXG2 * Cedg_LI_b2VM*V_LI_VM
          - CLup_LI*FR*Cedg_LI_b2VM
          + CLup_LI*FR*Cedg_LI_b2E7b
          - kdeg_FcRn_Ab*Cedg_LI_b2VM*V_LI_VM)/V_LI_VM;
dxdt_Cedg_Pancreas_b2VM = (k_on_7_EXG2 * Cedg_Pancreas_bVM*CFcRn_Pancreas_VM*V_Pancreas_VM
          - k_off_7_EXG2 * Cedg_Pancreas_b2VM*V_Pancreas_VM
          - CLup_Pancreas*FR*Cedg_Pancreas_b2VM
          + CLup_Pancreas*FR*Cedg_Pancreas_b2E7b
          - kdeg_FcRn_Ab*Cedg_Pancreas_b2VM*V_Pancreas_VM)/V_Pancreas_VM;
dxdt_Cedg_Thymus_b2VM = (k_on_7_EXG2 * Cedg_Thymus_bVM*CFcRn_Thymus_VM*V_Thymus_VM
          - k_off_7_EXG2 * Cedg_Thymus_b2VM*V_Thymus_VM
          - CLup_Thymus*FR*Cedg_Thymus_b2VM
          + CLup_Thymus*FR*Cedg_Thymus_b2E7b
          - kdeg_FcRn_Ab*Cedg_Thymus_b2VM*V_Thymus_VM)/V_Thymus_VM;
dxdt_Cedg_Spleen_b2VM = (k_on_7_EXG2 * Cedg_Spleen_bVM*CFcRn_Spleen_VM*V_Spleen_VM
          - k_off_7_EXG2 * Cedg_Spleen_b2VM*V_Spleen_VM
          - CLup_Spleen*FR*Cedg_Spleen_b2VM
          + CLup_Spleen*FR*Cedg_Spleen_b2E7b
          - kdeg_FcRn_Ab*Cedg_Spleen_b2VM*V_Spleen_VM)/V_Spleen_VM;
dxdt_Cedg_Other_b2VM = (k_on_7_EXG2 * Cedg_Other_bVM*CFcRn_Other_VM*V_Other_VM
          - k_off_7_EXG2 * Cedg_Other_b2VM*V_Other_VM
          - CLup_Other*FR*Cedg_Other_b2VM
          + CLup_Other*FR*Cedg_Other_b2E7b
          - kdeg_FcRn_Ab*Cedg_Other_b2VM*V_Other_VM)/V_Other_VM;
//;; endosomal space
dxdt_Cedg_Lung_bE7 = (k_on_7_EXG*Cedg_Lung_E7*CFcRn_Lung_E7*V_Lung_E7
          - k_off_7_EXG*Cedg_Lung_bE7*V_Lung_E7
          - k_on_7_EXG2*Cedg_Lung_bE7*CFcRn_Lung_E7*V_Lung_E7
          + k_off_7_EXG2*Cedg_Lung_b2E7*V_Lung_E7
          - CLup_Lung*Cedg_Lung_bE7
          + CLup_Lung*FR*Cedg_Lung_bVM
          + CLup_Lung*(1.0-FR)*Cedg_Lung_bIM)/V_Lung_E7;
dxdt_Cedg_Liver_bE7 = (k_on_7_EXG*Cedg_Liver_E7*CFcRn_Liver_E7*V_Liver_E7
          - k_off_7_EXG*Cedg_Liver_bE7*V_Liver_E7
          - k_on_7_EXG2*Cedg_Liver_bE7*CFcRn_Liver_E7*V_Liver_E7
          + k_off_7_EXG2*Cedg_Liver_b2E7*V_Liver_E7
          - CLup_Liver*Cedg_Liver_bE7
          + CLup_Liver*FR*Cedg_Liver_bVM
          + CLup_Liver*(1.0-FR)*Cedg_Liver_bIM)/V_Liver_E7;
dxdt_Cedg_Heart_bE7 = (k_on_7_EXG*Cedg_Heart_E7*CFcRn_Heart_E7*V_Heart_E7
          - k_off_7_EXG*Cedg_Heart_bE7*V_Heart_E7
          - k_on_7_EXG2*Cedg_Heart_bE7*CFcRn_Heart_E7*V_Heart_E7
          + k_off_7_EXG2*Cedg_Heart_b2E7*V_Heart_E7
          - CLup_Heart*Cedg_Heart_bE7
          + CLup_Heart*FR*Cedg_Heart_bVM
          + CLup_Heart*(1.0-FR)*Cedg_Heart_bIM)/V_Heart_E7;
dxdt_Cedg_Muscle_bE7 = (k_on_7_EXG*Cedg_Muscle_E7*CFcRn_Muscle_E7*V_Muscle_E7
          - k_off_7_EXG*Cedg_Muscle_bE7*V_Muscle_E7
          - k_on_7_EXG2*Cedg_Muscle_bE7*CFcRn_Muscle_E7*V_Muscle_E7
          + k_off_7_EXG2*Cedg_Muscle_b2E7*V_Muscle_E7
          - CLup_Muscle*Cedg_Muscle_bE7
          + CLup_Muscle*FR*Cedg_Muscle_bVM
          + CLup_Muscle*(1.0-FR)*Cedg_Muscle_bIM)/V_Muscle_E7;
dxdt_Cedg_Skin_bE7 = (k_on_7_EXG*Cedg_Skin_E7*CFcRn_Skin_E7*V_Skin_E7
          - k_off_7_EXG*Cedg_Skin_bE7*V_Skin_E7
          - k_on_7_EXG2*Cedg_Skin_bE7*CFcRn_Skin_E7*V_Skin_E7
          + k_off_7_EXG2*Cedg_Skin_b2E7*V_Skin_E7
          - CLup_Skin*Cedg_Skin_bE7
          + CLup_Skin*FR*Cedg_Skin_bVM
          + CLup_Skin*(1.0-FR)*Cedg_Skin_bIM)/V_Skin_E7;
dxdt_Cedg_Adipose_bE7 = (k_on_7_EXG*Cedg_Adipose_E7*CFcRn_Adipose_E7*V_Adipose_E7
          - k_off_7_EXG*Cedg_Adipose_bE7*V_Adipose_E7
          - k_on_7_EXG2*Cedg_Adipose_bE7*CFcRn_Adipose_E7*V_Adipose_E7
          + k_off_7_EXG2*Cedg_Adipose_b2E7*V_Adipose_E7
          - CLup_Adipose*Cedg_Adipose_bE7
          + CLup_Adipose*FR*Cedg_Adipose_bVM
          + CLup_Adipose*(1.0-FR)*Cedg_Adipose_bIM)/V_Adipose_E7;
dxdt_Cedg_Bone_bE7 = (k_on_7_EXG*Cedg_Bone_E7*CFcRn_Bone_E7*V_Bone_E7
          - k_off_7_EXG*Cedg_Bone_bE7*V_Bone_E7
          - k_on_7_EXG2*Cedg_Bone_bE7*CFcRn_Bone_E7*V_Bone_E7
          + k_off_7_EXG2*Cedg_Bone_b2E7*V_Bone_E7
          - CLup_Bone*Cedg_Bone_bE7
          + CLup_Bone*FR*Cedg_Bone_bVM
          + CLup_Bone*(1.0-FR)*Cedg_Bone_bIM)/V_Bone_E7;
dxdt_Cedg_Brain_bE7 = (k_on_7_EXG*Cedg_Brain_E7*CFcRn_Brain_E7*V_Brain_E7
          - k_off_7_EXG*Cedg_Brain_bE7*V_Brain_E7
          - k_on_7_EXG2*Cedg_Brain_bE7*CFcRn_Brain_E7*V_Brain_E7
          + k_off_7_EXG2*Cedg_Brain_b2E7*V_Brain_E7
          - CLup_Brain*Cedg_Brain_bE7
          + CLup_Brain*FR*Cedg_Brain_bVM
          + CLup_Brain*(1.0-FR)*Cedg_Brain_bIM)/V_Brain_E7;
dxdt_Cedg_Kidney_bE7 = (k_on_7_EXG*Cedg_Kidney_E7*CFcRn_Kidney_E7*V_Kidney_E7
          - k_off_7_EXG*Cedg_Kidney_bE7*V_Kidney_E7
          - k_on_7_EXG2*Cedg_Kidney_bE7*CFcRn_Kidney_E7*V_Kidney_E7
          + k_off_7_EXG2*Cedg_Kidney_b2E7*V_Kidney_E7
          - CLup_Kidney*Cedg_Kidney_bE7
          + CLup_Kidney*FR*Cedg_Kidney_bVM
          + CLup_Kidney*(1.0-FR)*Cedg_Kidney_bIM)/V_Kidney_E7;
dxdt_Cedg_SI_bE7 = (k_on_7_EXG*Cedg_SI_E7*CFcRn_SI_E7*V_SI_E7
          - k_off_7_EXG*Cedg_SI_bE7*V_SI_E7
          - k_on_7_EXG2*Cedg_SI_bE7*CFcRn_SI_E7*V_SI_E7
          + k_off_7_EXG2*Cedg_SI_b2E7*V_SI_E7
          - CLup_SI*Cedg_SI_bE7
          + CLup_SI*FR*Cedg_SI_bVM
          + CLup_SI*(1.0-FR)*Cedg_SI_bIM)/V_SI_E7;
dxdt_Cedg_LI_bE7 = (k_on_7_EXG*Cedg_LI_E7*CFcRn_LI_E7*V_LI_E7
          - k_off_7_EXG*Cedg_LI_bE7*V_LI_E7
          - k_on_7_EXG2*Cedg_LI_bE7*CFcRn_LI_E7*V_LI_E7
          + k_off_7_EXG2*Cedg_LI_b2E7*V_LI_E7
          - CLup_LI*Cedg_LI_bE7
          + CLup_LI*FR*Cedg_LI_bVM
          + CLup_LI*(1.0-FR)*Cedg_LI_bIM)/V_LI_E7;
dxdt_Cedg_Pancreas_bE7 = (k_on_7_EXG*Cedg_Pancreas_E7*CFcRn_Pancreas_E7*V_Pancreas_E7
          - k_off_7_EXG*Cedg_Pancreas_bE7*V_Pancreas_E7
          - k_on_7_EXG2*Cedg_Pancreas_bE7*CFcRn_Pancreas_E7*V_Pancreas_E7
          + k_off_7_EXG2*Cedg_Pancreas_b2E7*V_Pancreas_E7
          - CLup_Pancreas*Cedg_Pancreas_bE7
          + CLup_Pancreas*FR*Cedg_Pancreas_bVM
          + CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_bIM)/V_Pancreas_E7;
dxdt_Cedg_Thymus_bE7 = (k_on_7_EXG*Cedg_Thymus_E7*CFcRn_Thymus_E7*V_Thymus_E7
          - k_off_7_EXG*Cedg_Thymus_bE7*V_Thymus_E7
          - k_on_7_EXG2*Cedg_Thymus_bE7*CFcRn_Thymus_E7*V_Thymus_E7
          + k_off_7_EXG2*Cedg_Thymus_b2E7*V_Thymus_E7
          - CLup_Thymus*Cedg_Thymus_bE7
          + CLup_Thymus*FR*Cedg_Thymus_bVM
          + CLup_Thymus*(1.0-FR)*Cedg_Thymus_bIM)/V_Thymus_E7;
dxdt_Cedg_Spleen_bE7 = (k_on_7_EXG*Cedg_Spleen_E7*CFcRn_Spleen_E7*V_Spleen_E7
          - k_off_7_EXG*Cedg_Spleen_bE7*V_Spleen_E7
          - k_on_7_EXG2*Cedg_Spleen_bE7*CFcRn_Spleen_E7*V_Spleen_E7
          + k_off_7_EXG2*Cedg_Spleen_b2E7*V_Spleen_E7
          - CLup_Spleen*Cedg_Spleen_bE7
          + CLup_Spleen*FR*Cedg_Spleen_bVM
          + CLup_Spleen*(1.0-FR)*Cedg_Spleen_bIM)/V_Spleen_E7;
dxdt_Cedg_Other_bE7 = (k_on_7_EXG*Cedg_Other_E7*CFcRn_Other_E7*V_Other_E7
          - k_off_7_EXG*Cedg_Other_bE7*V_Other_E7
          - k_on_7_EXG2*Cedg_Other_bE7*CFcRn_Other_E7*V_Other_E7
          + k_off_7_EXG2*Cedg_Other_b2E7*V_Other_E7
          - CLup_Other*Cedg_Other_bE7
          + CLup_Other*FR*Cedg_Other_bVM
          + CLup_Other*(1.0-FR)*Cedg_Other_bIM)/V_Other_E7;
dxdt_Cedg_Lung_b2E7 = (k_on_7_EXG2 * Cedg_Lung_bE7*CFcRn_Lung_E7*V_Lung_E7
          - k_off_7_EXG2 * Cedg_Lung_b2E7*V_Lung_E7
          - CLup_Lung*Cedg_Lung_b2E7
          + CLup_Lung*FR*Cedg_Lung_b2VM
          + CLup_Lung*(1.0-FR)*Cedg_Lung_b2IM)/V_Lung_E7;
dxdt_Cedg_Liver_b2E7 = (k_on_7_EXG2 * Cedg_Liver_bE7*CFcRn_Liver_E7*V_Liver_E7
          - k_off_7_EXG2 * Cedg_Liver_b2E7*V_Liver_E7
          - CLup_Liver*Cedg_Liver_b2E7
          + CLup_Liver*FR*Cedg_Liver_b2VM
          + CLup_Liver*(1.0-FR)*Cedg_Liver_b2IM)/V_Liver_E7;
dxdt_Cedg_Heart_b2E7 = (k_on_7_EXG2 * Cedg_Heart_bE7*CFcRn_Heart_E7*V_Heart_E7
          - k_off_7_EXG2 * Cedg_Heart_b2E7*V_Heart_E7
          - CLup_Heart*Cedg_Heart_b2E7
          + CLup_Heart*FR*Cedg_Heart_b2VM
          + CLup_Heart*(1.0-FR)*Cedg_Heart_b2IM)/V_Heart_E7;
dxdt_Cedg_Muscle_b2E7 = (k_on_7_EXG2 * Cedg_Muscle_bE7*CFcRn_Muscle_E7*V_Muscle_E7
          - k_off_7_EXG2 * Cedg_Muscle_b2E7*V_Muscle_E7
          - CLup_Muscle*Cedg_Muscle_b2E7
          + CLup_Muscle*FR*Cedg_Muscle_b2VM
          + CLup_Muscle*(1.0-FR)*Cedg_Muscle_b2IM)/V_Muscle_E7;
dxdt_Cedg_Skin_b2E7 = (k_on_7_EXG2 * Cedg_Skin_bE7*CFcRn_Skin_E7*V_Skin_E7
          - k_off_7_EXG2 * Cedg_Skin_b2E7*V_Skin_E7
          - CLup_Skin*Cedg_Skin_b2E7
          + CLup_Skin*FR*Cedg_Skin_b2VM
          + CLup_Skin*(1.0-FR)*Cedg_Skin_b2IM)/V_Skin_E7;
dxdt_Cedg_Adipose_b2E7 = (k_on_7_EXG2 * Cedg_Adipose_bE7*CFcRn_Adipose_E7*V_Adipose_E7
          - k_off_7_EXG2 * Cedg_Adipose_b2E7*V_Adipose_E7
          - CLup_Adipose*Cedg_Adipose_b2E7
          + CLup_Adipose*FR*Cedg_Adipose_b2VM
          + CLup_Adipose*(1.0-FR)*Cedg_Adipose_b2IM)/V_Adipose_E7;
dxdt_Cedg_Bone_b2E7 = (k_on_7_EXG2 * Cedg_Bone_bE7*CFcRn_Bone_E7*V_Bone_E7
          - k_off_7_EXG2 * Cedg_Bone_b2E7*V_Bone_E7
          - CLup_Bone*Cedg_Bone_b2E7
          + CLup_Bone*FR*Cedg_Bone_b2VM
          + CLup_Bone*(1.0-FR)*Cedg_Bone_b2IM)/V_Bone_E7;
dxdt_Cedg_Brain_b2E7 = (k_on_7_EXG2 * Cedg_Brain_bE7*CFcRn_Brain_E7*V_Brain_E7
          - k_off_7_EXG2 * Cedg_Brain_b2E7*V_Brain_E7
          - CLup_Brain*Cedg_Brain_b2E7
          + CLup_Brain*FR*Cedg_Brain_b2VM
          + CLup_Brain*(1.0-FR)*Cedg_Brain_b2IM)/V_Brain_E7;
dxdt_Cedg_Kidney_b2E7 = (k_on_7_EXG2 * Cedg_Kidney_bE7*CFcRn_Kidney_E7*V_Kidney_E7
          - k_off_7_EXG2 * Cedg_Kidney_b2E7*V_Kidney_E7
          - CLup_Kidney*Cedg_Kidney_b2E7
          + CLup_Kidney*FR*Cedg_Kidney_b2VM
          + CLup_Kidney*(1.0-FR)*Cedg_Kidney_b2IM)/V_Kidney_E7;
dxdt_Cedg_SI_b2E7 = (k_on_7_EXG2 * Cedg_SI_bE7*CFcRn_SI_E7*V_SI_E7
          - k_off_7_EXG2 * Cedg_SI_b2E7*V_SI_E7
          - CLup_SI*Cedg_SI_b2E7
          + CLup_SI*FR*Cedg_SI_b2VM
          + CLup_SI*(1.0-FR)*Cedg_SI_b2IM)/V_SI_E7;
dxdt_Cedg_LI_b2E7 = (k_on_7_EXG2 * Cedg_LI_bE7*CFcRn_LI_E7*V_LI_E7
          - k_off_7_EXG2 * Cedg_LI_b2E7*V_LI_E7
          - CLup_LI*Cedg_LI_b2E7
          + CLup_LI*FR*Cedg_LI_b2VM
          + CLup_LI*(1.0-FR)*Cedg_LI_b2IM)/V_LI_E7;
dxdt_Cedg_Pancreas_b2E7 = (k_on_7_EXG2 * Cedg_Pancreas_bE7*CFcRn_Pancreas_E7*V_Pancreas_E7
          - k_off_7_EXG2 * Cedg_Pancreas_b2E7*V_Pancreas_E7
          - CLup_Pancreas*Cedg_Pancreas_b2E7
          + CLup_Pancreas*FR*Cedg_Pancreas_b2VM
          + CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_b2IM)/V_Pancreas_E7;
dxdt_Cedg_Thymus_b2E7 = (k_on_7_EXG2 * Cedg_Thymus_bE7*CFcRn_Thymus_E7*V_Thymus_E7
          - k_off_7_EXG2 * Cedg_Thymus_b2E7*V_Thymus_E7
          - CLup_Thymus*Cedg_Thymus_b2E7
          + CLup_Thymus*FR*Cedg_Thymus_b2VM
          + CLup_Thymus*(1.0-FR)*Cedg_Thymus_b2IM)/V_Thymus_E7;
dxdt_Cedg_Spleen_b2E7 = (k_on_7_EXG2 * Cedg_Spleen_bE7*CFcRn_Spleen_E7*V_Spleen_E7
          - k_off_7_EXG2 * Cedg_Spleen_b2E7*V_Spleen_E7
          - CLup_Spleen*Cedg_Spleen_b2E7
          + CLup_Spleen*FR*Cedg_Spleen_b2VM
          + CLup_Spleen*(1.0-FR)*Cedg_Spleen_b2IM)/V_Spleen_E7;
dxdt_Cedg_Other_b2E7 = (k_on_7_EXG2 * Cedg_Other_bE7*CFcRn_Other_E7*V_Other_E7
          - k_off_7_EXG2 * Cedg_Other_b2E7*V_Other_E7
          - CLup_Other*Cedg_Other_b2E7
          + CLup_Other*FR*Cedg_Other_b2VM
          + CLup_Other*(1.0-FR)*Cedg_Other_b2IM)/V_Other_E7;
//;; endosomal pH=6 a
dxdt_Cedg_Lung_bE6a = (k_on_6_EXG*Cedg_Lung_E6a*CFcRn_Lung_E6a*V_Lung_E6a
          - k_off_6_EXG*Cedg_Lung_bE6a*V_Lung_E6a
          - k_on_6_EXG2*Cedg_Lung_bE6a*CFcRn_Lung_E6a*V_Lung_E6a
          + k_off_6_EXG2*Cedg_Lung_b2E6a*V_Lung_E6a
          + CLup_Lung*Cedg_Lung_bE7
          - CLup_Lung*Cedg_Lung_bE6a)/V_Lung_E6a;
dxdt_Cedg_Liver_bE6a = (k_on_6_EXG*Cedg_Liver_E6a*CFcRn_Liver_E6a*V_Liver_E6a
          - k_off_6_EXG*Cedg_Liver_bE6a*V_Liver_E6a
          - k_on_6_EXG2*Cedg_Liver_bE6a*CFcRn_Liver_E6a*V_Liver_E6a
          + k_off_6_EXG2*Cedg_Liver_b2E6a*V_Liver_E6a
          + CLup_Liver*Cedg_Liver_bE7
          - CLup_Liver*Cedg_Liver_bE6a)/V_Liver_E6a;
dxdt_Cedg_Heart_bE6a = (k_on_6_EXG*Cedg_Heart_E6a*CFcRn_Heart_E6a*V_Heart_E6a
          - k_off_6_EXG*Cedg_Heart_bE6a*V_Heart_E6a
          - k_on_6_EXG2*Cedg_Heart_bE6a*CFcRn_Heart_E6a*V_Heart_E6a
          + k_off_6_EXG2*Cedg_Heart_b2E6a*V_Heart_E6a
          + CLup_Heart*Cedg_Heart_bE7
          - CLup_Heart*Cedg_Heart_bE6a)/V_Heart_E6a;
dxdt_Cedg_Muscle_bE6a = (k_on_6_EXG*Cedg_Muscle_E6a*CFcRn_Muscle_E6a*V_Muscle_E6a
          - k_off_6_EXG*Cedg_Muscle_bE6a*V_Muscle_E6a
          - k_on_6_EXG2*Cedg_Muscle_bE6a*CFcRn_Muscle_E6a*V_Muscle_E6a
          + k_off_6_EXG2*Cedg_Muscle_b2E6a*V_Muscle_E6a
          + CLup_Muscle*Cedg_Muscle_bE7
          - CLup_Muscle*Cedg_Muscle_bE6a)/V_Muscle_E6a;
dxdt_Cedg_Skin_bE6a = (k_on_6_EXG*Cedg_Skin_E6a*CFcRn_Skin_E6a*V_Skin_E6a
          - k_off_6_EXG*Cedg_Skin_bE6a*V_Skin_E6a
          - k_on_6_EXG2*Cedg_Skin_bE6a*CFcRn_Skin_E6a*V_Skin_E6a
          + k_off_6_EXG2*Cedg_Skin_b2E6a*V_Skin_E6a
          + CLup_Skin*Cedg_Skin_bE7
          - CLup_Skin*Cedg_Skin_bE6a)/V_Skin_E6a;
dxdt_Cedg_Adipose_bE6a = (k_on_6_EXG*Cedg_Adipose_E6a*CFcRn_Adipose_E6a*V_Adipose_E6a
          - k_off_6_EXG*Cedg_Adipose_bE6a*V_Adipose_E6a
          - k_on_6_EXG2*Cedg_Adipose_bE6a*CFcRn_Adipose_E6a*V_Adipose_E6a
          + k_off_6_EXG2*Cedg_Adipose_b2E6a*V_Adipose_E6a
          + CLup_Adipose*Cedg_Adipose_bE7
          - CLup_Adipose*Cedg_Adipose_bE6a)/V_Adipose_E6a;
dxdt_Cedg_Bone_bE6a = (k_on_6_EXG*Cedg_Bone_E6a*CFcRn_Bone_E6a*V_Bone_E6a
          - k_off_6_EXG*Cedg_Bone_bE6a*V_Bone_E6a
          - k_on_6_EXG2*Cedg_Bone_bE6a*CFcRn_Bone_E6a*V_Bone_E6a
          + k_off_6_EXG2*Cedg_Bone_b2E6a*V_Bone_E6a
          + CLup_Bone*Cedg_Bone_bE7
          - CLup_Bone*Cedg_Bone_bE6a)/V_Bone_E6a;
dxdt_Cedg_Brain_bE6a = (k_on_6_EXG*Cedg_Brain_E6a*CFcRn_Brain_E6a*V_Brain_E6a
          - k_off_6_EXG*Cedg_Brain_bE6a*V_Brain_E6a
          - k_on_6_EXG2*Cedg_Brain_bE6a*CFcRn_Brain_E6a*V_Brain_E6a
          + k_off_6_EXG2*Cedg_Brain_b2E6a*V_Brain_E6a
          + CLup_Brain*Cedg_Brain_bE7
          - CLup_Brain*Cedg_Brain_bE6a)/V_Brain_E6a;
dxdt_Cedg_Kidney_bE6a = (k_on_6_EXG*Cedg_Kidney_E6a*CFcRn_Kidney_E6a*V_Kidney_E6a
          - k_off_6_EXG*Cedg_Kidney_bE6a*V_Kidney_E6a
          - k_on_6_EXG2*Cedg_Kidney_bE6a*CFcRn_Kidney_E6a*V_Kidney_E6a
          + k_off_6_EXG2*Cedg_Kidney_b2E6a*V_Kidney_E6a
          + CLup_Kidney*Cedg_Kidney_bE7
          - CLup_Kidney*Cedg_Kidney_bE6a)/V_Kidney_E6a;
dxdt_Cedg_SI_bE6a = (k_on_6_EXG*Cedg_SI_E6a*CFcRn_SI_E6a*V_SI_E6a
          - k_off_6_EXG*Cedg_SI_bE6a*V_SI_E6a
          - k_on_6_EXG2*Cedg_SI_bE6a*CFcRn_SI_E6a*V_SI_E6a
          + k_off_6_EXG2*Cedg_SI_b2E6a*V_SI_E6a
          + CLup_SI*Cedg_SI_bE7
          - CLup_SI*Cedg_SI_bE6a)/V_SI_E6a;
dxdt_Cedg_LI_bE6a = (k_on_6_EXG*Cedg_LI_E6a*CFcRn_LI_E6a*V_LI_E6a
          - k_off_6_EXG*Cedg_LI_bE6a*V_LI_E6a
          - k_on_6_EXG2*Cedg_LI_bE6a*CFcRn_LI_E6a*V_LI_E6a
          + k_off_6_EXG2*Cedg_LI_b2E6a*V_LI_E6a
          + CLup_LI*Cedg_LI_bE7
          - CLup_LI*Cedg_LI_bE6a)/V_LI_E6a;
dxdt_Cedg_Pancreas_bE6a = (k_on_6_EXG*Cedg_Pancreas_E6a*CFcRn_Pancreas_E6a*V_Pancreas_E6a
          - k_off_6_EXG*Cedg_Pancreas_bE6a*V_Pancreas_E6a
          - k_on_6_EXG2*Cedg_Pancreas_bE6a*CFcRn_Pancreas_E6a*V_Pancreas_E6a
          + k_off_6_EXG2*Cedg_Pancreas_b2E6a*V_Pancreas_E6a
          + CLup_Pancreas*Cedg_Pancreas_bE7
          - CLup_Pancreas*Cedg_Pancreas_bE6a)/V_Pancreas_E6a;
dxdt_Cedg_Thymus_bE6a = (k_on_6_EXG*Cedg_Thymus_E6a*CFcRn_Thymus_E6a*V_Thymus_E6a
          - k_off_6_EXG*Cedg_Thymus_bE6a*V_Thymus_E6a
          - k_on_6_EXG2*Cedg_Thymus_bE6a*CFcRn_Thymus_E6a*V_Thymus_E6a
          + k_off_6_EXG2*Cedg_Thymus_b2E6a*V_Thymus_E6a
          + CLup_Thymus*Cedg_Thymus_bE7
          - CLup_Thymus*Cedg_Thymus_bE6a)/V_Thymus_E6a;
dxdt_Cedg_Spleen_bE6a = (k_on_6_EXG*Cedg_Spleen_E6a*CFcRn_Spleen_E6a*V_Spleen_E6a
          - k_off_6_EXG*Cedg_Spleen_bE6a*V_Spleen_E6a
          - k_on_6_EXG2*Cedg_Spleen_bE6a*CFcRn_Spleen_E6a*V_Spleen_E6a
          + k_off_6_EXG2*Cedg_Spleen_b2E6a*V_Spleen_E6a
          + CLup_Spleen*Cedg_Spleen_bE7
          - CLup_Spleen*Cedg_Spleen_bE6a)/V_Spleen_E6a;
dxdt_Cedg_Other_bE6a = (k_on_6_EXG*Cedg_Other_E6a*CFcRn_Other_E6a*V_Other_E6a
          - k_off_6_EXG*Cedg_Other_bE6a*V_Other_E6a
          - k_on_6_EXG2*Cedg_Other_bE6a*CFcRn_Other_E6a*V_Other_E6a
          + k_off_6_EXG2*Cedg_Other_b2E6a*V_Other_E6a
          + CLup_Other*Cedg_Other_bE7
          - CLup_Other*Cedg_Other_bE6a)/V_Other_E6a;
dxdt_Cedg_Lung_b2E6a = (k_on_6_EXG2*Cedg_Lung_bE6a*CFcRn_Lung_E6a*V_Lung_E6a
          - k_off_6_EXG2*Cedg_Lung_b2E6a*V_Lung_E6a
          + CLup_Lung*Cedg_Lung_b2E7
          - CLup_Lung*Cedg_Lung_b2E6a)/V_Lung_E6a;
dxdt_Cedg_Liver_b2E6a = (k_on_6_EXG2*Cedg_Liver_bE6a*CFcRn_Liver_E6a*V_Liver_E6a
          - k_off_6_EXG2*Cedg_Liver_b2E6a*V_Liver_E6a
          + CLup_Liver*Cedg_Liver_b2E7
          - CLup_Liver*Cedg_Liver_b2E6a)/V_Liver_E6a;
dxdt_Cedg_Heart_b2E6a = (k_on_6_EXG2*Cedg_Heart_bE6a*CFcRn_Heart_E6a*V_Heart_E6a
          - k_off_6_EXG2*Cedg_Heart_b2E6a*V_Heart_E6a
          + CLup_Heart*Cedg_Heart_b2E7
          - CLup_Heart*Cedg_Heart_b2E6a)/V_Heart_E6a;
dxdt_Cedg_Muscle_b2E6a = (k_on_6_EXG2*Cedg_Muscle_bE6a*CFcRn_Muscle_E6a*V_Muscle_E6a
          - k_off_6_EXG2*Cedg_Muscle_b2E6a*V_Muscle_E6a
          + CLup_Muscle*Cedg_Muscle_b2E7
          - CLup_Muscle*Cedg_Muscle_b2E6a)/V_Muscle_E6a;
dxdt_Cedg_Skin_b2E6a = (k_on_6_EXG2*Cedg_Skin_bE6a*CFcRn_Skin_E6a*V_Skin_E6a
          - k_off_6_EXG2*Cedg_Skin_b2E6a*V_Skin_E6a
          + CLup_Skin*Cedg_Skin_b2E7
          - CLup_Skin*Cedg_Skin_b2E6a)/V_Skin_E6a;
dxdt_Cedg_Adipose_b2E6a = (k_on_6_EXG2*Cedg_Adipose_bE6a*CFcRn_Adipose_E6a*V_Adipose_E6a
          - k_off_6_EXG2*Cedg_Adipose_b2E6a*V_Adipose_E6a
          + CLup_Adipose*Cedg_Adipose_b2E7
          - CLup_Adipose*Cedg_Adipose_b2E6a)/V_Adipose_E6a;
dxdt_Cedg_Bone_b2E6a = (k_on_6_EXG2*Cedg_Bone_bE6a*CFcRn_Bone_E6a*V_Bone_E6a
          - k_off_6_EXG2*Cedg_Bone_b2E6a*V_Bone_E6a
          + CLup_Bone*Cedg_Bone_b2E7
          - CLup_Bone*Cedg_Bone_b2E6a)/V_Bone_E6a;
dxdt_Cedg_Brain_b2E6a = (k_on_6_EXG2*Cedg_Brain_bE6a*CFcRn_Brain_E6a*V_Brain_E6a
          - k_off_6_EXG2*Cedg_Brain_b2E6a*V_Brain_E6a
          + CLup_Brain*Cedg_Brain_b2E7
          - CLup_Brain*Cedg_Brain_b2E6a)/V_Brain_E6a;
dxdt_Cedg_Kidney_b2E6a = (k_on_6_EXG2*Cedg_Kidney_bE6a*CFcRn_Kidney_E6a*V_Kidney_E6a
          - k_off_6_EXG2*Cedg_Kidney_b2E6a*V_Kidney_E6a
          + CLup_Kidney*Cedg_Kidney_b2E7
          - CLup_Kidney*Cedg_Kidney_b2E6a)/V_Kidney_E6a;
dxdt_Cedg_SI_b2E6a = (k_on_6_EXG2*Cedg_SI_bE6a*CFcRn_SI_E6a*V_SI_E6a
          - k_off_6_EXG2*Cedg_SI_b2E6a*V_SI_E6a
          + CLup_SI*Cedg_SI_b2E7
          - CLup_SI*Cedg_SI_b2E6a)/V_SI_E6a;
dxdt_Cedg_LI_b2E6a = (k_on_6_EXG2*Cedg_LI_bE6a*CFcRn_LI_E6a*V_LI_E6a
          - k_off_6_EXG2*Cedg_LI_b2E6a*V_LI_E6a
          + CLup_LI*Cedg_LI_b2E7
          - CLup_LI*Cedg_LI_b2E6a)/V_LI_E6a;
dxdt_Cedg_Pancreas_b2E6a = (k_on_6_EXG2*Cedg_Pancreas_bE6a*CFcRn_Pancreas_E6a*V_Pancreas_E6a
          - k_off_6_EXG2*Cedg_Pancreas_b2E6a*V_Pancreas_E6a
          + CLup_Pancreas*Cedg_Pancreas_b2E7
          - CLup_Pancreas*Cedg_Pancreas_b2E6a)/V_Pancreas_E6a;
dxdt_Cedg_Thymus_b2E6a = (k_on_6_EXG2*Cedg_Thymus_bE6a*CFcRn_Thymus_E6a*V_Thymus_E6a
          - k_off_6_EXG2*Cedg_Thymus_b2E6a*V_Thymus_E6a
          + CLup_Thymus*Cedg_Thymus_b2E7
          - CLup_Thymus*Cedg_Thymus_b2E6a)/V_Thymus_E6a;
dxdt_Cedg_Spleen_b2E6a = (k_on_6_EXG2*Cedg_Spleen_bE6a*CFcRn_Spleen_E6a*V_Spleen_E6a
          - k_off_6_EXG2*Cedg_Spleen_b2E6a*V_Spleen_E6a
          + CLup_Spleen*Cedg_Spleen_b2E7
          - CLup_Spleen*Cedg_Spleen_b2E6a)/V_Spleen_E6a;
dxdt_Cedg_Other_b2E6a = (k_on_6_EXG2*Cedg_Other_bE6a*CFcRn_Other_E6a*V_Other_E6a
          - k_off_6_EXG2*Cedg_Other_b2E6a*V_Other_E6a
          + CLup_Other*Cedg_Other_b2E7
          - CLup_Other*Cedg_Other_b2E6a)/V_Other_E6a;
//;; endosomal pH=7.4  b
dxdt_Cedg_Lung_bE7b = (k_on_7_EXG*Cedg_Lung_E7b*CFcRn_Lung_E7b*V_Lung_E7b
          - k_off_7_EXG*Cedg_Lung_bE7b*V_Lung_E7b
          - k_on_7_EXG2*Cedg_Lung_bE7b*CFcRn_Lung_E7b*V_Lung_E7b
          + k_off_7_EXG2*Cedg_Lung_b2E7b*V_Lung_E7b
          + CLup_Lung*Cedg_Lung_bE6a
          - CLup_Lung*Cedg_Lung_bE7b)/V_Lung_E7b;
dxdt_Cedg_Liver_bE7b = (k_on_7_EXG*Cedg_Liver_E7b*CFcRn_Liver_E7b*V_Liver_E7b
          - k_off_7_EXG*Cedg_Liver_bE7b*V_Liver_E7b
          - k_on_7_EXG2*Cedg_Liver_bE7b*CFcRn_Liver_E7b*V_Liver_E7b
          + k_off_7_EXG2*Cedg_Liver_b2E7b*V_Liver_E7b
          + CLup_Liver*Cedg_Liver_bE6a
          - CLup_Liver*Cedg_Liver_bE7b)/V_Liver_E7b;
dxdt_Cedg_Heart_bE7b = (k_on_7_EXG*Cedg_Heart_E7b*CFcRn_Heart_E7b*V_Heart_E7b
          - k_off_7_EXG*Cedg_Heart_bE7b*V_Heart_E7b
          - k_on_7_EXG2*Cedg_Heart_bE7b*CFcRn_Heart_E7b*V_Heart_E7b
          + k_off_7_EXG2*Cedg_Heart_b2E7b*V_Heart_E7b
          + CLup_Heart*Cedg_Heart_bE6a
          - CLup_Heart*Cedg_Heart_bE7b)/V_Heart_E7b;
dxdt_Cedg_Muscle_bE7b = (k_on_7_EXG*Cedg_Muscle_E7b*CFcRn_Muscle_E7b*V_Muscle_E7b
          - k_off_7_EXG*Cedg_Muscle_bE7b*V_Muscle_E7b
          - k_on_7_EXG2*Cedg_Muscle_bE7b*CFcRn_Muscle_E7b*V_Muscle_E7b
          + k_off_7_EXG2*Cedg_Muscle_b2E7b*V_Muscle_E7b
          + CLup_Muscle*Cedg_Muscle_bE6a
          - CLup_Muscle*Cedg_Muscle_bE7b)/V_Muscle_E7b;
dxdt_Cedg_Skin_bE7b = (k_on_7_EXG*Cedg_Skin_E7b*CFcRn_Skin_E7b*V_Skin_E7b
          - k_off_7_EXG*Cedg_Skin_bE7b*V_Skin_E7b
          - k_on_7_EXG2*Cedg_Skin_bE7b*CFcRn_Skin_E7b*V_Skin_E7b
          + k_off_7_EXG2*Cedg_Skin_b2E7b*V_Skin_E7b
          + CLup_Skin*Cedg_Skin_bE6a
          - CLup_Skin*Cedg_Skin_bE7b)/V_Skin_E7b;
dxdt_Cedg_Adipose_bE7b = (k_on_7_EXG*Cedg_Adipose_E7b*CFcRn_Adipose_E7b*V_Adipose_E7b
          - k_off_7_EXG*Cedg_Adipose_bE7b*V_Adipose_E7b
          - k_on_7_EXG2*Cedg_Adipose_bE7b*CFcRn_Adipose_E7b*V_Adipose_E7b
          + k_off_7_EXG2*Cedg_Adipose_b2E7b*V_Adipose_E7b
          + CLup_Adipose*Cedg_Adipose_bE6a
          - CLup_Adipose*Cedg_Adipose_bE7b)/V_Adipose_E7b;
dxdt_Cedg_Bone_bE7b = (k_on_7_EXG*Cedg_Bone_E7b*CFcRn_Bone_E7b*V_Bone_E7b
          - k_off_7_EXG*Cedg_Bone_bE7b*V_Bone_E7b
          - k_on_7_EXG2*Cedg_Bone_bE7b*CFcRn_Bone_E7b*V_Bone_E7b
          + k_off_7_EXG2*Cedg_Bone_b2E7b*V_Bone_E7b
          + CLup_Bone*Cedg_Bone_bE6a
          - CLup_Bone*Cedg_Bone_bE7b)/V_Bone_E7b;
dxdt_Cedg_Brain_bE7b = (k_on_7_EXG*Cedg_Brain_E7b*CFcRn_Brain_E7b*V_Brain_E7b
          - k_off_7_EXG*Cedg_Brain_bE7b*V_Brain_E7b
          - k_on_7_EXG2*Cedg_Brain_bE7b*CFcRn_Brain_E7b*V_Brain_E7b
          + k_off_7_EXG2*Cedg_Brain_b2E7b*V_Brain_E7b
          + CLup_Brain*Cedg_Brain_bE6a
          - CLup_Brain*Cedg_Brain_bE7b)/V_Brain_E7b;
dxdt_Cedg_Kidney_bE7b = (k_on_7_EXG*Cedg_Kidney_E7b*CFcRn_Kidney_E7b*V_Kidney_E7b
          - k_off_7_EXG*Cedg_Kidney_bE7b*V_Kidney_E7b
          - k_on_7_EXG2*Cedg_Kidney_bE7b*CFcRn_Kidney_E7b*V_Kidney_E7b
          + k_off_7_EXG2*Cedg_Kidney_b2E7b*V_Kidney_E7b
          + CLup_Kidney*Cedg_Kidney_bE6a
          - CLup_Kidney*Cedg_Kidney_bE7b)/V_Kidney_E7b;
dxdt_Cedg_SI_bE7b = (k_on_7_EXG*Cedg_SI_E7b*CFcRn_SI_E7b*V_SI_E7b
          - k_off_7_EXG*Cedg_SI_bE7b*V_SI_E7b
          - k_on_7_EXG2*Cedg_SI_bE7b*CFcRn_SI_E7b*V_SI_E7b
          + k_off_7_EXG2*Cedg_SI_b2E7b*V_SI_E7b
          + CLup_SI*Cedg_SI_bE6a
          - CLup_SI*Cedg_SI_bE7b)/V_SI_E7b;
dxdt_Cedg_LI_bE7b = (k_on_7_EXG*Cedg_LI_E7b*CFcRn_LI_E7b*V_LI_E7b
          - k_off_7_EXG*Cedg_LI_bE7b*V_LI_E7b
          - k_on_7_EXG2*Cedg_LI_bE7b*CFcRn_LI_E7b*V_LI_E7b
          + k_off_7_EXG2*Cedg_LI_b2E7b*V_LI_E7b
          + CLup_LI*Cedg_LI_bE6a
          - CLup_LI*Cedg_LI_bE7b)/V_LI_E7b;
dxdt_Cedg_Pancreas_bE7b = (k_on_7_EXG*Cedg_Pancreas_E7b*CFcRn_Pancreas_E7b*V_Pancreas_E7b
          - k_off_7_EXG*Cedg_Pancreas_bE7b*V_Pancreas_E7b
          - k_on_7_EXG2*Cedg_Pancreas_bE7b*CFcRn_Pancreas_E7b*V_Pancreas_E7b
          + k_off_7_EXG2*Cedg_Pancreas_b2E7b*V_Pancreas_E7b
          + CLup_Pancreas*Cedg_Pancreas_bE6a
          - CLup_Pancreas*Cedg_Pancreas_bE7b)/V_Pancreas_E7b;
dxdt_Cedg_Thymus_bE7b = (k_on_7_EXG*Cedg_Thymus_E7b*CFcRn_Thymus_E7b*V_Thymus_E7b
          - k_off_7_EXG*Cedg_Thymus_bE7b*V_Thymus_E7b
          - k_on_7_EXG2*Cedg_Thymus_bE7b*CFcRn_Thymus_E7b*V_Thymus_E7b
          + k_off_7_EXG2*Cedg_Thymus_b2E7b*V_Thymus_E7b
          + CLup_Thymus*Cedg_Thymus_bE6a
          - CLup_Thymus*Cedg_Thymus_bE7b)/V_Thymus_E7b;
dxdt_Cedg_Spleen_bE7b = (k_on_7_EXG*Cedg_Spleen_E7b*CFcRn_Spleen_E7b*V_Spleen_E7b
          - k_off_7_EXG*Cedg_Spleen_bE7b*V_Spleen_E7b
          - k_on_7_EXG2*Cedg_Spleen_bE7b*CFcRn_Spleen_E7b*V_Spleen_E7b
          + k_off_7_EXG2*Cedg_Spleen_b2E7b*V_Spleen_E7b
          + CLup_Spleen*Cedg_Spleen_bE6a
          - CLup_Spleen*Cedg_Spleen_bE7b)/V_Spleen_E7b;
dxdt_Cedg_Other_bE7b = (k_on_7_EXG*Cedg_Other_E7b*CFcRn_Other_E7b*V_Other_E7b
          - k_off_7_EXG*Cedg_Other_bE7b*V_Other_E7b
          - k_on_7_EXG2*Cedg_Other_bE7b*CFcRn_Other_E7b*V_Other_E7b
          + k_off_7_EXG2*Cedg_Other_b2E7b*V_Other_E7b
          + CLup_Other*Cedg_Other_bE6a
          - CLup_Other*Cedg_Other_bE7b)/V_Other_E7b;
dxdt_Cedg_Lung_b2E7b = (k_on_7_EXG2*Cedg_Lung_bE7b*CFcRn_Lung_E7b*V_Lung_E7b
          - k_off_7_EXG2*Cedg_Lung_b2E7b*V_Lung_E7b
          + CLup_Lung*Cedg_Lung_b2E6a
          - CLup_Lung*Cedg_Lung_b2E7b)/V_Lung_E7b;
dxdt_Cedg_Liver_b2E7b = (k_on_7_EXG2*Cedg_Liver_bE7b*CFcRn_Liver_E7b*V_Liver_E7b
          - k_off_7_EXG2*Cedg_Liver_b2E7b*V_Liver_E7b
          + CLup_Liver*Cedg_Liver_b2E6a
          - CLup_Liver*Cedg_Liver_b2E7b)/V_Liver_E7b;
dxdt_Cedg_Heart_b2E7b = (k_on_7_EXG2*Cedg_Heart_bE7b*CFcRn_Heart_E7b*V_Heart_E7b
          - k_off_7_EXG2*Cedg_Heart_b2E7b*V_Heart_E7b
          + CLup_Heart*Cedg_Heart_b2E6a
          - CLup_Heart*Cedg_Heart_b2E7b)/V_Heart_E7b;
dxdt_Cedg_Muscle_b2E7b = (k_on_7_EXG2*Cedg_Muscle_bE7b*CFcRn_Muscle_E7b*V_Muscle_E7b
          - k_off_7_EXG2*Cedg_Muscle_b2E7b*V_Muscle_E7b
          + CLup_Muscle*Cedg_Muscle_b2E6a
          - CLup_Muscle*Cedg_Muscle_b2E7b)/V_Muscle_E7b;
dxdt_Cedg_Skin_b2E7b = (k_on_7_EXG2*Cedg_Skin_bE7b*CFcRn_Skin_E7b*V_Skin_E7b
          - k_off_7_EXG2*Cedg_Skin_b2E7b*V_Skin_E7b
          + CLup_Skin*Cedg_Skin_b2E6a
          - CLup_Skin*Cedg_Skin_b2E7b)/V_Skin_E7b;
dxdt_Cedg_Adipose_b2E7b = (k_on_7_EXG2*Cedg_Adipose_bE7b*CFcRn_Adipose_E7b*V_Adipose_E7b
          - k_off_7_EXG2*Cedg_Adipose_b2E7b*V_Adipose_E7b
          + CLup_Adipose*Cedg_Adipose_b2E6a
          - CLup_Adipose*Cedg_Adipose_b2E7b)/V_Adipose_E7b;
dxdt_Cedg_Bone_b2E7b = (k_on_7_EXG2*Cedg_Bone_bE7b*CFcRn_Bone_E7b*V_Bone_E7b
          - k_off_7_EXG2*Cedg_Bone_b2E7b*V_Bone_E7b
          + CLup_Bone*Cedg_Bone_b2E6a
          - CLup_Bone*Cedg_Bone_b2E7b)/V_Bone_E7b;
dxdt_Cedg_Brain_b2E7b = (k_on_7_EXG2*Cedg_Brain_bE7b*CFcRn_Brain_E7b*V_Brain_E7b
          - k_off_7_EXG2*Cedg_Brain_b2E7b*V_Brain_E7b
          + CLup_Brain*Cedg_Brain_b2E6a
          - CLup_Brain*Cedg_Brain_b2E7b)/V_Brain_E7b;
dxdt_Cedg_Kidney_b2E7b = (k_on_7_EXG2*Cedg_Kidney_bE7b*CFcRn_Kidney_E7b*V_Kidney_E7b
          - k_off_7_EXG2*Cedg_Kidney_b2E7b*V_Kidney_E7b
          + CLup_Kidney*Cedg_Kidney_b2E6a
          - CLup_Kidney*Cedg_Kidney_b2E7b)/V_Kidney_E7b;
dxdt_Cedg_SI_b2E7b = (k_on_7_EXG2*Cedg_SI_bE7b*CFcRn_SI_E7b*V_SI_E7b
          - k_off_7_EXG2*Cedg_SI_b2E7b*V_SI_E7b
          + CLup_SI*Cedg_SI_b2E6a
          - CLup_SI*Cedg_SI_b2E7b)/V_SI_E7b;
dxdt_Cedg_LI_b2E7b = (k_on_7_EXG2*Cedg_LI_bE7b*CFcRn_LI_E7b*V_LI_E7b
          - k_off_7_EXG2*Cedg_LI_b2E7b*V_LI_E7b
          + CLup_LI*Cedg_LI_b2E6a
          - CLup_LI*Cedg_LI_b2E7b)/V_LI_E7b;
dxdt_Cedg_Pancreas_b2E7b = (k_on_7_EXG2*Cedg_Pancreas_bE7b*CFcRn_Pancreas_E7b*V_Pancreas_E7b
          - k_off_7_EXG2*Cedg_Pancreas_b2E7b*V_Pancreas_E7b
          + CLup_Pancreas*Cedg_Pancreas_b2E6a
          - CLup_Pancreas*Cedg_Pancreas_b2E7b)/V_Pancreas_E7b;
dxdt_Cedg_Thymus_b2E7b = (k_on_7_EXG2*Cedg_Thymus_bE7b*CFcRn_Thymus_E7b*V_Thymus_E7b
          - k_off_7_EXG2*Cedg_Thymus_b2E7b*V_Thymus_E7b
          + CLup_Thymus*Cedg_Thymus_b2E6a
          - CLup_Thymus*Cedg_Thymus_b2E7b)/V_Thymus_E7b;
dxdt_Cedg_Spleen_b2E7b = (k_on_7_EXG2*Cedg_Spleen_bE7b*CFcRn_Spleen_E7b*V_Spleen_E7b
          - k_off_7_EXG2*Cedg_Spleen_b2E7b*V_Spleen_E7b
          + CLup_Spleen*Cedg_Spleen_b2E6a
          - CLup_Spleen*Cedg_Spleen_b2E7b)/V_Spleen_E7b;
dxdt_Cedg_Other_b2E7b = (k_on_7_EXG2*Cedg_Other_bE7b*CFcRn_Other_E7b*V_Other_E7b
          - k_off_7_EXG2*Cedg_Other_b2E7b*V_Other_E7b
          + CLup_Other*Cedg_Other_b2E6a
          - CLup_Other*Cedg_Other_b2E7b)/V_Other_E7b;
//;;; Interstitial membrane
dxdt_Cedg_Lung_bIM = (k_on_7_EXG*Cedg_Lung_IM*CFcRn_Lung_IM*V_Lung_IM
          - k_off_7_EXG*Cedg_Lung_bIM*V_Lung_IM
          - k_on_7_EXG2*Cedg_Lung_bIM*CFcRn_Lung_IM*V_Lung_IM
          + k_off_7_EXG2*Cedg_Lung_b2IM*V_Lung_IM
          + CLup_Lung*(1.0-FR)*Cedg_Lung_bE7b
          - CLup_Lung*(1.0-FR)*Cedg_Lung_bIM
          - kdeg_FcRn_Ab*Cedg_Lung_bIM*V_Lung_IM)/V_Lung_IM;
dxdt_Cedg_Liver_bIM = (k_on_7_EXG*Cedg_Liver_IM*CFcRn_Liver_IM*V_Liver_IM
          - k_off_7_EXG*Cedg_Liver_bIM*V_Liver_IM
          - k_on_7_EXG2*Cedg_Liver_bIM*CFcRn_Liver_IM*V_Liver_IM
          + k_off_7_EXG2*Cedg_Liver_b2IM*V_Liver_IM
          + CLup_Liver*(1.0-FR)*Cedg_Liver_bE7b
          - CLup_Liver*(1.0-FR)*Cedg_Liver_bIM
          - kdeg_FcRn_Ab*Cedg_Liver_bIM*V_Liver_IM)/V_Liver_IM;
dxdt_Cedg_Heart_bIM = (k_on_7_EXG*Cedg_Heart_IM*CFcRn_Heart_IM*V_Heart_IM
          - k_off_7_EXG*Cedg_Heart_bIM*V_Heart_IM
          - k_on_7_EXG2*Cedg_Heart_bIM*CFcRn_Heart_IM*V_Heart_IM
          + k_off_7_EXG2*Cedg_Heart_b2IM*V_Heart_IM
          + CLup_Heart*(1.0-FR)*Cedg_Heart_bE7b
          - CLup_Heart*(1.0-FR)*Cedg_Heart_bIM
          - kdeg_FcRn_Ab*Cedg_Heart_bIM*V_Heart_IM)/V_Heart_IM;
dxdt_Cedg_Muscle_bIM = (k_on_7_EXG*Cedg_Muscle_IM*CFcRn_Muscle_IM*V_Muscle_IM
          - k_off_7_EXG*Cedg_Muscle_bIM*V_Muscle_IM
          - k_on_7_EXG2*Cedg_Muscle_bIM*CFcRn_Muscle_IM*V_Muscle_IM
          + k_off_7_EXG2*Cedg_Muscle_b2IM*V_Muscle_IM
          + CLup_Muscle*(1.0-FR)*Cedg_Muscle_bE7b
          - CLup_Muscle*(1.0-FR)*Cedg_Muscle_bIM
          - kdeg_FcRn_Ab*Cedg_Muscle_bIM*V_Muscle_IM)/V_Muscle_IM;
dxdt_Cedg_Skin_bIM = (k_on_7_EXG*Cedg_Skin_IM*CFcRn_Skin_IM*V_Skin_IM
          - k_off_7_EXG*Cedg_Skin_bIM*V_Skin_IM
          - k_on_7_EXG2*Cedg_Skin_bIM*CFcRn_Skin_IM*V_Skin_IM
          + k_off_7_EXG2*Cedg_Skin_b2IM*V_Skin_IM
          + CLup_Skin*(1.0-FR)*Cedg_Skin_bE7b
          - CLup_Skin*(1.0-FR)*Cedg_Skin_bIM
          - kdeg_FcRn_Ab*Cedg_Skin_bIM*V_Skin_IM)/V_Skin_IM;
dxdt_Cedg_Adipose_bIM = (k_on_7_EXG*Cedg_Adipose_IM*CFcRn_Adipose_IM*V_Adipose_IM
          - k_off_7_EXG*Cedg_Adipose_bIM*V_Adipose_IM
          - k_on_7_EXG2*Cedg_Adipose_bIM*CFcRn_Adipose_IM*V_Adipose_IM
          + k_off_7_EXG2*Cedg_Adipose_b2IM*V_Adipose_IM
          + CLup_Adipose*(1.0-FR)*Cedg_Adipose_bE7b
          - CLup_Adipose*(1.0-FR)*Cedg_Adipose_bIM
          - kdeg_FcRn_Ab*Cedg_Adipose_bIM*V_Adipose_IM)/V_Adipose_IM;
dxdt_Cedg_Bone_bIM = (k_on_7_EXG*Cedg_Bone_IM*CFcRn_Bone_IM*V_Bone_IM
          - k_off_7_EXG*Cedg_Bone_bIM*V_Bone_IM
          - k_on_7_EXG2*Cedg_Bone_bIM*CFcRn_Bone_IM*V_Bone_IM
          + k_off_7_EXG2*Cedg_Bone_b2IM*V_Bone_IM
          + CLup_Bone*(1.0-FR)*Cedg_Bone_bE7b
          - CLup_Bone*(1.0-FR)*Cedg_Bone_bIM
          - kdeg_FcRn_Ab*Cedg_Bone_bIM*V_Bone_IM)/V_Bone_IM;
dxdt_Cedg_Brain_bIM = (k_on_7_EXG*Cedg_Brain_IM*CFcRn_Brain_IM*V_Brain_IM
          - k_off_7_EXG*Cedg_Brain_bIM*V_Brain_IM
          - k_on_7_EXG2*Cedg_Brain_bIM*CFcRn_Brain_IM*V_Brain_IM
          + k_off_7_EXG2*Cedg_Brain_b2IM*V_Brain_IM
          + CLup_Brain*(1.0-FR)*Cedg_Brain_bE7b
          - CLup_Brain*(1.0-FR)*Cedg_Brain_bIM
          - kdeg_FcRn_Ab*Cedg_Brain_bIM*V_Brain_IM)/V_Brain_IM;
dxdt_Cedg_Kidney_bIM = (k_on_7_EXG*Cedg_Kidney_IM*CFcRn_Kidney_IM*V_Kidney_IM
          - k_off_7_EXG*Cedg_Kidney_bIM*V_Kidney_IM
          - k_on_7_EXG2*Cedg_Kidney_bIM*CFcRn_Kidney_IM*V_Kidney_IM
          + k_off_7_EXG2*Cedg_Kidney_b2IM*V_Kidney_IM
          + CLup_Kidney*(1.0-FR)*Cedg_Kidney_bE7b
          - CLup_Kidney*(1.0-FR)*Cedg_Kidney_bIM
          - kdeg_FcRn_Ab*Cedg_Kidney_bIM*V_Kidney_IM)/V_Kidney_IM;
dxdt_Cedg_SI_bIM = (k_on_7_EXG*Cedg_SI_IM*CFcRn_SI_IM*V_SI_IM
          - k_off_7_EXG*Cedg_SI_bIM*V_SI_IM
          - k_on_7_EXG2*Cedg_SI_bIM*CFcRn_SI_IM*V_SI_IM
          + k_off_7_EXG2*Cedg_SI_b2IM*V_SI_IM
          + CLup_SI*(1.0-FR)*Cedg_SI_bE7b
          - CLup_SI*(1.0-FR)*Cedg_SI_bIM
          - kdeg_FcRn_Ab*Cedg_SI_bIM*V_SI_IM)/V_SI_IM;
dxdt_Cedg_LI_bIM = (k_on_7_EXG*Cedg_LI_IM*CFcRn_LI_IM*V_LI_IM
          - k_off_7_EXG*Cedg_LI_bIM*V_LI_IM
          - k_on_7_EXG2*Cedg_LI_bIM*CFcRn_LI_IM*V_LI_IM
          + k_off_7_EXG2*Cedg_LI_b2IM*V_LI_IM
          + CLup_LI*(1.0-FR)*Cedg_LI_bE7b
          - CLup_LI*(1.0-FR)*Cedg_LI_bIM
          - kdeg_FcRn_Ab*Cedg_LI_bIM*V_LI_IM)/V_LI_IM;
dxdt_Cedg_Pancreas_bIM = (k_on_7_EXG*Cedg_Pancreas_IM*CFcRn_Pancreas_IM*V_Pancreas_IM
          - k_off_7_EXG*Cedg_Pancreas_bIM*V_Pancreas_IM
          - k_on_7_EXG2*Cedg_Pancreas_bIM*CFcRn_Pancreas_IM*V_Pancreas_IM
          + k_off_7_EXG2*Cedg_Pancreas_b2IM*V_Pancreas_IM
          + CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_bE7b
          - CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_bIM
          - kdeg_FcRn_Ab*Cedg_Pancreas_bIM*V_Pancreas_IM)/V_Pancreas_IM;
dxdt_Cedg_Thymus_bIM = (k_on_7_EXG*Cedg_Thymus_IM*CFcRn_Thymus_IM*V_Thymus_IM
          - k_off_7_EXG*Cedg_Thymus_bIM*V_Thymus_IM
          - k_on_7_EXG2*Cedg_Thymus_bIM*CFcRn_Thymus_IM*V_Thymus_IM
          + k_off_7_EXG2*Cedg_Thymus_b2IM*V_Thymus_IM
          + CLup_Thymus*(1.0-FR)*Cedg_Thymus_bE7b
          - CLup_Thymus*(1.0-FR)*Cedg_Thymus_bIM
          - kdeg_FcRn_Ab*Cedg_Thymus_bIM*V_Thymus_IM)/V_Thymus_IM;
dxdt_Cedg_Spleen_bIM = (k_on_7_EXG*Cedg_Spleen_IM*CFcRn_Spleen_IM*V_Spleen_IM
          - k_off_7_EXG*Cedg_Spleen_bIM*V_Spleen_IM
          - k_on_7_EXG2*Cedg_Spleen_bIM*CFcRn_Spleen_IM*V_Spleen_IM
          + k_off_7_EXG2*Cedg_Spleen_b2IM*V_Spleen_IM
          + CLup_Spleen*(1.0-FR)*Cedg_Spleen_bE7b
          - CLup_Spleen*(1.0-FR)*Cedg_Spleen_bIM
          - kdeg_FcRn_Ab*Cedg_Spleen_bIM*V_Spleen_IM)/V_Spleen_IM;
dxdt_Cedg_Other_bIM = (k_on_7_EXG*Cedg_Other_IM*CFcRn_Other_IM*V_Other_IM
          - k_off_7_EXG*Cedg_Other_bIM*V_Other_IM
          - k_on_7_EXG2*Cedg_Other_bIM*CFcRn_Other_IM*V_Other_IM
          + k_off_7_EXG2*Cedg_Other_b2IM*V_Other_IM
          + CLup_Other*(1.0-FR)*Cedg_Other_bE7b
          - CLup_Other*(1.0-FR)*Cedg_Other_bIM
          - kdeg_FcRn_Ab*Cedg_Other_bIM*V_Other_IM)/V_Other_IM;
dxdt_Cedg_Lung_b2IM = (k_on_7_EXG2*Cedg_Lung_bIM*CFcRn_Lung_IM*V_Lung_IM
          - k_off_7_EXG2*Cedg_Lung_b2IM*V_Lung_IM
          + CLup_Lung*(1.0-FR)*Cedg_Lung_b2E7b
          - CLup_Lung*(1.0-FR)*Cedg_Lung_b2IM
          - kdeg_FcRn_Ab*Cedg_Lung_b2IM*V_Lung_IM)/V_Lung_IM;
dxdt_Cedg_Liver_b2IM = (k_on_7_EXG2*Cedg_Liver_bIM*CFcRn_Liver_IM*V_Liver_IM
          - k_off_7_EXG2*Cedg_Liver_b2IM*V_Liver_IM
          + CLup_Liver*(1.0-FR)*Cedg_Liver_b2E7b
          - CLup_Liver*(1.0-FR)*Cedg_Liver_b2IM
          - kdeg_FcRn_Ab*Cedg_Liver_b2IM*V_Liver_IM)/V_Liver_IM;
dxdt_Cedg_Heart_b2IM = (k_on_7_EXG2*Cedg_Heart_bIM*CFcRn_Heart_IM*V_Heart_IM
          - k_off_7_EXG2*Cedg_Heart_b2IM*V_Heart_IM
          + CLup_Heart*(1.0-FR)*Cedg_Heart_b2E7b
          - CLup_Heart*(1.0-FR)*Cedg_Heart_b2IM
          - kdeg_FcRn_Ab*Cedg_Heart_b2IM*V_Heart_IM)/V_Heart_IM;
dxdt_Cedg_Muscle_b2IM = (k_on_7_EXG2*Cedg_Muscle_bIM*CFcRn_Muscle_IM*V_Muscle_IM
          - k_off_7_EXG2*Cedg_Muscle_b2IM*V_Muscle_IM
          + CLup_Muscle*(1.0-FR)*Cedg_Muscle_b2E7b
          - CLup_Muscle*(1.0-FR)*Cedg_Muscle_b2IM
          - kdeg_FcRn_Ab*Cedg_Muscle_b2IM*V_Muscle_IM)/V_Muscle_IM;
dxdt_Cedg_Skin_b2IM = (k_on_7_EXG2*Cedg_Skin_bIM*CFcRn_Skin_IM*V_Skin_IM
          - k_off_7_EXG2*Cedg_Skin_b2IM*V_Skin_IM
          + CLup_Skin*(1.0-FR)*Cedg_Skin_b2E7b
          - CLup_Skin*(1.0-FR)*Cedg_Skin_b2IM
          - kdeg_FcRn_Ab*Cedg_Skin_b2IM*V_Skin_IM)/V_Skin_IM;
dxdt_Cedg_Adipose_b2IM = (k_on_7_EXG2*Cedg_Adipose_bIM*CFcRn_Adipose_IM*V_Adipose_IM
          - k_off_7_EXG2*Cedg_Adipose_b2IM*V_Adipose_IM
          + CLup_Adipose*(1.0-FR)*Cedg_Adipose_b2E7b
          - CLup_Adipose*(1.0-FR)*Cedg_Adipose_b2IM
          - kdeg_FcRn_Ab*Cedg_Adipose_b2IM*V_Adipose_IM)/V_Adipose_IM;
dxdt_Cedg_Bone_b2IM = (k_on_7_EXG2*Cedg_Bone_bIM*CFcRn_Bone_IM*V_Bone_IM
          - k_off_7_EXG2*Cedg_Bone_b2IM*V_Bone_IM
          + CLup_Bone*(1.0-FR)*Cedg_Bone_b2E7b
          - CLup_Bone*(1.0-FR)*Cedg_Bone_b2IM
          - kdeg_FcRn_Ab*Cedg_Bone_b2IM*V_Bone_IM)/V_Bone_IM;
dxdt_Cedg_Brain_b2IM = (k_on_7_EXG2*Cedg_Brain_bIM*CFcRn_Brain_IM*V_Brain_IM
          - k_off_7_EXG2*Cedg_Brain_b2IM*V_Brain_IM
          + CLup_Brain*(1.0-FR)*Cedg_Brain_b2E7b
          - CLup_Brain*(1.0-FR)*Cedg_Brain_b2IM
          - kdeg_FcRn_Ab*Cedg_Brain_b2IM*V_Brain_IM)/V_Brain_IM;
dxdt_Cedg_Kidney_b2IM = (k_on_7_EXG2*Cedg_Kidney_bIM*CFcRn_Kidney_IM*V_Kidney_IM
          - k_off_7_EXG2*Cedg_Kidney_b2IM*V_Kidney_IM
          + CLup_Kidney*(1.0-FR)*Cedg_Kidney_b2E7b
          - CLup_Kidney*(1.0-FR)*Cedg_Kidney_b2IM
          - kdeg_FcRn_Ab*Cedg_Kidney_b2IM*V_Kidney_IM)/V_Kidney_IM;
dxdt_Cedg_SI_b2IM = (k_on_7_EXG2*Cedg_SI_bIM*CFcRn_SI_IM*V_SI_IM
          - k_off_7_EXG2*Cedg_SI_b2IM*V_SI_IM
          + CLup_SI*(1.0-FR)*Cedg_SI_b2E7b
          - CLup_SI*(1.0-FR)*Cedg_SI_b2IM
          - kdeg_FcRn_Ab*Cedg_SI_b2IM*V_SI_IM)/V_SI_IM;
dxdt_Cedg_LI_b2IM = (k_on_7_EXG2*Cedg_LI_bIM*CFcRn_LI_IM*V_LI_IM
          - k_off_7_EXG2*Cedg_LI_b2IM*V_LI_IM
          + CLup_LI*(1.0-FR)*Cedg_LI_b2E7b
          - CLup_LI*(1.0-FR)*Cedg_LI_b2IM
          - kdeg_FcRn_Ab*Cedg_LI_b2IM*V_LI_IM)/V_LI_IM;
dxdt_Cedg_Pancreas_b2IM = (k_on_7_EXG2*Cedg_Pancreas_bIM*CFcRn_Pancreas_IM*V_Pancreas_IM
          - k_off_7_EXG2*Cedg_Pancreas_b2IM*V_Pancreas_IM
          + CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_b2E7b
          - CLup_Pancreas*(1.0-FR)*Cedg_Pancreas_b2IM
          - kdeg_FcRn_Ab*Cedg_Pancreas_b2IM*V_Pancreas_IM)/V_Pancreas_IM;
dxdt_Cedg_Thymus_b2IM = (k_on_7_EXG2*Cedg_Thymus_bIM*CFcRn_Thymus_IM*V_Thymus_IM
          - k_off_7_EXG2*Cedg_Thymus_b2IM*V_Thymus_IM
          + CLup_Thymus*(1.0-FR)*Cedg_Thymus_b2E7b
          - CLup_Thymus*(1.0-FR)*Cedg_Thymus_b2IM
          - kdeg_FcRn_Ab*Cedg_Thymus_b2IM*V_Thymus_IM)/V_Thymus_IM;
dxdt_Cedg_Spleen_b2IM = (k_on_7_EXG2*Cedg_Spleen_bIM*CFcRn_Spleen_IM*V_Spleen_IM
          - k_off_7_EXG2*Cedg_Spleen_b2IM*V_Spleen_IM
          + CLup_Spleen*(1.0-FR)*Cedg_Spleen_b2E7b
          - CLup_Spleen*(1.0-FR)*Cedg_Spleen_b2IM
          - kdeg_FcRn_Ab*Cedg_Spleen_b2IM*V_Spleen_IM)/V_Spleen_IM;
dxdt_Cedg_Other_b2IM = (k_on_7_EXG2*Cedg_Other_bIM*CFcRn_Other_IM*V_Other_IM
          - k_off_7_EXG2*Cedg_Other_b2IM*V_Other_IM
          + CLup_Other*(1.0-FR)*Cedg_Other_b2E7b
          - CLup_Other*(1.0-FR)*Cedg_Other_b2IM
          - kdeg_FcRn_Ab*Cedg_Other_b2IM*V_Other_IM)/V_Other_IM;
//==============================================================================================
// Free FcRn in Organs
// Vascular Side Membrane
dxdt_CFcRn_Lung_VM = (CLup_Lung*FR*CFcRn_Lung_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Lung*FR*CFcRn_Lung_VM
          + V_Lung_VM*(
          - k_on_7_EXG*Cexg_Lung_VM*CFcRn_Lung_VM
          + k_off_7_EXG*Cexg_Lung_bVM
          + kdeg_FcRn_Ab*Cexg_Lung_bVM
          - k_on_7_EXG2*Cexg_Lung_bVM*CFcRn_Lung_VM
          + k_off_7_EXG2*Cexg_Lung_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Lung_b2VM
          - k_on_7_EDG*Cedg_Lung_VM*CFcRn_Lung_VM
          + k_off_7_EDG*Cedg_Lung_bVM
          + kdeg_FcRn_Ab*Cedg_Lung_bVM
          - k_on_7_EDG2*Cedg_Lung_bVM*CFcRn_Lung_VM
          + k_off_7_EDG2*Cedg_Lung_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Lung_b2VM))/V_Lung_VM;
dxdt_CFcRn_Liver_VM = (CLup_Liver*FR*CFcRn_Liver_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Liver*FR*CFcRn_Liver_VM
          + V_Liver_VM*(
          - k_on_7_EXG*Cexg_Liver_VM*CFcRn_Liver_VM
          + k_off_7_EXG*Cexg_Liver_bVM
          + kdeg_FcRn_Ab*Cexg_Liver_bVM
          - k_on_7_EXG2*Cexg_Liver_bVM*CFcRn_Liver_VM
          + k_off_7_EXG2*Cexg_Liver_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Liver_b2VM
          - k_on_7_EDG*Cedg_Liver_VM*CFcRn_Liver_VM
          + k_off_7_EDG*Cedg_Liver_bVM
          + kdeg_FcRn_Ab*Cedg_Liver_bVM
          - k_on_7_EDG2*Cedg_Liver_bVM*CFcRn_Liver_VM
          + k_off_7_EDG2*Cedg_Liver_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Liver_b2VM))/V_Liver_VM;
dxdt_CFcRn_Heart_VM = (CLup_Heart*FR*CFcRn_Heart_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Heart*FR*CFcRn_Heart_VM
          + V_Heart_VM*(
          - k_on_7_EXG*Cexg_Heart_VM*CFcRn_Heart_VM
          + k_off_7_EXG*Cexg_Heart_bVM
          + kdeg_FcRn_Ab*Cexg_Heart_bVM
          - k_on_7_EXG2*Cexg_Heart_bVM*CFcRn_Heart_VM
          + k_off_7_EXG2*Cexg_Heart_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Heart_b2VM
          - k_on_7_EDG*Cedg_Heart_VM*CFcRn_Heart_VM
          + k_off_7_EDG*Cedg_Heart_bVM
          + kdeg_FcRn_Ab*Cedg_Heart_bVM
          - k_on_7_EDG2*Cedg_Heart_bVM*CFcRn_Heart_VM
          + k_off_7_EDG2*Cedg_Heart_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Heart_b2VM))/V_Heart_VM;
dxdt_CFcRn_Muscle_VM = (CLup_Muscle*FR*CFcRn_Muscle_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Muscle*FR*CFcRn_Muscle_VM
          + V_Muscle_VM*(
          - k_on_7_EXG*Cexg_Muscle_VM*CFcRn_Muscle_VM
          + k_off_7_EXG*Cexg_Muscle_bVM
          + kdeg_FcRn_Ab*Cexg_Muscle_bVM
          - k_on_7_EXG2*Cexg_Muscle_bVM*CFcRn_Muscle_VM
          + k_off_7_EXG2*Cexg_Muscle_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Muscle_b2VM
          - k_on_7_EDG*Cedg_Muscle_VM*CFcRn_Muscle_VM
          + k_off_7_EDG*Cedg_Muscle_bVM
          + kdeg_FcRn_Ab*Cedg_Muscle_bVM
          - k_on_7_EDG2*Cedg_Muscle_bVM*CFcRn_Muscle_VM
          + k_off_7_EDG2*Cedg_Muscle_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Muscle_b2VM))/V_Muscle_VM;
dxdt_CFcRn_Skin_VM = (CLup_Skin*FR*CFcRn_Skin_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Skin*FR*CFcRn_Skin_VM
          + V_Skin_VM*(
          - k_on_7_EXG*Cexg_Skin_VM*CFcRn_Skin_VM
          + k_off_7_EXG*Cexg_Skin_bVM
          + kdeg_FcRn_Ab*Cexg_Skin_bVM
          - k_on_7_EXG2*Cexg_Skin_bVM*CFcRn_Skin_VM
          + k_off_7_EXG2*Cexg_Skin_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Skin_b2VM
          - k_on_7_EDG*Cedg_Skin_VM*CFcRn_Skin_VM
          + k_off_7_EDG*Cedg_Skin_bVM
          + kdeg_FcRn_Ab*Cedg_Skin_bVM
          - k_on_7_EDG2*Cedg_Skin_bVM*CFcRn_Skin_VM
          + k_off_7_EDG2*Cedg_Skin_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Skin_b2VM))/V_Skin_VM;
dxdt_CFcRn_Adipose_VM = (CLup_Adipose*FR*CFcRn_Adipose_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Adipose*FR*CFcRn_Adipose_VM
          + V_Adipose_VM*(
          - k_on_7_EXG*Cexg_Adipose_VM*CFcRn_Adipose_VM
          + k_off_7_EXG*Cexg_Adipose_bVM
          + kdeg_FcRn_Ab*Cexg_Adipose_bVM
          - k_on_7_EXG2*Cexg_Adipose_bVM*CFcRn_Adipose_VM
          + k_off_7_EXG2*Cexg_Adipose_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Adipose_b2VM
          - k_on_7_EDG*Cedg_Adipose_VM*CFcRn_Adipose_VM
          + k_off_7_EDG*Cedg_Adipose_bVM
          + kdeg_FcRn_Ab*Cedg_Adipose_bVM
          - k_on_7_EDG2*Cedg_Adipose_bVM*CFcRn_Adipose_VM
          + k_off_7_EDG2*Cedg_Adipose_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Adipose_b2VM))/V_Adipose_VM;
dxdt_CFcRn_Bone_VM = (CLup_Bone*FR*CFcRn_Bone_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Bone*FR*CFcRn_Bone_VM
          + V_Bone_VM*(
          - k_on_7_EXG*Cexg_Bone_VM*CFcRn_Bone_VM
          + k_off_7_EXG*Cexg_Bone_bVM
          + kdeg_FcRn_Ab*Cexg_Bone_bVM
          - k_on_7_EXG2*Cexg_Bone_bVM*CFcRn_Bone_VM
          + k_off_7_EXG2*Cexg_Bone_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Bone_b2VM
          - k_on_7_EDG*Cedg_Bone_VM*CFcRn_Bone_VM
          + k_off_7_EDG*Cedg_Bone_bVM
          + kdeg_FcRn_Ab*Cedg_Bone_bVM
          - k_on_7_EDG2*Cedg_Bone_bVM*CFcRn_Bone_VM
          + k_off_7_EDG2*Cedg_Bone_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Bone_b2VM))/V_Bone_VM;
dxdt_CFcRn_Brain_VM = (CLup_Brain*FR*CFcRn_Brain_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Brain*FR*CFcRn_Brain_VM
          + V_Brain_VM*(
          - k_on_7_EXG*Cexg_Brain_VM*CFcRn_Brain_VM
          + k_off_7_EXG*Cexg_Brain_bVM
          + kdeg_FcRn_Ab*Cexg_Brain_bVM
          - k_on_7_EXG2*Cexg_Brain_bVM*CFcRn_Brain_VM
          + k_off_7_EXG2*Cexg_Brain_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Brain_b2VM
          - k_on_7_EDG*Cedg_Brain_VM*CFcRn_Brain_VM
          + k_off_7_EDG*Cedg_Brain_bVM
          + kdeg_FcRn_Ab*Cedg_Brain_bVM
          - k_on_7_EDG2*Cedg_Brain_bVM*CFcRn_Brain_VM
          + k_off_7_EDG2*Cedg_Brain_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Brain_b2VM))/V_Brain_VM;
dxdt_CFcRn_Kidney_VM = (CLup_Kidney*FR*CFcRn_Kidney_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Kidney*FR*CFcRn_Kidney_VM
          + V_Kidney_VM*(
          - k_on_7_EXG*Cexg_Kidney_VM*CFcRn_Kidney_VM
          + k_off_7_EXG*Cexg_Kidney_bVM
          + kdeg_FcRn_Ab*Cexg_Kidney_bVM
          - k_on_7_EXG2*Cexg_Kidney_bVM*CFcRn_Kidney_VM
          + k_off_7_EXG2*Cexg_Kidney_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Kidney_b2VM
          - k_on_7_EDG*Cedg_Kidney_VM*CFcRn_Kidney_VM
          + k_off_7_EDG*Cedg_Kidney_bVM
          + kdeg_FcRn_Ab*Cedg_Kidney_bVM
          - k_on_7_EDG2*Cedg_Kidney_bVM*CFcRn_Kidney_VM
          + k_off_7_EDG2*Cedg_Kidney_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Kidney_b2VM))/V_Kidney_VM;
dxdt_CFcRn_SI_VM = (CLup_SI*FR*CFcRn_SI_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_SI*FR*CFcRn_SI_VM
          + V_SI_VM*(
          - k_on_7_EXG*Cexg_SI_VM*CFcRn_SI_VM
          + k_off_7_EXG*Cexg_SI_bVM
          + kdeg_FcRn_Ab*Cexg_SI_bVM
          - k_on_7_EXG2*Cexg_SI_bVM*CFcRn_SI_VM
          + k_off_7_EXG2*Cexg_SI_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_SI_b2VM
          - k_on_7_EDG*Cedg_SI_VM*CFcRn_SI_VM
          + k_off_7_EDG*Cedg_SI_bVM
          + kdeg_FcRn_Ab*Cedg_SI_bVM
          - k_on_7_EDG2*Cedg_SI_bVM*CFcRn_SI_VM
          + k_off_7_EDG2*Cedg_SI_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_SI_b2VM))/V_SI_VM;
dxdt_CFcRn_LI_VM = (CLup_LI*FR*CFcRn_LI_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_LI*FR*CFcRn_LI_VM
          + V_LI_VM*(
          - k_on_7_EXG*Cexg_LI_VM*CFcRn_LI_VM
          + k_off_7_EXG*Cexg_LI_bVM
          + kdeg_FcRn_Ab*Cexg_LI_bVM
          - k_on_7_EXG2*Cexg_LI_bVM*CFcRn_LI_VM
          + k_off_7_EXG2*Cexg_LI_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_LI_b2VM
          - k_on_7_EDG*Cedg_LI_VM*CFcRn_LI_VM
          + k_off_7_EDG*Cedg_LI_bVM
          + kdeg_FcRn_Ab*Cedg_LI_bVM
          - k_on_7_EDG2*Cedg_LI_bVM*CFcRn_LI_VM
          + k_off_7_EDG2*Cedg_LI_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_LI_b2VM))/V_LI_VM;
dxdt_CFcRn_Pancreas_VM = (CLup_Pancreas*FR*CFcRn_Pancreas_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Pancreas*FR*CFcRn_Pancreas_VM
          + V_Pancreas_VM*(
          - k_on_7_EXG*Cexg_Pancreas_VM*CFcRn_Pancreas_VM
          + k_off_7_EXG*Cexg_Pancreas_bVM
          + kdeg_FcRn_Ab*Cexg_Pancreas_bVM
          - k_on_7_EXG2*Cexg_Pancreas_bVM*CFcRn_Pancreas_VM
          + k_off_7_EXG2*Cexg_Pancreas_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Pancreas_b2VM
          - k_on_7_EDG*Cedg_Pancreas_VM*CFcRn_Pancreas_VM
          + k_off_7_EDG*Cedg_Pancreas_bVM
          + kdeg_FcRn_Ab*Cedg_Pancreas_bVM
          - k_on_7_EDG2*Cedg_Pancreas_bVM*CFcRn_Pancreas_VM
          + k_off_7_EDG2*Cedg_Pancreas_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Pancreas_b2VM))/V_Pancreas_VM;
dxdt_CFcRn_Thymus_VM = (CLup_Thymus*FR*CFcRn_Thymus_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Thymus*FR*CFcRn_Thymus_VM
          + V_Thymus_VM*(
          - k_on_7_EXG*Cexg_Thymus_VM*CFcRn_Thymus_VM
          + k_off_7_EXG*Cexg_Thymus_bVM
          + kdeg_FcRn_Ab*Cexg_Thymus_bVM
          - k_on_7_EXG2*Cexg_Thymus_bVM*CFcRn_Thymus_VM
          + k_off_7_EXG2*Cexg_Thymus_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Thymus_b2VM
          - k_on_7_EDG*Cedg_Thymus_VM*CFcRn_Thymus_VM
          + k_off_7_EDG*Cedg_Thymus_bVM
          + kdeg_FcRn_Ab*Cedg_Thymus_bVM
          - k_on_7_EDG2*Cedg_Thymus_bVM*CFcRn_Thymus_VM
          + k_off_7_EDG2*Cedg_Thymus_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Thymus_b2VM))/V_Thymus_VM;
dxdt_CFcRn_Spleen_VM = (CLup_Spleen*FR*CFcRn_Spleen_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Spleen*FR*CFcRn_Spleen_VM
          + V_Spleen_VM*(
          - k_on_7_EXG*Cexg_Spleen_VM*CFcRn_Spleen_VM
          + k_off_7_EXG*Cexg_Spleen_bVM
          + kdeg_FcRn_Ab*Cexg_Spleen_bVM
          - k_on_7_EXG2*Cexg_Spleen_bVM*CFcRn_Spleen_VM
          + k_off_7_EXG2*Cexg_Spleen_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Spleen_b2VM
          - k_on_7_EDG*Cedg_Spleen_VM*CFcRn_Spleen_VM
          + k_off_7_EDG*Cedg_Spleen_bVM
          + kdeg_FcRn_Ab*Cedg_Spleen_bVM
          - k_on_7_EDG2*Cedg_Spleen_bVM*CFcRn_Spleen_VM
          + k_off_7_EDG2*Cedg_Spleen_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Spleen_b2VM))/V_Spleen_VM;
dxdt_CFcRn_Other_VM = (CLup_Other*FR*CFcRn_Other_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Other*FR*CFcRn_Other_VM
          + V_Other_VM*(
          - k_on_7_EXG*Cexg_Other_VM*CFcRn_Other_VM
          + k_off_7_EXG*Cexg_Other_bVM
          + kdeg_FcRn_Ab*Cexg_Other_bVM
          - k_on_7_EXG2*Cexg_Other_bVM*CFcRn_Other_VM
          + k_off_7_EXG2*Cexg_Other_b2VM
          + 2.0*kdeg_FcRn_Ab*Cexg_Other_b2VM
          - k_on_7_EDG*Cedg_Other_VM*CFcRn_Other_VM
          + k_off_7_EDG*Cedg_Other_bVM
          + kdeg_FcRn_Ab*Cedg_Other_bVM
          - k_on_7_EDG2*Cedg_Other_bVM*CFcRn_Other_VM
          + k_off_7_EDG2*Cedg_Other_b2VM
          + 2.0*kdeg_FcRn_Ab*Cedg_Other_b2VM))/V_Other_VM;
// endosomal pH=7.4
dxdt_CFcRn_Lung_E7 = (CLup_Lung*FR*CFcRn_Lung_VM+CLup_Lung*(1.0-FR)*CFcRn_Lung_IM
          - CLup_Lung*CFcRn_Lung_E7
          + V_Lung_E7*(
          - k_on_7_EXG*Cexg_Lung_E7*CFcRn_Lung_E7
          + k_off_7_EXG*Cexg_Lung_bE7
          - k_on_7_EXG2*Cexg_Lung_bE7*CFcRn_Lung_E7
          + k_off_7_EXG2*Cexg_Lung_b2E7
          - k_on_7_EDG*Cedg_Lung_E7*CFcRn_Lung_E7
          + k_off_7_EDG*Cedg_Lung_bE7
          - k_on_7_EDG2*Cedg_Lung_bE7*CFcRn_Lung_E7
          + k_off_7_EDG2*Cedg_Lung_b2E7))/V_Lung_E7;
dxdt_CFcRn_Liver_E7 = (CLup_Liver*FR*CFcRn_Liver_VM+CLup_Liver*(1.0-FR)*CFcRn_Liver_IM
          - CLup_Liver*CFcRn_Liver_E7
          + V_Liver_E7*(
          - k_on_7_EXG*Cexg_Liver_E7*CFcRn_Liver_E7
          + k_off_7_EXG*Cexg_Liver_bE7
          - k_on_7_EXG2*Cexg_Liver_bE7*CFcRn_Liver_E7
          + k_off_7_EXG2*Cexg_Liver_b2E7
          - k_on_7_EDG*Cedg_Liver_E7*CFcRn_Liver_E7
          + k_off_7_EDG*Cedg_Liver_bE7
          - k_on_7_EDG2*Cedg_Liver_bE7*CFcRn_Liver_E7
          + k_off_7_EDG2*Cedg_Liver_b2E7))/V_Liver_E7;
dxdt_CFcRn_Heart_E7 = (CLup_Heart*FR*CFcRn_Heart_VM+CLup_Heart*(1.0-FR)*CFcRn_Heart_IM
          - CLup_Heart*CFcRn_Heart_E7
          + V_Heart_E7*(
          - k_on_7_EXG*Cexg_Heart_E7*CFcRn_Heart_E7
          + k_off_7_EXG*Cexg_Heart_bE7
          - k_on_7_EXG2*Cexg_Heart_bE7*CFcRn_Heart_E7
          + k_off_7_EXG2*Cexg_Heart_b2E7
          - k_on_7_EDG*Cedg_Heart_E7*CFcRn_Heart_E7
          + k_off_7_EDG*Cedg_Heart_bE7
          - k_on_7_EDG2*Cedg_Heart_bE7*CFcRn_Heart_E7
          + k_off_7_EDG2*Cedg_Heart_b2E7))/V_Heart_E7;
dxdt_CFcRn_Muscle_E7 = (CLup_Muscle*FR*CFcRn_Muscle_VM+CLup_Muscle*(1.0-FR)*CFcRn_Muscle_IM
          - CLup_Muscle*CFcRn_Muscle_E7
          + V_Muscle_E7*(
          - k_on_7_EXG*Cexg_Muscle_E7*CFcRn_Muscle_E7
          + k_off_7_EXG*Cexg_Muscle_bE7
          - k_on_7_EXG2*Cexg_Muscle_bE7*CFcRn_Muscle_E7
          + k_off_7_EXG2*Cexg_Muscle_b2E7
          - k_on_7_EDG*Cedg_Muscle_E7*CFcRn_Muscle_E7
          + k_off_7_EDG*Cedg_Muscle_bE7
          - k_on_7_EDG2*Cedg_Muscle_bE7*CFcRn_Muscle_E7
          + k_off_7_EDG2*Cedg_Muscle_b2E7))/V_Muscle_E7;
dxdt_CFcRn_Skin_E7 = (CLup_Skin*FR*CFcRn_Skin_VM+CLup_Skin*(1.0-FR)*CFcRn_Skin_IM
          - CLup_Skin*CFcRn_Skin_E7
          + V_Skin_E7*(
          - k_on_7_EXG*Cexg_Skin_E7*CFcRn_Skin_E7
          + k_off_7_EXG*Cexg_Skin_bE7
          - k_on_7_EXG2*Cexg_Skin_bE7*CFcRn_Skin_E7
          + k_off_7_EXG2*Cexg_Skin_b2E7
          - k_on_7_EDG*Cedg_Skin_E7*CFcRn_Skin_E7
          + k_off_7_EDG*Cedg_Skin_bE7
          - k_on_7_EDG2*Cedg_Skin_bE7*CFcRn_Skin_E7
          + k_off_7_EDG2*Cedg_Skin_b2E7))/V_Skin_E7;
dxdt_CFcRn_Adipose_E7 = (CLup_Adipose*FR*CFcRn_Adipose_VM+CLup_Adipose*(1.0-FR)*CFcRn_Adipose_IM
          - CLup_Adipose*CFcRn_Adipose_E7
          + V_Adipose_E7*(
          - k_on_7_EXG*Cexg_Adipose_E7*CFcRn_Adipose_E7
          + k_off_7_EXG*Cexg_Adipose_bE7
          - k_on_7_EXG2*Cexg_Adipose_bE7*CFcRn_Adipose_E7
          + k_off_7_EXG2*Cexg_Adipose_b2E7
          - k_on_7_EDG*Cedg_Adipose_E7*CFcRn_Adipose_E7
          + k_off_7_EDG*Cedg_Adipose_bE7
          - k_on_7_EDG2*Cedg_Adipose_bE7*CFcRn_Adipose_E7
          + k_off_7_EDG2*Cedg_Adipose_b2E7))/V_Adipose_E7;
dxdt_CFcRn_Bone_E7 = (CLup_Bone*FR*CFcRn_Bone_VM+CLup_Bone*(1.0-FR)*CFcRn_Bone_IM
          - CLup_Bone*CFcRn_Bone_E7
          + V_Bone_E7*(
          - k_on_7_EXG*Cexg_Bone_E7*CFcRn_Bone_E7
          + k_off_7_EXG*Cexg_Bone_bE7
          - k_on_7_EXG2*Cexg_Bone_bE7*CFcRn_Bone_E7
          + k_off_7_EXG2*Cexg_Bone_b2E7
          - k_on_7_EDG*Cedg_Bone_E7*CFcRn_Bone_E7
          + k_off_7_EDG*Cedg_Bone_bE7
          - k_on_7_EDG2*Cedg_Bone_bE7*CFcRn_Bone_E7
          + k_off_7_EDG2*Cedg_Bone_b2E7))/V_Bone_E7;
dxdt_CFcRn_Brain_E7 = (CLup_Brain*FR*CFcRn_Brain_VM+CLup_Brain*(1.0-FR)*CFcRn_Brain_IM
          - CLup_Brain*CFcRn_Brain_E7
          + V_Brain_E7*(
          - k_on_7_EXG*Cexg_Brain_E7*CFcRn_Brain_E7
          + k_off_7_EXG*Cexg_Brain_bE7
          - k_on_7_EXG2*Cexg_Brain_bE7*CFcRn_Brain_E7
          + k_off_7_EXG2*Cexg_Brain_b2E7
          - k_on_7_EDG*Cedg_Brain_E7*CFcRn_Brain_E7
          + k_off_7_EDG*Cedg_Brain_bE7
          - k_on_7_EDG2*Cedg_Brain_bE7*CFcRn_Brain_E7
          + k_off_7_EDG2*Cedg_Brain_b2E7))/V_Brain_E7;
dxdt_CFcRn_Kidney_E7 = (CLup_Kidney*FR*CFcRn_Kidney_VM+CLup_Kidney*(1.0-FR)*CFcRn_Kidney_IM
          - CLup_Kidney*CFcRn_Kidney_E7
          + V_Kidney_E7*(
          - k_on_7_EXG*Cexg_Kidney_E7*CFcRn_Kidney_E7
          + k_off_7_EXG*Cexg_Kidney_bE7
          - k_on_7_EXG2*Cexg_Kidney_bE7*CFcRn_Kidney_E7
          + k_off_7_EXG2*Cexg_Kidney_b2E7
          - k_on_7_EDG*Cedg_Kidney_E7*CFcRn_Kidney_E7
          + k_off_7_EDG*Cedg_Kidney_bE7
          - k_on_7_EDG2*Cedg_Kidney_bE7*CFcRn_Kidney_E7
          + k_off_7_EDG2*Cedg_Kidney_b2E7))/V_Kidney_E7;
dxdt_CFcRn_SI_E7 = (CLup_SI*FR*CFcRn_SI_VM+CLup_SI*(1.0-FR)*CFcRn_SI_IM
          - CLup_SI*CFcRn_SI_E7
          + V_SI_E7*(
          - k_on_7_EXG*Cexg_SI_E7*CFcRn_SI_E7
          + k_off_7_EXG*Cexg_SI_bE7
          - k_on_7_EXG2*Cexg_SI_bE7*CFcRn_SI_E7
          + k_off_7_EXG2*Cexg_SI_b2E7
          - k_on_7_EDG*Cedg_SI_E7*CFcRn_SI_E7
          + k_off_7_EDG*Cedg_SI_bE7
          - k_on_7_EDG2*Cedg_SI_bE7*CFcRn_SI_E7
          + k_off_7_EDG2*Cedg_SI_b2E7))/V_SI_E7;
dxdt_CFcRn_LI_E7 = (CLup_LI*FR*CFcRn_LI_VM+CLup_LI*(1.0-FR)*CFcRn_LI_IM
          - CLup_LI*CFcRn_LI_E7
          + V_LI_E7*(
          - k_on_7_EXG*Cexg_LI_E7*CFcRn_LI_E7
          + k_off_7_EXG*Cexg_LI_bE7
          - k_on_7_EXG2*Cexg_LI_bE7*CFcRn_LI_E7
          + k_off_7_EXG2*Cexg_LI_b2E7
          - k_on_7_EDG*Cedg_LI_E7*CFcRn_LI_E7
          + k_off_7_EDG*Cedg_LI_bE7
          - k_on_7_EDG2*Cedg_LI_bE7*CFcRn_LI_E7
          + k_off_7_EDG2*Cedg_LI_b2E7))/V_LI_E7;
dxdt_CFcRn_Pancreas_E7 = (CLup_Pancreas*FR*CFcRn_Pancreas_VM+CLup_Pancreas*(1.0-FR)*CFcRn_Pancreas_IM
          - CLup_Pancreas*CFcRn_Pancreas_E7
          + V_Pancreas_E7*(
          - k_on_7_EXG*Cexg_Pancreas_E7*CFcRn_Pancreas_E7
          + k_off_7_EXG*Cexg_Pancreas_bE7
          - k_on_7_EXG2*Cexg_Pancreas_bE7*CFcRn_Pancreas_E7
          + k_off_7_EXG2*Cexg_Pancreas_b2E7
          - k_on_7_EDG*Cedg_Pancreas_E7*CFcRn_Pancreas_E7
          + k_off_7_EDG*Cedg_Pancreas_bE7
          - k_on_7_EDG2*Cedg_Pancreas_bE7*CFcRn_Pancreas_E7
          + k_off_7_EDG2*Cedg_Pancreas_b2E7))/V_Pancreas_E7;
dxdt_CFcRn_Thymus_E7 = (CLup_Thymus*FR*CFcRn_Thymus_VM+CLup_Thymus*(1.0-FR)*CFcRn_Thymus_IM
          - CLup_Thymus*CFcRn_Thymus_E7
          + V_Thymus_E7*(
          - k_on_7_EXG*Cexg_Thymus_E7*CFcRn_Thymus_E7
          + k_off_7_EXG*Cexg_Thymus_bE7
          - k_on_7_EXG2*Cexg_Thymus_bE7*CFcRn_Thymus_E7
          + k_off_7_EXG2*Cexg_Thymus_b2E7
          - k_on_7_EDG*Cedg_Thymus_E7*CFcRn_Thymus_E7
          + k_off_7_EDG*Cedg_Thymus_bE7
          - k_on_7_EDG2*Cedg_Thymus_bE7*CFcRn_Thymus_E7
          + k_off_7_EDG2*Cedg_Thymus_b2E7))/V_Thymus_E7;
dxdt_CFcRn_Spleen_E7 = (CLup_Spleen*FR*CFcRn_Spleen_VM+CLup_Spleen*(1.0-FR)*CFcRn_Spleen_IM
          - CLup_Spleen*CFcRn_Spleen_E7
          + V_Spleen_E7*(
          - k_on_7_EXG*Cexg_Spleen_E7*CFcRn_Spleen_E7
          + k_off_7_EXG*Cexg_Spleen_bE7
          - k_on_7_EXG2*Cexg_Spleen_bE7*CFcRn_Spleen_E7
          + k_off_7_EXG2*Cexg_Spleen_b2E7
          - k_on_7_EDG*Cedg_Spleen_E7*CFcRn_Spleen_E7
          + k_off_7_EDG*Cedg_Spleen_bE7
          - k_on_7_EDG2*Cedg_Spleen_bE7*CFcRn_Spleen_E7
          + k_off_7_EDG2*Cedg_Spleen_b2E7))/V_Spleen_E7;
dxdt_CFcRn_Other_E7 = (CLup_Other*FR*CFcRn_Other_VM+CLup_Other*(1.0-FR)*CFcRn_Other_IM
          - CLup_Other*CFcRn_Other_E7
          + V_Other_E7*(
          - k_on_7_EXG*Cexg_Other_E7*CFcRn_Other_E7
          + k_off_7_EXG*Cexg_Other_bE7
          - k_on_7_EXG2*Cexg_Other_bE7*CFcRn_Other_E7
          + k_off_7_EXG2*Cexg_Other_b2E7
          - k_on_7_EDG*Cedg_Other_E7*CFcRn_Other_E7
          + k_off_7_EDG*Cedg_Other_bE7
          - k_on_7_EDG2*Cedg_Other_bE7*CFcRn_Other_E7
          + k_off_7_EDG2*Cedg_Other_b2E7))/V_Other_E7;
// endosomal pH=6.0
dxdt_CFcRn_Lung_E6a = (CLup_Lung*CFcRn_Lung_E7
          - CLup_Lung*CFcRn_Lung_E6a
          + CLup_Lung*CFcRn_Lung_E7b*FcRn_recycle_fraction
          + V_Lung_E6a * (
          - k_on_6_EXG*Cexg_Lung_E6a*CFcRn_Lung_E6a
          + k_off_6_EXG*Cexg_Lung_bE6a
          - k_on_6_EXG2*Cexg_Lung_bE6a*CFcRn_Lung_E6a
          + k_off_6_EXG2*Cexg_Lung_b2E6a
          - k_on_6_EDG*Cedg_Lung_E6a*CFcRn_Lung_E6a
          + k_off_6_EDG*Cedg_Lung_bE6a
          - k_on_6_EDG2*Cedg_Lung_bE6a*CFcRn_Lung_E6a
          + k_off_6_EDG2*Cedg_Lung_b2E6a))/V_Lung_E6a;
dxdt_CFcRn_Liver_E6a = (CLup_Liver*CFcRn_Liver_E7
          - CLup_Liver*CFcRn_Liver_E6a
          + CLup_Liver*CFcRn_Liver_E7b*FcRn_recycle_fraction
          + V_Liver_E6a * (
          - k_on_6_EXG*Cexg_Liver_E6a*CFcRn_Liver_E6a
          + k_off_6_EXG*Cexg_Liver_bE6a
          - k_on_6_EXG2*Cexg_Liver_bE6a*CFcRn_Liver_E6a
          + k_off_6_EXG2*Cexg_Liver_b2E6a
          - k_on_6_EDG*Cedg_Liver_E6a*CFcRn_Liver_E6a
          + k_off_6_EDG*Cedg_Liver_bE6a
          - k_on_6_EDG2*Cedg_Liver_bE6a*CFcRn_Liver_E6a
          + k_off_6_EDG2*Cedg_Liver_b2E6a))/V_Liver_E6a;
dxdt_CFcRn_Heart_E6a = (CLup_Heart*CFcRn_Heart_E7
          - CLup_Heart*CFcRn_Heart_E6a
          + CLup_Heart*CFcRn_Heart_E7b*FcRn_recycle_fraction
          + V_Heart_E6a * (
          - k_on_6_EXG*Cexg_Heart_E6a*CFcRn_Heart_E6a
          + k_off_6_EXG*Cexg_Heart_bE6a
          - k_on_6_EXG2*Cexg_Heart_bE6a*CFcRn_Heart_E6a
          + k_off_6_EXG2*Cexg_Heart_b2E6a
          - k_on_6_EDG*Cedg_Heart_E6a*CFcRn_Heart_E6a
          + k_off_6_EDG*Cedg_Heart_bE6a
          - k_on_6_EDG2*Cedg_Heart_bE6a*CFcRn_Heart_E6a
          + k_off_6_EDG2*Cedg_Heart_b2E6a))/V_Heart_E6a;
dxdt_CFcRn_Muscle_E6a = (CLup_Muscle*CFcRn_Muscle_E7
          - CLup_Muscle*CFcRn_Muscle_E6a
          + CLup_Muscle*CFcRn_Muscle_E7b*FcRn_recycle_fraction
          + V_Muscle_E6a * (
          - k_on_6_EXG*Cexg_Muscle_E6a*CFcRn_Muscle_E6a
          + k_off_6_EXG*Cexg_Muscle_bE6a
          - k_on_6_EXG2*Cexg_Muscle_bE6a*CFcRn_Muscle_E6a
          + k_off_6_EXG2*Cexg_Muscle_b2E6a
          - k_on_6_EDG*Cedg_Muscle_E6a*CFcRn_Muscle_E6a
          + k_off_6_EDG*Cedg_Muscle_bE6a
          - k_on_6_EDG2*Cedg_Muscle_bE6a*CFcRn_Muscle_E6a
          + k_off_6_EDG2*Cedg_Muscle_b2E6a))/V_Muscle_E6a;
dxdt_CFcRn_Skin_E6a = (CLup_Skin*CFcRn_Skin_E7
          - CLup_Skin*CFcRn_Skin_E6a
          + CLup_Skin*CFcRn_Skin_E7b*FcRn_recycle_fraction
          + V_Skin_E6a * (
          - k_on_6_EXG*Cexg_Skin_E6a*CFcRn_Skin_E6a
          + k_off_6_EXG*Cexg_Skin_bE6a
          - k_on_6_EXG2*Cexg_Skin_bE6a*CFcRn_Skin_E6a
          + k_off_6_EXG2*Cexg_Skin_b2E6a
          - k_on_6_EDG*Cedg_Skin_E6a*CFcRn_Skin_E6a
          + k_off_6_EDG*Cedg_Skin_bE6a
          - k_on_6_EDG2*Cedg_Skin_bE6a*CFcRn_Skin_E6a
          + k_off_6_EDG2*Cedg_Skin_b2E6a))/V_Skin_E6a;
dxdt_CFcRn_Adipose_E6a = (CLup_Adipose*CFcRn_Adipose_E7
          - CLup_Adipose*CFcRn_Adipose_E6a
          + CLup_Adipose*CFcRn_Adipose_E7b*FcRn_recycle_fraction
          + V_Adipose_E6a * (
          - k_on_6_EXG*Cexg_Adipose_E6a*CFcRn_Adipose_E6a
          + k_off_6_EXG*Cexg_Adipose_bE6a
          - k_on_6_EXG2*Cexg_Adipose_bE6a*CFcRn_Adipose_E6a
          + k_off_6_EXG2*Cexg_Adipose_b2E6a
          - k_on_6_EDG*Cedg_Adipose_E6a*CFcRn_Adipose_E6a
          + k_off_6_EDG*Cedg_Adipose_bE6a
          - k_on_6_EDG2*Cedg_Adipose_bE6a*CFcRn_Adipose_E6a
          + k_off_6_EDG2*Cedg_Adipose_b2E6a))/V_Adipose_E6a;
dxdt_CFcRn_Bone_E6a = (CLup_Bone*CFcRn_Bone_E7
          - CLup_Bone*CFcRn_Bone_E6a
          + CLup_Bone*CFcRn_Bone_E7b*FcRn_recycle_fraction
          + V_Bone_E6a * (
          - k_on_6_EXG*Cexg_Bone_E6a*CFcRn_Bone_E6a
          + k_off_6_EXG*Cexg_Bone_bE6a
          - k_on_6_EXG2*Cexg_Bone_bE6a*CFcRn_Bone_E6a
          + k_off_6_EXG2*Cexg_Bone_b2E6a
          - k_on_6_EDG*Cedg_Bone_E6a*CFcRn_Bone_E6a
          + k_off_6_EDG*Cedg_Bone_bE6a
          - k_on_6_EDG2*Cedg_Bone_bE6a*CFcRn_Bone_E6a
          + k_off_6_EDG2*Cedg_Bone_b2E6a))/V_Bone_E6a;
dxdt_CFcRn_Brain_E6a = (CLup_Brain*CFcRn_Brain_E7
          - CLup_Brain*CFcRn_Brain_E6a
          + CLup_Brain*CFcRn_Brain_E7b*FcRn_recycle_fraction
          + V_Brain_E6a * (
          - k_on_6_EXG*Cexg_Brain_E6a*CFcRn_Brain_E6a
          + k_off_6_EXG*Cexg_Brain_bE6a
          - k_on_6_EXG2*Cexg_Brain_bE6a*CFcRn_Brain_E6a
          + k_off_6_EXG2*Cexg_Brain_b2E6a
          - k_on_6_EDG*Cedg_Brain_E6a*CFcRn_Brain_E6a
          + k_off_6_EDG*Cedg_Brain_bE6a
          - k_on_6_EDG2*Cedg_Brain_bE6a*CFcRn_Brain_E6a
          + k_off_6_EDG2*Cedg_Brain_b2E6a))/V_Brain_E6a;
dxdt_CFcRn_Kidney_E6a = (CLup_Kidney*CFcRn_Kidney_E7
          - CLup_Kidney*CFcRn_Kidney_E6a
          + CLup_Kidney*CFcRn_Kidney_E7b*FcRn_recycle_fraction
          + V_Kidney_E6a * (
          - k_on_6_EXG*Cexg_Kidney_E6a*CFcRn_Kidney_E6a
          + k_off_6_EXG*Cexg_Kidney_bE6a
          - k_on_6_EXG2*Cexg_Kidney_bE6a*CFcRn_Kidney_E6a
          + k_off_6_EXG2*Cexg_Kidney_b2E6a
          - k_on_6_EDG*Cedg_Kidney_E6a*CFcRn_Kidney_E6a
          + k_off_6_EDG*Cedg_Kidney_bE6a
          - k_on_6_EDG2*Cedg_Kidney_bE6a*CFcRn_Kidney_E6a
          + k_off_6_EDG2*Cedg_Kidney_b2E6a))/V_Kidney_E6a;
dxdt_CFcRn_SI_E6a = (CLup_SI*CFcRn_SI_E7
          - CLup_SI*CFcRn_SI_E6a
          + CLup_SI*CFcRn_SI_E7b*FcRn_recycle_fraction
          + V_SI_E6a * (
          - k_on_6_EXG*Cexg_SI_E6a*CFcRn_SI_E6a
          + k_off_6_EXG*Cexg_SI_bE6a
          - k_on_6_EXG2*Cexg_SI_bE6a*CFcRn_SI_E6a
          + k_off_6_EXG2*Cexg_SI_b2E6a
          - k_on_6_EDG*Cedg_SI_E6a*CFcRn_SI_E6a
          + k_off_6_EDG*Cedg_SI_bE6a
          - k_on_6_EDG2*Cedg_SI_bE6a*CFcRn_SI_E6a
          + k_off_6_EDG2*Cedg_SI_b2E6a))/V_SI_E6a;
dxdt_CFcRn_LI_E6a = (CLup_LI*CFcRn_LI_E7
          - CLup_LI*CFcRn_LI_E6a
          + CLup_LI*CFcRn_LI_E7b*FcRn_recycle_fraction
          + V_LI_E6a * (
          - k_on_6_EXG*Cexg_LI_E6a*CFcRn_LI_E6a
          + k_off_6_EXG*Cexg_LI_bE6a
          - k_on_6_EXG2*Cexg_LI_bE6a*CFcRn_LI_E6a
          + k_off_6_EXG2*Cexg_LI_b2E6a
          - k_on_6_EDG*Cedg_LI_E6a*CFcRn_LI_E6a
          + k_off_6_EDG*Cedg_LI_bE6a
          - k_on_6_EDG2*Cedg_LI_bE6a*CFcRn_LI_E6a
          + k_off_6_EDG2*Cedg_LI_b2E6a))/V_LI_E6a;
dxdt_CFcRn_Pancreas_E6a = (CLup_Pancreas*CFcRn_Pancreas_E7
          - CLup_Pancreas*CFcRn_Pancreas_E6a
          + CLup_Pancreas*CFcRn_Pancreas_E7b*FcRn_recycle_fraction
          + V_Pancreas_E6a * (
          - k_on_6_EXG*Cexg_Pancreas_E6a*CFcRn_Pancreas_E6a
          + k_off_6_EXG*Cexg_Pancreas_bE6a
          - k_on_6_EXG2*Cexg_Pancreas_bE6a*CFcRn_Pancreas_E6a
          + k_off_6_EXG2*Cexg_Pancreas_b2E6a
          - k_on_6_EDG*Cedg_Pancreas_E6a*CFcRn_Pancreas_E6a
          + k_off_6_EDG*Cedg_Pancreas_bE6a
          - k_on_6_EDG2*Cedg_Pancreas_bE6a*CFcRn_Pancreas_E6a
          + k_off_6_EDG2*Cedg_Pancreas_b2E6a))/V_Pancreas_E6a;
dxdt_CFcRn_Thymus_E6a = (CLup_Thymus*CFcRn_Thymus_E7
          - CLup_Thymus*CFcRn_Thymus_E6a
          + CLup_Thymus*CFcRn_Thymus_E7b*FcRn_recycle_fraction
          + V_Thymus_E6a * (
          - k_on_6_EXG*Cexg_Thymus_E6a*CFcRn_Thymus_E6a
          + k_off_6_EXG*Cexg_Thymus_bE6a
          - k_on_6_EXG2*Cexg_Thymus_bE6a*CFcRn_Thymus_E6a
          + k_off_6_EXG2*Cexg_Thymus_b2E6a
          - k_on_6_EDG*Cedg_Thymus_E6a*CFcRn_Thymus_E6a
          + k_off_6_EDG*Cedg_Thymus_bE6a
          - k_on_6_EDG2*Cedg_Thymus_bE6a*CFcRn_Thymus_E6a
          + k_off_6_EDG2*Cedg_Thymus_b2E6a))/V_Thymus_E6a;
dxdt_CFcRn_Spleen_E6a = (CLup_Spleen*CFcRn_Spleen_E7
          - CLup_Spleen*CFcRn_Spleen_E6a
          + CLup_Spleen*CFcRn_Spleen_E7b*FcRn_recycle_fraction
          + V_Spleen_E6a * (
          - k_on_6_EXG*Cexg_Spleen_E6a*CFcRn_Spleen_E6a
          + k_off_6_EXG*Cexg_Spleen_bE6a
          - k_on_6_EXG2*Cexg_Spleen_bE6a*CFcRn_Spleen_E6a
          + k_off_6_EXG2*Cexg_Spleen_b2E6a
          - k_on_6_EDG*Cedg_Spleen_E6a*CFcRn_Spleen_E6a
          + k_off_6_EDG*Cedg_Spleen_bE6a
          - k_on_6_EDG2*Cedg_Spleen_bE6a*CFcRn_Spleen_E6a
          + k_off_6_EDG2*Cedg_Spleen_b2E6a))/V_Spleen_E6a;
dxdt_CFcRn_Other_E6a = (CLup_Other*CFcRn_Other_E7
          - CLup_Other*CFcRn_Other_E6a
          + CLup_Other*CFcRn_Other_E7b*FcRn_recycle_fraction
          + V_Other_E6a * (
          - k_on_6_EXG*Cexg_Other_E6a*CFcRn_Other_E6a
          + k_off_6_EXG*Cexg_Other_bE6a
          - k_on_6_EXG2*Cexg_Other_bE6a*CFcRn_Other_E6a
          + k_off_6_EXG2*Cexg_Other_b2E6a
          - k_on_6_EDG*Cedg_Other_E6a*CFcRn_Other_E6a
          + k_off_6_EDG*Cedg_Other_bE6a
          - k_on_6_EDG2*Cedg_Other_bE6a*CFcRn_Other_E6a
          + k_off_6_EDG2*Cedg_Other_b2E6a))/V_Other_E6a;
// endosomal pH=7.4
dxdt_CFcRn_Lung_E7b = (CLup_Lung*CFcRn_Lung_E6a
          - CLup_Lung*CFcRn_Lung_E7b
          + V_Lung_E7b*(
          - k_on_7_EXG*Cexg_Lung_E7b*CFcRn_Lung_E7b
          + k_off_7_EXG*Cexg_Lung_bE7b
          - k_on_7_EXG2*Cexg_Lung_bE7b*CFcRn_Lung_E7b
          + k_off_7_EXG2*Cexg_Lung_b2E7b
          - k_on_7_EDG*Cedg_Lung_E7b*CFcRn_Lung_E7b
          + k_off_7_EDG*Cedg_Lung_bE7b
          - k_on_7_EDG2*Cedg_Lung_bE7b*CFcRn_Lung_E7b
          + k_off_7_EDG2*Cedg_Lung_b2E7b))/V_Lung_E7b;
dxdt_CFcRn_Liver_E7b = (CLup_Liver*CFcRn_Liver_E6a
          - CLup_Liver*CFcRn_Liver_E7b
          + V_Liver_E7b*(
          - k_on_7_EXG*Cexg_Liver_E7b*CFcRn_Liver_E7b
          + k_off_7_EXG*Cexg_Liver_bE7b
          - k_on_7_EXG2*Cexg_Liver_bE7b*CFcRn_Liver_E7b
          + k_off_7_EXG2*Cexg_Liver_b2E7b
          - k_on_7_EDG*Cedg_Liver_E7b*CFcRn_Liver_E7b
          + k_off_7_EDG*Cedg_Liver_bE7b
          - k_on_7_EDG2*Cedg_Liver_bE7b*CFcRn_Liver_E7b
          + k_off_7_EDG2*Cedg_Liver_b2E7b))/V_Liver_E7b;
dxdt_CFcRn_Heart_E7b = (CLup_Heart*CFcRn_Heart_E6a
          - CLup_Heart*CFcRn_Heart_E7b
          + V_Heart_E7b*(
          - k_on_7_EXG*Cexg_Heart_E7b*CFcRn_Heart_E7b
          + k_off_7_EXG*Cexg_Heart_bE7b
          - k_on_7_EXG2*Cexg_Heart_bE7b*CFcRn_Heart_E7b
          + k_off_7_EXG2*Cexg_Heart_b2E7b
          - k_on_7_EDG*Cedg_Heart_E7b*CFcRn_Heart_E7b
          + k_off_7_EDG*Cedg_Heart_bE7b
          - k_on_7_EDG2*Cedg_Heart_bE7b*CFcRn_Heart_E7b
          + k_off_7_EDG2*Cedg_Heart_b2E7b))/V_Heart_E7b;
dxdt_CFcRn_Muscle_E7b = (CLup_Muscle*CFcRn_Muscle_E6a
          - CLup_Muscle*CFcRn_Muscle_E7b
          + V_Muscle_E7b*(
          - k_on_7_EXG*Cexg_Muscle_E7b*CFcRn_Muscle_E7b
          + k_off_7_EXG*Cexg_Muscle_bE7b
          - k_on_7_EXG2*Cexg_Muscle_bE7b*CFcRn_Muscle_E7b
          + k_off_7_EXG2*Cexg_Muscle_b2E7b
          - k_on_7_EDG*Cedg_Muscle_E7b*CFcRn_Muscle_E7b
          + k_off_7_EDG*Cedg_Muscle_bE7b
          - k_on_7_EDG2*Cedg_Muscle_bE7b*CFcRn_Muscle_E7b
          + k_off_7_EDG2*Cedg_Muscle_b2E7b))/V_Muscle_E7b;
dxdt_CFcRn_Skin_E7b = (CLup_Skin*CFcRn_Skin_E6a
          - CLup_Skin*CFcRn_Skin_E7b
          + V_Skin_E7b*(
          - k_on_7_EXG*Cexg_Skin_E7b*CFcRn_Skin_E7b
          + k_off_7_EXG*Cexg_Skin_bE7b
          - k_on_7_EXG2*Cexg_Skin_bE7b*CFcRn_Skin_E7b
          + k_off_7_EXG2*Cexg_Skin_b2E7b
          - k_on_7_EDG*Cedg_Skin_E7b*CFcRn_Skin_E7b
          + k_off_7_EDG*Cedg_Skin_bE7b
          - k_on_7_EDG2*Cedg_Skin_bE7b*CFcRn_Skin_E7b
          + k_off_7_EDG2*Cedg_Skin_b2E7b))/V_Skin_E7b;
dxdt_CFcRn_Adipose_E7b = (CLup_Adipose*CFcRn_Adipose_E6a
          - CLup_Adipose*CFcRn_Adipose_E7b
          + V_Adipose_E7b*(
          - k_on_7_EXG*Cexg_Adipose_E7b*CFcRn_Adipose_E7b
          + k_off_7_EXG*Cexg_Adipose_bE7b
          - k_on_7_EXG2*Cexg_Adipose_bE7b*CFcRn_Adipose_E7b
          + k_off_7_EXG2*Cexg_Adipose_b2E7b
          - k_on_7_EDG*Cedg_Adipose_E7b*CFcRn_Adipose_E7b
          + k_off_7_EDG*Cedg_Adipose_bE7b
          - k_on_7_EDG2*Cedg_Adipose_bE7b*CFcRn_Adipose_E7b
          + k_off_7_EDG2*Cedg_Adipose_b2E7b))/V_Adipose_E7b;
dxdt_CFcRn_Bone_E7b = (CLup_Bone*CFcRn_Bone_E6a
          - CLup_Bone*CFcRn_Bone_E7b
          + V_Bone_E7b*(
          - k_on_7_EXG*Cexg_Bone_E7b*CFcRn_Bone_E7b
          + k_off_7_EXG*Cexg_Bone_bE7b
          - k_on_7_EXG2*Cexg_Bone_bE7b*CFcRn_Bone_E7b
          + k_off_7_EXG2*Cexg_Bone_b2E7b
          - k_on_7_EDG*Cedg_Bone_E7b*CFcRn_Bone_E7b
          + k_off_7_EDG*Cedg_Bone_bE7b
          - k_on_7_EDG2*Cedg_Bone_bE7b*CFcRn_Bone_E7b
          + k_off_7_EDG2*Cedg_Bone_b2E7b))/V_Bone_E7b;
dxdt_CFcRn_Brain_E7b = (CLup_Brain*CFcRn_Brain_E6a
          - CLup_Brain*CFcRn_Brain_E7b
          + V_Brain_E7b*(
          - k_on_7_EXG*Cexg_Brain_E7b*CFcRn_Brain_E7b
          + k_off_7_EXG*Cexg_Brain_bE7b
          - k_on_7_EXG2*Cexg_Brain_bE7b*CFcRn_Brain_E7b
          + k_off_7_EXG2*Cexg_Brain_b2E7b
          - k_on_7_EDG*Cedg_Brain_E7b*CFcRn_Brain_E7b
          + k_off_7_EDG*Cedg_Brain_bE7b
          - k_on_7_EDG2*Cedg_Brain_bE7b*CFcRn_Brain_E7b
          + k_off_7_EDG2*Cedg_Brain_b2E7b))/V_Brain_E7b;
dxdt_CFcRn_Kidney_E7b = (CLup_Kidney*CFcRn_Kidney_E6a
          - CLup_Kidney*CFcRn_Kidney_E7b
          + V_Kidney_E7b*(
          - k_on_7_EXG*Cexg_Kidney_E7b*CFcRn_Kidney_E7b
          + k_off_7_EXG*Cexg_Kidney_bE7b
          - k_on_7_EXG2*Cexg_Kidney_bE7b*CFcRn_Kidney_E7b
          + k_off_7_EXG2*Cexg_Kidney_b2E7b
          - k_on_7_EDG*Cedg_Kidney_E7b*CFcRn_Kidney_E7b
          + k_off_7_EDG*Cedg_Kidney_bE7b
          - k_on_7_EDG2*Cedg_Kidney_bE7b*CFcRn_Kidney_E7b
          + k_off_7_EDG2*Cedg_Kidney_b2E7b))/V_Kidney_E7b;
dxdt_CFcRn_SI_E7b = (CLup_SI*CFcRn_SI_E6a
          - CLup_SI*CFcRn_SI_E7b
          + V_SI_E7b*(
          - k_on_7_EXG*Cexg_SI_E7b*CFcRn_SI_E7b
          + k_off_7_EXG*Cexg_SI_bE7b
          - k_on_7_EXG2*Cexg_SI_bE7b*CFcRn_SI_E7b
          + k_off_7_EXG2*Cexg_SI_b2E7b
          - k_on_7_EDG*Cedg_SI_E7b*CFcRn_SI_E7b
          + k_off_7_EDG*Cedg_SI_bE7b
          - k_on_7_EDG2*Cedg_SI_bE7b*CFcRn_SI_E7b
          + k_off_7_EDG2*Cedg_SI_b2E7b))/V_SI_E7b;
dxdt_CFcRn_LI_E7b = (CLup_LI*CFcRn_LI_E6a
          - CLup_LI*CFcRn_LI_E7b
          + V_LI_E7b*(
          - k_on_7_EXG*Cexg_LI_E7b*CFcRn_LI_E7b
          + k_off_7_EXG*Cexg_LI_bE7b
          - k_on_7_EXG2*Cexg_LI_bE7b*CFcRn_LI_E7b
          + k_off_7_EXG2*Cexg_LI_b2E7b
          - k_on_7_EDG*Cedg_LI_E7b*CFcRn_LI_E7b
          + k_off_7_EDG*Cedg_LI_bE7b
          - k_on_7_EDG2*Cedg_LI_bE7b*CFcRn_LI_E7b
          + k_off_7_EDG2*Cedg_LI_b2E7b))/V_LI_E7b;
dxdt_CFcRn_Pancreas_E7b = (CLup_Pancreas*CFcRn_Pancreas_E6a
          - CLup_Pancreas*CFcRn_Pancreas_E7b
          + V_Pancreas_E7b*(
          - k_on_7_EXG*Cexg_Pancreas_E7b*CFcRn_Pancreas_E7b
          + k_off_7_EXG*Cexg_Pancreas_bE7b
          - k_on_7_EXG2*Cexg_Pancreas_bE7b*CFcRn_Pancreas_E7b
          + k_off_7_EXG2*Cexg_Pancreas_b2E7b
          - k_on_7_EDG*Cedg_Pancreas_E7b*CFcRn_Pancreas_E7b
          + k_off_7_EDG*Cedg_Pancreas_bE7b
          - k_on_7_EDG2*Cedg_Pancreas_bE7b*CFcRn_Pancreas_E7b
          + k_off_7_EDG2*Cedg_Pancreas_b2E7b))/V_Pancreas_E7b;
dxdt_CFcRn_Thymus_E7b = (CLup_Thymus*CFcRn_Thymus_E6a
          - CLup_Thymus*CFcRn_Thymus_E7b
          + V_Thymus_E7b*(
          - k_on_7_EXG*Cexg_Thymus_E7b*CFcRn_Thymus_E7b
          + k_off_7_EXG*Cexg_Thymus_bE7b
          - k_on_7_EXG2*Cexg_Thymus_bE7b*CFcRn_Thymus_E7b
          + k_off_7_EXG2*Cexg_Thymus_b2E7b
          - k_on_7_EDG*Cedg_Thymus_E7b*CFcRn_Thymus_E7b
          + k_off_7_EDG*Cedg_Thymus_bE7b
          - k_on_7_EDG2*Cedg_Thymus_bE7b*CFcRn_Thymus_E7b
          + k_off_7_EDG2*Cedg_Thymus_b2E7b))/V_Thymus_E7b;
dxdt_CFcRn_Spleen_E7b = (CLup_Spleen*CFcRn_Spleen_E6a
          - CLup_Spleen*CFcRn_Spleen_E7b
          + V_Spleen_E7b*(
          - k_on_7_EXG*Cexg_Spleen_E7b*CFcRn_Spleen_E7b
          + k_off_7_EXG*Cexg_Spleen_bE7b
          - k_on_7_EXG2*Cexg_Spleen_bE7b*CFcRn_Spleen_E7b
          + k_off_7_EXG2*Cexg_Spleen_b2E7b
          - k_on_7_EDG*Cedg_Spleen_E7b*CFcRn_Spleen_E7b
          + k_off_7_EDG*Cedg_Spleen_bE7b
          - k_on_7_EDG2*Cedg_Spleen_bE7b*CFcRn_Spleen_E7b
          + k_off_7_EDG2*Cedg_Spleen_b2E7b))/V_Spleen_E7b;
dxdt_CFcRn_Other_E7b = (CLup_Other*CFcRn_Other_E6a
          - CLup_Other*CFcRn_Other_E7b
          + V_Other_E7b*(
          - k_on_7_EXG*Cexg_Other_E7b*CFcRn_Other_E7b
          + k_off_7_EXG*Cexg_Other_bE7b
          - k_on_7_EXG2*Cexg_Other_bE7b*CFcRn_Other_E7b
          + k_off_7_EXG2*Cexg_Other_b2E7b
          - k_on_7_EDG*Cedg_Other_E7b*CFcRn_Other_E7b
          + k_off_7_EDG*Cedg_Other_bE7b
          - k_on_7_EDG2*Cedg_Other_bE7b*CFcRn_Other_E7b
          + k_off_7_EDG2*Cedg_Other_b2E7b))/V_Other_E7b;
//  IS side mem
dxdt_CFcRn_Lung_IM = (CLup_Lung*(1.0-FR)*CFcRn_Lung_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Lung*(1.0-FR)*CFcRn_Lung_IM
          + V_Lung_IM*(
          - k_on_7_EXG*Cexg_Lung_IM*CFcRn_Lung_IM
          + k_off_7_EXG*Cexg_Lung_bIM
          + kdeg_FcRn_Ab*Cexg_Lung_bIM
          - k_on_7_EXG2*Cexg_Lung_bIM*CFcRn_Lung_IM
          + k_off_7_EXG2*Cexg_Lung_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Lung_b2IM
          - k_on_7_EDG*Cedg_Lung_IM*CFcRn_Lung_IM
          + k_off_7_EDG*Cedg_Lung_bIM
          + kdeg_FcRn_Ab*Cedg_Lung_bIM
          - k_on_7_EDG2*Cedg_Lung_bIM*CFcRn_Lung_IM
          + k_off_7_EDG2*Cedg_Lung_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Lung_b2IM))/V_Lung_IM;
dxdt_CFcRn_Liver_IM = (CLup_Liver*(1.0-FR)*CFcRn_Liver_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Liver*(1.0-FR)*CFcRn_Liver_IM
          + V_Liver_IM*(
          - k_on_7_EXG*Cexg_Liver_IM*CFcRn_Liver_IM
          + k_off_7_EXG*Cexg_Liver_bIM
          + kdeg_FcRn_Ab*Cexg_Liver_bIM
          - k_on_7_EXG2*Cexg_Liver_bIM*CFcRn_Liver_IM
          + k_off_7_EXG2*Cexg_Liver_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Liver_b2IM
          - k_on_7_EDG*Cedg_Liver_IM*CFcRn_Liver_IM
          + k_off_7_EDG*Cedg_Liver_bIM
          + kdeg_FcRn_Ab*Cedg_Liver_bIM
          - k_on_7_EDG2*Cedg_Liver_bIM*CFcRn_Liver_IM
          + k_off_7_EDG2*Cedg_Liver_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Liver_b2IM))/V_Liver_IM;
dxdt_CFcRn_Heart_IM = (CLup_Heart*(1.0-FR)*CFcRn_Heart_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Heart*(1.0-FR)*CFcRn_Heart_IM
          + V_Heart_IM*(
          - k_on_7_EXG*Cexg_Heart_IM*CFcRn_Heart_IM
          + k_off_7_EXG*Cexg_Heart_bIM
          + kdeg_FcRn_Ab*Cexg_Heart_bIM
          - k_on_7_EXG2*Cexg_Heart_bIM*CFcRn_Heart_IM
          + k_off_7_EXG2*Cexg_Heart_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Heart_b2IM
          - k_on_7_EDG*Cedg_Heart_IM*CFcRn_Heart_IM
          + k_off_7_EDG*Cedg_Heart_bIM
          + kdeg_FcRn_Ab*Cedg_Heart_bIM
          - k_on_7_EDG2*Cedg_Heart_bIM*CFcRn_Heart_IM
          + k_off_7_EDG2*Cedg_Heart_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Heart_b2IM))/V_Heart_IM;
dxdt_CFcRn_Muscle_IM = (CLup_Muscle*(1.0-FR)*CFcRn_Muscle_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Muscle*(1.0-FR)*CFcRn_Muscle_IM
          + V_Muscle_IM*(
          - k_on_7_EXG*Cexg_Muscle_IM*CFcRn_Muscle_IM
          + k_off_7_EXG*Cexg_Muscle_bIM
          + kdeg_FcRn_Ab*Cexg_Muscle_bIM
          - k_on_7_EXG2*Cexg_Muscle_bIM*CFcRn_Muscle_IM
          + k_off_7_EXG2*Cexg_Muscle_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Muscle_b2IM
          - k_on_7_EDG*Cedg_Muscle_IM*CFcRn_Muscle_IM
          + k_off_7_EDG*Cedg_Muscle_bIM
          + kdeg_FcRn_Ab*Cedg_Muscle_bIM
          - k_on_7_EDG2*Cedg_Muscle_bIM*CFcRn_Muscle_IM
          + k_off_7_EDG2*Cedg_Muscle_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Muscle_b2IM))/V_Muscle_IM;
dxdt_CFcRn_Skin_IM = (CLup_Skin*(1.0-FR)*CFcRn_Skin_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Skin*(1.0-FR)*CFcRn_Skin_IM
          + V_Skin_IM*(
          - k_on_7_EXG*Cexg_Skin_IM*CFcRn_Skin_IM
          + k_off_7_EXG*Cexg_Skin_bIM
          + kdeg_FcRn_Ab*Cexg_Skin_bIM
          - k_on_7_EXG2*Cexg_Skin_bIM*CFcRn_Skin_IM
          + k_off_7_EXG2*Cexg_Skin_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Skin_b2IM
          - k_on_7_EDG*Cedg_Skin_IM*CFcRn_Skin_IM
          + k_off_7_EDG*Cedg_Skin_bIM
          + kdeg_FcRn_Ab*Cedg_Skin_bIM
          - k_on_7_EDG2*Cedg_Skin_bIM*CFcRn_Skin_IM
          + k_off_7_EDG2*Cedg_Skin_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Skin_b2IM))/V_Skin_IM;
dxdt_CFcRn_Adipose_IM = (CLup_Adipose*(1.0-FR)*CFcRn_Adipose_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Adipose*(1.0-FR)*CFcRn_Adipose_IM
          + V_Adipose_IM*(
          - k_on_7_EXG*Cexg_Adipose_IM*CFcRn_Adipose_IM
          + k_off_7_EXG*Cexg_Adipose_bIM
          + kdeg_FcRn_Ab*Cexg_Adipose_bIM
          - k_on_7_EXG2*Cexg_Adipose_bIM*CFcRn_Adipose_IM
          + k_off_7_EXG2*Cexg_Adipose_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Adipose_b2IM
          - k_on_7_EDG*Cedg_Adipose_IM*CFcRn_Adipose_IM
          + k_off_7_EDG*Cedg_Adipose_bIM
          + kdeg_FcRn_Ab*Cedg_Adipose_bIM
          - k_on_7_EDG2*Cedg_Adipose_bIM*CFcRn_Adipose_IM
          + k_off_7_EDG2*Cedg_Adipose_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Adipose_b2IM))/V_Adipose_IM;
dxdt_CFcRn_Bone_IM = (CLup_Bone*(1.0-FR)*CFcRn_Bone_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Bone*(1.0-FR)*CFcRn_Bone_IM
          + V_Bone_IM*(
          - k_on_7_EXG*Cexg_Bone_IM*CFcRn_Bone_IM
          + k_off_7_EXG*Cexg_Bone_bIM
          + kdeg_FcRn_Ab*Cexg_Bone_bIM
          - k_on_7_EXG2*Cexg_Bone_bIM*CFcRn_Bone_IM
          + k_off_7_EXG2*Cexg_Bone_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Bone_b2IM
          - k_on_7_EDG*Cedg_Bone_IM*CFcRn_Bone_IM
          + k_off_7_EDG*Cedg_Bone_bIM
          + kdeg_FcRn_Ab*Cedg_Bone_bIM
          - k_on_7_EDG2*Cedg_Bone_bIM*CFcRn_Bone_IM
          + k_off_7_EDG2*Cedg_Bone_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Bone_b2IM))/V_Bone_IM;
dxdt_CFcRn_Brain_IM = (CLup_Brain*(1.0-FR)*CFcRn_Brain_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Brain*(1.0-FR)*CFcRn_Brain_IM
          + V_Brain_IM*(
          - k_on_7_EXG*Cexg_Brain_IM*CFcRn_Brain_IM
          + k_off_7_EXG*Cexg_Brain_bIM
          + kdeg_FcRn_Ab*Cexg_Brain_bIM
          - k_on_7_EXG2*Cexg_Brain_bIM*CFcRn_Brain_IM
          + k_off_7_EXG2*Cexg_Brain_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Brain_b2IM
          - k_on_7_EDG*Cedg_Brain_IM*CFcRn_Brain_IM
          + k_off_7_EDG*Cedg_Brain_bIM
          + kdeg_FcRn_Ab*Cedg_Brain_bIM
          - k_on_7_EDG2*Cedg_Brain_bIM*CFcRn_Brain_IM
          + k_off_7_EDG2*Cedg_Brain_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Brain_b2IM))/V_Brain_IM;
dxdt_CFcRn_Kidney_IM = (CLup_Kidney*(1.0-FR)*CFcRn_Kidney_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Kidney*(1.0-FR)*CFcRn_Kidney_IM
          + V_Kidney_IM*(
          - k_on_7_EXG*Cexg_Kidney_IM*CFcRn_Kidney_IM
          + k_off_7_EXG*Cexg_Kidney_bIM
          + kdeg_FcRn_Ab*Cexg_Kidney_bIM
          - k_on_7_EXG2*Cexg_Kidney_bIM*CFcRn_Kidney_IM
          + k_off_7_EXG2*Cexg_Kidney_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Kidney_b2IM
          - k_on_7_EDG*Cedg_Kidney_IM*CFcRn_Kidney_IM
          + k_off_7_EDG*Cedg_Kidney_bIM
          + kdeg_FcRn_Ab*Cedg_Kidney_bIM
          - k_on_7_EDG2*Cedg_Kidney_bIM*CFcRn_Kidney_IM
          + k_off_7_EDG2*Cedg_Kidney_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Kidney_b2IM))/V_Kidney_IM;
dxdt_CFcRn_SI_IM = (CLup_SI*(1.0-FR)*CFcRn_SI_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_SI*(1.0-FR)*CFcRn_SI_IM
          + V_SI_IM*(
          - k_on_7_EXG*Cexg_SI_IM*CFcRn_SI_IM
          + k_off_7_EXG*Cexg_SI_bIM
          + kdeg_FcRn_Ab*Cexg_SI_bIM
          - k_on_7_EXG2*Cexg_SI_bIM*CFcRn_SI_IM
          + k_off_7_EXG2*Cexg_SI_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_SI_b2IM
          - k_on_7_EDG*Cedg_SI_IM*CFcRn_SI_IM
          + k_off_7_EDG*Cedg_SI_bIM
          + kdeg_FcRn_Ab*Cedg_SI_bIM
          - k_on_7_EDG2*Cedg_SI_bIM*CFcRn_SI_IM
          + k_off_7_EDG2*Cedg_SI_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_SI_b2IM))/V_SI_IM;
dxdt_CFcRn_LI_IM = (CLup_LI*(1.0-FR)*CFcRn_LI_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_LI*(1.0-FR)*CFcRn_LI_IM
          + V_LI_IM*(
          - k_on_7_EXG*Cexg_LI_IM*CFcRn_LI_IM
          + k_off_7_EXG*Cexg_LI_bIM
          + kdeg_FcRn_Ab*Cexg_LI_bIM
          - k_on_7_EXG2*Cexg_LI_bIM*CFcRn_LI_IM
          + k_off_7_EXG2*Cexg_LI_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_LI_b2IM
          - k_on_7_EDG*Cedg_LI_IM*CFcRn_LI_IM
          + k_off_7_EDG*Cedg_LI_bIM
          + kdeg_FcRn_Ab*Cedg_LI_bIM
          - k_on_7_EDG2*Cedg_LI_bIM*CFcRn_LI_IM
          + k_off_7_EDG2*Cedg_LI_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_LI_b2IM))/V_LI_IM;
dxdt_CFcRn_Pancreas_IM = (CLup_Pancreas*(1.0-FR)*CFcRn_Pancreas_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Pancreas*(1.0-FR)*CFcRn_Pancreas_IM
          + V_Pancreas_IM*(
          - k_on_7_EXG*Cexg_Pancreas_IM*CFcRn_Pancreas_IM
          + k_off_7_EXG*Cexg_Pancreas_bIM
          + kdeg_FcRn_Ab*Cexg_Pancreas_bIM
          - k_on_7_EXG2*Cexg_Pancreas_bIM*CFcRn_Pancreas_IM
          + k_off_7_EXG2*Cexg_Pancreas_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Pancreas_b2IM
          - k_on_7_EDG*Cedg_Pancreas_IM*CFcRn_Pancreas_IM
          + k_off_7_EDG*Cedg_Pancreas_bIM
          + kdeg_FcRn_Ab*Cedg_Pancreas_bIM
          - k_on_7_EDG2*Cedg_Pancreas_bIM*CFcRn_Pancreas_IM
          + k_off_7_EDG2*Cedg_Pancreas_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Pancreas_b2IM))/V_Pancreas_IM;
dxdt_CFcRn_Thymus_IM = (CLup_Thymus*(1.0-FR)*CFcRn_Thymus_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Thymus*(1.0-FR)*CFcRn_Thymus_IM
          + V_Thymus_IM*(
          - k_on_7_EXG*Cexg_Thymus_IM*CFcRn_Thymus_IM
          + k_off_7_EXG*Cexg_Thymus_bIM
          + kdeg_FcRn_Ab*Cexg_Thymus_bIM
          - k_on_7_EXG2*Cexg_Thymus_bIM*CFcRn_Thymus_IM
          + k_off_7_EXG2*Cexg_Thymus_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Thymus_b2IM
          - k_on_7_EDG*Cedg_Thymus_IM*CFcRn_Thymus_IM
          + k_off_7_EDG*Cedg_Thymus_bIM
          + kdeg_FcRn_Ab*Cedg_Thymus_bIM
          - k_on_7_EDG2*Cedg_Thymus_bIM*CFcRn_Thymus_IM
          + k_off_7_EDG2*Cedg_Thymus_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Thymus_b2IM))/V_Thymus_IM;
dxdt_CFcRn_Spleen_IM = (CLup_Spleen*(1.0-FR)*CFcRn_Spleen_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Spleen*(1.0-FR)*CFcRn_Spleen_IM
          + V_Spleen_IM*(
          - k_on_7_EXG*Cexg_Spleen_IM*CFcRn_Spleen_IM
          + k_off_7_EXG*Cexg_Spleen_bIM
          + kdeg_FcRn_Ab*Cexg_Spleen_bIM
          - k_on_7_EXG2*Cexg_Spleen_bIM*CFcRn_Spleen_IM
          + k_off_7_EXG2*Cexg_Spleen_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Spleen_b2IM
          - k_on_7_EDG*Cedg_Spleen_IM*CFcRn_Spleen_IM
          + k_off_7_EDG*Cedg_Spleen_bIM
          + kdeg_FcRn_Ab*Cedg_Spleen_bIM
          - k_on_7_EDG2*Cedg_Spleen_bIM*CFcRn_Spleen_IM
          + k_off_7_EDG2*Cedg_Spleen_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Spleen_b2IM))/V_Spleen_IM;
dxdt_CFcRn_Other_IM = (CLup_Other*(1.0-FR)*CFcRn_Other_E7b*(1.0-FcRn_recycle_fraction)
          - CLup_Other*(1.0-FR)*CFcRn_Other_IM
          + V_Other_IM*(
          - k_on_7_EXG*Cexg_Other_IM*CFcRn_Other_IM
          + k_off_7_EXG*Cexg_Other_bIM
          + kdeg_FcRn_Ab*Cexg_Other_bIM
          - k_on_7_EXG2*Cexg_Other_bIM*CFcRn_Other_IM
          + k_off_7_EXG2*Cexg_Other_b2IM
          + 2.0*kdeg_FcRn_Ab*Cexg_Other_b2IM
          - k_on_7_EDG*Cedg_Other_IM*CFcRn_Other_IM
          + k_off_7_EDG*Cedg_Other_bIM
          + kdeg_FcRn_Ab*Cedg_Other_bIM
          - k_on_7_EDG2*Cedg_Other_bIM*CFcRn_Other_IM
          + k_off_7_EDG2*Cedg_Other_b2IM
          + 2.0*kdeg_FcRn_Ab*Cedg_Other_b2IM))/V_Other_IM;
// ==============================================================================================
//Main Plasma Compartment
//flux of endogenous IgG in Lymph node
dxdt_Cedg_LN = ((1.0 - SIS_Heart)*LF_Heart*Cedg_Heart_IS
            + (1.0 - SIS_Kidney)*LF_Kidney*Cedg_Kidney_IS
            + (1.0 - SIS_Muscle)*LF_Muscle*Cedg_Muscle_IS
            + (1.0 - SIS_Skin)*LF_Skin*Cedg_Skin_IS
            + (1.0 - SIS_Brain)*LF_Brain*Cedg_Brain_IS
            + (1.0 - SIS_Adipose)*LF_Adipose*Cedg_Adipose_IS
            + (1.0 - SIS_Thymus)*LF_Thymus*Cedg_Thymus_IS
            + (1.0 - SIS_Liver)*LF_Liver*Cedg_Liver_IS
            + (1.0 - SIS_Spleen)*LF_Spleen*Cedg_Spleen_IS
            + (1.0 - SIS_Pancreas)*LF_Pancreas*Cedg_Pancreas_IS
            + (1.0 - SIS_SI)*LF_SI*Cedg_SI_IS
            + (1.0 - SIS_LI)*LF_LI*Cedg_LI_IS
            + (1.0 - SIS_Bone)*LF_Bone*Cedg_Bone_IS
            + (1.0 - SIS_Other)*LF_Other*Cedg_Other_IS
            + (1.0 - SIS_Lung)*LF_Lung*Cedg_Lung_IS
            - L_LymphNode*Cedg_LN)/V_LN;
dxdt_Cexg_LN = ((1.0 - SIS_Heart)*LF_Heart*Cexg_Heart_IS
            + (1.0 - SIS_Kidney)*LF_Kidney*Cexg_Kidney_IS
            + (1.0 - SIS_Muscle)*LF_Muscle*Cexg_Muscle_IS
            + (1.0 - SIS_Skin)*LF_Skin*Cexg_Skin_IS
            + (1.0 - SIS_Brain)*LF_Brain*Cexg_Brain_IS
            + (1.0 - SIS_Adipose)*LF_Adipose*Cexg_Adipose_IS
            + (1.0 - SIS_Thymus)*LF_Thymus*Cexg_Thymus_IS
            + (1.0 - SIS_Liver)*LF_Liver*Cexg_Liver_IS
            + (1.0 - SIS_Spleen)*LF_Spleen*Cexg_Spleen_IS
            + (1.0 - SIS_Pancreas)*LF_Pancreas*Cexg_Pancreas_IS
            + (1.0 - SIS_SI)*LF_SI*Cexg_SI_IS
            + (1.0 - SIS_LI)*LF_LI*Cexg_LI_IS
            + (1.0 - SIS_Bone)*LF_Bone*Cexg_Bone_IS
            + (1.0 - SIS_Other)*LF_Other*Cexg_Other_IS
            + (1.0 - SIS_Lung)*LF_Lung*Cexg_Lung_IS
            - L_LymphNode*Cexg_LN)/V_LN;
dxdt_Aexg_Plasma = ((PLQ_Heart - LF_Heart)*Cexg_Heart_V
            + (PLQ_Kidney - LF_Kidney)*Cexg_Kidney_V
            + (PLQ_Muscle - LF_Muscle)*Cexg_Muscle_V
            + (PLQ_Skin - LF_Skin)*Cexg_Skin_V
            + (PLQ_Brain - LF_Brain)*Cexg_Brain_V
            + (PLQ_Adipose - LF_Adipose)*Cexg_Adipose_V
            + (PLQ_Thymus - LF_Thymus)*Cexg_Thymus_V
            + (PLQ_Liver - LF_Liver)*Cexg_Liver_V
            + (PLQ_Spleen - LF_Spleen)*Cexg_Liver_V
            + (PLQ_Pancreas - LF_Pancreas)*Cexg_Liver_V
            + (PLQ_SI - LF_SI)*Cexg_Liver_V
            + (PLQ_LI - LF_LI)*Cexg_Liver_V
            + (PLQ_Bone - LF_Bone)*Cexg_Bone_V
            + (PLQ_Other - LF_Other)*Cexg_Other_V
            - (PLQ_Lung + LF_Lung)*Cexg_Plasma
            + L_LymphNode*Cexg_LN);
dxdt_Cedg_Plasma = 0;
double EXG_ugml_Readout = Cexg_Plasma * MW_EDG/1000;
 [ CAPTURE ]
EXG_ugml_Readout
Cexg_Plasma
