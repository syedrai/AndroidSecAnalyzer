.class public Lorg/bouncycastle/jcajce/provider/digest/SHA512$DigestT;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "SHA512.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA512;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestT"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitLength"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 47
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

    .line 52
    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/SHA512$DigestT;

    .line 53
    .local v0, "d":Lorg/bouncycastle/jcajce/provider/digest/SHA512$DigestT;
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/digest/SHA512$DigestT;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v2, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHA512tDigest;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/digest/SHA512$DigestT;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 55
    return-object v0
.end method
