.class public Lorg/bouncycastle/crypto/digests/SparkleDigest;
.super Ljava/lang/Object;
.source "SparkleDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;,
        Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;
    }
.end annotation


# static fields
.field private static final RATE_BYTES:I = 0x10

.field private static final RATE_WORDS:I = 0x4


# instance fields
.field private final DIGEST_BYTES:I

.field private final SPARKLE_STEPS_BIG:I

.field private final SPARKLE_STEPS_SLIM:I

.field private final STATE_WORDS:I

.field private algorithmName:Ljava/lang/String;

.field private final m_buf:[B

.field private m_bufPos:I

.field private final state:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;)V
    .locals 3
    .param p1, "sparkleParameters"    # Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sparkleParameters"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    packed-switch v1, :pswitch_data_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid definition of SCHWAEMM instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_0
    const-string v1, "ESCH-384"

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    .line 57
    const/16 v1, 0x30

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    .line 58
    const/16 v1, 0x8

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    .line 59
    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    .line 60
    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    .line 61
    goto :goto_0

    .line 49
    :pswitch_1
    const-string v0, "ESCH-256"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    .line 50
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    .line 51
    const/4 v0, 0x7

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    .line 52
    const/16 v0, 0xb

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    .line 53
    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    .line 54
    nop

    .line 66
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    .line 67
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ELL(I)I
    .locals 2
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 221
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, p0

    xor-int/2addr v0, v1

    return v0
.end method

.method private processBlock([BII)V
    .locals 10
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "steps"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "steps"
        }
    .end annotation

    .line 193
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    .line 194
    .local v0, "t0":I
    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 195
    .local v1, "t1":I
    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    .line 196
    .local v2, "t2":I
    add-int/lit8 v3, p2, 0xc

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 199
    .local v3, "t3":I
    xor-int v4, v0, v2

    invoke-static {v4}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->ELL(I)I

    move-result v4

    .line 200
    .local v4, "tx":I
    xor-int v5, v1, v3

    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->ELL(I)I

    move-result v5

    .line 201
    .local v5, "ty":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v7, 0x0

    aget v8, v6, v7

    xor-int v9, v0, v5

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 202
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v7, 0x1

    aget v8, v6, v7

    xor-int v9, v1, v4

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 203
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v7, 0x2

    aget v8, v6, v7

    xor-int v9, v2, v5

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 204
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v7, 0x3

    aget v8, v6, v7

    xor-int v9, v3, v4

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 205
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v7, 0x4

    aget v8, v6, v7

    xor-int/2addr v8, v5

    aput v8, v6, v7

    .line 206
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v7, 0x5

    aget v8, v6, v7

    xor-int/2addr v8, v4

    aput v8, v6, v7

    .line 207
    iget v6, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_0

    .line 209
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v7, 0x6

    aget v8, v6, v7

    xor-int/2addr v8, v5

    aput v8, v6, v7

    .line 210
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v7, 0x7

    aget v8, v6, v7

    xor-int/2addr v8, v4

    aput v8, v6, v7

    .line 211
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->-$$Nest$sfgetINSTANCE()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    invoke-static {v6, v7, p3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->-$$Nest$sfgetINSTANCE()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    invoke-static {v6, v7, p3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    .line 217
    :goto_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outOff"
        }
    .end annotation

    .line 140
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_3

    .line 146
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x1

    aget v4, v0, v3

    const/high16 v5, 0x1000000

    xor-int/2addr v4, v5

    aput v4, v0, v3

    .line 151
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    const/16 v4, -0x80

    aput-byte v4, v0, v3

    .line 152
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    if-ge v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    aput-byte v2, v0, v3

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x1

    aget v4, v0, v3

    const/high16 v5, 0x2000000

    xor-int/2addr v4, v5

    aput v4, v0, v3

    .line 162
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    .line 164
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v3, 0x4

    invoke-static {v0, v2, v3, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 166
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    if-ne v0, v1, :cond_2

    .line 168
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->-$$Nest$sfgetINSTANCE()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    .line 169
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, v2, v3, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 170
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->-$$Nest$sfgetINSTANCE()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    add-int/lit8 v1, p2, 0x20

    invoke-static {v0, v2, v3, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    goto :goto_1

    .line 175
    :cond_2
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->-$$Nest$sfgetINSTANCE()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, v2, v3, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 179
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->reset()V

    .line 180
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    return v0

    .line 142
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " input buffer too short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 84
    const/16 v0, 0x10

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    return v0
.end method

.method public reset()V
    .locals 2

    .line 186
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([II)V

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 188
    iput v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 189
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 90
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    .line 93
    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    aput-byte p1, v0, v1

    .line 97
    return-void
.end method

.method public update([BII)V
    .locals 7
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

    .line 102
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_4

    .line 107
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    const/16 v1, 0x10

    rsub-int/lit8 v0, v0, 0x10

    .line 111
    .local v0, "available":I
    if-gt p3, v0, :cond_1

    .line 113
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 115
    return-void

    .line 118
    :cond_1
    const/4 v2, 0x0

    .line 119
    .local v2, "inPos":I
    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    const/4 v4, 0x0

    if-lez v3, :cond_2

    .line 121
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    invoke-static {p1, p2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    .line 123
    add-int/2addr v2, v0

    .line 127
    :cond_2
    :goto_0
    sub-int v3, p3, v2

    move v5, v3

    .local v5, "remaining":I
    if-le v3, v1, :cond_3

    .line 129
    add-int v3, p2, v2

    iget v6, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-direct {p0, p1, v3, v6}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    .line 130
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 133
    :cond_3
    add-int v1, p2, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    invoke-static {p1, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iput v5, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    .line 135
    return-void

    .line 104
    .end local v0    # "available":I
    .end local v2    # "inPos":I
    .end local v5    # "remaining":I
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " input buffer too short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
