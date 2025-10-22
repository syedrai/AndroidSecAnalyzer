.class Lorg/bouncycastle/tsp/TimeStampToken$CertID;
.super Ljava/lang/Object;
.source "TimeStampToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tsp/TimeStampToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertID"
.end annotation


# instance fields
.field private certID:Lorg/bouncycastle/asn1/ess/ESSCertID;

.field private certIDv2:Lorg/bouncycastle/asn1/ess/ESSCertIDv2;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ess/ESSCertID;)V
    .locals 1
    .param p1, "certID"    # Lorg/bouncycastle/asn1/ess/ESSCertID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certID"
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certID:Lorg/bouncycastle/asn1/ess/ESSCertID;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certIDv2:Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    .line 340
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/ess/ESSCertIDv2;)V
    .locals 1
    .param p1, "certID"    # Lorg/bouncycastle/asn1/ess/ESSCertIDv2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certID"
        }
    .end annotation

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certIDv2:Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certID:Lorg/bouncycastle/asn1/ess/ESSCertID;

    .line 346
    return-void
.end method


# virtual methods
.method public getCertHash()[B
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certID:Lorg/bouncycastle/asn1/ess/ESSCertID;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certID:Lorg/bouncycastle/asn1/ess/ESSCertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ess/ESSCertID;->getCertHash()[B

    move-result-object v0

    return-object v0

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certIDv2:Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->getCertHash()[B

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .line 350
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certID:Lorg/bouncycastle/asn1/ess/ESSCertID;

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certIDv2:Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerSerial()Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certID:Lorg/bouncycastle/asn1/ess/ESSCertID;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certID:Lorg/bouncycastle/asn1/ess/ESSCertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ess/ESSCertID;->getIssuerSerial()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    return-object v0

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->certIDv2:Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->getIssuerSerial()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    return-object v0
.end method
