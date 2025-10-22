.class public Lorg/bouncycastle/crypto/digests/SkeinDigest;
.super Ljava/lang/Object;
.source "SkeinDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field public static final SKEIN_1024:I = 0x400

.field public static final SKEIN_256:I = 0x100

.field public static final SKEIN_512:I = 0x200


# instance fields
.field private engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "stateSizeBits"    # I
    .param p2, "digestSizeBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateSizeBits",
            "digestSizeBits"
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/SkeinDigest;-><init>(IILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 54
    return-void
.end method

.method public constructor <init>(IILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "stateSizeBits"    # I
    .param p2, "digestSizeBits"    # I
    .param p3, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stateSizeBits",
            "digestSizeBits",
            "purpose"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/SkeinEngine;-><init>(II)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    .line 58
    iput-object p3, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SkeinDigest;->init(Lorg/bouncycastle/crypto/params/SkeinParameters;)V

    .line 61
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinDigest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0, p3}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SkeinDigest;)V
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/crypto/digests/SkeinDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;-><init>(Lorg/bouncycastle/crypto/digests/SkeinEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    .line 68
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SkeinDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 70
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/SkeinDigest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 72
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 82
    new-instance v0, Lorg/bouncycastle/crypto/digests/SkeinDigest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SkeinDigest;-><init>(Lorg/bouncycastle/crypto/digests/SkeinDigest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 4

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skein-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result v0

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/params/SkeinParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/crypto/params/SkeinParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->init(Lorg/bouncycastle/crypto/params/SkeinParameters;)V

    .line 109
    return-void
.end method

.method public reset()V
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->reset()V

    .line 114
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 3
    .param p1, "other"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 76
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/SkeinDigest;

    .line 77
    .local v0, "d":Lorg/bouncycastle/crypto/digests/SkeinDigest;
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 78
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->update(B)V

    .line 119
    return-void
.end method

.method public update([BII)V
    .locals 1
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

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->update([BII)V

    .line 124
    return-void
.end method
