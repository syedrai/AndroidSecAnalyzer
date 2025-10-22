.class public Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCCipherSpi$Base;
.super Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCCipherSpi;
.source "HQCCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCCipherSpi;
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

    .line 329
    const-string v0, "HQC"

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCCipherSpi;-><init>(Ljava/lang/String;)V

    .line 330
    return-void
.end method
