.class Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;
.super Ljava/lang/Object;
.source "SeedDerive.java"


# instance fields
.field private final I:[B

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private j:I

.field private final masterSeed:[B

.field private q:I


# direct methods
.method public constructor <init>([B[BLorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "I"    # [B
    .param p2, "masterSeed"    # [B
    .param p3, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "I",
            "masterSeed",
            "digest"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->I:[B

    .line 17
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->masterSeed:[B

    .line 18
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 19
    return-void
.end method


# virtual methods
.method public deriveSeed([BZ)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "incJ"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "incJ"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->deriveSeed([BZI)V

    .line 78
    return-void
.end method

.method public deriveSeed([BZI)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "incJ"    # Z
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "incJ",
            "offset"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->deriveSeed([BI)[B

    .line 86
    if-eqz p2, :cond_0

    .line 88
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    .line 91
    :cond_0
    return-void
.end method

.method public deriveSeed([BI)[B
    .locals 4
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "offset"
        }
    .end annotation

    .line 54
    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->I:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->I:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->masterSeed:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->masterSeed:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 72
    return-object p1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target length is less than digest size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getI()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->I:[B

    return-object v0
.end method

.method public getJ()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    return v0
.end method

.method public getMasterSeed()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->masterSeed:[B

    return-object v0
.end method

.method public getQ()I
    .locals 1

    .line 23
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    return v0
.end method

.method public setJ(I)V
    .locals 0
    .param p1, "j"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "j"
        }
    .end annotation

    .line 38
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->j:I

    .line 39
    return-void
.end method

.method public setQ(I)V
    .locals 0
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    .line 28
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->q:I

    .line 29
    return-void
.end method
