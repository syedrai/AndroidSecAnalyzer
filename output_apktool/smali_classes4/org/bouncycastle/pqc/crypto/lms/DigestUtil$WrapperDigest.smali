.class Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;
.super Ljava/lang/Object;
.source "DigestUtil.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrapperDigest"
.end annotation


# instance fields
.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final length:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 0
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest",
            "length"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 60
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->length:I

    .line 61
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
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

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 86
    .local v0, "digOut":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 88
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->length:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->length:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->length:I

    mul-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->length:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 95
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

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 76
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

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil$WrapperDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 81
    return-void
.end method
