.class public Lorg/bouncycastle/tsp/TimeStampTokenGenerator;
.super Ljava/lang/Object;
.source "TimeStampTokenGenerator.java"


# static fields
.field public static final R_HUNDREDTHS_OF_SECONDS:I = 0x2

.field public static final R_MICROSECONDS:I = 0x2

.field public static final R_MILLISECONDS:I = 0x3

.field public static final R_SECONDS:I = 0x0

.field public static final R_TENTHS_OF_SECONDS:I = 0x1


# instance fields
.field private accuracyMicros:I

.field private accuracyMillis:I

.field private accuracySeconds:I

.field private attrCerts:Ljava/util/List;

.field private certs:Ljava/util/List;

.field private crls:Ljava/util/List;

.field private locale:Ljava/util/Locale;

.field ordering:Z

.field private otherRevoc:Ljava/util/Map;

.field private resolution:I

.field private signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

.field tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private tsaPolicyOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "signerInfoGen"    # Lorg/bouncycastle/cms/SignerInfoGenerator;
    .param p2, "digestCalculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p3, "tsaPolicy"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "signerInfoGen",
            "digestCalculator",
            "tsaPolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)V
    .locals 9
    .param p1, "signerInfoGen"    # Lorg/bouncycastle/cms/SignerInfoGenerator;
    .param p2, "digestCalculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p3, "tsaPolicy"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p4, "isIssuerSerialIncluded"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "signerInfoGen",
            "digestCalculator",
            "tsaPolicy",
            "isIssuerSerialIncluded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    .line 108
    const/4 v2, -0x1

    iput v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    .line 110
    iput v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    .line 112
    iput v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    .line 114
    iput-boolean v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    .line 116
    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    .line 167
    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    .line 168
    iput-object p3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsaPolicyOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 170
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->hasAssociatedCertificate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    .line 176
    .local v0, "assocCert":Lorg/bouncycastle/cert/X509CertificateHolder;
    invoke-static {v0}, Lorg/bouncycastle/tsp/TSPUtil;->validateCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    .line 180
    :try_start_0
    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 182
    .local v2, "dOut":Ljava/io/OutputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 184
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 186
    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    new-instance v3, Lorg/bouncycastle/asn1/ess/ESSCertID;

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    .line 189
    if-eqz p4, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v6, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 190
    :cond_0
    nop

    :goto_0
    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/ess/ESSCertID;-><init>([BLorg/bouncycastle/asn1/x509/IssuerSerial;)V

    .line 192
    .local v3, "essCertid":Lorg/bouncycastle/asn1/ess/ESSCertID;
    new-instance v1, Lorg/bouncycastle/cms/SignerInfoGenerator;

    new-instance v4, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;

    invoke-direct {v4, p0, p1, v3}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;-><init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ess/ESSCertID;)V

    .line 206
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getUnsignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    move-result-object v5

    invoke-direct {v1, p1, v4, v5}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    .line 207
    .end local v3    # "essCertid":Lorg/bouncycastle/asn1/ess/ESSCertID;
    goto :goto_2

    .line 210
    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 211
    .local v3, "digAlgID":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v4, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v5

    .line 212
    if-eqz p4, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    new-instance v6, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v7, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v6, v7}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/ASN1Integer;)V

    goto :goto_1

    .line 213
    :cond_2
    nop

    :goto_1
    invoke-direct {v4, v3, v5, v1}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/asn1/x509/IssuerSerial;)V

    .line 215
    .local v4, "essCertid":Lorg/bouncycastle/asn1/ess/ESSCertIDv2;
    new-instance v1, Lorg/bouncycastle/cms/SignerInfoGenerator;

    new-instance v5, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;

    invoke-direct {v5, p0, p1, v4}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;-><init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ess/ESSCertIDv2;)V

    .line 229
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getUnsignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    move-result-object v6

    invoke-direct {v1, p1, v5, v6}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v2    # "dOut":Ljava/io/OutputStream;
    .end local v3    # "digAlgID":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "essCertid":Lorg/bouncycastle/asn1/ess/ESSCertIDv2;
    :goto_2
    nop

    .line 236
    return-void

    .line 232
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/tsp/TSPException;

    const-string v3, "Exception processing certificate."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 172
    .end local v0    # "assocCert":Lorg/bouncycastle/cert/X509CertificateHolder;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SignerInfoGenerator must have an associated certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createGeneralizedTime(Ljava/util/Date;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 8
    .param p1, "time"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 488
    const-string/jumbo v0, "yyyyMMddHHmmss.SSS"

    .line 489
    .local v0, "format":Ljava/lang/String;
    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    if-nez v1, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lorg/bouncycastle/asn1/LocaleUtil;->EN_Locale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 490
    .local v1, "dateF":Ljava/text/SimpleDateFormat;
    :goto_0
    new-instance v2, Ljava/util/SimpleTimeZone;

    const/4 v3, 0x0

    const-string v4, "Z"

    invoke-direct {v2, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .local v2, "sBuild":Ljava/lang/StringBuilder;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 494
    .local v3, "dotIndex":I
    if-gez v3, :cond_1

    .line 497
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    new-instance v4, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 502
    :cond_1
    iget v5, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    packed-switch v5, :pswitch_data_0

    .line 520
    new-instance v4, Lorg/bouncycastle/tsp/TSPException;

    iget v5, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown time-stamp resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 518
    :pswitch_0
    goto :goto_1

    .line 511
    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x3

    if-le v5, v6, :cond_2

    .line 513
    add-int/lit8 v5, v3, 0x3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 505
    :pswitch_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x2

    if-le v5, v6, :cond_2

    .line 507
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 524
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_3

    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 529
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v5, v3, :cond_4

    .line 531
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 534
    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    new-instance v4, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addAttributeCertificates(Lorg/bouncycastle/util/Store;)V
    .locals 2
    .param p1, "attrStore"    # Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrStore"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    return-void
.end method

.method public addCRLs(Lorg/bouncycastle/util/Store;)V
    .locals 2
    .param p1, "crlStore"    # Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crlStore"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    return-void
.end method

.method public addCertificates(Lorg/bouncycastle/util/Store;)V
    .locals 2
    .param p1, "certStore"    # Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certStore"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    return-void
.end method

.method public addOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/util/Store;)V
    .locals 2
    .param p1, "otherRevocationInfoFormat"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "otherRevocationInfos"    # Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "otherRevocationInfoFormat",
            "otherRevocationInfos"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;)Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1
    .param p1, "request"    # Lorg/bouncycastle/tsp/TimeStampRequest;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "genTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "serialNumber",
            "genTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 16
    .param p1, "request"    # Lorg/bouncycastle/tsp/TimeStampRequest;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "genTime"    # Ljava/util/Date;
    .param p4, "additionalExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "serialNumber",
            "genTime",
            "additionalExtensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 363
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintAlgID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 364
    .local v4, "algID":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v0, Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintDigest()[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/asn1/tsp/MessageImprint;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    move-object v8, v0

    .line 366
    .local v8, "messageImprint":Lorg/bouncycastle/asn1/tsp/MessageImprint;
    const/4 v0, 0x0

    .line 367
    .local v0, "accuracy":Lorg/bouncycastle/asn1/tsp/Accuracy;
    iget v5, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    if-gtz v5, :cond_1

    iget v5, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    if-gtz v5, :cond_1

    iget v5, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v11, v0

    goto :goto_1

    .line 369
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 370
    .local v5, "seconds":Lorg/bouncycastle/asn1/ASN1Integer;
    iget v6, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    if-lez v6, :cond_2

    .line 372
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v7, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    int-to-long v9, v7

    invoke-direct {v6, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    move-object v5, v6

    .line 375
    :cond_2
    const/4 v6, 0x0

    .line 376
    .local v6, "millis":Lorg/bouncycastle/asn1/ASN1Integer;
    iget v7, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    if-lez v7, :cond_3

    .line 378
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v9, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    move-object v6, v7

    .line 381
    :cond_3
    const/4 v7, 0x0

    .line 382
    .local v7, "micros":Lorg/bouncycastle/asn1/ASN1Integer;
    iget v9, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    if-lez v9, :cond_4

    .line 384
    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v10, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    move-object v7, v9

    .line 387
    :cond_4
    new-instance v9, Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-direct {v9, v5, v6, v7}, Lorg/bouncycastle/asn1/tsp/Accuracy;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V

    move-object v0, v9

    move-object v11, v0

    .line 390
    .end local v0    # "accuracy":Lorg/bouncycastle/asn1/tsp/Accuracy;
    .end local v5    # "seconds":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v6    # "millis":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v7    # "micros":Lorg/bouncycastle/asn1/ASN1Integer;
    .local v11, "accuracy":Lorg/bouncycastle/asn1/tsp/Accuracy;
    :goto_1
    const/4 v0, 0x0

    .line 391
    .local v0, "derOrdering":Lorg/bouncycastle/asn1/ASN1Boolean;
    iget-boolean v5, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    if-eqz v5, :cond_5

    .line 393
    iget-boolean v5, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    move-object v12, v0

    goto :goto_2

    .line 391
    :cond_5
    move-object v12, v0

    .line 396
    .end local v0    # "derOrdering":Lorg/bouncycastle/asn1/ASN1Boolean;
    .local v12, "derOrdering":Lorg/bouncycastle/asn1/ASN1Boolean;
    :goto_2
    const/4 v0, 0x0

    .line 397
    .local v0, "nonce":Lorg/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getNonce()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 399
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getNonce()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v5

    move-object v13, v0

    goto :goto_3

    .line 397
    :cond_6
    move-object v13, v0

    .line 402
    .end local v0    # "nonce":Lorg/bouncycastle/asn1/ASN1Integer;
    .local v13, "nonce":Lorg/bouncycastle/asn1/ASN1Integer;
    :goto_3
    iget-object v0, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsaPolicyOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 403
    .local v0, "tsaPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 405
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    move-object v7, v0

    goto :goto_4

    .line 403
    :cond_7
    move-object v7, v0

    .line 408
    .end local v0    # "tsaPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v7, "tsaPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 409
    .local v0, "respExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    if-eqz v3, :cond_a

    .line 411
    new-instance v5, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 413
    .local v5, "extGen":Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    if-eqz v0, :cond_8

    .line 415
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v6

    .local v6, "en":Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 417
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    goto :goto_5

    .line 420
    .end local v6    # "en":Ljava/util/Enumeration;
    :cond_8
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v6

    .restart local v6    # "en":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 422
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    goto :goto_6

    .line 425
    .end local v6    # "en":Ljava/util/Enumeration;
    :cond_9
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    move-object v15, v0

    goto :goto_7

    .line 409
    .end local v5    # "extGen":Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    :cond_a
    move-object v15, v0

    .line 429
    .end local v0    # "respExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    .local v15, "respExtensions":Lorg/bouncycastle/asn1/x509/Extensions;
    :goto_7
    iget v0, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    if-nez v0, :cond_c

    .line 431
    iget-object v0, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    if-nez v0, :cond_b

    new-instance v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    goto :goto_8

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v5, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    :goto_8
    move-object v10, v0

    .local v0, "timeStampTime":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    goto :goto_9

    .line 435
    .end local v0    # "timeStampTime":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    :cond_c
    invoke-direct {v1, v2}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->createGeneralizedTime(Ljava/util/Date;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    move-object v10, v0

    .line 438
    .local v10, "timeStampTime":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    :goto_9
    new-instance v6, Lorg/bouncycastle/asn1/tsp/TSTInfo;

    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object/from16 v5, p2

    invoke-direct {v9, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iget-object v14, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct/range {v6 .. v15}, Lorg/bouncycastle/asn1/tsp/TSTInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/tsp/Accuracy;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 445
    .local v6, "tstInfo":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    :try_start_0
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;-><init>()V

    .line 447
    .local v0, "signedDataGenerator":Lorg/bouncycastle/cms/CMSSignedDataGenerator;
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getCertReq()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 450
    new-instance v9, Lorg/bouncycastle/util/CollectionStore;

    iget-object v14, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    invoke-direct {v9, v14}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v9}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addCertificates(Lorg/bouncycastle/util/Store;)V

    .line 451
    new-instance v9, Lorg/bouncycastle/util/CollectionStore;

    iget-object v14, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    invoke-direct {v9, v14}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v9}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addAttributeCertificates(Lorg/bouncycastle/util/Store;)V

    .line 454
    :cond_d
    new-instance v9, Lorg/bouncycastle/util/CollectionStore;

    iget-object v14, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    invoke-direct {v9, v14}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v9}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addCRLs(Lorg/bouncycastle/util/Store;)V

    .line 456
    iget-object v9, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 458
    iget-object v9, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 460
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 462
    .local v14, "format":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v2, Lorg/bouncycastle/util/CollectionStore;

    iget-object v3, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v14, v2}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/util/Store;)V

    .line 463
    .end local v14    # "format":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto :goto_a

    .line 466
    .end local v9    # "it":Ljava/util/Iterator;
    :cond_e
    iget-object v2, v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addSignerInfoGenerator(Lorg/bouncycastle/cms/SignerInfoGenerator;)V

    .line 468
    const-string v2, "DER"

    invoke-virtual {v6, v2}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    .line 470
    .local v2, "derEncodedTSTInfo":[B
    new-instance v3, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_TSTInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v9, v2}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v9, 0x1

    invoke-virtual {v0, v3, v9}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v3

    .line 472
    .local v3, "signedData":Lorg/bouncycastle/cms/CMSSignedData;
    new-instance v9, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-direct {v9, v3}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 478
    .end local v0    # "signedDataGenerator":Lorg/bouncycastle/cms/CMSSignedDataGenerator;
    .end local v2    # "derEncodedTSTInfo":[B
    .end local v3    # "signedData":Lorg/bouncycastle/cms/CMSSignedData;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/tsp/TSPException;

    const-string v3, "Exception encoding info"

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 474
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 476
    .local v0, "cmsEx":Lorg/bouncycastle/cms/CMSException;
    new-instance v2, Lorg/bouncycastle/tsp/TSPException;

    const-string v3, "Error generating time-stamp token"

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setAccuracyMicros(I)V
    .locals 0
    .param p1, "accuracyMicros"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accuracyMicros"
        }
    .end annotation

    .line 315
    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    .line 316
    return-void
.end method

.method public setAccuracyMillis(I)V
    .locals 0
    .param p1, "accuracyMillis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accuracyMillis"
        }
    .end annotation

    .line 310
    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    .line 311
    return-void
.end method

.method public setAccuracySeconds(I)V
    .locals 0
    .param p1, "accuracySeconds"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accuracySeconds"
        }
    .end annotation

    .line 305
    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    .line 306
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    .line 301
    return-void
.end method

.method public setOrdering(Z)V
    .locals 0
    .param p1, "ordering"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ordering"
        }
    .end annotation

    .line 320
    iput-boolean p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    .line 321
    return-void
.end method

.method public setResolution(I)V
    .locals 0
    .param p1, "resolution"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    .line 289
    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    .line 290
    return-void
.end method

.method public setTSA(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "tsa"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tsa"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 326
    return-void
.end method
