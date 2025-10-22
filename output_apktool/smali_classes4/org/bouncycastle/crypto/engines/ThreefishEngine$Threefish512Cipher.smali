.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish512Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x2e

.field private static final ROTATION_0_1:I = 0x24

.field private static final ROTATION_0_2:I = 0x13

.field private static final ROTATION_0_3:I = 0x25

.field private static final ROTATION_1_0:I = 0x21

.field private static final ROTATION_1_1:I = 0x1b

.field private static final ROTATION_1_2:I = 0xe

.field private static final ROTATION_1_3:I = 0x2a

.field private static final ROTATION_2_0:I = 0x11

.field private static final ROTATION_2_1:I = 0x31

.field private static final ROTATION_2_2:I = 0x24

.field private static final ROTATION_2_3:I = 0x27

.field private static final ROTATION_3_0:I = 0x2c

.field private static final ROTATION_3_1:I = 0x9

.field private static final ROTATION_3_2:I = 0x36

.field private static final ROTATION_3_3:I = 0x38

.field private static final ROTATION_4_0:I = 0x27

.field private static final ROTATION_4_1:I = 0x1e

.field private static final ROTATION_4_2:I = 0x22

.field private static final ROTATION_4_3:I = 0x18

.field private static final ROTATION_5_0:I = 0xd

.field private static final ROTATION_5_1:I = 0x32

.field private static final ROTATION_5_2:I = 0xa

.field private static final ROTATION_5_3:I = 0x11

.field private static final ROTATION_6_0:I = 0x19

.field private static final ROTATION_6_1:I = 0x1d

.field private static final ROTATION_6_2:I = 0x27

.field private static final ROTATION_6_3:I = 0x2b

.field private static final ROTATION_7_0:I = 0x8

.field private static final ROTATION_7_1:I = 0x23

.field private static final ROTATION_7_2:I = 0x38

.field private static final ROTATION_7_3:I = 0x16


# direct methods
.method protected constructor <init>([J[J)V
    .locals 0
    .param p1, "kw"    # [J
    .param p2, "t"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kw",
            "t"
        }
    .end annotation

    .line 658
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    .line 659
    return-void
.end method


# virtual methods
.method public decryptBlock([J[J)V
    .locals 46
    .param p1, "block"    # [J
    .param p2, "state"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "block",
            "state"
        }
    .end annotation

    .line 807
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    .line 808
    .local v1, "kw":[J
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    .line 809
    .local v2, "t":[J
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD9()[I

    move-result-object v3

    .line 810
    .local v3, "mod9":[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD3()[I

    move-result-object v4

    .line 813
    .local v4, "mod3":[I
    array-length v5, v1

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    .line 817
    array-length v5, v2

    const/4 v7, 0x5

    if-ne v5, v7, :cond_1

    .line 822
    const/4 v5, 0x0

    aget-wide v8, p1, v5

    .line 823
    .local v8, "b0":J
    const/4 v10, 0x1

    aget-wide v11, p1, v10

    .line 824
    .local v11, "b1":J
    const/4 v13, 0x2

    aget-wide v14, p1, v13

    .line 825
    .local v14, "b2":J
    const/16 v16, 0x3

    aget-wide v17, p1, v16

    .line 826
    .local v17, "b3":J
    const/16 v19, 0x4

    aget-wide v20, p1, v19

    .line 827
    .local v20, "b4":J
    aget-wide v22, p1, v7

    .line 828
    .local v22, "b5":J
    const/16 v24, 0x6

    aget-wide v25, p1, v24

    .line 829
    .local v25, "b6":J
    const/16 v27, 0x7

    aget-wide v28, p1, v27

    .line 831
    .local v28, "b7":J
    const/16 v30, 0x11

    move/from16 v5, v30

    const/16 v30, 0x0

    .local v5, "d":I
    :goto_0
    if-lt v5, v10, :cond_0

    .line 833
    aget v31, v3, v5

    .line 834
    .local v31, "dm9":I
    aget v32, v4, v5

    .line 837
    .local v32, "dm3":I
    add-int/lit8 v33, v31, 0x1

    aget-wide v33, v1, v33

    sub-long v8, v8, v33

    .line 838
    add-int/lit8 v33, v31, 0x2

    aget-wide v33, v1, v33

    sub-long v11, v11, v33

    .line 839
    add-int/lit8 v33, v31, 0x3

    aget-wide v33, v1, v33

    sub-long v14, v14, v33

    .line 840
    add-int/lit8 v33, v31, 0x4

    aget-wide v33, v1, v33

    const/16 v36, 0x5

    sub-long v6, v17, v33

    .line 841
    .end local v17    # "b3":J
    .local v6, "b3":J
    add-int/lit8 v17, v31, 0x5

    aget-wide v17, v1, v17

    move-wide/from16 v37, v14

    const/16 v33, 0x2

    .end local v14    # "b2":J
    .local v37, "b2":J
    sub-long v13, v20, v17

    .line 842
    .end local v20    # "b4":J
    .local v13, "b4":J
    add-int/lit8 v15, v31, 0x6

    aget-wide v17, v1, v15

    add-int/lit8 v15, v32, 0x1

    aget-wide v20, v2, v15

    add-long v17, v17, v20

    move-wide/from16 v39, v11

    const/16 v34, 0x1

    .end local v11    # "b1":J
    .local v39, "b1":J
    sub-long v10, v22, v17

    .line 843
    .end local v22    # "b5":J
    .local v10, "b5":J
    add-int/lit8 v12, v31, 0x7

    aget-wide v17, v1, v12

    add-int/lit8 v12, v32, 0x2

    aget-wide v20, v2, v12

    add-long v17, v17, v20

    move-object/from16 v41, v1

    .end local v1    # "kw":[J
    .local v41, "kw":[J
    sub-long v0, v25, v17

    .line 844
    .end local v25    # "b6":J
    .local v0, "b6":J
    add-int/lit8 v12, v31, 0x8

    aget-wide v17, v41, v12

    move-object/from16 v42, v2

    move-object/from16 v43, v3

    .end local v2    # "t":[J
    .end local v3    # "mod9":[I
    .local v42, "t":[J
    .local v43, "mod9":[I
    int-to-long v2, v5

    add-long v17, v17, v2

    const-wide/16 v2, 0x1

    add-long v17, v17, v2

    sub-long v2, v28, v17

    .line 848
    .end local v28    # "b7":J
    .local v2, "b7":J
    const/16 v12, 0x8

    move-object/from16 v44, v4

    move/from16 v45, v5

    move-wide/from16 v4, v39

    .end local v5    # "d":I
    .end local v39    # "b1":J
    .local v4, "b1":J
    .local v44, "mod3":[I
    .local v45, "d":I
    invoke-static {v4, v5, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 849
    sub-long/2addr v0, v4

    .line 850
    const/16 v12, 0x23

    invoke-static {v2, v3, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 851
    sub-long/2addr v8, v2

    .line 852
    const/16 v12, 0x38

    move-wide/from16 v17, v2

    move-wide/from16 v2, v37

    .end local v37    # "b2":J
    .local v2, "b2":J
    .local v17, "b7":J
    invoke-static {v10, v11, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    .line 853
    sub-long/2addr v2, v10

    .line 854
    const/16 v15, 0x16

    invoke-static {v6, v7, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 855
    sub-long/2addr v13, v6

    .line 857
    const/16 v15, 0x19

    invoke-static {v4, v5, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 858
    sub-long/2addr v13, v4

    .line 859
    const/16 v15, 0x1d

    invoke-static {v6, v7, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 860
    sub-long/2addr v0, v6

    .line 861
    const/16 v15, 0x27

    invoke-static {v10, v11, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    .line 862
    sub-long/2addr v8, v10

    .line 863
    const/16 v12, 0x2b

    move-wide/from16 v21, v6

    move-wide/from16 v6, v17

    .end local v17    # "b7":J
    .local v6, "b7":J
    .local v21, "b3":J
    invoke-static {v6, v7, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 864
    sub-long/2addr v2, v6

    .line 866
    const/16 v12, 0xd

    invoke-static {v4, v5, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 867
    sub-long/2addr v2, v4

    .line 868
    const/16 v12, 0x32

    invoke-static {v6, v7, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 869
    sub-long/2addr v13, v6

    .line 870
    const/16 v12, 0xa

    invoke-static {v10, v11, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    .line 871
    sub-long/2addr v0, v10

    .line 872
    move-wide/from16 v17, v0

    move-wide/from16 v0, v21

    const/16 v12, 0x11

    .end local v21    # "b3":J
    .local v0, "b3":J
    .local v17, "b6":J
    invoke-static {v0, v1, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 873
    sub-long/2addr v8, v0

    .line 875
    invoke-static {v4, v5, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 876
    sub-long/2addr v8, v4

    .line 877
    const/16 v12, 0x1e

    invoke-static {v0, v1, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 878
    sub-long/2addr v2, v0

    .line 879
    const/16 v12, 0x22

    invoke-static {v10, v11, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    .line 880
    sub-long/2addr v13, v10

    .line 881
    const/16 v12, 0x18

    move-wide/from16 v21, v0

    move-wide/from16 v0, v17

    .end local v17    # "b6":J
    .local v0, "b6":J
    .restart local v21    # "b3":J
    invoke-static {v6, v7, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 882
    sub-long/2addr v0, v6

    .line 885
    aget-wide v17, v41, v31

    sub-long v8, v8, v17

    .line 886
    add-int/lit8 v12, v31, 0x1

    aget-wide v17, v41, v12

    sub-long v4, v4, v17

    .line 887
    add-int/lit8 v12, v31, 0x2

    aget-wide v17, v41, v12

    sub-long v2, v2, v17

    .line 888
    add-int/lit8 v12, v31, 0x3

    aget-wide v17, v41, v12

    move-wide/from16 v25, v0

    .end local v0    # "b6":J
    .restart local v25    # "b6":J
    sub-long v0, v21, v17

    .line 889
    .end local v21    # "b3":J
    .local v0, "b3":J
    add-int/lit8 v12, v31, 0x4

    aget-wide v17, v41, v12

    sub-long v13, v13, v17

    .line 890
    add-int/lit8 v12, v31, 0x5

    aget-wide v17, v41, v12

    aget-wide v21, v42, v32

    add-long v17, v17, v21

    sub-long v10, v10, v17

    .line 891
    add-int/lit8 v12, v31, 0x6

    aget-wide v17, v41, v12

    add-int/lit8 v12, v32, 0x1

    aget-wide v21, v42, v12

    add-long v17, v17, v21

    move-wide/from16 v21, v6

    .end local v6    # "b7":J
    .local v21, "b7":J
    sub-long v6, v25, v17

    .line 892
    .end local v25    # "b6":J
    .local v6, "b6":J
    add-int/lit8 v12, v31, 0x7

    aget-wide v17, v41, v12

    move-wide/from16 v25, v0

    move/from16 v12, v45

    .end local v0    # "b3":J
    .end local v45    # "d":I
    .local v12, "d":I
    .local v25, "b3":J
    int-to-long v0, v12

    add-long v17, v17, v0

    sub-long v0, v21, v17

    .line 895
    .end local v21    # "b7":J
    .local v0, "b7":J
    const/16 v15, 0x2c

    invoke-static {v4, v5, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 896
    sub-long/2addr v6, v4

    .line 897
    const/16 v15, 0x9

    invoke-static {v0, v1, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 898
    sub-long/2addr v8, v0

    .line 899
    const/16 v15, 0x36

    invoke-static {v10, v11, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    .line 900
    sub-long/2addr v2, v10

    .line 901
    move-wide/from16 v21, v0

    move-wide/from16 v0, v25

    const/16 v15, 0x38

    .end local v25    # "b3":J
    .local v0, "b3":J
    .restart local v21    # "b7":J
    invoke-static {v0, v1, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 902
    sub-long/2addr v13, v0

    .line 904
    const/16 v15, 0x11

    invoke-static {v4, v5, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 905
    sub-long/2addr v13, v4

    .line 906
    const/16 v15, 0x31

    invoke-static {v0, v1, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 907
    sub-long/2addr v6, v0

    .line 908
    const/16 v15, 0x24

    invoke-static {v10, v11, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    .line 909
    sub-long/2addr v8, v10

    .line 910
    move-wide/from16 v25, v0

    move-wide/from16 v0, v21

    const/16 v15, 0x27

    .end local v21    # "b7":J
    .local v0, "b7":J
    .restart local v25    # "b3":J
    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 911
    sub-long/2addr v2, v0

    .line 913
    const/16 v15, 0x21

    invoke-static {v4, v5, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 914
    sub-long/2addr v2, v4

    .line 915
    const/16 v15, 0x1b

    invoke-static {v0, v1, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 916
    sub-long/2addr v13, v0

    .line 917
    const/16 v15, 0xe

    invoke-static {v10, v11, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    .line 918
    sub-long/2addr v6, v10

    .line 919
    const/16 v15, 0x2a

    move-wide/from16 v20, v0

    move-wide/from16 v0, v25

    .end local v25    # "b3":J
    .local v0, "b3":J
    .local v20, "b7":J
    invoke-static {v0, v1, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 920
    sub-long/2addr v8, v0

    .line 922
    const/16 v15, 0x2e

    invoke-static {v4, v5, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 923
    sub-long/2addr v8, v4

    .line 924
    const/16 v15, 0x24

    invoke-static {v0, v1, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v17

    .line 925
    .end local v0    # "b3":J
    .local v17, "b3":J
    sub-long v0, v2, v17

    .line 926
    .end local v2    # "b2":J
    .local v0, "b2":J
    const/16 v2, 0x13

    invoke-static {v10, v11, v2, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v22

    .line 927
    .end local v10    # "b5":J
    .restart local v22    # "b5":J
    sub-long v2, v13, v22

    .line 928
    .end local v13    # "b4":J
    .local v2, "b4":J
    const/16 v10, 0x25

    move-wide/from16 v13, v20

    .end local v20    # "b7":J
    .local v13, "b7":J
    invoke-static {v13, v14, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    .line 929
    .end local v13    # "b7":J
    .restart local v28    # "b7":J
    sub-long v25, v6, v28

    .line 831
    .end local v6    # "b6":J
    .end local v31    # "dm9":I
    .end local v32    # "dm3":I
    .local v25, "b6":J
    add-int/lit8 v6, v12, -0x2

    move-wide v14, v0

    move-wide/from16 v20, v2

    move-wide v11, v4

    move v5, v6

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    const/16 v6, 0x11

    const/4 v7, 0x5

    const/4 v10, 0x1

    const/4 v13, 0x2

    move-object/from16 v0, p0

    .end local v12    # "d":I
    .local v6, "d":I
    goto/16 :goto_0

    .end local v0    # "b2":J
    .end local v6    # "d":I
    .end local v41    # "kw":[J
    .end local v42    # "t":[J
    .end local v43    # "mod9":[I
    .end local v44    # "mod3":[I
    .restart local v1    # "kw":[J
    .local v2, "t":[J
    .restart local v3    # "mod9":[I
    .local v4, "mod3":[I
    .restart local v5    # "d":I
    .restart local v11    # "b1":J
    .restart local v14    # "b2":J
    .local v20, "b4":J
    :cond_0
    move-object/from16 v41, v1

    move-object/from16 v42, v2

    const/16 v33, 0x2

    const/16 v34, 0x1

    const/16 v36, 0x5

    .line 935
    .end local v1    # "kw":[J
    .end local v2    # "t":[J
    .end local v5    # "d":I
    .restart local v41    # "kw":[J
    .restart local v42    # "t":[J
    aget-wide v0, v41, v30

    sub-long/2addr v8, v0

    .line 936
    aget-wide v0, v41, v34

    sub-long/2addr v11, v0

    .line 937
    aget-wide v0, v41, v33

    sub-long/2addr v14, v0

    .line 938
    aget-wide v0, v41, v16

    sub-long v17, v17, v0

    .line 939
    aget-wide v0, v41, v19

    sub-long v20, v20, v0

    .line 940
    aget-wide v0, v41, v36

    aget-wide v2, v42, v30

    add-long/2addr v0, v2

    sub-long v22, v22, v0

    .line 941
    aget-wide v0, v41, v24

    aget-wide v2, v42, v34

    add-long/2addr v0, v2

    sub-long v25, v25, v0

    .line 942
    aget-wide v0, v41, v27

    sub-long v28, v28, v0

    .line 947
    aput-wide v8, p2, v30

    .line 948
    aput-wide v11, p2, v34

    .line 949
    aput-wide v14, p2, v33

    .line 950
    aput-wide v17, p2, v16

    .line 951
    aput-wide v20, p2, v19

    .line 952
    aput-wide v22, p2, v36

    .line 953
    aput-wide v25, p2, v24

    .line 954
    aput-wide v28, p2, v27

    .line 955
    return-void

    .line 819
    .end local v8    # "b0":J
    .end local v11    # "b1":J
    .end local v14    # "b2":J
    .end local v17    # "b3":J
    .end local v20    # "b4":J
    .end local v22    # "b5":J
    .end local v25    # "b6":J
    .end local v28    # "b7":J
    .end local v41    # "kw":[J
    .end local v42    # "t":[J
    .restart local v1    # "kw":[J
    .restart local v2    # "t":[J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 815
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public encryptBlock([J[J)V
    .locals 43
    .param p1, "block"    # [J
    .param p2, "out"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "block",
            "out"
        }
    .end annotation

    .line 663
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    .line 664
    .local v1, "kw":[J
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    .line 665
    .local v2, "t":[J
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD9()[I

    move-result-object v3

    .line 666
    .local v3, "mod9":[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD3()[I

    move-result-object v4

    .line 669
    .local v4, "mod3":[I
    array-length v5, v1

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    .line 673
    array-length v5, v2

    const/4 v7, 0x5

    if-ne v5, v7, :cond_1

    .line 681
    const/4 v5, 0x0

    aget-wide v8, p1, v5

    .line 682
    .local v8, "b0":J
    const/4 v10, 0x1

    aget-wide v11, p1, v10

    .line 683
    .local v11, "b1":J
    const/4 v13, 0x2

    aget-wide v14, p1, v13

    .line 684
    .local v14, "b2":J
    const/16 v16, 0x3

    aget-wide v17, p1, v16

    .line 685
    .local v17, "b3":J
    const/16 v19, 0x4

    aget-wide v20, p1, v19

    .line 686
    .local v20, "b4":J
    aget-wide v22, p1, v7

    .line 687
    .local v22, "b5":J
    const/16 v24, 0x6

    aget-wide v25, p1, v24

    .line 688
    .local v25, "b6":J
    const/16 v27, 0x7

    aget-wide v28, p1, v27

    .line 693
    .local v28, "b7":J
    aget-wide v30, v1, v5

    add-long v8, v8, v30

    .line 694
    aget-wide v30, v1, v10

    add-long v11, v11, v30

    .line 695
    aget-wide v30, v1, v13

    add-long v14, v14, v30

    .line 696
    aget-wide v30, v1, v16

    add-long v17, v17, v30

    .line 697
    aget-wide v30, v1, v19

    add-long v20, v20, v30

    .line 698
    aget-wide v30, v1, v7

    aget-wide v32, v2, v5

    add-long v30, v30, v32

    add-long v22, v22, v30

    .line 699
    aget-wide v30, v1, v24

    aget-wide v32, v2, v10

    add-long v30, v30, v32

    add-long v25, v25, v30

    .line 700
    aget-wide v30, v1, v27

    add-long v28, v28, v30

    .line 713
    const/16 v30, 0x1

    move-wide/from16 v39, v20

    move-wide/from16 v20, v8

    move-wide/from16 v9, v28

    move-wide/from16 v28, v25

    move-wide/from16 v25, v14

    move-wide/from16 v13, v22

    move-wide/from16 v22, v39

    move-wide/from16 v7, v17

    move/from16 v5, v30

    const/16 v17, 0x5

    const/16 v18, 0x2

    const/16 v30, 0x0

    const/4 v15, 0x1

    .end local v8    # "b0":J
    .end local v14    # "b2":J
    .end local v17    # "b3":J
    .local v5, "d":I
    .local v7, "b3":J
    .local v9, "b7":J
    .local v13, "b5":J
    .local v20, "b0":J
    .local v22, "b4":J
    .local v25, "b2":J
    .local v28, "b6":J
    :goto_0
    const/16 v31, 0x1

    const/16 v15, 0x12

    if-ge v5, v15, :cond_0

    .line 715
    aget v15, v3, v5

    .line 716
    .local v15, "dm9":I
    aget v32, v4, v5

    .line 724
    .local v32, "dm3":I
    move-wide/from16 v34, v7

    .end local v7    # "b3":J
    .local v34, "b3":J
    add-long v6, v20, v11

    move-wide/from16 v20, v6

    const/16 v8, 0x2e

    invoke-static {v11, v12, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 725
    .end local v11    # "b1":J
    .local v6, "b1":J
    add-long v11, v25, v34

    move-wide/from16 v25, v11

    const/16 v8, 0x24

    move-object/from16 v36, v1

    move-wide/from16 v0, v34

    .end local v1    # "kw":[J
    .end local v34    # "b3":J
    .local v0, "b3":J
    .local v36, "kw":[J
    invoke-static {v0, v1, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 726
    add-long v11, v22, v13

    move-wide/from16 v22, v11

    const/16 v8, 0x13

    invoke-static {v13, v14, v8, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    .line 727
    .end local v13    # "b5":J
    .local v11, "b5":J
    add-long v13, v28, v9

    move-wide/from16 v28, v13

    const/16 v8, 0x25

    invoke-static {v9, v10, v8, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 729
    .end local v9    # "b7":J
    .local v8, "b7":J
    add-long v13, v25, v6

    move-wide/from16 v25, v13

    const/16 v10, 0x21

    invoke-static {v6, v7, v10, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 730
    add-long v13, v22, v8

    move-wide/from16 v22, v13

    const/16 v10, 0x1b

    invoke-static {v8, v9, v10, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 731
    add-long v13, v28, v11

    move-wide/from16 v28, v13

    const/16 v10, 0xe

    invoke-static {v11, v12, v10, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 732
    .end local v11    # "b5":J
    .local v10, "b5":J
    add-long v12, v20, v0

    move-wide/from16 v20, v12

    const/16 v14, 0x2a

    invoke-static {v0, v1, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 734
    add-long v12, v22, v6

    move-wide/from16 v22, v12

    const/16 v14, 0x11

    invoke-static {v6, v7, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 735
    add-long v12, v28, v0

    move-wide/from16 v28, v12

    const/16 v14, 0x31

    invoke-static {v0, v1, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 736
    add-long v12, v20, v10

    move-wide/from16 v20, v12

    const/16 v14, 0x24

    invoke-static {v10, v11, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 737
    add-long v12, v25, v8

    move-wide/from16 v25, v12

    const/16 v14, 0x27

    invoke-static {v8, v9, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 739
    add-long v12, v28, v6

    move-wide/from16 v28, v12

    const/16 v14, 0x2c

    invoke-static {v6, v7, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 740
    add-long v12, v20, v8

    move-wide/from16 v20, v12

    const/16 v14, 0x9

    invoke-static {v8, v9, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 741
    add-long v12, v25, v10

    move-wide/from16 v25, v12

    const/16 v14, 0x36

    invoke-static {v10, v11, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 742
    add-long v12, v22, v0

    move-wide/from16 v22, v12

    const/16 v14, 0x38

    invoke-static {v0, v1, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 747
    aget-wide v12, v36, v15

    add-long v20, v20, v12

    .line 748
    add-int/lit8 v12, v15, 0x1

    aget-wide v12, v36, v12

    add-long/2addr v6, v12

    .line 749
    add-int/lit8 v12, v15, 0x2

    aget-wide v12, v36, v12

    add-long v25, v25, v12

    .line 750
    add-int/lit8 v12, v15, 0x3

    aget-wide v12, v36, v12

    add-long/2addr v0, v12

    .line 751
    add-int/lit8 v12, v15, 0x4

    aget-wide v12, v36, v12

    add-long v22, v22, v12

    .line 752
    add-int/lit8 v12, v15, 0x5

    aget-wide v12, v36, v12

    aget-wide v37, v2, v32

    add-long v12, v12, v37

    add-long/2addr v10, v12

    .line 753
    add-int/lit8 v12, v15, 0x6

    aget-wide v12, v36, v12

    add-int/lit8 v35, v32, 0x1

    aget-wide v37, v2, v35

    add-long v12, v12, v37

    add-long v28, v28, v12

    .line 754
    add-int/lit8 v12, v15, 0x7

    aget-wide v12, v36, v12

    move/from16 v35, v15

    .end local v15    # "dm9":I
    .local v35, "dm9":I
    int-to-long v14, v5

    add-long/2addr v12, v14

    add-long/2addr v8, v12

    .line 759
    add-long v12, v20, v6

    move-wide v14, v12

    move-object/from16 v38, v2

    const/16 v2, 0x27

    .end local v2    # "t":[J
    .end local v20    # "b0":J
    .local v14, "b0":J
    .local v38, "t":[J
    invoke-static {v6, v7, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 760
    add-long v12, v25, v0

    move-wide/from16 v20, v12

    .end local v25    # "b2":J
    .local v20, "b2":J
    const/16 v2, 0x1e

    invoke-static {v0, v1, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 761
    add-long v12, v22, v10

    move-wide/from16 v22, v12

    const/16 v2, 0x22

    invoke-static {v10, v11, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 762
    add-long v12, v28, v8

    move-wide/from16 v25, v12

    .end local v28    # "b6":J
    .local v25, "b6":J
    const/16 v2, 0x18

    invoke-static {v8, v9, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 764
    add-long v12, v20, v6

    move-wide/from16 v20, v12

    const/16 v2, 0xd

    invoke-static {v6, v7, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 765
    add-long v12, v22, v8

    move-wide/from16 v22, v12

    const/16 v2, 0x32

    invoke-static {v8, v9, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 766
    add-long v12, v25, v10

    move-wide/from16 v25, v12

    const/16 v2, 0xa

    invoke-static {v10, v11, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 767
    add-long v12, v14, v0

    move-wide v14, v12

    const/16 v2, 0x11

    invoke-static {v0, v1, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 769
    add-long v12, v22, v6

    move-wide/from16 v22, v12

    const/16 v2, 0x19

    invoke-static {v6, v7, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 770
    add-long v12, v25, v0

    move-wide/from16 v25, v12

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 771
    add-long v12, v14, v10

    move-wide v14, v12

    const/16 v2, 0x27

    invoke-static {v10, v11, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 772
    add-long v12, v20, v8

    move-wide/from16 v20, v12

    const/16 v2, 0x2b

    invoke-static {v8, v9, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 774
    add-long v12, v25, v6

    move-wide/from16 v25, v12

    const/16 v2, 0x8

    invoke-static {v6, v7, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 775
    add-long v12, v14, v8

    move-wide v14, v12

    const/16 v2, 0x23

    invoke-static {v8, v9, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 776
    add-long v12, v20, v10

    move-wide/from16 v20, v12

    const/16 v2, 0x38

    invoke-static {v10, v11, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 777
    add-long v12, v22, v0

    move-wide/from16 v22, v12

    const/16 v2, 0x16

    invoke-static {v0, v1, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 782
    add-int/lit8 v2, v35, 0x1

    aget-wide v12, v36, v2

    add-long/2addr v12, v14

    .line 783
    .end local v14    # "b0":J
    .local v12, "b0":J
    add-int/lit8 v15, v35, 0x2

    aget-wide v14, v36, v15

    add-long/2addr v6, v14

    .line 784
    add-int/lit8 v15, v35, 0x3

    aget-wide v14, v36, v15

    add-long v14, v20, v14

    .line 785
    .end local v20    # "b2":J
    .local v14, "b2":J
    add-int/lit8 v2, v35, 0x4

    aget-wide v20, v36, v2

    add-long v0, v0, v20

    .line 786
    add-int/lit8 v2, v35, 0x5

    aget-wide v20, v36, v2

    add-long v22, v22, v20

    .line 787
    add-int/lit8 v2, v35, 0x6

    aget-wide v20, v36, v2

    add-int/lit8 v2, v32, 0x1

    aget-wide v28, v38, v2

    add-long v20, v20, v28

    add-long v10, v10, v20

    .line 788
    add-int/lit8 v2, v35, 0x7

    aget-wide v20, v36, v2

    add-int/lit8 v2, v32, 0x2

    aget-wide v28, v38, v2

    add-long v20, v20, v28

    add-long v28, v25, v20

    .line 789
    .end local v25    # "b6":J
    .restart local v28    # "b6":J
    add-int/lit8 v2, v35, 0x8

    aget-wide v20, v36, v2

    move-wide/from16 v25, v0

    .end local v0    # "b3":J
    .local v25, "b3":J
    int-to-long v0, v5

    add-long v20, v20, v0

    const-wide/16 v0, 0x1

    add-long v20, v20, v0

    add-long v0, v8, v20

    .line 713
    .end local v8    # "b7":J
    .end local v32    # "dm3":I
    .end local v35    # "dm9":I
    .local v0, "b7":J
    add-int/lit8 v5, v5, 0x2

    move-wide/from16 v20, v12

    move-object/from16 v2, v38

    move-wide/from16 v39, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-wide/from16 v41, v6

    const/16 v6, 0x11

    move-wide/from16 v7, v25

    move-wide/from16 v25, v14

    move-wide v13, v10

    move-wide/from16 v9, v39

    move-wide/from16 v11, v41

    const/4 v15, 0x1

    goto/16 :goto_0

    .end local v0    # "b7":J
    .end local v6    # "b1":J
    .end local v10    # "b5":J
    .end local v12    # "b0":J
    .end local v14    # "b2":J
    .end local v36    # "kw":[J
    .end local v38    # "t":[J
    .restart local v1    # "kw":[J
    .restart local v2    # "t":[J
    .restart local v7    # "b3":J
    .restart local v9    # "b7":J
    .local v11, "b1":J
    .restart local v13    # "b5":J
    .local v20, "b0":J
    .local v25, "b2":J
    :cond_0
    move-wide v0, v7

    .line 795
    .end local v5    # "d":I
    .end local v7    # "b3":J
    .local v0, "b3":J
    aput-wide v20, p2, v30

    .line 796
    aput-wide v11, p2, v31

    .line 797
    aput-wide v25, p2, v18

    .line 798
    aput-wide v0, p2, v16

    .line 799
    aput-wide v22, p2, v19

    .line 800
    aput-wide v13, p2, v17

    .line 801
    aput-wide v28, p2, v24

    .line 802
    aput-wide v9, p2, v27

    .line 803
    return-void

    .line 675
    .end local v0    # "b3":J
    .end local v9    # "b7":J
    .end local v11    # "b1":J
    .end local v13    # "b5":J
    .end local v20    # "b0":J
    .end local v22    # "b4":J
    .end local v25    # "b2":J
    .end local v28    # "b6":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 671
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
