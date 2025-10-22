.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$X448;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;
.source "KeyFactorySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X448"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 303
    const/4 v0, 0x1

    const/16 v1, 0x6f

    const-string v2, "X448"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;-><init>(Ljava/lang/String;ZI)V

    .line 304
    return-void
.end method
