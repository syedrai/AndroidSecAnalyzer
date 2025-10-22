.class Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
.super Ljava/lang/Object;
.source "SABEREngine.java"


# static fields
.field public static final SABER_EP:I = 0xa

.field private static final SABER_HASHBYTES:I = 0x20

.field private static final SABER_KEYBYTES:I = 0x20

.field public static final SABER_N:I = 0x100

.field private static final SABER_NOISE_SEEDBYTES:I = 0x20

.field private static final SABER_SEEDBYTES:I = 0x20


# instance fields
.field private final SABER_BYTES_CCA_DEC:I

.field private final SABER_EQ:I

.field private final SABER_ET:I

.field private final SABER_INDCPA_PUBLICKEYBYTES:I

.field private final SABER_INDCPA_SECRETKEYBYTES:I

.field private final SABER_L:I

.field private final SABER_MU:I

.field private final SABER_POLYBYTES:I

.field private final SABER_POLYCOINBYTES:I

.field private final SABER_POLYCOMPRESSEDBYTES:I

.field private final SABER_POLYVECBYTES:I

.field private final SABER_POLYVECCOMPRESSEDBYTES:I

.field private final SABER_PUBLICKEYBYTES:I

.field private final SABER_SCALEBYTES_KEM:I

.field private final SABER_SECRETKEYBYTES:I

.field private final defaultKeySize:I

.field private final h1:I

.field private final h2:I

.field private final poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

.field protected final symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

.field private final usingAES:Z

.field protected final usingEffectiveMasking:Z

.field private final utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "defaultKeySize"    # I
    .param p3, "usingAES"    # Z
    .param p4, "usingEffectiveMasking"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "defaultKeySize",
            "usingAES",
            "usingEffectiveMasking"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    .line 133
    iput-boolean p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->usingAES:Z

    .line 134
    iput-boolean p4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->usingEffectiveMasking:Z

    .line 136
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    .line 137
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/16 v3, 0xa

    if-ne p1, v0, :cond_0

    .line 139
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    .line 140
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    goto :goto_0

    .line 142
    :cond_0
    if-ne p1, v1, :cond_1

    .line 144
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    .line 145
    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    .line 150
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    .line 153
    :goto_0
    if-eqz p3, :cond_2

    .line 155
    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    goto :goto_1

    .line 159
    :cond_2
    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    .line 162
    :goto_1
    if-eqz p4, :cond_3

    .line 164
    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    .line 165
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    goto :goto_2

    .line 169
    :cond_3
    const/16 v0, 0xd

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    .line 170
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    mul-int/lit16 v0, v0, 0x100

    div-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    .line 173
    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    mul-int/lit16 v0, v0, 0x100

    div-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYBYTES:I

    .line 174
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYBYTES:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECBYTES:I

    .line 175
    const/16 v0, 0x140

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOMPRESSEDBYTES:I

    .line 176
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOMPRESSEDBYTES:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    .line 177
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    mul-int/lit16 v0, v0, 0x100

    div-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SCALEBYTES_KEM:I

    .line 178
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    .line 179
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECBYTES:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    .line 180
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_PUBLICKEYBYTES:I

    .line 181
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    .line 182
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SCALEBYTES_KEM:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    .line 184
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    sub-int/2addr v0, v3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    .line 185
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    rsub-int/lit8 v0, v0, 0xa

    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    rsub-int v0, v0, 0x100

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h2:I

    .line 186
    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/saber/Utils;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    .line 187
    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/saber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    .line 188
    return-void
.end method

.method static cmov([B[BIIB)V
    .locals 4
    .param p0, "r"    # [B
    .param p1, "x"    # [B
    .param p2, "x_offset"    # I
    .param p3, "len"    # I
    .param p4, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "x",
            "x_offset",
            "len",
            "b"
        }
    .end annotation

    .line 399
    neg-int v0, p4

    int-to-byte p4, v0

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 401
    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    aget-byte v3, p0, v0

    xor-int/2addr v2, v3

    and-int/2addr v2, p4

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method

.method private indcpa_kem_dec([B[B[B)V
    .locals 9
    .param p1, "sk"    # [B
    .param p2, "ciphertext"    # [B
    .param p3, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sk",
            "ciphertext",
            "m"
        }
    .end annotation

    .line 322
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/16 v4, 0x100

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v0, v2, v5

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 323
    .local v0, "s":[[S
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v2, v1, v5

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    .line 324
    .local v1, "b":[[S
    new-array v2, v4, [S

    .line 325
    .local v2, "v":[S
    new-array v3, v4, [S

    .line 328
    .local v3, "cm":[S
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v6, p1, v5, v0}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECq([BI[[S)V

    .line 329
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v5, p2, v1}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECp([B[[S)V

    .line 330
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v5, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->InnerProd([[S[[S[S)V

    .line 331
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    invoke-virtual {v5, p2, v6, v3}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLT([BI[S)V

    .line 333
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 335
    aget-short v6, v2, v5

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h2:I

    add-int/2addr v6, v7

    aget-short v7, v3, v5

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    rsub-int/lit8 v8, v8, 0xa

    shl-int/2addr v7, v8

    sub-int/2addr v6, v7

    const v7, 0xffff

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x9

    int-to-short v6, v6

    aput-short v6, v2, v5

    .line 333
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v4, p3, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLmsg2BS([B[S)V

    .line 339
    return-void
.end method

.method private indcpa_kem_enc([B[B[B[B)V
    .locals 18
    .param p1, "m"    # [B
    .param p2, "seed_sp"    # [B
    .param p3, "pk"    # [B
    .param p4, "ciphertext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "seed_sp",
            "pk",
            "ciphertext"
        }
    .end annotation

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x2

    const/16 v7, 0x100

    aput v7, v5, v6

    const/4 v8, 0x1

    aput v4, v5, v8

    const/4 v4, 0x0

    aput v3, v5, v4

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    .line 251
    .local v3, "A":[[[S
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v9, v6, [I

    aput v7, v9, v8

    aput v5, v9, v4

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    .line 252
    .local v5, "sp":[[S
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v10, v6, [I

    aput v7, v10, v8

    aput v9, v10, v4

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    .line 253
    .local v9, "bp":[[S
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v6, v6, [I

    aput v7, v6, v8

    aput v10, v6, v4

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[S

    .line 254
    .local v6, "b":[[S
    new-array v8, v7, [S

    .line 255
    .local v8, "mp":[S
    new-array v10, v7, [S

    .line 257
    .local v10, "vp":[S
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    array-length v12, v1

    invoke-static {v1, v11, v12}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 259
    .local v11, "seed_A":[B
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v12, v3, v11}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenMatrix([[[S[B)V

    .line 260
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    move-object/from16 v13, p2

    invoke-virtual {v12, v5, v13}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenSecret([[S[B)V

    .line 261
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v12, v3, v5, v9, v4}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->MatrixVectorMul([[[S[[S[[SI)V

    .line 263
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    if-ge v4, v12, :cond_1

    .line 265
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v7, :cond_0

    .line 267
    aget-object v15, v9, v4

    aget-object v16, v9, v4

    aget-short v16, v16, v12

    const v17, 0xffff

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int v16, v16, v14

    and-int v14, v16, v17

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    add-int/lit8 v7, v7, -0xa

    ushr-int v7, v14, v7

    int-to-short v7, v7

    aput-short v7, v15, v12

    .line 265
    add-int/lit8 v12, v12, 0x1

    const/16 v7, 0x100

    goto :goto_1

    .line 263
    :cond_0
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x100

    goto :goto_0

    .line 271
    .end local v12    # "j":I
    :cond_1
    const v17, 0xffff

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v7, v2, v9}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECp2BS([B[[S)V

    .line 272
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v7, v1, v6}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECp([B[[S)V

    .line 273
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v7, v6, v5, v10}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->InnerProd([[S[[S[S)V

    .line 275
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    move-object/from16 v12, p1

    invoke-virtual {v7, v12, v8}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLmsg([B[S)V

    .line 277
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    const/16 v14, 0x100

    if-ge v7, v14, :cond_2

    .line 279
    aget-short v15, v10, v7

    aget-short v16, v8, v7

    shl-int/lit8 v16, v16, 0x9

    sub-int v15, v15, v16

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v15, v14

    and-int v14, v15, v17

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    rsub-int/lit8 v15, v15, 0xa

    ushr-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v10, v7

    .line 277
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 282
    :cond_2
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    invoke-virtual {v14, v2, v15, v10}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLT2BS([BI[S)V

    .line 283
    return-void
.end method

.method private indcpa_kem_keypair([B[BLjava/security/SecureRandom;)V
    .locals 12
    .param p1, "pk"    # [B
    .param p2, "sk"    # [B
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "sk",
            "random"
        }
    .end annotation

    .line 192
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x2

    const/16 v4, 0x100

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v1, v2, v5

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    .line 193
    .local v0, "A":[[[S
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v6, v3, [I

    aput v4, v6, v5

    aput v2, v6, v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    .line 194
    .local v2, "s":[[S
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    new-array v3, v3, [I

    aput v4, v3, v5

    aput v6, v3, v1

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    .line 196
    .local v3, "b":[[S
    const/16 v6, 0x20

    new-array v7, v6, [B

    .line 197
    .local v7, "seed_A":[B
    new-array v8, v6, [B

    .line 200
    .local v8, "seed_s":[B
    invoke-virtual {p3, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 202
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v9, v7, v7, v6, v6}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->prf([B[BII)V

    .line 204
    invoke-virtual {p3, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 206
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v6, v0, v7}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenMatrix([[[S[B)V

    .line 208
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v6, v2, v8}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenSecret([[S[B)V

    .line 210
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v6, v0, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->MatrixVectorMul([[[S[[S[[SI)V

    .line 212
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    if-ge v5, v6, :cond_1

    .line 214
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 216
    aget-object v9, v3, v5

    aget-object v10, v3, v5

    aget-short v10, v10, v6

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v10, v11

    const v11, 0xffff

    and-int/2addr v10, v11

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    add-int/lit8 v11, v11, -0xa

    ushr-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v9, v6

    .line 214
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 212
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 220
    .end local v6    # "j":I
    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v4, p2, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECq2BS([B[[S)V

    .line 221
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v4, p1, v3}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECp2BS([B[[S)V

    .line 222
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    array-length v6, v7

    invoke-static {v7, v1, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    return-void
.end method

.method static verify([B[BI)I
    .locals 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "len"
        }
    .end annotation

    .line 385
    const-wide/16 v0, 0x0

    .line 387
    .local v0, "r":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 388
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_0
    neg-long v3, v0

    const/16 v5, 0x3f

    ushr-long v0, v3, v5

    .line 391
    long-to-int v3, v0

    return v3
.end method


# virtual methods
.method public crypto_kem_dec([B[B[B)I
    .locals 9
    .param p1, "k"    # [B
    .param p2, "c"    # [B
    .param p3, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "c",
            "sk"
        }
    .end annotation

    .line 344
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    new-array v0, v0, [B

    .line 345
    .local v0, "cmp":[B
    const/16 v1, 0x40

    new-array v2, v1, [B

    .line 346
    .local v2, "buf":[B
    new-array v3, v1, [B

    .line 347
    .local v3, "kr":[B
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    array-length v5, p3

    invoke-static {p3, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 349
    .local v4, "pk":[B
    invoke-direct {p0, p3, p2, v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_dec([B[B[B)V

    .line 352
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x20

    if-ge v5, v6, :cond_0

    .line 354
    add-int/lit8 v6, v5, 0x20

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    sub-int/2addr v7, v1

    add-int/2addr v7, v5

    aget-byte v7, p3, v7

    aput-byte v7, v2, v6

    .line 352
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 357
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_g([B[B)V

    .line 359
    array-length v1, v3

    invoke-static {v3, v6, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {p0, v2, v1, v4, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_enc([B[B[B[B)V

    .line 361
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->verify([B[BI)I

    move-result v1

    .line 365
    .local v1, "fail":I
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v7, v3, p2, v6}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    .line 367
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    sub-int/2addr v7, v6

    int-to-byte v8, v1

    invoke-static {v3, p3, v7, v6, v8}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->cmov([B[BIIB)V

    .line 371
    new-array v6, v6, [B

    .line 373
    .local v6, "temp_k":[B
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v3, v8}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    .line 375
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 v7, v7, 0x8

    invoke-static {v6, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    return v8
.end method

.method public crypto_kem_enc([B[B[BLjava/security/SecureRandom;)I
    .locals 6
    .param p1, "c"    # [B
    .param p2, "k"    # [B
    .param p3, "pk"    # [B
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "k",
            "pk",
            "random"
        }
    .end annotation

    .line 287
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 288
    .local v1, "kr":[B
    new-array v0, v0, [B

    .line 290
    .local v0, "buf":[B
    const/16 v2, 0x20

    new-array v3, v2, [B

    .line 291
    .local v3, "nonce":[B
    invoke-virtual {p4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 294
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v3, v5}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    .line 295
    invoke-static {v3, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v4, v0, p3, v2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    .line 301
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v4, v1, v0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_g([B[B)V

    .line 306
    array-length v4, v1

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {p0, v0, v4, p3, p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_enc([B[B[B[B)V

    .line 308
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v4, v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    .line 312
    new-array v2, v2, [B

    .line 314
    .local v2, "temp_k":[B
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v4, v2, v1, v5}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    .line 315
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 v4, v4, 0x8

    invoke-static {v2, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    return v5
.end method

.method public crypto_kem_keypair([B[BLjava/security/SecureRandom;)I
    .locals 5
    .param p1, "pk"    # [B
    .param p2, "sk"    # [B
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "sk",
            "random"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_keypair([B[BLjava/security/SecureRandom;)V

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    if-ge v0, v1, :cond_0

    .line 232
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    add-int/2addr v1, v0

    aget-byte v2, p1, v0

    aput-byte v2, p2, v1

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    add-int/lit8 v2, v2, -0x40

    invoke-virtual {v1, p2, p1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    .line 239
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 240
    .local v2, "nonce":[B
    invoke-virtual {p3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 241
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    sub-int/2addr v3, v1

    array-length v1, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    return v4
.end method

.method public getCipherTextSize()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 1

    .line 122
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    return v0
.end method

.method public getPublicKeySize()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_PUBLICKEYBYTES:I

    return v0
.end method

.method public getSABER_EP()I
    .locals 1

    .line 56
    const/16 v0, 0xa

    return v0
.end method

.method public getSABER_ET()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    return v0
.end method

.method public getSABER_KEYBYTES()I
    .locals 1

    .line 61
    const/16 v0, 0x20

    return v0
.end method

.method public getSABER_L()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    return v0
.end method

.method public getSABER_MU()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    return v0
.end method

.method public getSABER_N()I
    .locals 1

    .line 51
    const/16 v0, 0x100

    return v0
.end method

.method public getSABER_NOISE_SEEDBYTES()I
    .locals 1

    .line 95
    const/16 v0, 0x20

    return v0
.end method

.method public getSABER_POLYBYTES()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYBYTES:I

    return v0
.end method

.method public getSABER_POLYCOINBYTES()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    return v0
.end method

.method public getSABER_POLYVECBYTES()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECBYTES:I

    return v0
.end method

.method public getSABER_SEEDBYTES()I
    .locals 1

    .line 85
    const/16 v0, 0x20

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getUtils()Lorg/bouncycastle/pqc/crypto/saber/Utils;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    return-object v0
.end method
