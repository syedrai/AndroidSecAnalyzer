.class public Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeCipherSpi$Base;
.super Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeCipherSpi;
.source "NTRULPRimeCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeCipherSpi;
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

    .line 311
    const-string v0, "NTRULPRime"

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeCipherSpi;-><init>(Ljava/lang/String;)V

    .line 312
    return-void
.end method
