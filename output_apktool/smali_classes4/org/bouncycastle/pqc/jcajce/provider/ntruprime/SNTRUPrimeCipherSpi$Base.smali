.class public Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeCipherSpi$Base;
.super Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeCipherSpi;
.source "SNTRUPrimeCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 310
    const-string v0, "SNTRUPrime"

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/SNTRUPrimeCipherSpi;-><init>(Ljava/lang/String;)V

    .line 311
    return-void
.end method
