.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;
.source "HarakaSXof.java"


# direct methods
.method public constructor <init>([B)V
    .locals 8
    .param p1, "pkSeed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkSeed"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;-><init>()V

    .line 13
    const/16 v0, 0x280

    new-array v0, v0, [B

    .line 14
    .local v0, "buf":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 15
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    .line 16
    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v4, 0x1

    const/16 v5, 0x8

    aput v5, v3, v4

    const/16 v6, 0xa

    aput v6, v3, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512_rc:[[J

    .line 17
    new-array v1, v1, [I

    aput v5, v1, v4

    aput v6, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka256_rc:[[I

    .line 18
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 20
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka256_rc:[[I

    aget-object v2, v2, v1

    shl-int/lit8 v3, v1, 0x5

    invoke-virtual {p0, v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->interleaveConstant32([I[BI)V

    .line 21
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512_rc:[[J

    aget-object v2, v2, v1

    shl-int/lit8 v3, v1, 0x6

    invoke-virtual {p0, v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->interleaveConstant([J[BI)V

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BII)I
    .locals 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "len"
        }
    .end annotation

    .line 55
    move v0, p3

    .line 58
    .local v0, "outLen":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    aget-byte v3, v1, v2

    const/16 v4, 0x1f

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 59
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    aget-byte v2, v1, v4

    xor-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 62
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x20

    if-lt p3, v2, :cond_0

    .line 64
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512Perm([B)V

    .line 65
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    add-int/lit8 p2, p2, 0x20

    .line 67
    add-int/lit8 p3, p3, -0x20

    goto :goto_0

    .line 69
    :cond_0
    if-lez p3, :cond_1

    .line 71
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512Perm([B)V

    .line 72
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-static {v2, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->reset()V

    .line 77
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 8
    const-string v0, "Haraka-S"

    return-object v0
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

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    aget-byte v2, v0, v1

    xor-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 46
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512Perm([B)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    .line 51
    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "len"
        }
    .end annotation

    .line 27
    move v0, p2

    .local v0, "i":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    add-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x5

    .line 28
    .local v1, "loop":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 30
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    const/16 v4, 0x20

    if-ge v3, v4, :cond_0

    .line 32
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    aget-byte v5, v3, v4

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "i":I
    .local v6, "i":I
    aget-byte v0, p1, v0

    xor-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move v0, v6

    goto :goto_1

    .line 34
    .end local v6    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512Perm([B)V

    .line 35
    const/4 v3, 0x0

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_1
    :goto_2
    add-int v3, p2, p3

    if-ge v0, v3, :cond_2

    .line 39
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    aget-byte v5, v3, v4

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "i":I
    .restart local v6    # "i":I
    aget-byte v0, p1, v0

    xor-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move v0, v6

    goto :goto_2

    .line 41
    .end local v6    # "i":I
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method
