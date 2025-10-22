.class Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;
.super Ljava/lang/Object;
.source "Kangaroo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/Kangaroo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KangarooSponge"
.end annotation


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field private bytesInQueue:I

.field private squeezing:Z

.field private final theQueue:[B

.field private final theRateBytes:I

.field private final theRounds:I

.field private final theState:[J


# direct methods
.method static bridge synthetic -$$Nest$fgettheRateBytes(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mabsorb(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->absorb([BII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitSponge(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->initSponge()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpadAndSwitchToSqueezingPhase(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->padAndSwitchToSqueezingPhase()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msqueeze(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeeze([BII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 545
    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.32E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method

.method constructor <init>(II)V
    .locals 1
    .param p1, "pStrength"    # I
    .param p2, "pRounds"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pStrength",
            "pRounds"
        }
    .end annotation

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    .line 591
    shl-int/lit8 v0, p1, 0x1

    rsub-int v0, v0, 0x640

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    .line 592
    iput p2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    .line 593
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    .line 594
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->initSponge()V

    .line 595
    return-void
.end method

.method private KangarooAbsorb([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "data",
            "off"
        }
    .end annotation

    .line 714
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    shr-int/lit8 v0, v0, 0x3

    .line 715
    .local v0, "count":I
    move v1, p2

    .line 716
    .local v1, "offSet":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 718
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    aget-wide v4, v3, v2

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 719
    add-int/lit8 v1, v1, 0x8

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 722
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooPermutation()V

    .line 723
    return-void
.end method

.method private KangarooExtract()V
    .locals 4

    .line 730
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    shr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    .line 731
    return-void
.end method

.method private KangarooPermutation()V
    .locals 105

    .line 738
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    .line 740
    .local v1, "A":[J
    const/4 v2, 0x0

    aget-wide v3, v1, v2

    .local v3, "a00":J
    const/4 v5, 0x1

    aget-wide v6, v1, v5

    .local v6, "a01":J
    const/4 v8, 0x2

    aget-wide v9, v1, v8

    .local v9, "a02":J
    const/4 v11, 0x3

    aget-wide v12, v1, v11

    .local v12, "a03":J
    const/4 v14, 0x4

    aget-wide v15, v1, v14

    .line 741
    .local v15, "a04":J
    const/16 v17, 0x5

    aget-wide v18, v1, v17

    .local v18, "a05":J
    const/16 v20, 0x6

    aget-wide v21, v1, v20

    .local v21, "a06":J
    const/16 v23, 0x7

    aget-wide v24, v1, v23

    .local v24, "a07":J
    const/16 v26, 0x8

    aget-wide v27, v1, v26

    .local v27, "a08":J
    const/16 v29, 0x9

    aget-wide v30, v1, v29

    .line 742
    .local v30, "a09":J
    const/16 v32, 0xa

    aget-wide v33, v1, v32

    .local v33, "a10":J
    const/16 v35, 0xb

    aget-wide v36, v1, v35

    .local v36, "a11":J
    const/16 v38, 0xc

    aget-wide v39, v1, v38

    .local v39, "a12":J
    const/16 v41, 0xd

    aget-wide v42, v1, v41

    .local v42, "a13":J
    const/16 v44, 0xe

    aget-wide v45, v1, v44

    .line 743
    .local v45, "a14":J
    const/16 v47, 0xf

    aget-wide v48, v1, v47

    .local v48, "a15":J
    const/16 v50, 0x10

    aget-wide v50, v1, v50

    .local v50, "a16":J
    const/16 v52, 0x11

    aget-wide v52, v1, v52

    .local v52, "a17":J
    const/16 v54, 0x12

    aget-wide v55, v1, v54

    .local v55, "a18":J
    const/16 v57, 0x13

    aget-wide v58, v1, v57

    .line 744
    .local v58, "a19":J
    const/16 v60, 0x14

    aget-wide v61, v1, v60

    .local v61, "a20":J
    const/16 v63, 0x15

    aget-wide v64, v1, v63

    .local v64, "a21":J
    const/16 v66, 0x16

    aget-wide v66, v1, v66

    .local v66, "a22":J
    const/16 v68, 0x17

    aget-wide v69, v1, v68

    .local v69, "a23":J
    const/16 v71, 0x18

    aget-wide v71, v1, v71

    .line 746
    .local v71, "a24":J
    const/16 v73, 0x0

    sget-object v2, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    array-length v2, v2

    const/16 v74, 0x1

    iget v5, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    sub-int/2addr v2, v5

    .line 747
    .local v2, "myBase":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v75, 0x2

    iget v8, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    if-ge v5, v8, :cond_0

    .line 750
    xor-long v76, v3, v18

    xor-long v76, v76, v33

    xor-long v76, v76, v48

    xor-long v76, v76, v61

    .line 751
    .local v76, "c0":J
    xor-long v78, v6, v21

    xor-long v78, v78, v36

    xor-long v78, v78, v50

    xor-long v78, v78, v64

    .line 752
    .local v78, "c1":J
    xor-long v80, v9, v24

    xor-long v80, v80, v39

    xor-long v80, v80, v52

    xor-long v80, v80, v66

    .line 753
    .local v80, "c2":J
    xor-long v82, v12, v27

    xor-long v82, v82, v42

    xor-long v82, v82, v55

    xor-long v82, v82, v69

    .line 754
    .local v82, "c3":J
    xor-long v84, v15, v30

    xor-long v84, v84, v45

    xor-long v84, v84, v58

    xor-long v84, v84, v71

    .line 756
    .local v84, "c4":J
    shl-long v86, v78, v74

    const/4 v8, -0x1

    ushr-long v88, v78, v8

    or-long v86, v86, v88

    xor-long v86, v86, v84

    .line 757
    .local v86, "d1":J
    shl-long v88, v80, v74

    ushr-long v90, v80, v8

    or-long v88, v88, v90

    xor-long v88, v88, v76

    .line 758
    .local v88, "d2":J
    shl-long v90, v82, v74

    ushr-long v92, v82, v8

    or-long v90, v90, v92

    xor-long v90, v90, v78

    .line 759
    .local v90, "d3":J
    shl-long v92, v84, v74

    ushr-long v94, v84, v8

    or-long v92, v92, v94

    xor-long v92, v92, v80

    .line 760
    .local v92, "d4":J
    shl-long v94, v76, v74

    ushr-long v96, v76, v8

    or-long v94, v94, v96

    xor-long v94, v94, v82

    .line 762
    .local v94, "d0":J
    xor-long v3, v3, v86

    .line 763
    xor-long v18, v18, v86

    .line 764
    xor-long v33, v33, v86

    .line 765
    xor-long v48, v48, v86

    .line 766
    xor-long v61, v61, v86

    .line 767
    xor-long v6, v6, v88

    .line 768
    xor-long v21, v21, v88

    .line 769
    xor-long v36, v36, v88

    .line 770
    xor-long v50, v50, v88

    .line 771
    xor-long v64, v64, v88

    .line 772
    xor-long v9, v9, v90

    .line 773
    xor-long v24, v24, v90

    .line 774
    xor-long v39, v39, v90

    .line 775
    xor-long v52, v52, v90

    .line 776
    xor-long v66, v66, v90

    .line 777
    xor-long v12, v12, v92

    .line 778
    xor-long v27, v27, v92

    .line 779
    xor-long v42, v42, v92

    .line 780
    xor-long v55, v55, v92

    .line 781
    xor-long v69, v69, v92

    .line 782
    xor-long v15, v15, v94

    .line 783
    xor-long v30, v30, v94

    .line 784
    xor-long v45, v45, v94

    .line 785
    xor-long v58, v58, v94

    .line 786
    xor-long v71, v71, v94

    .line 789
    shl-long v96, v6, v74

    const/16 v8, 0x3f

    ushr-long v98, v6, v8

    or-long v78, v96, v98

    .line 790
    const/16 v8, 0x2c

    shl-long v96, v21, v8

    ushr-long v98, v21, v60

    or-long v6, v96, v98

    .line 791
    shl-long v96, v30, v60

    ushr-long v98, v30, v8

    move-wide/from16 v100, v12

    const/4 v8, 0x3

    .end local v12    # "a03":J
    .local v100, "a03":J
    or-long v11, v96, v98

    .line 792
    .end local v21    # "a06":J
    .local v11, "a06":J
    const/16 v13, 0x3d

    shl-long v21, v66, v13

    ushr-long v96, v66, v8

    move-wide/from16 v98, v9

    const/16 v102, 0x3

    .end local v9    # "a02":J
    .local v98, "a02":J
    or-long v8, v21, v96

    .line 793
    .end local v30    # "a09":J
    .local v8, "a09":J
    const/16 v10, 0x27

    shl-long v21, v45, v10

    const/16 v10, 0x19

    ushr-long v30, v45, v10

    move-wide/from16 v103, v15

    const/16 v96, 0x4

    .end local v15    # "a04":J
    .local v103, "a04":J
    or-long v14, v21, v30

    .line 794
    .end local v66    # "a22":J
    .local v14, "a22":J
    shl-long v21, v61, v54

    const/16 v10, 0x2e

    ushr-long v30, v61, v10

    move-object/from16 v97, v1

    .end local v1    # "A":[J
    .local v97, "A":[J
    or-long v0, v21, v30

    .line 795
    .end local v45    # "a14":J
    .local v0, "a14":J
    const/16 v10, 0x3e

    shl-long v21, v98, v10

    ushr-long v30, v98, v75

    move-wide/from16 v45, v14

    .end local v14    # "a22":J
    .local v45, "a22":J
    or-long v13, v21, v30

    .line 796
    .end local v61    # "a20":J
    .local v13, "a20":J
    const/16 v10, 0x2b

    shl-long v15, v39, v10

    ushr-long v21, v39, v63

    move-wide/from16 v30, v13

    .end local v13    # "a20":J
    .local v30, "a20":J
    or-long v13, v15, v21

    .line 797
    .end local v98    # "a02":J
    .local v13, "a02":J
    const/16 v10, 0x19

    shl-long v15, v42, v10

    const/16 v10, 0x27

    ushr-long v21, v42, v10

    move-wide/from16 v61, v0

    .end local v0    # "a14":J
    .local v61, "a14":J
    or-long v0, v15, v21

    .line 798
    .end local v39    # "a12":J
    .local v0, "a12":J
    shl-long v15, v58, v26

    const/16 v10, 0x38

    ushr-long v21, v58, v10

    move-wide/from16 v39, v0

    .end local v0    # "a12":J
    .restart local v39    # "a12":J
    or-long v0, v15, v21

    .line 799
    .end local v42    # "a13":J
    .local v0, "a13":J
    shl-long v15, v69, v10

    ushr-long v21, v69, v26

    move-wide/from16 v42, v0

    .end local v0    # "a13":J
    .restart local v42    # "a13":J
    or-long v0, v15, v21

    .line 800
    .end local v58    # "a19":J
    .local v0, "a19":J
    const/16 v10, 0x29

    shl-long v15, v48, v10

    ushr-long v21, v48, v68

    move-wide/from16 v58, v0

    .end local v0    # "a19":J
    .restart local v58    # "a19":J
    or-long v0, v15, v21

    .line 801
    .end local v69    # "a23":J
    .local v0, "a23":J
    const/16 v10, 0x1b

    shl-long v15, v103, v10

    const/16 v10, 0x25

    ushr-long v21, v103, v10

    move-wide/from16 v66, v0

    .end local v0    # "a23":J
    .local v66, "a23":J
    or-long v0, v15, v21

    .line 802
    .end local v48    # "a15":J
    .local v0, "a15":J
    shl-long v15, v71, v44

    const/16 v10, 0x32

    ushr-long v21, v71, v10

    move-wide/from16 v48, v0

    .end local v0    # "a15":J
    .restart local v48    # "a15":J
    or-long v0, v15, v21

    .line 803
    .end local v103    # "a04":J
    .local v0, "a04":J
    shl-long v15, v64, v75

    const/16 v10, 0x3e

    ushr-long v21, v64, v10

    move-wide/from16 v69, v8

    .end local v8    # "a09":J
    .local v69, "a09":J
    or-long v8, v15, v21

    .line 804
    .end local v71    # "a24":J
    .local v8, "a24":J
    const/16 v10, 0x37

    shl-long v15, v27, v10

    ushr-long v21, v27, v29

    move-wide/from16 v71, v8

    .end local v8    # "a24":J
    .restart local v71    # "a24":J
    or-long v8, v15, v21

    .line 805
    .end local v64    # "a21":J
    .local v8, "a21":J
    const/16 v10, 0x2d

    shl-long v15, v50, v10

    ushr-long v21, v50, v57

    move-wide/from16 v64, v8

    .end local v8    # "a21":J
    .restart local v64    # "a21":J
    or-long v8, v15, v21

    .line 806
    .end local v27    # "a08":J
    .local v8, "a08":J
    const/16 v10, 0x24

    shl-long v15, v18, v10

    const/16 v10, 0x1c

    ushr-long v21, v18, v10

    move-wide/from16 v27, v8

    .end local v8    # "a08":J
    .restart local v27    # "a08":J
    or-long v8, v15, v21

    .line 807
    .end local v50    # "a16":J
    .local v8, "a16":J
    shl-long v15, v100, v10

    const/16 v10, 0x24

    ushr-long v21, v100, v10

    move-wide/from16 v50, v8

    .end local v8    # "a16":J
    .restart local v50    # "a16":J
    or-long v8, v15, v21

    .line 808
    .end local v18    # "a05":J
    .local v8, "a05":J
    shl-long v15, v55, v63

    const/16 v10, 0x2b

    ushr-long v18, v55, v10

    move-wide/from16 v21, v8

    .end local v8    # "a05":J
    .local v21, "a05":J
    or-long v8, v15, v18

    .line 809
    .end local v100    # "a03":J
    .local v8, "a03":J
    shl-long v15, v52, v47

    const/16 v10, 0x31

    ushr-long v18, v52, v10

    move-wide/from16 v98, v11

    .end local v11    # "a06":J
    .local v98, "a06":J
    or-long v10, v15, v18

    .line 810
    .end local v55    # "a18":J
    .local v10, "a18":J
    shl-long v15, v36, v32

    const/16 v12, 0x36

    ushr-long v18, v36, v12

    move-wide/from16 v55, v10

    .end local v10    # "a18":J
    .restart local v55    # "a18":J
    or-long v10, v15, v18

    .line 811
    .end local v52    # "a17":J
    .local v10, "a17":J
    shl-long v15, v24, v20

    const/16 v12, 0x3a

    ushr-long v18, v24, v12

    move-wide/from16 v52, v10

    .end local v10    # "a17":J
    .restart local v52    # "a17":J
    or-long v10, v15, v18

    .line 812
    .end local v36    # "a11":J
    .local v10, "a11":J
    shl-long v15, v33, v102

    const/16 v12, 0x3d

    ushr-long v18, v33, v12

    move-wide/from16 v36, v10

    .end local v10    # "a11":J
    .restart local v36    # "a11":J
    or-long v10, v15, v18

    .line 813
    .end local v24    # "a07":J
    .local v10, "a07":J
    move-wide/from16 v15, v78

    .line 816
    .end local v33    # "a10":J
    .local v15, "a10":J
    move-wide/from16 v18, v10

    .end local v10    # "a07":J
    .local v18, "a07":J
    not-long v10, v6

    and-long/2addr v10, v13

    xor-long/2addr v10, v3

    .line 817
    .end local v76    # "c0":J
    .local v10, "c0":J
    move/from16 v76, v5

    move-wide/from16 v24, v6

    .end local v5    # "i":I
    .end local v6    # "a01":J
    .local v24, "a01":J
    .local v76, "i":I
    not-long v5, v13

    and-long/2addr v5, v8

    xor-long v5, v24, v5

    .line 818
    .end local v78    # "c1":J
    .local v5, "c1":J
    move-wide/from16 v33, v5

    .end local v5    # "c1":J
    .local v33, "c1":J
    not-long v5, v8

    and-long/2addr v5, v0

    xor-long/2addr v5, v13

    .line 819
    .end local v13    # "a02":J
    .local v5, "a02":J
    not-long v12, v0

    and-long/2addr v12, v3

    xor-long/2addr v12, v8

    .line 820
    .end local v8    # "a03":J
    .restart local v12    # "a03":J
    not-long v7, v3

    and-long v7, v7, v24

    xor-long/2addr v0, v7

    .line 821
    move-wide v3, v10

    .line 822
    move-wide/from16 v7, v33

    .line 824
    .end local v24    # "a01":J
    .local v7, "a01":J
    move-wide/from16 v24, v0

    move v14, v2

    move-wide/from16 v77, v3

    move-wide/from16 v0, v98

    .end local v2    # "myBase":I
    .end local v3    # "a00":J
    .end local v98    # "a06":J
    .local v0, "a06":J
    .local v14, "myBase":I
    .local v24, "a04":J
    .local v77, "a00":J
    not-long v2, v0

    and-long v2, v2, v18

    xor-long v2, v21, v2

    .line 825
    .end local v10    # "c0":J
    .local v2, "c0":J
    move-wide/from16 v9, v18

    .end local v0    # "a06":J
    .end local v18    # "a07":J
    .local v9, "a07":J
    .restart local v98    # "a06":J
    not-long v0, v9

    and-long v0, v0, v27

    xor-long v0, v98, v0

    .line 826
    .end local v33    # "c1":J
    .local v0, "c1":J
    move-wide/from16 v18, v0

    move-wide/from16 v0, v27

    move-wide/from16 v27, v2

    .end local v2    # "c0":J
    .local v0, "a08":J
    .local v18, "c1":J
    .local v27, "c0":J
    not-long v2, v0

    and-long v2, v2, v69

    xor-long/2addr v2, v9

    .line 827
    .end local v9    # "a07":J
    .local v2, "a07":J
    move-wide/from16 v33, v0

    move-wide/from16 v9, v69

    .end local v0    # "a08":J
    .end local v69    # "a09":J
    .local v9, "a09":J
    .local v33, "a08":J
    not-long v0, v9

    and-long v0, v0, v21

    xor-long v0, v33, v0

    .line 828
    .end local v33    # "a08":J
    .restart local v0    # "a08":J
    move-wide/from16 v33, v0

    move-wide/from16 v0, v21

    move-wide/from16 v21, v2

    .end local v2    # "a07":J
    .local v0, "a05":J
    .local v21, "a07":J
    .restart local v33    # "a08":J
    not-long v2, v0

    and-long v2, v2, v98

    xor-long/2addr v2, v9

    .line 829
    .end local v9    # "a09":J
    .local v2, "a09":J
    move-wide/from16 v0, v27

    .line 830
    move-wide/from16 v9, v18

    .line 832
    .end local v98    # "a06":J
    .local v9, "a06":J
    move-wide/from16 v69, v0

    move-wide/from16 v0, v36

    move-wide/from16 v36, v2

    .end local v2    # "a09":J
    .local v0, "a11":J
    .local v36, "a09":J
    .local v69, "a05":J
    not-long v2, v0

    and-long v2, v2, v39

    xor-long/2addr v2, v15

    .line 833
    .end local v27    # "c0":J
    .local v2, "c0":J
    move-wide/from16 v27, v0

    move-wide/from16 v0, v39

    move-wide/from16 v39, v2

    .end local v2    # "c0":J
    .local v0, "a12":J
    .local v27, "a11":J
    .local v39, "c0":J
    not-long v2, v0

    and-long v2, v2, v42

    xor-long v2, v27, v2

    .line 834
    .end local v18    # "c1":J
    .local v2, "c1":J
    move-wide/from16 v18, v0

    move-wide/from16 v0, v42

    move-wide/from16 v42, v2

    .end local v2    # "c1":J
    .local v0, "a13":J
    .local v18, "a12":J
    .local v42, "c1":J
    not-long v2, v0

    and-long v2, v2, v61

    xor-long v2, v18, v2

    .line 835
    .end local v18    # "a12":J
    .local v2, "a12":J
    move-wide/from16 v18, v0

    move-wide/from16 v0, v61

    move-wide/from16 v61, v2

    .end local v2    # "a12":J
    .local v0, "a14":J
    .local v18, "a13":J
    .local v61, "a12":J
    not-long v2, v0

    and-long/2addr v2, v15

    xor-long v2, v18, v2

    .line 836
    .end local v18    # "a13":J
    .local v2, "a13":J
    move-wide/from16 v18, v0

    move-wide v0, v15

    move-wide v15, v2

    .end local v2    # "a13":J
    .local v0, "a10":J
    .local v15, "a13":J
    .local v18, "a14":J
    not-long v2, v0

    and-long v2, v2, v27

    xor-long v2, v18, v2

    .line 837
    .end local v18    # "a14":J
    .local v2, "a14":J
    move-wide/from16 v0, v39

    .line 838
    move-wide/from16 v18, v42

    .line 840
    .end local v27    # "a11":J
    .local v18, "a11":J
    move-wide/from16 v27, v0

    move-wide/from16 v0, v50

    move-wide/from16 v50, v2

    .end local v2    # "a14":J
    .local v0, "a16":J
    .local v27, "a10":J
    .local v50, "a14":J
    not-long v2, v0

    and-long v2, v2, v52

    xor-long v2, v48, v2

    .line 841
    .end local v39    # "c0":J
    .local v2, "c0":J
    move-wide/from16 v39, v0

    move-wide/from16 v0, v52

    move-wide/from16 v52, v2

    .end local v2    # "c0":J
    .local v0, "a17":J
    .local v39, "a16":J
    .local v52, "c0":J
    not-long v2, v0

    and-long v2, v2, v55

    xor-long v2, v39, v2

    .line 842
    .end local v42    # "c1":J
    .local v2, "c1":J
    move-wide/from16 v42, v0

    move-wide/from16 v0, v55

    move-wide/from16 v55, v2

    .end local v2    # "c1":J
    .local v0, "a18":J
    .local v42, "a17":J
    .local v55, "c1":J
    not-long v2, v0

    and-long v2, v2, v58

    xor-long v2, v42, v2

    .line 843
    .end local v42    # "a17":J
    .local v2, "a17":J
    move-wide/from16 v42, v0

    move-wide/from16 v0, v58

    move-wide/from16 v58, v2

    .end local v2    # "a17":J
    .local v0, "a19":J
    .local v42, "a18":J
    .local v58, "a17":J
    not-long v2, v0

    and-long v2, v2, v48

    xor-long v2, v42, v2

    .line 844
    .end local v42    # "a18":J
    .local v2, "a18":J
    move-wide/from16 v42, v0

    move-wide/from16 v0, v48

    move-wide/from16 v48, v2

    .end local v2    # "a18":J
    .local v0, "a15":J
    .local v42, "a19":J
    .local v48, "a18":J
    not-long v2, v0

    and-long v2, v2, v39

    xor-long v2, v42, v2

    .line 845
    .end local v42    # "a19":J
    .local v2, "a19":J
    move-wide/from16 v0, v52

    .line 846
    move-wide/from16 v39, v55

    .line 848
    move-wide/from16 v42, v0

    move-wide/from16 v0, v64

    move-wide/from16 v64, v2

    .end local v2    # "a19":J
    .local v0, "a21":J
    .local v42, "a15":J
    .local v64, "a19":J
    not-long v2, v0

    and-long v2, v2, v45

    xor-long v2, v30, v2

    .line 849
    .end local v52    # "c0":J
    .local v2, "c0":J
    move-wide/from16 v52, v0

    move-wide/from16 v0, v45

    move-wide/from16 v45, v2

    .end local v2    # "c0":J
    .local v0, "a22":J
    .local v45, "c0":J
    .local v52, "a21":J
    not-long v2, v0

    and-long v2, v2, v66

    xor-long v2, v52, v2

    .line 850
    .end local v55    # "c1":J
    .local v2, "c1":J
    move-wide/from16 v55, v0

    move-wide/from16 v0, v66

    move-wide/from16 v66, v2

    .end local v2    # "c1":J
    .local v0, "a23":J
    .local v55, "a22":J
    .local v66, "c1":J
    not-long v2, v0

    and-long v2, v2, v71

    xor-long v2, v55, v2

    .line 851
    .end local v55    # "a22":J
    .local v2, "a22":J
    move-wide/from16 v55, v0

    move-wide/from16 v0, v71

    move-wide/from16 v71, v2

    .end local v2    # "a22":J
    .local v0, "a24":J
    .local v55, "a23":J
    .local v71, "a22":J
    not-long v2, v0

    and-long v2, v2, v30

    xor-long v2, v55, v2

    .line 852
    .end local v55    # "a23":J
    .local v2, "a23":J
    move-wide/from16 v55, v0

    move-wide/from16 v0, v30

    move-wide/from16 v30, v2

    .end local v2    # "a23":J
    .local v0, "a20":J
    .local v30, "a23":J
    .local v55, "a24":J
    not-long v2, v0

    and-long v2, v2, v52

    xor-long v2, v55, v2

    .line 853
    .end local v55    # "a24":J
    .local v2, "a24":J
    move-wide/from16 v0, v45

    .line 854
    move-wide/from16 v52, v66

    .line 857
    sget-object v4, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    add-int v11, v14, v76

    aget-wide v55, v4, v11

    xor-long v45, v77, v55

    .line 747
    .end local v66    # "c1":J
    .end local v77    # "a00":J
    .end local v80    # "c2":J
    .end local v82    # "c3":J
    .end local v84    # "c4":J
    .end local v86    # "d1":J
    .end local v88    # "d2":J
    .end local v90    # "d3":J
    .end local v92    # "d4":J
    .end local v94    # "d0":J
    .local v45, "a00":J
    add-int/lit8 v4, v76, 0x1

    move-wide/from16 v55, v36

    move-wide/from16 v36, v18

    move-wide/from16 v18, v69

    move-wide/from16 v69, v30

    move-wide/from16 v30, v55

    move-wide/from16 v55, v33

    move-wide/from16 v33, v27

    move-wide/from16 v27, v55

    move-wide/from16 v55, v64

    move-wide/from16 v64, v52

    move-wide/from16 v52, v58

    move-wide/from16 v58, v55

    move-wide/from16 v55, v48

    move-wide/from16 v66, v71

    const/4 v11, 0x3

    move-wide/from16 v71, v2

    move v2, v14

    move-wide/from16 v48, v42

    const/4 v14, 0x4

    move-wide/from16 v42, v15

    move-wide/from16 v15, v24

    move-wide/from16 v24, v21

    move-wide/from16 v21, v9

    move-wide v9, v5

    move-wide v6, v7

    const/4 v8, 0x2

    move v5, v4

    move-wide/from16 v3, v45

    move-wide/from16 v45, v50

    move-wide/from16 v50, v39

    move-wide/from16 v39, v61

    move-wide/from16 v61, v0

    move-object/from16 v1, v97

    move-object/from16 v0, p0

    .end local v76    # "i":I
    .local v4, "i":I
    goto/16 :goto_0

    .end local v0    # "a20":J
    .end local v4    # "i":I
    .end local v7    # "a01":J
    .end local v14    # "myBase":I
    .end local v97    # "A":[J
    .restart local v1    # "A":[J
    .local v2, "myBase":I
    .restart local v3    # "a00":J
    .local v5, "i":I
    .restart local v6    # "a01":J
    .local v9, "a02":J
    .local v15, "a04":J
    .local v18, "a05":J
    .local v21, "a06":J
    .local v24, "a07":J
    .local v27, "a08":J
    .local v30, "a09":J
    .local v33, "a10":J
    .local v36, "a11":J
    .local v39, "a12":J
    .local v42, "a13":J
    .local v45, "a14":J
    .local v48, "a15":J
    .local v50, "a16":J
    .local v52, "a17":J
    .local v55, "a18":J
    .local v58, "a19":J
    .local v61, "a20":J
    .local v64, "a21":J
    .local v66, "a22":J
    .local v69, "a23":J
    .local v71, "a24":J
    :cond_0
    move-object/from16 v97, v1

    const/16 v96, 0x4

    const/16 v102, 0x3

    .line 860
    .end local v1    # "A":[J
    .end local v5    # "i":I
    .restart local v97    # "A":[J
    aput-wide v3, v97, v73

    .line 861
    aput-wide v6, v97, v74

    .line 862
    aput-wide v9, v97, v75

    .line 863
    aput-wide v12, v97, v102

    .line 864
    aput-wide v15, v97, v96

    .line 865
    aput-wide v18, v97, v17

    .line 866
    aput-wide v21, v97, v20

    .line 867
    aput-wide v24, v97, v23

    .line 868
    aput-wide v27, v97, v26

    .line 869
    aput-wide v30, v97, v29

    .line 870
    aput-wide v33, v97, v32

    .line 871
    aput-wide v36, v97, v35

    .line 872
    aput-wide v39, v97, v38

    .line 873
    aput-wide v42, v97, v41

    .line 874
    aput-wide v45, v97, v44

    .line 875
    aput-wide v48, v97, v47

    .line 876
    const/16 v0, 0x10

    aput-wide v50, v97, v0

    .line 877
    const/16 v0, 0x11

    aput-wide v52, v97, v0

    .line 878
    aput-wide v55, v97, v54

    .line 879
    aput-wide v58, v97, v57

    .line 880
    aput-wide v61, v97, v60

    .line 881
    aput-wide v64, v97, v63

    .line 882
    const/16 v0, 0x16

    aput-wide v66, v97, v0

    .line 883
    aput-wide v69, v97, v68

    .line 884
    const/16 v0, 0x18

    aput-wide v71, v97, v0

    .line 885
    return-void
.end method

.method private absorb([BII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "data",
            "off",
            "len"
        }
    .end annotation

    .line 620
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    if-nez v0, :cond_4

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "count":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 628
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    if-nez v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    sub-int v1, p3, v1

    if-gt v0, v1, :cond_1

    .line 632
    :cond_0
    add-int v1, p2, v0

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    .line 633
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    add-int/2addr v0, v1

    .line 635
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    sub-int v1, p3, v1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 640
    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int/2addr v1, v2

    sub-int v2, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 641
    .local v1, "partialBlock":I
    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    .line 644
    add-int/2addr v0, v1

    .line 646
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    if-ne v2, v3, :cond_2

    .line 648
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    .line 649
    iput v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    .line 651
    .end local v1    # "partialBlock":I
    :cond_2
    goto :goto_0

    .line 653
    :cond_3
    return-void

    .line 622
    .end local v0    # "count":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initSponge()V
    .locals 3

    .line 602
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 603
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 604
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    .line 605
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    .line 606
    return-void
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 5

    .line 661
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 663
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    aput-byte v2, v1, v0

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-byte v4, v0, v1

    xor-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 666
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    .line 668
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooExtract()V

    .line 669
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    .line 670
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    .line 671
    return-void
.end method

.method private squeeze([BII)V
    .locals 5
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "outputLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "output",
            "offset",
            "outputLength"
        }
    .end annotation

    .line 684
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    if-nez v0, :cond_0

    .line 686
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->padAndSwitchToSqueezingPhase()V

    .line 689
    :cond_0
    const/4 v0, 0x0

    .line 690
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 692
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    if-nez v1, :cond_1

    .line 694
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooPermutation()V

    .line 695
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooExtract()V

    .line 696
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    .line 698
    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int v2, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 699
    .local v1, "partialBlock":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int/2addr v3, v4

    add-int v4, p2, v0

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    .line 701
    add-int/2addr v0, v1

    .line 702
    .end local v1    # "partialBlock":I
    goto :goto_0

    .line 703
    :cond_2
    return-void
.end method
