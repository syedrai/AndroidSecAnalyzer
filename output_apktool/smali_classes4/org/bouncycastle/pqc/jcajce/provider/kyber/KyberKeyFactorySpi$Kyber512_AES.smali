.class public Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber512_AES;
.super Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;
.source "KyberKeyFactorySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Kyber512_AES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->kyber512_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 133
    return-void
.end method
