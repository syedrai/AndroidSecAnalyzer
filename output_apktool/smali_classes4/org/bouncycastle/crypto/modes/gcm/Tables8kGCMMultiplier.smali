.class public Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private T:[[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 9
    .param p1, "H"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "H"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/16 v1, 0x100

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v1, v0, v3

    const/4 v4, 0x0

    aput v2, v0, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->areEqual([B[B)B

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    return-void

    .line 22
    :cond_1
    :goto_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([B[B)V

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 27
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    aget-object v4, v4, v0

    .line 31
    .local v4, "t":[[J
    if-nez v0, :cond_2

    .line 34
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    aget-object v6, v4, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    .line 35
    aget-object v5, v4, v3

    aget-object v6, v4, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP7([J[J)V

    goto :goto_2

    .line 40
    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    aget-object v5, v5, v3

    aget-object v6, v4, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([J[J)V

    .line 43
    :goto_2
    const/4 v5, 0x2

    .local v5, "n":I
    :goto_3
    if-ge v5, v1, :cond_3

    .line 46
    shr-int/lit8 v6, v5, 0x1

    aget-object v6, v4, v6

    aget-object v7, v4, v5

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    .line 49
    aget-object v6, v4, v5

    aget-object v7, v4, v3

    add-int/lit8 v8, v5, 0x1

    aget-object v8, v4, v8

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    .line 43
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 25
    .end local v4    # "t":[[J
    .end local v5    # "n":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public multiplyH([B)V
    .locals 23
    .param p1, "x"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .local v2, "T0":[[J
    iget-object v4, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 67
    .local v4, "T1":[[J
    const/16 v6, 0xe

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v2, v6

    .line 68
    .local v6, "u":[J
    const/16 v7, 0xf

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v4, v7

    .line 69
    .local v7, "v":[J
    aget-wide v8, v6, v3

    aget-wide v10, v7, v3

    xor-long/2addr v8, v10

    .local v8, "z0":J
    aget-wide v10, v6, v5

    aget-wide v12, v7, v5

    xor-long/2addr v10, v12

    .line 71
    .local v10, "z1":J
    const/16 v12, 0xc

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_0

    .line 73
    aget-byte v13, v1, v12

    and-int/lit16 v13, v13, 0xff

    aget-object v6, v2, v13

    .line 74
    add-int/lit8 v13, v12, 0x1

    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    aget-object v7, v4, v13

    .line 76
    const/16 v13, 0x30

    shl-long v14, v10, v13

    .line 77
    .local v14, "c":J
    aget-wide v16, v6, v5

    aget-wide v18, v7, v5

    xor-long v16, v16, v18

    const/16 v18, 0x10

    ushr-long v19, v10, v18

    shl-long v21, v8, v13

    or-long v19, v19, v21

    xor-long v10, v16, v19

    .line 78
    aget-wide v16, v6, v3

    aget-wide v19, v7, v3

    xor-long v16, v16, v19

    ushr-long v18, v8, v18

    xor-long v16, v16, v18

    xor-long v16, v16, v14

    ushr-long v18, v14, v5

    xor-long v16, v16, v18

    const/4 v13, 0x2

    ushr-long v18, v14, v13

    xor-long v16, v16, v18

    const/4 v13, 0x7

    ushr-long v18, v14, v13

    xor-long v8, v16, v18

    .line 71
    .end local v14    # "c":J
    add-int/lit8 v12, v12, -0x2

    goto :goto_0

    .line 81
    .end local v12    # "i":I
    :cond_0
    invoke-static {v8, v9, v1, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 82
    const/16 v3, 0x8

    invoke-static {v10, v11, v1, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 83
    return-void
.end method
