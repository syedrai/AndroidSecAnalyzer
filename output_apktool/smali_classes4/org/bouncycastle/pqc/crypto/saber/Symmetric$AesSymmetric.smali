.class Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;
.super Lorg/bouncycastle/pqc/crypto/saber/Symmetric;
.source "Symmetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/saber/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AesSymmetric"
.end annotation


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/StreamCipher;

.field private final sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

.field private final sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;-><init>()V

    .line 68
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    .line 69
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    .line 70
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    .line 71
    return-void
.end method


# virtual methods
.method hash_g([B[B)V
    .locals 3
    .param p1, "out"    # [B
    .param p2, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->update([BII)V

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->doFinal([BI)I

    .line 84
    return-void
.end method

.method hash_h([B[BI)V
    .locals 3
    .param p1, "out"    # [B
    .param p2, "in"    # [B
    .param p3, "outOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "outOffset"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->update([BII)V

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->doFinal([BI)I

    .line 77
    return-void
.end method

.method prf([B[BII)V
    .locals 9
    .param p1, "out"    # [B
    .param p2, "in"    # [B
    .param p3, "inLen"    # I
    .param p4, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "inLen",
            "outLen"
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 90
    .local v0, "kp":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 91
    new-array v4, p4, [B

    .line 92
    .local v4, "buf":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    move v6, p4

    .end local p1    # "out":[B
    .end local p4    # "outLen":I
    .local v6, "outLen":I
    .local v7, "out":[B
    invoke-interface/range {v3 .. v8}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 93
    return-void
.end method
