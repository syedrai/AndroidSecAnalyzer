.class public Lorg/bouncycastle/jcajce/provider/digest/Tiger$Digest;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "Tiger.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Tiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    new-instance v0, Lorg/bouncycastle/crypto/digests/TigerDigest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 26
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

    .line 31
    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/Tiger$Digest;

    .line 32
    .local v0, "d":Lorg/bouncycastle/jcajce/provider/digest/Tiger$Digest;
    new-instance v1, Lorg/bouncycastle/crypto/digests/TigerDigest;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/digest/Tiger$Digest;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v2, Lorg/bouncycastle/crypto/digests/TigerDigest;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/TigerDigest;-><init>(Lorg/bouncycastle/crypto/digests/TigerDigest;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/digest/Tiger$Digest;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 34
    return-object v0
.end method
