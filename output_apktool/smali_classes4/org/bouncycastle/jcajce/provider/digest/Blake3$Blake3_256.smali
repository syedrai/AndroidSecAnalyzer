.class public Lorg/bouncycastle/jcajce/provider/digest/Blake3$Blake3_256;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "Blake3.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Blake3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blake3_256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    new-instance v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/Blake3Digest;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 21
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

    .line 26
    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/Blake3$Blake3_256;

    .line 27
    .local v0, "d":Lorg/bouncycastle/jcajce/provider/digest/Blake3$Blake3_256;
    new-instance v1, Lorg/bouncycastle/crypto/digests/Blake3Digest;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/digest/Blake3$Blake3_256;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v2, Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/Blake3Digest;-><init>(Lorg/bouncycastle/crypto/digests/Blake3Digest;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/digest/Blake3$Blake3_256;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 29
    return-object v0
.end method
