.class Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$QTeslaConverter;
.super Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QTeslaConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$QTeslaConverter;-><init>()V

    return-void
.end method


# virtual methods
.method getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 3
    .param p1, "keyInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "defaultParams"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyInfo",
            "defaultParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->qTeslaLookupSecurityCategory(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;-><init>(I[B)V

    return-object v0
.end method
