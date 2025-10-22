.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.source "SPHINCSPlusEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sha2Engine"
.end annotation


# instance fields
.field private final bl:I

.field private final hmacBuf:[B

.field private final mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

.field private final msgDigest:Lorg/bouncycastle/crypto/Digest;

.field private final msgDigestBuf:[B

.field private msgMemo:Lorg/bouncycastle/util/Memoable;

.field private final sha256:Lorg/bouncycastle/crypto/Digest;

.field private final sha256Buf:[B

.field private sha256Memo:Lorg/bouncycastle/util/Memoable;

.field private final treeHMac:Lorg/bouncycastle/crypto/macs/HMac;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 3
    .param p1, "robust"    # Z
    .param p2, "n"    # I
    .param p3, "w"    # I
    .param p4, "d"    # I
    .param p5, "a"    # I
    .param p6, "k"    # I
    .param p7, "h"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "robust",
            "n",
            "w",
            "d",
            "a",
            "k",
            "h"
        }
    .end annotation

    .line 132
    invoke-direct/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;-><init>(ZIIIIII)V

    .line 124
    move v0, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "robust":Z
    .local v0, "h":I
    .local p2, "robust":Z
    .local p3, "n":I
    .local p4, "w":I
    .local p5, "d":I
    .local p6, "a":I
    .local p7, "k":I
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    .line 125
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Buf:[B

    .line 133
    const/16 v1, 0x10

    if-ne p3, v1, :cond_0

    .line 135
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    .line 136
    new-instance v1, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    .line 137
    new-instance v1, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    .line 138
    const/16 v1, 0x40

    iput v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bl:I

    goto :goto_0

    .line 142
    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    .line 143
    new-instance v1, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    .line 144
    new-instance v1, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    .line 145
    const/16 v1, 0x80

    iput v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bl:I

    .line 148
    :goto_0
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->hmacBuf:[B

    .line 149
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigestBuf:[B

    .line 150
    return-void
.end method

.method private compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 5
    .param p1, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adrs"
        }
    .end annotation

    .line 288
    const/16 v0, 0x16

    new-array v0, v0, [B

    .line 289
    .local v0, "rv":[B
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v2, 0x8

    invoke-static {v1, v2, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v2, 0x13

    const/16 v3, 0x9

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v2, 0xa

    const/16 v3, 0xc

    const/16 v4, 0x14

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    return-object v0
.end method


# virtual methods
.method public F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 4
    .param p1, "pkSeed"    # [B
    .param p2, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .param p3, "m1"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkSeed",
            "adrs",
            "m1"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    .line 173
    .local v0, "compressedADRS":[B
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->robust:Z

    if-eqz v1, :cond_0

    .line 175
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bitmask256([B[B)[B

    move-result-object p3

    .line 178
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/util/Memoable;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Memo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v1, v2}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 180
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 181
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p3

    invoke-interface {v1, p3, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 182
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Buf:[B

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 184
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Buf:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->N:I

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B
    .locals 5
    .param p1, "pkSeed"    # [B
    .param p2, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .param p3, "m1"    # [B
    .param p4, "m2"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkSeed",
            "adrs",
            "m1",
            "m2"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    .line 191
    .local v0, "compressedADRS":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/util/Memoable;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgMemo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v1, v2}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 193
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 194
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->robust:Z

    if-eqz v1, :cond_0

    .line 196
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bitmask([B[B[B)[B

    move-result-object v1

    .line 197
    .local v1, "m1m2":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 198
    .end local v1    # "m1m2":[B
    goto :goto_0

    .line 201
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p3

    invoke-interface {v1, p3, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 202
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p4

    invoke-interface {v1, p4, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 204
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigestBuf:[B

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 206
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigestBuf:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->N:I

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
    .locals 20
    .param p1, "prf"    # [B
    .param p2, "pkSeed"    # [B
    .param p3, "pkRoot"    # [B
    .param p4, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prf",
            "pkSeed",
            "pkRoot",
            "message"
        }
    .end annotation

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->A:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->K:I

    mul-int v5, v5, v6

    add-int/lit8 v5, v5, 0x7

    const/16 v6, 0x8

    div-int/2addr v5, v6

    .line 212
    .local v5, "forsMsgBytes":I
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->H:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->D:I

    div-int/2addr v7, v8

    .line 213
    .local v7, "leafBits":I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->H:I

    sub-int/2addr v8, v7

    .line 214
    .local v8, "treeBits":I
    add-int/lit8 v9, v7, 0x7

    div-int/2addr v9, v6

    .line 215
    .local v9, "leafBytes":I
    add-int/lit8 v10, v8, 0x7

    div-int/2addr v10, v6

    .line 216
    .local v10, "treeBytes":I
    add-int v11, v5, v9

    add-int/2addr v11, v10

    .line 217
    .local v11, "m":I
    new-array v12, v11, [B

    .line 218
    .local v12, "out":[B
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v13}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    new-array v13, v13, [B

    .line 220
    .local v13, "dig":[B
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v1

    const/4 v6, 0x0

    invoke-interface {v14, v1, v6, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 221
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v2

    invoke-interface {v14, v2, v6, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 222
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v3

    invoke-interface {v14, v3, v6, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 223
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v4

    invoke-interface {v14, v4, v6, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 224
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v14, v13, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 226
    invoke-static {v1, v2, v13}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v14

    invoke-virtual {v0, v14, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bitmask([B[B)[B

    move-result-object v12

    .line 230
    const/16 v14, 0x8

    new-array v14, v14, [B

    .line 231
    .local v14, "treeIndexBuf":[B
    rsub-int/lit8 v15, v10, 0x8

    invoke-static {v12, v5, v14, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    invoke-static {v14, v6}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v15

    .line 233
    .local v15, "treeIndex":J
    rsub-int/lit8 v17, v8, 0x40

    const-wide/16 v18, -0x1

    ushr-long v17, v18, v17

    move/from16 v19, v7

    .end local v7    # "leafBits":I
    .local v19, "leafBits":I
    and-long v6, v15, v17

    .line 235
    .end local v15    # "treeIndex":J
    .local v6, "treeIndex":J
    const/4 v15, 0x4

    new-array v15, v15, [B

    .line 236
    .local v15, "leafIndexBuf":[B
    add-int v0, v5, v10

    rsub-int/lit8 v1, v9, 0x4

    invoke-static {v12, v0, v15, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    const/4 v0, 0x0

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    .line 239
    .local v1, "leafIndex":I
    rsub-int/lit8 v16, v19, 0x20

    const/16 v17, -0x1

    ushr-int v16, v17, v16

    and-int v1, v1, v16

    .line 241
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    invoke-static {v12, v0, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v6, v7, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;-><init>(JI[B)V

    return-object v2
.end method

.method PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 5
    .param p1, "pkSeed"    # [B
    .param p2, "skSeed"    # [B
    .param p3, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkSeed",
            "skSeed",
            "adrs"
        }
    .end annotation

    .line 263
    array-length v0, p2

    .line 265
    .local v0, "n":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/util/Memoable;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Memo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v1, v2}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 267
    invoke-direct {p0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v1

    .line 269
    .local v1, "compressedADRS":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 270
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v3, p2

    invoke-interface {v2, p2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 271
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Buf:[B

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 273
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Buf:[B

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public PRF_msg([B[B[B)[B
    .locals 3
    .param p1, "prf"    # [B
    .param p2, "randomiser"    # [B
    .param p3, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prf",
            "randomiser",
            "message"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 279
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 280
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v1, p3

    invoke-virtual {v0, p3, v2, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 281
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->hmacBuf:[B

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 283
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->hmacBuf:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->N:I

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 4
    .param p1, "pkSeed"    # [B
    .param p2, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .param p3, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkSeed",
            "adrs",
            "m"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    .line 247
    .local v0, "compressedADRS":[B
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->robust:Z

    if-eqz v1, :cond_0

    .line 249
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bitmask([B[B)[B

    move-result-object p3

    .line 252
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/util/Memoable;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgMemo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v1, v2}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 254
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 255
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p3

    invoke-interface {v1, p3, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 256
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigestBuf:[B

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 258
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigestBuf:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->N:I

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method protected bitmask([B[B)[B
    .locals 4
    .param p1, "key"    # [B
    .param p2, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "m"
        }
    .end annotation

    .line 299
    array-length v0, p2

    new-array v0, v0, [B

    .line 300
    .local v0, "mask":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 301
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    .line 302
    array-length v1, p2

    invoke-static {v1, p2, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 303
    return-object v0
.end method

.method protected bitmask([B[B[B)[B
    .locals 4
    .param p1, "key"    # [B
    .param p2, "m1"    # [B
    .param p3, "m2"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "m1",
            "m2"
        }
    .end annotation

    .line 308
    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 309
    .local v0, "mask":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 310
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    .line 311
    array-length v1, p2

    invoke-static {v1, p2, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 312
    array-length v1, p3

    array-length v2, p2

    invoke-static {v1, p3, v3, v0, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 313
    return-object v0
.end method

.method protected bitmask256([B[B)[B
    .locals 4
    .param p1, "key"    # [B
    .param p2, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "m"
        }
    .end annotation

    .line 318
    array-length v0, p2

    new-array v0, v0, [B

    .line 319
    .local v0, "mask":[B
    new-instance v1, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 320
    .local v1, "mgf1":Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;
    new-instance v2, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 321
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    .line 322
    array-length v2, p2

    invoke-static {v2, p2, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 323
    return-object v0
.end method

.method init([B)V
    .locals 5
    .param p1, "pkSeed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkSeed"
        }
    .end annotation

    .line 154
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bl:I

    new-array v0, v0, [B

    .line 156
    .local v0, "padding":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 157
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bl:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->N:I

    sub-int/2addr v2, v4

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 158
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v1}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgMemo:Lorg/bouncycastle/util/Memoable;

    .line 160
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 162
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 163
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    rsub-int/lit8 v2, v2, 0x40

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 164
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    check-cast v1, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v1}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Memo:Lorg/bouncycastle/util/Memoable;

    .line 166
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 167
    return-void
.end method
