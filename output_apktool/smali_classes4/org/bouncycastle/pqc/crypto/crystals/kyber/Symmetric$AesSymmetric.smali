.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;
.super Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
.source "Symmetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AesSymmetric"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/StreamCipher;

.field private final sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

.field private final sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 117
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;-><init>(I)V

    .line 118
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    .line 119
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    .line 120
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    .line 121
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

    .line 131
    new-array v1, p3, [B

    .line 132
    .local v1, "buf":[B
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

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

    .line 133
    return-void
.end method

.method private doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/crypto/ExtendedDigest;
    .param p2, "out"    # [B
    .param p3, "in"    # [B
    .param p4, "outOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "out",
            "in",
            "outOffset"
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lorg/bouncycastle/crypto/ExtendedDigest;->update([BII)V

    .line 126
    invoke-interface {p1, p2, p4}, Lorg/bouncycastle/crypto/ExtendedDigest;->doFinal([BI)I

    .line 127
    return-void
.end method


# virtual methods
.method hash_g([B[B)V
    .locals 2
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

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V

    .line 145
    return-void
.end method

.method hash_h([B[BI)V
    .locals 1
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

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V

    .line 139
    return-void
.end method

.method kdf([B[B)V
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

    .line 178
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 179
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, p2, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V

    .line 180
    array-length v1, p1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    return-void
.end method

.method prf([B[BB)V
    .locals 5
    .param p1, "out"    # [B
    .param p2, "key"    # [B
    .param p3, "nonce"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "key",
            "nonce"
        }
    .end annotation

    .line 167
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 168
    .local v0, "expnonce":[B
    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 170
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v4, 0x20

    invoke-direct {v3, p2, v1, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 171
    .local v2, "kp":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v2}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 172
    array-length v3, p1

    invoke-direct {p0, p1, v1, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->aes128([BII)V

    .line 173
    return-void
.end method

.method xofAbsorb([BBB)V
    .locals 6
    .param p1, "key"    # [B
    .param p2, "x"    # B
    .param p3, "y"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "x",
            "y"
        }
    .end annotation

    .line 150
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 151
    .local v0, "expnonce":[B
    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 152
    const/4 v2, 0x1

    aput-byte p3, v0, v2

    .line 154
    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v5, 0x20

    invoke-direct {v4, p1, v1, v5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 155
    .local v3, "kp":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 156
    return-void
.end method

.method xofSqueezeBlocks([BII)V
    .locals 0
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOffset",
            "outLen"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->aes128([BII)V

    .line 162
    return-void
.end method
