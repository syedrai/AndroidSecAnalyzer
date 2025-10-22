.class public Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;
.super Ljava/lang/Object;
.source "HQCParameters.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field static final GF_MUL_ORDER:I = 0xff

.field static final PARAM_M:I = 0x8

.field public static final hqc128:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

.field public static final hqc192:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

.field public static final hqc256:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;


# instance fields
.field private delta:I

.field private fft:I

.field private g:I

.field private generatorPoly:[I

.field private hqcEngine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

.field private k:I

.field private n:I

.field private n1:I

.field private n2:I

.field private final name:Ljava/lang/String;

.field private utilRejectionThreshold:I

.field private w:I

.field private we:I

.field private wr:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    const/16 v1, 0x1f

    new-array v13, v1, [I

    fill-array-data v13, :array_0

    const-string v1, "hqc-128"

    const/16 v2, 0x4505

    const/16 v3, 0x2e

    const/16 v4, 0x180

    const/16 v5, 0x10

    const/16 v6, 0x1f

    const/16 v7, 0xf

    const/16 v8, 0x42

    const/16 v9, 0x4b

    const/16 v10, 0x4b

    const v11, 0xffdb89

    const/4 v12, 0x4

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;-><init>(Ljava/lang/String;IIIIIIIIIII[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->hqc128:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    .line 12
    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    const/16 v0, 0x21

    new-array v14, v0, [I

    fill-array-data v14, :array_1

    const-string v2, "hqc-192"

    const v3, 0x8c0b

    const/16 v4, 0x38

    const/16 v5, 0x280

    const/16 v6, 0x18

    const/16 v7, 0x21

    const/16 v8, 0x10

    const/16 v9, 0x64

    const/16 v10, 0x72

    const/16 v11, 0x72

    const v12, 0xff7811

    const/4 v13, 0x5

    invoke-direct/range {v1 .. v14}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;-><init>(Ljava/lang/String;IIIIIIIIIII[I)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->hqc192:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    .line 15
    new-instance v2, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    const/16 v0, 0x3b

    new-array v15, v0, [I

    fill-array-data v15, :array_2

    const-string v3, "hqc-256"

    const v4, 0xe125

    const/16 v5, 0x5a

    const/16 v6, 0x280

    const/16 v7, 0x20

    const/16 v8, 0x3b

    const/16 v9, 0x1d

    const/16 v10, 0x83

    const/16 v11, 0x95

    const/16 v12, 0x95

    const v13, 0xffed0f

    const/4 v14, 0x5

    invoke-direct/range {v2 .. v15}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;-><init>(Ljava/lang/String;IIIIIIIIIII[I)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->hqc256:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    return-void

    nop

    :array_0
    .array-data 4
        0x59
        0x45
        0x99
        0x74
        0xb0
        0x75
        0x6f
        0x4b
        0x49
        0xe9
        0xf2
        0xe9
        0x41
        0xd2
        0x15
        0x8b
        0x67
        0xad
        0x43
        0x76
        0x69
        0xd2
        0xae
        0x6e
        0x4a
        0x45
        0xe4
        0x52
        0xff
        0xb5
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2d
        0xd8
        0xef
        0x18
        0xfd
        0x68
        0x1b
        0x28
        0x6b
        0x32
        0xa3
        0xd2
        0xe3
        0x86
        0xe0
        0x9e
        0x77
        0xd
        0x9e
        0x1
        0xee
        0xa4
        0x52
        0x2b
        0xf
        0xe8
        0xf6
        0x8e
        0x32
        0xbd
        0x1d
        0xe8
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x31
        0xa7
        0x31
        0x27
        0xc8
        0x79
        0x7c
        0x5b
        0xf0
        0x3f
        0x94
        0x47
        0x96
        0x7b
        0x57
        0x65
        0x20
        0xd7
        0x9f
        0x47
        0xc9
        0x73
        0x61
        0xd2
        0xba
        0xb7
        0x8d
        0xd9
        0x7b
        0xc
        0x1f
        0xf3
        0xb4
        0xdb
        0x98
        0xef
        0x63
        0x8d
        0x4
        0xf6
        0xbf
        0x90
        0x8
        0xe8
        0x2f
        0x1b
        0x8d
        0xb2
        0x82
        0x40
        0x7c
        0x2f
        0x27
        0xbc
        0xd8
        0x30
        0xc7
        0xbb
        0x1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIII[I)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "n1"    # I
    .param p4, "n2"    # I
    .param p5, "k"    # I
    .param p6, "g"    # I
    .param p7, "delta"    # I
    .param p8, "w"    # I
    .param p9, "wr"    # I
    .param p10, "we"    # I
    .param p11, "utilRejectionThreshold"    # I
    .param p12, "fft"    # I
    .param p13, "generatorPoly"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "n",
            "n1",
            "n2",
            "k",
            "g",
            "delta",
            "w",
            "wr",
            "we",
            "utilRejectionThreshold",
            "fft",
            "generatorPoly"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->name:Ljava/lang/String;

    .line 40
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->n:I

    .line 41
    move/from16 v2, p3

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->n1:I

    .line 42
    move/from16 v3, p4

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->n2:I

    .line 43
    move/from16 v4, p5

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->k:I

    .line 44
    move/from16 v6, p7

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->delta:I

    .line 45
    move/from16 v7, p8

    iput v7, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->w:I

    .line 46
    move/from16 v8, p9

    iput v8, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->wr:I

    .line 47
    move/from16 v9, p10

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->we:I

    .line 48
    move-object/from16 v12, p13

    iput-object v12, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->generatorPoly:[I

    .line 49
    move/from16 v5, p6

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->g:I

    .line 50
    move/from16 v10, p11

    iput v10, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->utilRejectionThreshold:I

    .line 51
    move/from16 v11, p12

    iput v11, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->fft:I

    .line 52
    new-instance v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    move v1, p2

    invoke-direct/range {v0 .. v12}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;-><init>(IIIIIIIIIII[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->hqcEngine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    .line 53
    return-void
.end method


# virtual methods
.method getDelta()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->delta:I

    return v0
.end method

.method getEngine()Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->hqcEngine:Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    return-object v0
.end method

.method getK()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->k:I

    return v0
.end method

.method getN()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->n:I

    return v0
.end method

.method getN1()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->n1:I

    return v0
.end method

.method getN1N2_BYTES()I
    .locals 2

    .line 111
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->n1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->n2:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method getN2()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->n2:I

    return v0
.end method

.method getN_BYTES()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->n:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method getSALT_SIZE_BYTES()I
    .locals 1

    .line 101
    const/16 v0, 0x10

    return v0
.end method

.method getSHA512_BYTES()I
    .locals 1

    .line 97
    const/16 v0, 0x40

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->k:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method getW()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->w:I

    return v0
.end method

.method getWe()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->we:I

    return v0
.end method

.method getWr()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->wr:I

    return v0
.end method
