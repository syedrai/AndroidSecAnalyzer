.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$KeyGen128;
.super Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$KeyGen;
.source "DSTU7624.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 363
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$KeyGen;-><init>(I)V

    .line 364
    return-void
.end method
