.class public final Lorg/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source "TwofishEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final GF256_FDBK:I = 0x169

.field private static final GF256_FDBK_2:I = 0xb4

.field private static final GF256_FDBK_4:I = 0x5a

.field private static final INPUT_WHITEN:I = 0x0

.field private static final MAX_KEY_BITS:I = 0x100

.field private static final MAX_ROUNDS:I = 0x10

.field private static final OUTPUT_WHITEN:I = 0x4

.field private static final P:[[B

.field private static final P_00:I = 0x1

.field private static final P_01:I = 0x0

.field private static final P_02:I = 0x0

.field private static final P_03:I = 0x1

.field private static final P_04:I = 0x1

.field private static final P_10:I = 0x0

.field private static final P_11:I = 0x0

.field private static final P_12:I = 0x1

.field private static final P_13:I = 0x1

.field private static final P_14:I = 0x0

.field private static final P_20:I = 0x1

.field private static final P_21:I = 0x1

.field private static final P_22:I = 0x0

.field private static final P_23:I = 0x0

.field private static final P_24:I = 0x0

.field private static final P_30:I = 0x0

.field private static final P_31:I = 0x1

.field private static final P_32:I = 0x1

.field private static final P_33:I = 0x0

.field private static final P_34:I = 0x1

.field private static final ROUNDS:I = 0x10

.field private static final ROUND_SUBKEYS:I = 0x8

.field private static final RS_GF_FDBK:I = 0x14d

.field private static final SK_BUMP:I = 0x1010101

.field private static final SK_ROTL:I = 0x9

.field private static final SK_STEP:I = 0x2020202

.field private static final TOTAL_SUBKEYS:I = 0x28


# instance fields
.field private encrypting:Z

.field private gMDS0:[I

.field private gMDS1:[I

.field private gMDS2:[I

.field private gMDS3:[I

.field private gSBox:[I

.field private gSubKeys:[I

.field private k64Cnt:I

.field private workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0x100

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 11

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 213
    const/16 v1, 0x100

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    .line 214
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    .line 215
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    .line 216
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    .line 225
    iput v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 227
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 231
    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 234
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 235
    .local v3, "m1":[I
    new-array v4, v2, [I

    .line 236
    .local v4, "mX":[I
    new-array v2, v2, [I

    .line 239
    .local v2, "mY":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 241
    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v6, v6, v0

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    .line 242
    .local v6, "j":I
    aput v6, v3, v0

    .line 243
    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v4, v0

    .line 244
    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v2, v0

    .line 246
    sget-object v7, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aget-byte v7, v7, v5

    and-int/lit16 v6, v7, 0xff

    .line 247
    aput v6, v3, v8

    .line 248
    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v4, v8

    .line 249
    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v2, v8

    .line 251
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v9, v3, v8

    aget v10, v4, v8

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v2, v8

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v10, v2, v8

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v5

    .line 254
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v9, v2, v0

    aget v10, v2, v0

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v4, v0

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v10, v3, v0

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v5

    .line 257
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v9, v4, v8

    aget v10, v2, v8

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v3, v8

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v8, v2, v8

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v8, v9

    aput v8, v7, v5

    .line 260
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v8, v4, v0

    aget v9, v3, v0

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v2, v0

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v4, v0

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v7, v5

    .line 239
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 263
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    return-void
.end method

.method private F32(I[I)I
    .locals 17
    .param p1, "x"    # I
    .param p2, "k32"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "k32"
        }
    .end annotation

    .line 533
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v1

    .line 534
    .local v1, "b0":I
    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v2

    .line 535
    .local v2, "b1":I
    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v3

    .line 536
    .local v3, "b2":I
    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v4

    .line 537
    .local v4, "b3":I
    const/4 v5, 0x0

    aget v6, p2, v5

    .line 538
    .local v6, "k0":I
    const/4 v7, 0x1

    aget v8, p2, v7

    .line 539
    .local v8, "k1":I
    const/4 v9, 0x2

    aget v9, p2, v9

    .line 540
    .local v9, "k2":I
    const/4 v10, 0x3

    aget v11, p2, v10

    .line 542
    .local v11, "k3":I
    const/4 v12, 0x0

    .line 543
    .local v12, "result":I
    iget v13, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v10, v13

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 546
    :pswitch_0
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v13, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v5

    aget-byte v13, v13, v1

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v10, v10, v13

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v14, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v14, v5

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    .line 547
    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v14

    xor-int/2addr v5, v14

    aget v5, v13, v5

    xor-int/2addr v5, v10

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v13, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v7

    aget-byte v13, v13, v3

    and-int/lit16 v13, v13, 0xff

    .line 548
    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v10, v10, v13

    xor-int/2addr v5, v10

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v13, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v13, v7

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    .line 549
    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v7, v13

    aget v7, v10, v7

    xor-int v12, v5, v7

    .line 550
    goto/16 :goto_0

    .line 552
    :pswitch_1
    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v7

    aget-byte v10, v10, v1

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v13

    xor-int v1, v10, v13

    .line 553
    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v5

    aget-byte v10, v10, v2

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v13

    xor-int v2, v10, v13

    .line 554
    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v5

    aget-byte v10, v10, v3

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v13

    xor-int v3, v10, v13

    .line 555
    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v7

    aget-byte v10, v10, v4

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int v4, v10, v13

    .line 557
    :pswitch_2
    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v7

    aget-byte v10, v10, v1

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v13

    xor-int v1, v10, v13

    .line 558
    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v7

    aget-byte v10, v10, v2

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v13

    xor-int v2, v10, v13

    .line 559
    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v5

    aget-byte v10, v10, v3

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v13

    xor-int v3, v10, v13

    .line 560
    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v5

    aget-byte v10, v10, v4

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int v4, v10, v13

    .line 562
    :pswitch_3
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v13, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v5

    sget-object v14, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v14, v14, v5

    aget-byte v14, v14, v1

    and-int/lit16 v14, v14, 0xff

    .line 563
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v10, v10, v13

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v14, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v14, v14, v5

    sget-object v15, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v15, v15, v7

    aget-byte v15, v15, v2

    and-int/lit16 v15, v15, 0xff

    .line 564
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v16

    xor-int v15, v15, v16

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v13, v13, v14

    xor-int/2addr v10, v13

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v14, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v14, v14, v7

    sget-object v15, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v15, v5

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    .line 565
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v15

    xor-int/2addr v5, v15

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int/2addr v5, v14

    aget v5, v13, v5

    xor-int/2addr v5, v10

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v13, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v7

    sget-object v14, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v14, v7

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    .line 566
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v14

    xor-int/2addr v7, v14

    aget-byte v7, v13, v7

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v7, v13

    aget v7, v10, v7

    xor-int v12, v5, v7

    .line 569
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private Fe32_0(I)I
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Fe32_3(I)I
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private LFSR1(I)I
    .locals 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 616
    shr-int/lit8 v0, p1, 0x1

    .line 617
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0xb4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    .line 616
    return v0
.end method

.method private LFSR2(I)I
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 622
    shr-int/lit8 v0, p1, 0x2

    .line 623
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0xb4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    .line 624
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const/16 v2, 0x5a

    :cond_1
    xor-int/2addr v0, v2

    .line 622
    return v0
.end method

.method private Mx_X(I)I
    .locals 1
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v0

    xor-int/2addr v0, p1

    return v0
.end method

.method private Mx_Y(I)I
    .locals 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 634
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private RS_MDS_Encode(II)I
    .locals 3
    .param p1, "k0"    # I
    .param p2, "k1"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k0",
            "k1"
        }
    .end annotation

    .line 583
    move v0, p2

    .line 584
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 586
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v0

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "i":I
    :cond_0
    xor-int/2addr v0, p1

    .line 589
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 591
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v0

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 594
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private RS_rem(I)I
    .locals 5
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 606
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 607
    .local v0, "b":I
    shl-int/lit8 v1, v0, 0x1

    .line 608
    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x14d

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 609
    .local v1, "g2":I
    ushr-int/lit8 v2, v0, 0x1

    .line 610
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    const/16 v3, 0xa6

    :cond_1
    xor-int/2addr v2, v3

    xor-int/2addr v2, v1

    .line 611
    .local v2, "g3":I
    shl-int/lit8 v3, p1, 0x8

    shl-int/lit8 v4, v2, 0x18

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x10

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x8

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    return v3
.end method

.method private b0(I)I
    .locals 1
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 639
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private b1(I)I
    .locals 1
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 644
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b2(I)I
    .locals 1
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 649
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b3(I)I
    .locals 1
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 654
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .locals 17
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "srcIndex",
            "dst",
            "dstIndex"
        }
    .end annotation

    .line 498
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    xor-int/2addr v4, v5

    .line 499
    .local v4, "x2":I
    add-int/lit8 v5, p2, 0x4

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    xor-int/2addr v5, v6

    .line 500
    .local v5, "x3":I
    add-int/lit8 v6, p2, 0x8

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 501
    .local v6, "x0":I
    add-int/lit8 v7, p2, 0xc

    invoke-static {v1, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    xor-int/2addr v7, v8

    .line 503
    .local v7, "x1":I
    const/16 v8, 0x27

    .line 505
    .local v8, "k":I
    const/4 v9, 0x0

    .local v9, "r":I
    :goto_0
    const/16 v10, 0x10

    const/4 v11, 0x1

    if-ge v9, v10, :cond_0

    .line 507
    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v10

    .line 508
    .local v10, "t0":I
    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v12

    .line 509
    .local v12, "t1":I
    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v13, v10

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v15, v8, -0x1

    .end local v8    # "k":I
    .local v15, "k":I
    aget v8, v14, v8

    add-int/2addr v13, v8

    xor-int/2addr v7, v13

    .line 510
    invoke-static {v6, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v8

    add-int v13, v10, v12

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v16, v15, -0x1

    .end local v15    # "k":I
    .local v16, "k":I
    aget v14, v14, v15

    add-int/2addr v13, v14

    xor-int v6, v8, v13

    .line 511
    invoke-static {v7, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    .line 513
    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v8

    .line 514
    .end local v10    # "t0":I
    .local v8, "t0":I
    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v10

    .line 515
    .end local v12    # "t1":I
    .local v10, "t1":I
    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v8

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v14, v16, -0x1

    .end local v16    # "k":I
    .local v14, "k":I
    aget v13, v13, v16

    add-int/2addr v12, v13

    xor-int/2addr v5, v12

    .line 516
    invoke-static {v4, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    add-int v13, v8, v10

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v16, v14, -0x1

    .end local v14    # "k":I
    .restart local v16    # "k":I
    aget v14, v15, v14

    add-int/2addr v13, v14

    xor-int v4, v12, v13

    .line 517
    invoke-static {v5, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v5

    .line 505
    add-int/lit8 v9, v9, 0x2

    move/from16 v8, v16

    goto :goto_0

    .line 520
    .end local v9    # "r":I
    .end local v10    # "t1":I
    .end local v16    # "k":I
    .local v8, "k":I
    :cond_0
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    xor-int/2addr v9, v6

    invoke-static {v9, v2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 521
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget v9, v9, v11

    xor-int/2addr v9, v7

    add-int/lit8 v10, v3, 0x4

    invoke-static {v9, v2, v10}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 522
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    xor-int/2addr v9, v4

    add-int/lit8 v10, v3, 0x8

    invoke-static {v9, v2, v10}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 523
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v9, v5

    add-int/lit8 v10, v3, 0xc

    invoke-static {v9, v2, v10}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 524
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 17
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "srcIndex",
            "dst",
            "dstIndex"
        }
    .end annotation

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    xor-int/2addr v4, v5

    .line 460
    .local v4, "x0":I
    add-int/lit8 v5, p2, 0x4

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    .line 461
    .local v5, "x1":I
    add-int/lit8 v6, p2, 0x8

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    xor-int/2addr v6, v8

    .line 462
    .local v6, "x2":I
    add-int/lit8 v8, p2, 0xc

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v8, v9

    .line 464
    .local v8, "x3":I
    const/16 v9, 0x8

    .line 466
    .local v9, "k":I
    const/4 v10, 0x0

    .local v10, "r":I
    :goto_0
    const/16 v11, 0x10

    if-ge v10, v11, :cond_0

    .line 468
    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v11

    .line 469
    .local v11, "t0":I
    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v12

    .line 470
    .local v12, "t1":I
    add-int v13, v11, v12

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v15, v9, 0x1

    .end local v9    # "k":I
    .local v15, "k":I
    aget v9, v14, v9

    add-int/2addr v13, v9

    xor-int/2addr v6, v13

    .line 471
    invoke-static {v6, v7}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    .line 472
    invoke-static {v8, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v9

    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v13, v11

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "k":I
    .local v16, "k":I
    aget v14, v14, v15

    add-int/2addr v13, v14

    xor-int v8, v9, v13

    .line 474
    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v9

    .line 475
    .end local v11    # "t0":I
    .local v9, "t0":I
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v11

    .line 476
    .end local v12    # "t1":I
    .local v11, "t1":I
    add-int v12, v9, v11

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v14, v16, 0x1

    .end local v16    # "k":I
    .local v14, "k":I
    aget v13, v13, v16

    add-int/2addr v12, v13

    xor-int/2addr v4, v12

    .line 477
    invoke-static {v4, v7}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v4

    .line 478
    invoke-static {v5, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    mul-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v9

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v16, v14, 0x1

    .end local v14    # "k":I
    .restart local v16    # "k":I
    aget v14, v15, v14

    add-int/2addr v13, v14

    xor-int v5, v12, v13

    .line 466
    add-int/lit8 v10, v10, 0x2

    move/from16 v9, v16

    goto :goto_0

    .line 481
    .end local v10    # "r":I
    .end local v11    # "t1":I
    .end local v16    # "k":I
    .local v9, "k":I
    :cond_0
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x4

    aget v7, v7, v10

    xor-int/2addr v7, v6

    invoke-static {v7, v2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 482
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x5

    aget v7, v7, v10

    xor-int/2addr v7, v8

    add-int/lit8 v10, v3, 0x4

    invoke-static {v7, v2, v10}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 483
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x6

    aget v7, v7, v10

    xor-int/2addr v7, v4

    add-int/lit8 v10, v3, 0x8

    invoke-static {v7, v2, v10}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 484
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x7

    aget v7, v7, v10

    xor-int/2addr v7, v5

    add-int/lit8 v10, v3, 0xc

    invoke-static {v7, v2, v10}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 485
    return-void
.end method

.method private setKey([B)V
    .locals 21
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 362
    .local v3, "k32e":[I
    new-array v4, v2, [I

    .line 364
    .local v4, "k32o":[I
    new-array v2, v2, [I

    .line 365
    .local v2, "sBoxKeys":[I
    const/16 v5, 0x28

    new-array v5, v5, [I

    iput-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    .line 371
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v7, 0x1

    if-ge v5, v6, :cond_0

    .line 373
    mul-int/lit8 v6, v5, 0x8

    .line 375
    .local v6, "p":I
    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v3, v5

    .line 376
    add-int/lit8 v8, v6, 0x4

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v4, v5

    .line 378
    iget v8, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    sub-int/2addr v8, v7

    sub-int/2addr v8, v5

    aget v7, v3, v5

    aget v9, v4, v5

    invoke-direct {v0, v7, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v7

    aput v7, v2, v8

    .line 371
    .end local v6    # "p":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 382
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    const/16 v6, 0x14

    if-ge v5, v6, :cond_1

    .line 384
    const v6, 0x2020202

    mul-int v6, v6, v5

    .line 385
    .local v6, "q":I
    invoke-direct {v0, v6, v3}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v8

    .line 386
    .local v8, "A":I
    const v9, 0x1010101

    add-int/2addr v9, v6

    invoke-direct {v0, v9, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v9

    .line 387
    .local v9, "B":I
    const/16 v10, 0x8

    invoke-static {v9, v10}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v9

    .line 388
    add-int/2addr v8, v9

    .line 389
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v11, v5, 0x2

    aput v8, v10, v11

    .line 390
    add-int/2addr v8, v9

    .line 391
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v11, v5, 0x2

    add-int/2addr v11, v7

    shl-int/lit8 v12, v8, 0x9

    ushr-int/lit8 v13, v8, 0x17

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 382
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 397
    .end local v5    # "i":I
    .end local v6    # "q":I
    .end local v8    # "A":I
    .end local v9    # "B":I
    :cond_1
    const/4 v5, 0x0

    aget v6, v2, v5

    .line 398
    .local v6, "k0":I
    aget v8, v2, v7

    .line 399
    .local v8, "k1":I
    const/4 v9, 0x2

    aget v9, v2, v9

    .line 400
    .local v9, "k2":I
    const/4 v10, 0x3

    aget v11, v2, v10

    .line 402
    .local v11, "k3":I
    const/16 v12, 0x400

    new-array v12, v12, [I

    iput-object v12, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    .line 403
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    const/16 v13, 0x100

    if-ge v12, v13, :cond_2

    .line 405
    move v13, v12

    .local v13, "b3":I
    move v14, v12

    .local v14, "b2":I
    move v15, v12

    .local v15, "b1":I
    move/from16 v16, v12

    .line 406
    .local v16, "b0":I
    const/16 v17, 0x0

    iget v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v5, v10

    packed-switch v5, :pswitch_data_0

    const/16 v19, 0x1

    goto/16 :goto_5

    :pswitch_0
    const/16 v19, 0x1

    goto/16 :goto_3

    :pswitch_1
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 409
    :pswitch_2
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v18, v12, 0x2

    const/16 v19, 0x1

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v20, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v20, v20, v17

    aget-byte v10, v20, v16

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v10, v10, v20

    aget v7, v7, v10

    aput v7, v5, v18

    .line 410
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v7, v12, 0x2

    add-int/lit8 v7, v7, 0x1

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v18, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v18, v18, v17

    aget-byte v1, v18, v15

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v18

    xor-int v1, v1, v18

    aget v1, v10, v1

    aput v1, v5, v7

    .line 411
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v5, v12, 0x2

    add-int/lit16 v5, v5, 0x200

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v19

    aget-byte v10, v10, v14

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v18

    xor-int v10, v10, v18

    aget v7, v7, v10

    aput v7, v1, v5

    .line 412
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v5, v12, 0x2

    add-int/lit16 v5, v5, 0x201

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v19

    aget-byte v10, v10, v13

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v18

    xor-int v10, v10, v18

    aget v7, v7, v10

    aput v7, v1, v5

    .line 413
    goto/16 :goto_5

    .line 415
    :pswitch_3
    const/16 v19, 0x1

    sget-object v1, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v19

    aget-byte v1, v1, v16

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v5

    xor-int v16, v1, v5

    .line 416
    sget-object v1, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v17

    aget-byte v1, v1, v15

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v5

    xor-int v15, v1, v5

    .line 417
    sget-object v1, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v17

    aget-byte v1, v1, v14

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v5

    xor-int v14, v1, v5

    .line 418
    sget-object v1, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v19

    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v5

    xor-int v13, v1, v5

    .line 421
    :goto_3
    sget-object v1, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v19

    aget-byte v1, v1, v16

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v5

    xor-int v16, v1, v5

    .line 422
    sget-object v1, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v19

    aget-byte v1, v1, v15

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v5

    xor-int v15, v1, v5

    .line 423
    sget-object v1, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v17

    aget-byte v1, v1, v14

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v5

    xor-int v14, v1, v5

    .line 424
    sget-object v1, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v17

    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v5

    xor-int v13, v1, v5

    .line 427
    :goto_4
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v5, v12, 0x2

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v17

    sget-object v18, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v18, v18, v17

    move-object/from16 v20, v1

    aget-byte v1, v18, v16

    and-int/lit16 v1, v1, 0xff

    .line 428
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v18

    xor-int v1, v1, v18

    aget-byte v1, v10, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v10

    xor-int/2addr v1, v10

    aget v1, v7, v1

    aput v1, v20, v5

    .line 429
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v5, v12, 0x2

    add-int/lit8 v5, v5, 0x1

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v17

    sget-object v18, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v18, v18, v19

    move-object/from16 v20, v1

    aget-byte v1, v18, v15

    and-int/lit16 v1, v1, 0xff

    .line 430
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v18

    xor-int v1, v1, v18

    aget-byte v1, v10, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v10

    xor-int/2addr v1, v10

    aget v1, v7, v1

    aput v1, v20, v5

    .line 431
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v5, v12, 0x2

    add-int/lit16 v5, v5, 0x200

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v19

    sget-object v18, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v18, v18, v17

    move-object/from16 v20, v1

    aget-byte v1, v18, v14

    and-int/lit16 v1, v1, 0xff

    .line 432
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v18

    xor-int v1, v1, v18

    aget-byte v1, v10, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v10

    xor-int/2addr v1, v10

    aget v1, v7, v1

    aput v1, v20, v5

    .line 433
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v5, v12, 0x2

    add-int/lit16 v5, v5, 0x201

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v19

    sget-object v18, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v18, v18, v19

    move-object/from16 v20, v1

    aget-byte v1, v18, v13

    and-int/lit16 v1, v1, 0xff

    .line 434
    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v18

    xor-int v1, v1, v18

    aget-byte v1, v10, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v10

    xor-int/2addr v1, v10

    aget v1, v7, v1

    aput v1, v20, v5

    .line 403
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x3

    goto/16 :goto_2

    .line 443
    .end local v12    # "i":I
    .end local v13    # "b3":I
    .end local v14    # "b2":I
    .end local v15    # "b1":I
    .end local v16    # "b0":I
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 306
    const-string v0, "Twofish"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 352
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encrypting",
            "params"
        }
    .end annotation

    .line 277
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 279
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 280
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 282
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    .line 283
    .local v0, "keyBits":I
    sparse-switch v0, :sswitch_data_0

    .line 290
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key length not 128/192/256 bits."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :sswitch_0
    nop

    .line 293
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v1, v2, v0, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 295
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 296
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 298
    return-void

    .line 301
    .end local v0    # "keyBits":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to Twofish init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xc0 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_3

    .line 320
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 325
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 330
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    .line 339
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 327
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Twofish not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 348
    :cond_0
    return-void
.end method
