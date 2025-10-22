.class public Lorg/bouncycastle/crypto/digests/KeccakDigest;
.super Ljava/lang/Object;
.source "KeccakDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field protected rate:I

.field protected squeezing:Z

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

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

.method public constructor <init>()V
    .locals 2

    .line 35
    const/16 v0, 0x120

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitLength"
        }
    .end annotation

    .line 45
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 46
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "bitLength"    # I
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "purpose"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    .line 27
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 50
    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 51
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->init(I)V

    .line 53
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 40
    const/16 v0, 0x120

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/KeccakDigest;)V
    .locals 4
    .param p1, "source"    # Lorg/bouncycastle/crypto/digests/KeccakDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    .line 27
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 58
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 59
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    .line 62
    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 63
    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    .line 64
    iget-boolean v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 66
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 67
    return-void
.end method

.method private KeccakAbsorb([BI)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "off"
        }
    .end annotation

    .line 308
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    ushr-int/lit8 v0, v0, 0x6

    .line 309
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 311
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v3, v2, v1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 312
    add-int/lit8 p2, p2, 0x8

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    .line 316
    return-void
.end method

.method private KeccakExtract()V
    .locals 4

    .line 322
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    .line 324
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    ushr-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    .line 326
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 327
    return-void
.end method

.method private KeccakPermutation()V
    .locals 110

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    .line 333
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

    .line 334
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

    .line 335
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

    aget-wide v41, v1, v41

    .local v41, "a13":J
    const/16 v43, 0xe

    aget-wide v44, v1, v43

    .line 336
    .local v44, "a14":J
    const/16 v46, 0xf

    aget-wide v47, v1, v46

    .local v47, "a15":J
    const/16 v49, 0x10

    aget-wide v49, v1, v49

    .local v49, "a16":J
    const/16 v51, 0x11

    aget-wide v51, v1, v51

    .local v51, "a17":J
    const/16 v53, 0x12

    aget-wide v54, v1, v53

    .local v54, "a18":J
    const/16 v56, 0x13

    aget-wide v57, v1, v56

    .line 337
    .local v57, "a19":J
    const/16 v59, 0x14

    aget-wide v60, v1, v59

    .local v60, "a20":J
    const/16 v62, 0x15

    aget-wide v63, v1, v62

    .local v63, "a21":J
    const/16 v65, 0x16

    aget-wide v65, v1, v65

    .local v65, "a22":J
    const/16 v67, 0x17

    aget-wide v68, v1, v67

    const/16 v70, 0x0

    .local v68, "a23":J
    const/16 v2, 0x18

    aget-wide v71, v1, v2

    .line 339
    .local v71, "a24":J
    const/16 v73, 0x0

    move/from16 v5, v73

    const/16 v73, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 342
    xor-long v74, v3, v18

    xor-long v74, v74, v33

    xor-long v74, v74, v47

    xor-long v74, v74, v60

    .line 343
    .local v74, "c0":J
    xor-long v76, v6, v21

    xor-long v76, v76, v36

    xor-long v76, v76, v49

    xor-long v76, v76, v63

    .line 344
    .local v76, "c1":J
    xor-long v78, v9, v24

    xor-long v78, v78, v39

    xor-long v78, v78, v51

    xor-long v78, v78, v65

    .line 345
    .local v78, "c2":J
    xor-long v80, v12, v27

    xor-long v80, v80, v41

    xor-long v80, v80, v54

    xor-long v80, v80, v68

    .line 346
    .local v80, "c3":J
    xor-long v82, v15, v30

    xor-long v82, v82, v44

    xor-long v82, v82, v57

    xor-long v82, v82, v71

    .line 348
    .local v82, "c4":J
    shl-long v84, v76, v73

    const/16 v86, -0x1

    ushr-long v87, v76, v86

    or-long v84, v84, v87

    xor-long v84, v84, v82

    .line 349
    .local v84, "d1":J
    shl-long v87, v78, v73

    ushr-long v89, v78, v86

    or-long v87, v87, v89

    xor-long v87, v87, v74

    .line 350
    .local v87, "d2":J
    shl-long v89, v80, v73

    ushr-long v91, v80, v86

    or-long v89, v89, v91

    xor-long v89, v89, v76

    .line 351
    .local v89, "d3":J
    shl-long v91, v82, v73

    ushr-long v93, v82, v86

    or-long v91, v91, v93

    xor-long v91, v91, v78

    .line 352
    .local v91, "d4":J
    shl-long v93, v74, v73

    ushr-long v95, v74, v86

    or-long v93, v93, v95

    xor-long v93, v93, v80

    .line 354
    .local v93, "d0":J
    xor-long v3, v3, v84

    xor-long v18, v18, v84

    xor-long v33, v33, v84

    xor-long v47, v47, v84

    xor-long v60, v60, v84

    .line 355
    xor-long v6, v6, v87

    xor-long v21, v21, v87

    xor-long v36, v36, v87

    xor-long v49, v49, v87

    xor-long v63, v63, v87

    .line 356
    xor-long v9, v9, v89

    xor-long v24, v24, v89

    xor-long v39, v39, v89

    xor-long v51, v51, v89

    xor-long v65, v65, v89

    .line 357
    xor-long v12, v12, v91

    xor-long v27, v27, v91

    xor-long v41, v41, v91

    xor-long v54, v54, v91

    xor-long v68, v68, v91

    .line 358
    xor-long v15, v15, v93

    xor-long v30, v30, v93

    xor-long v44, v44, v93

    xor-long v57, v57, v93

    xor-long v71, v71, v93

    .line 361
    shl-long v95, v6, v73

    const/16 v86, 0x3f

    ushr-long v97, v6, v86

    or-long v76, v95, v97

    .line 362
    const/16 v86, 0x2c

    shl-long v95, v21, v86

    ushr-long v97, v21, v59

    or-long v6, v95, v97

    .line 363
    shl-long v95, v30, v59

    ushr-long v97, v30, v86

    move-wide/from16 v99, v9

    const/16 v86, 0x2

    .end local v9    # "a02":J
    .local v99, "a02":J
    or-long v8, v95, v97

    .line 364
    .end local v21    # "a06":J
    .local v8, "a06":J
    const/16 v10, 0x3d

    shl-long v21, v65, v10

    ushr-long v95, v65, v11

    move-wide/from16 v101, v12

    const/16 v97, 0x3

    .end local v12    # "a03":J
    .local v101, "a03":J
    or-long v11, v21, v95

    .line 365
    .end local v30    # "a09":J
    .local v11, "a09":J
    const/16 v10, 0x27

    shl-long v21, v44, v10

    const/16 v10, 0x19

    ushr-long v30, v44, v10

    move-wide/from16 v103, v15

    const/16 v95, 0x4

    .end local v15    # "a04":J
    .local v103, "a04":J
    or-long v14, v21, v30

    .line 366
    .end local v65    # "a22":J
    .local v14, "a22":J
    shl-long v21, v60, v53

    const/16 v10, 0x2e

    ushr-long v30, v60, v10

    move-wide/from16 v105, v3

    const/16 v96, 0x18

    .end local v3    # "a00":J
    .local v105, "a00":J
    or-long v2, v21, v30

    .line 367
    .end local v44    # "a14":J
    .local v2, "a14":J
    const/16 v4, 0x3e

    shl-long v21, v99, v4

    ushr-long v30, v99, v86

    move-object/from16 v98, v1

    .end local v1    # "A":[J
    .local v98, "A":[J
    or-long v0, v21, v30

    .line 368
    .end local v60    # "a20":J
    .local v0, "a20":J
    const/16 v4, 0x2b

    shl-long v21, v39, v4

    ushr-long v30, v39, v62

    move/from16 v107, v5

    .end local v5    # "i":I
    .local v107, "i":I
    or-long v4, v21, v30

    .line 369
    .end local v99    # "a02":J
    .local v4, "a02":J
    const/16 v10, 0x19

    shl-long v21, v41, v10

    const/16 v10, 0x27

    ushr-long v30, v41, v10

    move-wide/from16 v44, v0

    .end local v0    # "a20":J
    .local v44, "a20":J
    or-long v0, v21, v30

    .line 370
    .end local v39    # "a12":J
    .local v0, "a12":J
    shl-long v21, v57, v26

    const/16 v10, 0x38

    ushr-long v30, v57, v10

    move-wide/from16 v39, v14

    .end local v14    # "a22":J
    .local v39, "a22":J
    or-long v13, v21, v30

    .line 371
    .end local v41    # "a13":J
    .local v13, "a13":J
    shl-long v15, v68, v10

    ushr-long v21, v68, v26

    move-wide/from16 v30, v2

    .end local v2    # "a14":J
    .local v30, "a14":J
    or-long v2, v15, v21

    .line 372
    .end local v57    # "a19":J
    .local v2, "a19":J
    const/16 v10, 0x29

    shl-long v15, v47, v10

    ushr-long v21, v47, v67

    move-wide/from16 v41, v2

    .end local v2    # "a19":J
    .local v41, "a19":J
    or-long v2, v15, v21

    .line 373
    .end local v68    # "a23":J
    .local v2, "a23":J
    const/16 v10, 0x1b

    shl-long v15, v103, v10

    const/16 v10, 0x25

    ushr-long v21, v103, v10

    move-wide/from16 v57, v2

    .end local v2    # "a23":J
    .local v57, "a23":J
    or-long v2, v15, v21

    .line 374
    .end local v47    # "a15":J
    .local v2, "a15":J
    shl-long v15, v71, v43

    const/16 v10, 0x32

    ushr-long v21, v71, v10

    move-wide/from16 v47, v2

    .end local v2    # "a15":J
    .restart local v47    # "a15":J
    or-long v2, v15, v21

    .line 375
    .end local v103    # "a04":J
    .local v2, "a04":J
    shl-long v15, v63, v86

    const/16 v10, 0x3e

    ushr-long v21, v63, v10

    move-wide/from16 v60, v13

    .end local v13    # "a13":J
    .local v60, "a13":J
    or-long v13, v15, v21

    .line 376
    .end local v71    # "a24":J
    .local v13, "a24":J
    const/16 v10, 0x37

    shl-long v15, v27, v10

    ushr-long v21, v27, v29

    move-wide/from16 v65, v13

    .end local v13    # "a24":J
    .local v65, "a24":J
    or-long v13, v15, v21

    .line 377
    .end local v63    # "a21":J
    .local v13, "a21":J
    const/16 v10, 0x2d

    shl-long v15, v49, v10

    ushr-long v21, v49, v56

    move-wide/from16 v63, v13

    .end local v13    # "a21":J
    .restart local v63    # "a21":J
    or-long v13, v15, v21

    .line 378
    .end local v27    # "a08":J
    .local v13, "a08":J
    const/16 v10, 0x24

    shl-long v15, v18, v10

    const/16 v10, 0x1c

    ushr-long v21, v18, v10

    move-wide/from16 v27, v0

    .end local v0    # "a12":J
    .local v27, "a12":J
    or-long v0, v15, v21

    .line 379
    .end local v49    # "a16":J
    .local v0, "a16":J
    shl-long v15, v101, v10

    const/16 v10, 0x24

    ushr-long v21, v101, v10

    move-wide/from16 v49, v0

    .end local v0    # "a16":J
    .restart local v49    # "a16":J
    or-long v0, v15, v21

    .line 380
    .end local v18    # "a05":J
    .local v0, "a05":J
    shl-long v15, v54, v62

    const/16 v10, 0x2b

    ushr-long v18, v54, v10

    move-wide/from16 v21, v0

    .end local v0    # "a05":J
    .local v21, "a05":J
    or-long v0, v15, v18

    .line 381
    .end local v101    # "a03":J
    .local v0, "a03":J
    shl-long v15, v51, v46

    const/16 v10, 0x31

    ushr-long v18, v51, v10

    move-wide/from16 v68, v11

    .end local v11    # "a09":J
    .local v68, "a09":J
    or-long v10, v15, v18

    .line 382
    .end local v54    # "a18":J
    .local v10, "a18":J
    shl-long v15, v36, v32

    const/16 v12, 0x36

    ushr-long v18, v36, v12

    move-wide/from16 v54, v10

    .end local v10    # "a18":J
    .restart local v54    # "a18":J
    or-long v10, v15, v18

    .line 383
    .end local v51    # "a17":J
    .local v10, "a17":J
    shl-long v15, v24, v20

    const/16 v12, 0x3a

    ushr-long v18, v24, v12

    move-wide/from16 v51, v10

    .end local v10    # "a17":J
    .restart local v51    # "a17":J
    or-long v10, v15, v18

    .line 384
    .end local v36    # "a11":J
    .local v10, "a11":J
    shl-long v15, v33, v97

    const/16 v12, 0x3d

    ushr-long v18, v33, v12

    move-wide/from16 v36, v10

    .end local v10    # "a11":J
    .restart local v36    # "a11":J
    or-long v10, v15, v18

    .line 385
    .end local v24    # "a07":J
    .local v10, "a07":J
    move-wide/from16 v15, v76

    .line 388
    .end local v33    # "a10":J
    .local v15, "a10":J
    move-wide/from16 v18, v13

    .end local v13    # "a08":J
    .local v18, "a08":J
    not-long v12, v6

    and-long/2addr v12, v4

    xor-long v12, v105, v12

    .line 389
    .end local v74    # "c0":J
    .local v12, "c0":J
    move-wide/from16 v24, v6

    .end local v6    # "a01":J
    .local v24, "a01":J
    not-long v6, v4

    and-long/2addr v6, v0

    xor-long v6, v24, v6

    .line 390
    .end local v76    # "c1":J
    .local v6, "c1":J
    move-wide/from16 v33, v4

    .end local v4    # "a02":J
    .local v33, "a02":J
    not-long v4, v0

    and-long/2addr v4, v2

    xor-long v4, v33, v4

    .line 391
    .end local v33    # "a02":J
    .restart local v4    # "a02":J
    move-wide/from16 v33, v0

    .end local v0    # "a03":J
    .local v33, "a03":J
    not-long v0, v2

    and-long v0, v0, v105

    xor-long v0, v33, v0

    .line 392
    .end local v33    # "a03":J
    .restart local v0    # "a03":J
    move-wide/from16 v33, v0

    move-wide/from16 v71, v2

    move-wide/from16 v0, v105

    .end local v2    # "a04":J
    .end local v105    # "a00":J
    .local v0, "a00":J
    .restart local v33    # "a03":J
    .local v71, "a04":J
    not-long v2, v0

    and-long v2, v2, v24

    xor-long v2, v71, v2

    .line 393
    .end local v71    # "a04":J
    .restart local v2    # "a04":J
    move-wide v0, v12

    .line 394
    move-wide/from16 v24, v6

    .line 396
    move-wide/from16 v71, v0

    .end local v0    # "a00":J
    .local v71, "a00":J
    not-long v0, v8

    and-long/2addr v0, v10

    xor-long v0, v21, v0

    .line 397
    .end local v12    # "c0":J
    .local v0, "c0":J
    not-long v12, v10

    and-long v12, v12, v18

    xor-long v6, v8, v12

    .line 398
    move-wide/from16 v12, v18

    move-wide/from16 v18, v0

    .end local v0    # "c0":J
    .local v12, "a08":J
    .local v18, "c0":J
    not-long v0, v12

    and-long v0, v0, v68

    xor-long/2addr v0, v10

    .line 399
    .end local v10    # "a07":J
    .local v0, "a07":J
    move-wide/from16 v10, v68

    move-wide/from16 v68, v0

    .end local v0    # "a07":J
    .local v10, "a09":J
    .local v68, "a07":J
    not-long v0, v10

    and-long v0, v0, v21

    xor-long/2addr v0, v12

    .line 400
    .end local v12    # "a08":J
    .local v0, "a08":J
    move-wide/from16 v12, v21

    move-wide/from16 v21, v0

    .end local v0    # "a08":J
    .local v12, "a05":J
    .local v21, "a08":J
    not-long v0, v12

    and-long/2addr v0, v8

    xor-long/2addr v0, v10

    .line 401
    .end local v10    # "a09":J
    .local v0, "a09":J
    move-wide/from16 v10, v18

    .line 402
    .end local v12    # "a05":J
    .local v10, "a05":J
    move-wide v8, v6

    .line 404
    move-wide/from16 v12, v36

    move-wide/from16 v36, v0

    .end local v0    # "a09":J
    .local v12, "a11":J
    .local v36, "a09":J
    not-long v0, v12

    and-long v0, v0, v27

    xor-long/2addr v0, v15

    .line 405
    .end local v18    # "c0":J
    .local v0, "c0":J
    move-wide/from16 v18, v0

    move-wide/from16 v0, v27

    move-wide/from16 v27, v2

    .end local v2    # "a04":J
    .local v0, "a12":J
    .restart local v18    # "c0":J
    .local v27, "a04":J
    not-long v2, v0

    and-long v2, v2, v60

    xor-long/2addr v2, v12

    .line 406
    .end local v6    # "c1":J
    .local v2, "c1":J
    move-wide/from16 v6, v60

    move-wide/from16 v60, v0

    .end local v0    # "a12":J
    .local v6, "a13":J
    .local v60, "a12":J
    not-long v0, v6

    and-long v0, v0, v30

    xor-long v0, v60, v0

    .line 407
    .end local v60    # "a12":J
    .restart local v0    # "a12":J
    move-wide/from16 v60, v0

    move-wide/from16 v0, v30

    move-wide/from16 v30, v2

    .end local v2    # "c1":J
    .local v0, "a14":J
    .local v30, "c1":J
    .restart local v60    # "a12":J
    not-long v2, v0

    and-long/2addr v2, v15

    xor-long/2addr v2, v6

    .line 408
    .end local v6    # "a13":J
    .local v2, "a13":J
    move-wide v6, v15

    .end local v15    # "a10":J
    .local v6, "a10":J
    not-long v14, v6

    and-long/2addr v14, v12

    xor-long/2addr v0, v14

    .line 409
    move-wide/from16 v6, v18

    .line 410
    move-wide/from16 v12, v30

    .line 412
    move-wide/from16 v14, v49

    move-wide/from16 v49, v0

    .end local v0    # "a14":J
    .local v14, "a16":J
    .local v49, "a14":J
    not-long v0, v14

    and-long v0, v0, v51

    xor-long v0, v47, v0

    .line 413
    .end local v18    # "c0":J
    .local v0, "c0":J
    move-wide/from16 v18, v0

    move-wide/from16 v0, v51

    move-wide/from16 v51, v2

    .end local v2    # "a13":J
    .local v0, "a17":J
    .restart local v18    # "c0":J
    .local v51, "a13":J
    not-long v2, v0

    and-long v2, v2, v54

    xor-long/2addr v2, v14

    .line 414
    .end local v30    # "c1":J
    .local v2, "c1":J
    move-wide/from16 v30, v0

    move-wide/from16 v0, v54

    move-wide/from16 v54, v2

    .end local v2    # "c1":J
    .local v0, "a18":J
    .local v30, "a17":J
    .local v54, "c1":J
    not-long v2, v0

    and-long v2, v2, v41

    xor-long v2, v30, v2

    .line 415
    .end local v30    # "a17":J
    .local v2, "a17":J
    move-wide/from16 v30, v0

    move-wide/from16 v0, v41

    move-wide/from16 v41, v2

    .end local v2    # "a17":J
    .local v0, "a19":J
    .local v30, "a18":J
    .local v41, "a17":J
    not-long v2, v0

    and-long v2, v2, v47

    xor-long v2, v30, v2

    .line 416
    .end local v30    # "a18":J
    .local v2, "a18":J
    move-wide/from16 v30, v0

    move-wide/from16 v0, v47

    move-wide/from16 v47, v2

    .end local v2    # "a18":J
    .local v0, "a15":J
    .local v30, "a19":J
    .local v47, "a18":J
    not-long v2, v0

    and-long/2addr v2, v14

    xor-long v2, v30, v2

    .line 417
    .end local v30    # "a19":J
    .local v2, "a19":J
    move-wide/from16 v0, v18

    .line 418
    move-wide/from16 v14, v54

    .line 420
    move-wide/from16 v30, v0

    move-wide/from16 v0, v63

    move-wide/from16 v63, v2

    .end local v2    # "a19":J
    .local v0, "a21":J
    .local v30, "a15":J
    .local v63, "a19":J
    not-long v2, v0

    and-long v2, v2, v39

    xor-long v2, v44, v2

    .line 421
    .end local v18    # "c0":J
    .local v2, "c0":J
    move-wide/from16 v18, v0

    move-wide/from16 v0, v39

    move-wide/from16 v39, v2

    .end local v2    # "c0":J
    .local v0, "a22":J
    .local v18, "a21":J
    .local v39, "c0":J
    not-long v2, v0

    and-long v2, v2, v57

    xor-long v2, v18, v2

    .line 422
    .end local v54    # "c1":J
    .local v2, "c1":J
    move-wide/from16 v54, v0

    move-wide/from16 v0, v57

    move-wide/from16 v57, v2

    .end local v2    # "c1":J
    .local v0, "a23":J
    .local v54, "a22":J
    .local v57, "c1":J
    not-long v2, v0

    and-long v2, v2, v65

    xor-long v2, v54, v2

    .line 423
    .end local v54    # "a22":J
    .local v2, "a22":J
    move-wide/from16 v54, v0

    move-wide/from16 v0, v65

    move-wide/from16 v65, v2

    .end local v2    # "a22":J
    .local v0, "a24":J
    .local v54, "a23":J
    .local v65, "a22":J
    not-long v2, v0

    and-long v2, v2, v44

    xor-long v2, v54, v2

    .line 424
    .end local v54    # "a23":J
    .local v2, "a23":J
    move-wide/from16 v54, v0

    move-wide/from16 v0, v44

    move-wide/from16 v44, v2

    .end local v2    # "a23":J
    .local v0, "a20":J
    .local v44, "a23":J
    .local v54, "a24":J
    not-long v2, v0

    and-long v2, v2, v18

    xor-long v2, v54, v2

    .line 425
    .end local v54    # "a24":J
    .local v2, "a24":J
    move-wide/from16 v0, v39

    .line 426
    move-wide/from16 v18, v57

    .line 429
    sget-object v16, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    aget-wide v54, v16, v107

    xor-long v39, v71, v54

    .line 339
    .end local v57    # "c1":J
    .end local v71    # "a00":J
    .end local v78    # "c2":J
    .end local v80    # "c3":J
    .end local v82    # "c4":J
    .end local v84    # "d1":J
    .end local v87    # "d2":J
    .end local v89    # "d3":J
    .end local v91    # "d4":J
    .end local v93    # "d0":J
    .local v39, "a00":J
    add-int/lit8 v16, v107, 0x1

    move-wide/from16 v54, v51

    move-wide/from16 v51, v41

    move-wide/from16 v41, v54

    move-wide/from16 v71, v2

    move-wide/from16 v54, v47

    move-wide/from16 v57, v63

    const/16 v2, 0x18

    move-wide/from16 v63, v18

    move-wide/from16 v47, v30

    move-wide/from16 v30, v36

    move-wide/from16 v18, v10

    move-wide/from16 v36, v12

    move-wide/from16 v12, v33

    const/4 v11, 0x3

    move-wide/from16 v33, v6

    move-wide/from16 v6, v24

    move-wide/from16 v24, v68

    move-wide/from16 v68, v44

    move-wide/from16 v44, v49

    move-wide/from16 v49, v14

    const/4 v14, 0x4

    move-wide/from16 v108, v8

    const/4 v8, 0x2

    const/4 v8, 0x2

    move-wide v9, v4

    move/from16 v5, v16

    move-wide/from16 v15, v27

    move-wide/from16 v3, v39

    move-wide/from16 v39, v60

    move-wide/from16 v60, v0

    move-wide/from16 v27, v21

    move-object/from16 v1, v98

    move-object/from16 v0, p0

    move-wide/from16 v21, v108

    .end local v107    # "i":I
    .local v16, "i":I
    goto/16 :goto_0

    .end local v0    # "a20":J
    .end local v2    # "a24":J
    .end local v4    # "a02":J
    .end local v8    # "a06":J
    .end local v10    # "a05":J
    .end local v14    # "a16":J
    .end local v16    # "i":I
    .end local v98    # "A":[J
    .restart local v1    # "A":[J
    .restart local v3    # "a00":J
    .restart local v5    # "i":I
    .local v6, "a01":J
    .restart local v9    # "a02":J
    .local v12, "a03":J
    .local v15, "a04":J
    .local v18, "a05":J
    .local v21, "a06":J
    .local v24, "a07":J
    .local v27, "a08":J
    .local v30, "a09":J
    .local v33, "a10":J
    .local v36, "a11":J
    .local v39, "a12":J
    .local v41, "a13":J
    .local v44, "a14":J
    .local v47, "a15":J
    .local v49, "a16":J
    .local v51, "a17":J
    .local v54, "a18":J
    .local v57, "a19":J
    .local v60, "a20":J
    .local v63, "a21":J
    .local v68, "a23":J
    .local v71, "a24":J
    :cond_0
    move-object/from16 v98, v1

    const/16 v86, 0x2

    const/16 v95, 0x4

    const/16 v96, 0x18

    const/16 v97, 0x3

    .line 432
    .end local v1    # "A":[J
    .end local v5    # "i":I
    .restart local v98    # "A":[J
    aput-wide v3, v98, v70

    aput-wide v6, v98, v73

    aput-wide v9, v98, v86

    aput-wide v12, v98, v97

    aput-wide v15, v98, v95

    .line 433
    aput-wide v18, v98, v17

    aput-wide v21, v98, v20

    aput-wide v24, v98, v23

    aput-wide v27, v98, v26

    aput-wide v30, v98, v29

    .line 434
    aput-wide v33, v98, v32

    aput-wide v36, v98, v35

    aput-wide v39, v98, v38

    const/16 v0, 0xd

    aput-wide v41, v98, v0

    aput-wide v44, v98, v43

    .line 435
    aput-wide v47, v98, v46

    const/16 v0, 0x10

    aput-wide v49, v98, v0

    const/16 v0, 0x11

    aput-wide v51, v98, v0

    aput-wide v54, v98, v53

    aput-wide v57, v98, v56

    .line 436
    aput-wide v60, v98, v59

    aput-wide v63, v98, v62

    const/16 v0, 0x16

    aput-wide v65, v98, v0

    aput-wide v68, v98, v67

    aput-wide v71, v98, v96

    .line 437
    return-void
.end method

.method private init(I)V
    .locals 2
    .param p1, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitLength"
        }
    .end annotation

    .line 132
    sparse-switch p1, :sswitch_data_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be one of 128, 224, 256, 288, 384, or 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :sswitch_0
    shl-int/lit8 v0, p1, 0x1

    rsub-int v0, v0, 0x640

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->initSponge(I)V

    .line 141
    nop

    .line 145
    return-void

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xe0 -> :sswitch_0
        0x100 -> :sswitch_0
        0x120 -> :sswitch_0
        0x180 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method private initSponge(I)V
    .locals 4
    .param p1, "rate"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rate"
        }
    .end annotation

    .line 149
    if-lez p1, :cond_1

    const/16 v0, 0x640

    if-ge p1, v0, :cond_1

    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_1

    .line 154
    iput p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 160
    iput v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 161
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 162
    rsub-int v0, p1, 0x640

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    .line 163
    return-void

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid rate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 13

    .line 249
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v1, v1, 0x3

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    shl-int v3, v4, v3

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 251
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    goto :goto_1

    .line 257
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v0, v0, 0x6

    .local v0, "full":I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    and-int/lit8 v1, v1, 0x3f

    .line 258
    .local v1, "partial":I
    const/4 v3, 0x0

    .line 259
    .local v3, "off":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 261
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v7, v6, v5

    iget-object v9, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v9, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v9

    xor-long/2addr v7, v9

    aput-wide v7, v6, v5

    .line 262
    add-int/lit8 v3, v3, 0x8

    .line 259
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 265
    .end local v5    # "i":I
    :cond_1
    if-lez v1, :cond_2

    .line 267
    const-wide/16 v5, 0x1

    shl-long v7, v5, v1

    sub-long/2addr v7, v5

    .line 268
    .local v7, "mask":J
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v9, v5, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v6, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v11

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, v5, v0

    .line 272
    .end local v0    # "full":I
    .end local v1    # "partial":I
    .end local v3    # "off":I
    .end local v7    # "mask":J
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    sub-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x6

    aget-wide v5, v0, v1

    const-wide/high16 v7, -0x8000000000000000L

    xor-long/2addr v5, v7

    aput-wide v5, v0, v1

    .line 274
    iput v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 275
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 276
    return-void
.end method


# virtual methods
.method protected absorb(B)V
    .locals 2
    .param p1, "data"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 167
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    .line 171
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v1, v1, 0x3

    aput-byte p1, v0, v1

    .line 177
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    .line 180
    iput v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 182
    :cond_0
    return-void

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb with odd length queue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected absorb([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "off",
            "len"
        }
    .end annotation

    .line 186
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    .line 190
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v0, :cond_3

    .line 195
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v0, v0, 0x3

    .line 196
    .local v0, "bytesInQueue":I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    ushr-int/lit8 v1, v1, 0x3

    .line 198
    .local v1, "rateBytes":I
    sub-int v2, v1, v0

    .line 199
    .local v2, "available":I
    if-ge p3, v2, :cond_0

    .line 201
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shl-int/lit8 v4, p3, 0x3

    add-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 203
    return-void

    .line 206
    :cond_0
    const/4 v3, 0x0

    .line 207
    .local v3, "count":I
    const/4 v4, 0x0

    if-lez v0, :cond_1

    .line 209
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, p2, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    add-int/2addr v3, v2

    .line 211
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-direct {p0, v5, v4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    .line 215
    :cond_1
    :goto_0
    sub-int v5, p3, v3

    move v6, v5

    .local v6, "remaining":I
    if-lt v5, v1, :cond_2

    .line 217
    add-int v5, p2, v3

    invoke-direct {p0, p1, v5}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    .line 218
    add-int/2addr v3, v1

    goto :goto_0

    .line 221
    :cond_2
    add-int v5, p2, v3

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, v5, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    shl-int/lit8 v4, v6, 0x3

    iput v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 223
    return-void

    .line 192
    .end local v0    # "bytesInQueue":I
    .end local v1    # "rateBytes":I
    .end local v2    # "available":I
    .end local v3    # "count":I
    .end local v6    # "remaining":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb with odd length queue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected absorbBits(II)V
    .locals 4
    .param p1, "data"    # I
    .param p2, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "bits"
        }
    .end annotation

    .line 227
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/4 v1, 0x7

    if-gt p2, v1, :cond_2

    .line 231
    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 235
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v1, :cond_0

    .line 240
    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    .line 241
    .local v1, "mask":I
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v2, v2, 0x3

    and-int v3, p1, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 244
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 245
    return-void

    .line 237
    .end local v1    # "mask":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb with odd length queue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'bits\' must be in the range 1 to 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    .line 441
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 91
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    .line 93
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->reset()V

    .line 95
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method protected doFinal([BIBI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "partialByte"    # B
    .param p4, "partialBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "partialByte",
            "partialBits"
        }
    .end annotation

    .line 103
    if-lez p4, :cond_0

    .line 105
    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorbBits(II)V

    .line 108
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    .line 110
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->reset()V

    .line 112
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 71
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keccak-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 127
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    .line 117
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->init(I)V

    .line 118
    return-void
.end method

.method protected squeeze([BIJ)V
    .locals 9
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "outputLength"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "offset",
            "outputLength"
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v0, :cond_0

    .line 282
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->padAndSwitchToSqueezingPhase()V

    .line 285
    :cond_0
    const-wide/16 v0, 0x8

    rem-long v2, p3, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 290
    const-wide/16 v2, 0x0

    .line 291
    .local v2, "i":J
    :goto_0
    cmp-long v4, v2, p3

    if-gez v4, :cond_2

    .line 293
    iget v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    if-nez v4, :cond_1

    .line 295
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    .line 297
    :cond_1
    iget v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    int-to-long v4, v4

    sub-long v6, p3, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 298
    .local v5, "partialBlock":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v6, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iget v7, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x8

    div-long v7, v2, v0

    long-to-int v8, v7

    add-int/2addr v8, p2

    div-int/lit8 v7, v5, 0x8

    invoke-static {v4, v6, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 300
    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 301
    .end local v5    # "partialBlock":I
    goto :goto_0

    .line 302
    :cond_2
    return-void

    .line 287
    .end local v2    # "i":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "outputLength not a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(B)V
    .locals 0
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorb(B)V

    .line 82
    return-void
.end method

.method public update([BII)V
    .locals 0
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    .line 87
    return-void
.end method
