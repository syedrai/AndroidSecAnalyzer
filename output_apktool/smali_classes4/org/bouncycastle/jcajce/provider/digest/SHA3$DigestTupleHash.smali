.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestTupleHash;
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
    name = "DigestTupleHash"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 2
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

    .line 66
    new-instance v0, Lorg/bouncycastle/crypto/digests/TupleHash;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/digests/TupleHash;-><init>(I[BI)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 67
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

    .line 72
    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;

    .line 73
    .local v0, "d":Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;
    new-instance v1, Lorg/bouncycastle/crypto/digests/TupleHash;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestTupleHash;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v2, Lorg/bouncycastle/crypto/digests/TupleHash;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/TupleHash;-><init>(Lorg/bouncycastle/crypto/digests/TupleHash;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 75
    return-object v0
.end method
