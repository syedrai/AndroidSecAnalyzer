.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$X25519;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;
.source "KeyFactorySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X25519"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 312
    const/4 v0, 0x1

    const/16 v1, 0x6e

    const-string v2, "X25519"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;-><init>(Ljava/lang/String;ZI)V

    .line 313
    return-void
.end method
