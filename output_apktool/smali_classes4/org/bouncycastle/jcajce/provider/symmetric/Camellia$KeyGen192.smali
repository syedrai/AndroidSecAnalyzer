.class public Lorg/bouncycastle/jcajce/provider/symmetric/Camellia$KeyGen192;
.super Lorg/bouncycastle/jcajce/provider/symmetric/Camellia$KeyGen;
.source "Camellia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen192"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    const/16 v0, 0xc0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/Camellia$KeyGen;-><init>(I)V

    .line 144
    return-void
.end method
