.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
.super Ljava/lang/Object;
.source "IndexGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitString"
.end annotation


# instance fields
.field bytes:[B

.field lastByteBits:I

.field numBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    return-void
.end method


# virtual methods
.method public appendBits(B)V
    .locals 6
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 147
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->-$$Nest$smcopyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    .line 152
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 154
    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    .line 155
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    .line 156
    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    goto :goto_0

    .line 158
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    if-ne v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    aput-byte p1, v0, v1

    goto :goto_0

    .line 164
    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    sub-int/2addr v1, v0

    .line 165
    .local v1, "s":I
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    sub-int/2addr v3, v2

    aget-byte v2, v0, v3

    and-int/lit16 v4, p1, 0xff

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 166
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    and-int/lit16 v3, p1, 0xff

    shr-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 168
    .end local v1    # "s":I
    :goto_0
    return-void
.end method

.method appendBits([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 136
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->appendBits(B)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLeadingAsInt(I)I
    .locals 7
    .param p1, "numBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numBits"
        }
    .end annotation

    .line 208
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 209
    .local v0, "startBit":I
    div-int/lit8 v1, v0, 0x8

    .line 211
    .local v1, "startByte":I
    rem-int/lit8 v2, v0, 0x8

    .line 212
    .local v2, "startBitInStartByte":I
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    ushr-int/2addr v3, v2

    .line 213
    .local v3, "sum":I
    rsub-int/lit8 v4, v2, 0x8

    .line 214
    .local v4, "shift":I
    add-int/lit8 v5, v1, 0x1

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    if-ge v5, v6, :cond_0

    .line 216
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v4

    or-int/2addr v3, v6

    .line 217
    add-int/lit8 v4, v4, 0x8

    .line 214
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 220
    .end local v5    # "i":I
    :cond_0
    return v3
.end method

.method public getTrailing(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
    .locals 6
    .param p1, "numBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numBits"
        }
    .end annotation

    .line 178
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;-><init>()V

    .line 179
    .local v0, "newStr":Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
    add-int/lit8 v1, p1, 0x7

    const/16 v2, 0x8

    div-int/2addr v1, v2

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    .line 180
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    if-ge v1, v3, :cond_0

    .line 183
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v4, v4, v1

    aput-byte v4, v3, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "i":I
    :cond_0
    rem-int/lit8 v1, p1, 0x8

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    .line 187
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    if-nez v1, :cond_1

    .line 189
    iput v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    goto :goto_1

    .line 193
    :cond_1
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    rsub-int/lit8 v1, v1, 0x20

    .line 194
    .local v1, "s":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v4, v5

    shl-int/2addr v4, v1

    ushr-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 197
    .end local v1    # "s":I
    :goto_1
    return-object v0
.end method
