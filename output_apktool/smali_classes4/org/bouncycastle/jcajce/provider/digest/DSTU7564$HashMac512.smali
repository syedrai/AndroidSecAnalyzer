.class public Lorg/bouncycastle/jcajce/provider/digest/DSTU7564$HashMac512;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "DSTU7564.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/DSTU7564;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMac512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    new-instance v0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    .line 88
    return-void
.end method
