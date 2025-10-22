.class public Lorg/bouncycastle/jcajce/provider/digest/RIPEMD320$Digest;
.super Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "RIPEMD320.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/RIPEMD320;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 24
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

    .line 29
    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD320$Digest;

    .line 30
    .local v0, "d":Lorg/bouncycastle/jcajce/provider/digest/RIPEMD320$Digest;
    new-instance v1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD320$Digest;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v2, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;-><init>(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD320$Digest;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 32
    return-object v0
.end method
