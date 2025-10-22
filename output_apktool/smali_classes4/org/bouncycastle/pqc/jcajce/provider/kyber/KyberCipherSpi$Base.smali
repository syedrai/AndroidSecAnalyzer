.class public Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberCipherSpi$Base;
.super Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberCipherSpi;
.source "KyberCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberCipherSpi;
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

    .line 334
    const-string v0, "KYBER"

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberCipherSpi;-><init>(Ljava/lang/String;)V

    .line 335
    return-void
.end method
