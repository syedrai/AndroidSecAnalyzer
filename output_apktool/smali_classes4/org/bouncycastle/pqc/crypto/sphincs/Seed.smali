.class Lorg/bouncycastle/pqc/crypto/sphincs/Seed;
.super Ljava/lang/Object;
.source "Seed.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 8
    .param p0, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "seed"    # [B
    .param p2, "seedOff"    # I
    .param p3, "sk"    # [B
    .param p4, "a"    # Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hs",
            "seed",
            "seedOff",
            "sk",
            "a"
        }
    .end annotation

    .line 14
    const/16 v0, 0x28

    new-array v0, v0, [B

    .line 18
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 20
    aget-byte v2, p3, v1

    aput-byte v2, v0, v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iget v3, p4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    int-to-long v3, v3

    .line 26
    .local v3, "t":J
    iget-wide v5, p4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 v7, 0x4

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 28
    iget-wide v5, p4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/16 v7, 0x3b

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 30
    invoke-static {v3, v4, v0, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 32
    array-length v2, v0

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->varlen_hash([BI[BI)I

    .line 33
    return-void
.end method

.method static prg([BIJ[BI)V
    .locals 9
    .param p0, "r"    # [B
    .param p1, "rOff"    # I
    .param p2, "rlen"    # J
    .param p4, "key"    # [B
    .param p5, "keyOff"    # I
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
            "rOff",
            "rlen",
            "key",
            "keyOff"
        }
    .end annotation

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 41
    .local v0, "nonce":[B
    new-instance v1, Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    move-object v3, v1

    .line 43
    .local v3, "cipher":Lorg/bouncycastle/crypto/StreamCipher;
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v4, 0x20

    invoke-direct {v2, p4, p5, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x1

    invoke-interface {v3, v2, v1}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 45
    long-to-int v6, p2

    move-object v7, p0

    move v8, p1

    move-object v4, p0

    move v5, p1

    .end local p0    # "r":[B
    .end local p1    # "rOff":I
    .local v4, "r":[B
    .local v5, "rOff":I
    invoke-interface/range {v3 .. v8}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 48
    return-void
.end method
