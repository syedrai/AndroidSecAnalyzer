.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$Ed448;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;
.source "KeyFactorySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ed448"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 330
    const/4 v0, 0x0

    const/16 v1, 0x71

    const-string v2, "Ed448"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;-><init>(Ljava/lang/String;ZI)V

    .line 331
    return-void
.end method
