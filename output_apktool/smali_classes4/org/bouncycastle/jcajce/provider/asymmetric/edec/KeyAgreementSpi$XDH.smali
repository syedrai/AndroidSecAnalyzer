.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$XDH;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XDH"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 350
    const-string v0, "XDH"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;-><init>(Ljava/lang/String;)V

    .line 351
    return-void
.end method
