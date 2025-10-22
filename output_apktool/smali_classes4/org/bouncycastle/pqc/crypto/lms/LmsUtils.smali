.class Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;
.super Ljava/lang/Object;
.source "LmsUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArray([BIILorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "start",
            "len",
            "digest"
        }
    .end annotation

    .line 28
    invoke-interface {p3, p0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 29
    return-void
.end method

.method static byteArray([BLorg/bouncycastle/crypto/Digest;)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "digest"
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    array-length v1, p0

    invoke-interface {p1, p0, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 24
    return-void
.end method

.method static calculateStrength(Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;)I
    .locals 3
    .param p0, "lmsParameters"    # Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lmsParameters"
        }
    .end annotation

    .line 33
    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v0

    .line 39
    .local v0, "sigParameters":Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    const/4 v1, 0x1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v2

    shl-int/2addr v1, v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    move-result v2

    mul-int v1, v1, v2

    return v1

    .line 35
    .end local v0    # "sigParameters":Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lmsParameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static u16str(SLorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p0, "n"    # S
    .param p1, "d"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "d"
        }
    .end annotation

    .line 17
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 18
    int-to-byte v0, p0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 19
    return-void
.end method

.method static u32str(ILorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "d"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "d"
        }
    .end annotation

    .line 9
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 10
    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 11
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 12
    int-to-byte v0, p0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 13
    return-void
.end method
