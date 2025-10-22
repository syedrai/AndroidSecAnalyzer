.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;
.super Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
.source "Symmetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AesSymmetric"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/StreamCipher;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    const/16 v0, 0x40

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;-><init>(II)V

    .line 45
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    .line 46
    return-void
.end method

.method private aes128([BII)V
    .locals 6
    .param p1, "out"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "offset",
            "size"
        }
    .end annotation

    .line 50
    new-array v1, p3, [B

    .line 51
    .local v1, "buf":[B
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v2, 0x0

    move-object v4, p1

    move v5, p2

    move v3, p3

    .end local p1    # "out":[B
    .end local p2    # "offset":I
    .end local p3    # "size":I
    .local v3, "size":I
    .local v4, "out":[B
    .local v5, "offset":I
    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 52
    return-void
.end method

.method private streamInit([BS)V
    .locals 6
    .param p1, "key"    # [B
    .param p2, "nonce"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "nonce"
        }
    .end annotation

    .line 56
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 57
    .local v0, "expnonce":[B
    int-to-byte v1, p2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 58
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 60
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v5, 0x20

    invoke-direct {v4, p1, v2, v5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 61
    .local v1, "kp":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v2, v3, v1}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 62
    return-void
.end method


# virtual methods
.method stream128init([BS)V
    .locals 0
    .param p1, "seed"    # [B
    .param p2, "nonce"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->streamInit([BS)V

    .line 68
    return-void
.end method

.method stream128squeezeBlocks([BII)V
    .locals 0
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "offset",
            "size"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->aes128([BII)V

    .line 80
    return-void
.end method

.method stream256init([BS)V
    .locals 0
    .param p1, "seed"    # [B
    .param p2, "nonce"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->streamInit([BS)V

    .line 74
    return-void
.end method

.method stream256squeezeBlocks([BII)V
    .locals 0
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "offset",
            "size"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->aes128([BII)V

    .line 86
    return-void
.end method
