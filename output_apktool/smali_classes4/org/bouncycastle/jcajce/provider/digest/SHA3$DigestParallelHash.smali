.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "SHA3.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestParallelHash"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "size"
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/bouncycastle/crypto/digests/ParallelHash;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/bouncycastle/crypto/digests/ParallelHash;-><init>(I[BII)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 86
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 91
    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

    .line 92
    .local v0, "d":Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;
    new-instance v1, Lorg/bouncycastle/crypto/digests/ParallelHash;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v2, Lorg/bouncycastle/crypto/digests/ParallelHash;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/ParallelHash;-><init>(Lorg/bouncycastle/crypto/digests/ParallelHash;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 94
    return-object v0
.end method
