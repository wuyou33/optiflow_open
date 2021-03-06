      INTEGER N_HK, N_RT, N_TPPT
      REAL, CLDIMENSION(1,6) :: HK_RANGE
      REAL, DIMENSION(1,5) :: RT_RANGE
      REAL, DIMENSION(1,3) :: TPPT_RANGE
      REAL, DIMENSION(6,5,3) :: CEI_TABLE


      N_HK   = 6
      N_RT   = 5
      N_TPPT = 3

      HK_RANGE(1,1) = 7.0E0/5.0E0
      HK_RANGE(1,2) = 8.0E0/5.0E0
      HK_RANGE(1,3) = 9.0E0/5.0E0
      HK_RANGE(1,4) = 2.0E0
      HK_RANGE(1,5) = 1.1E1/5.0E0
      HK_RANGE(1,6) = 1.2E1/5.0E0

      RT_RANGE(1,1) = 8.0E2
      RT_RANGE(1,2) = 1.6E3
      RT_RANGE(1,3) = 3.2E3
      RT_RANGE(1,4) = 6.4E3
      RT_RANGE(1,5) = 1.28E4

      TPPT_RANGE(1,2) = 5.0E1
      TPPT_RANGE(1,3) = 1.0E2

      CEI_TABLE(1,1,2) = 2.872680733645279E-1
      CEI_TABLE(1,1,3) = 7.749716029388073E-1
      CEI_TABLE(1,2,2) = 2.039644535775086E-1
      CEI_TABLE(1,2,3) = 5.924318712770024E-1
      CEI_TABLE(1,3,2) = 1.443700895511554E-1
      CEI_TABLE(1,3,3) = 4.633605499494066E-1
      CEI_TABLE(1,4,2) = 1.004911816583118E-1
      CEI_TABLE(1,4,3) = 3.699178360235265E-1
      CEI_TABLE(1,5,2) = 6.733821510084832E-2
      CEI_TABLE(1,5,3) = 3.001150710959782E-1
      CEI_TABLE(2,1,2) = 2.15679590997346E-1
      CEI_TABLE(2,1,3) = 7.032901821333088E-1
      CEI_TABLE(2,2,2) = 1.38804898233508E-1
      CEI_TABLE(2,2,3) = 5.190092839824512E-1
      CEI_TABLE(2,3,2) = 8.540581665774229E-2
      CEI_TABLE(2,3,3) = 3.955784955811628E-1
      CEI_TABLE(2,4,2) = 4.687087515554092E-2
      CEI_TABLE(2,4,3) = 3.083346385006999E-1
      CEI_TABLE(2,5,2) = 1.823657536308939E-2
      CEI_TABLE(2,5,3) = 2.440957040061711E-1
      CEI_TABLE(3,1,2) = 1.351465804725244E-1
      CEI_TABLE(3,1,3) = 5.944539142560507E-1
      CEI_TABLE(3,2,2) = 6.948210676888233E-2
      CEI_TABLE(3,2,3) = 4.287398277454012E-1
      CEI_TABLE(3,3,2) = 2.446511411233687E-2
      CEI_TABLE(3,3,3) = 3.186820261578073E-1
      CEI_TABLE(3,4,3) = 2.413596674968999E-1
      CEI_TABLE(3,5,3) = 1.847296324018285E-1
      CEI_TABLE(4,1,2) = 5.497866179885413E-2
      CEI_TABLE(4,1,3) = 4.803653864888552E-1
      CEI_TABLE(4,2,2) = 1.021202577184958E-3
      CEI_TABLE(4,2,3) = 3.363622877434947E-1
      CEI_TABLE(4,3,3) = 2.409694933687837E-1
      CEI_TABLE(4,4,3) = 1.741794817845234E-1
      CEI_TABLE(4,5,3) = 1.254740804951762E-1
      CEI_TABLE(5,1,3) = 3.674090874850944E-1
      CEI_TABLE(5,2,3) = 2.450395028559258E-1
      CEI_TABLE(5,3,3) = 1.641449222712615E-1
      CEI_TABLE(5,4,3) = 1.077346391909527E-1
      CEI_TABLE(5,5,3) = 6.682986734578829E-2
      CEI_TABLE(6,1,3) = 2.566658710465144E-1
      CEI_TABLE(6,2,3) = 1.54999205732387E-1
      CEI_TABLE(6,3,3) = 8.805729195880023E-2
      CEI_TABLE(6,4,3) = 4.168825812144024E-2
      CEI_TABLE(6,5,3) = 8.364384007724771E-3


