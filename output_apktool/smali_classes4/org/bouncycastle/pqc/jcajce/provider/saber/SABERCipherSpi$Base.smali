.class public Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERCipherSpi$Base;
.super Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERCipherSpi;
.source "SABERCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERCipherSpi;
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
    const-string v0, "SABER"

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/saber/SABERCipherSpi;-><init>(Ljava/lang/String;)V

    .line 311
    return-void
.end method
