.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash256_512;
.super Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash;
.source "SHA3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestParallelHash256_512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 292
    const/16 v0, 0x100

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestParallelHash;-><init>(II)V

    .line 293
    return-void
.end method
