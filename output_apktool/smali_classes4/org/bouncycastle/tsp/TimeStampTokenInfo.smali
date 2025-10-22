.class public Lorg/bouncycastle/tsp/TimeStampTokenInfo;
.super Ljava/lang/Object;
.source "TimeStampTokenInfo.java"


# instance fields
.field genTime:Ljava/util/Date;

.field tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/tsp/TSTInfo;)V
    .locals 3
    .param p1, "tstInfo"    # Lorg/bouncycastle/asn1/tsp/TSTInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tstInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    .line 27
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getGenTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->genTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    nop

    .line 33
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    const-string/jumbo v2, "unable to parse genTime field"

    invoke-direct {v1, v2}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAccuracy()Lorg/bouncycastle/asn1/tsp/Accuracy;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getAccuracy()Lorg/bouncycastle/asn1/tsp/Accuracy;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0
.end method

.method public getGenTime()Ljava/util/Date;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->genTime:Ljava/util/Date;

    return-object v0
.end method

.method public getGenTimeAccuracy()Lorg/bouncycastle/tsp/GenTimeAccuracy;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getAccuracy()Lorg/bouncycastle/asn1/tsp/Accuracy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lorg/bouncycastle/tsp/GenTimeAccuracy;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getAccuracy()Lorg/bouncycastle/asn1/tsp/Accuracy;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/GenTimeAccuracy;-><init>(Lorg/bouncycastle/asn1/tsp/Accuracy;)V

    return-object v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getMessageImprintDigest()[B
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getNonce()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getNonce()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getTsa()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getTsa()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public isOrdered()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getOrdering()Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    return-object v0
.end method

.method public toTSTInfo()Lorg/bouncycastle/asn1/tsp/TSTInfo;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->tstInfo:Lorg/bouncycastle/asn1/tsp/TSTInfo;

    return-object v0
.end method
