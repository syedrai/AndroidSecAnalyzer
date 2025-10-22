.class public Lorg/bouncycastle/its/ETSISignedDataBuilder;
.super Ljava/lang/Object;
.source "ETSISignedDataBuilder.java"


# static fields
.field private static final def:Lorg/bouncycastle/oer/Element;


# instance fields
.field private data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

.field private extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

.field private final headerInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->def:Lorg/bouncycastle/oer/Element;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)V
    .locals 0
    .param p1, "headerInfo"    # Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headerInfo"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->headerInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    .line 47
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)V
    .locals 2
    .param p1, "psid"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "psid"
        }
    .end annotation

    .line 41
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->setPsid(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;->now()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->setGenerationTime(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time64;)Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo$Builder;->createHeaderInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)V

    .line 42
    return-void
.end method

.method public static builder(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)Lorg/bouncycastle/its/ETSISignedDataBuilder;
    .locals 1
    .param p0, "headerInfo"    # Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headerInfo"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/bouncycastle/its/ETSISignedDataBuilder;

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)V

    return-object v0
.end method

.method public static builder(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)Lorg/bouncycastle/its/ETSISignedDataBuilder;
    .locals 1
    .param p0, "psid"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "psid"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/bouncycastle/its/ETSISignedDataBuilder;

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)V

    return-object v0
.end method

.method private getToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;
    .locals 3

    .line 84
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;

    iget-object v1, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    iget-object v2, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)V

    .line 86
    .local v0, "signedDataPayload":Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;->setPayload(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedDataPayload;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->headerInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;

    .line 88
    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;->setHeaderInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/HeaderInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData$Builder;->createToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v1

    .line 86
    return-object v1
.end method

.method private static write(Ljava/io/OutputStream;[B)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "os",
            "data"
        }
    .end annotation

    .line 166
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 167
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 168
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 174
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public build(Lorg/bouncycastle/its/operator/ITSContentSigner;)Lorg/bouncycastle/its/ETSISignedData;
    .locals 5
    .param p1, "signer"    # Lorg/bouncycastle/its/operator/ITSContentSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signer"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->getToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v0

    .line 102
    .local v0, "toBeSignedData":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/its/ETSISignedDataBuilder;->def:Lorg/bouncycastle/oer/Element;

    invoke-static {v0, v2}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->write(Ljava/io/OutputStream;[B)V

    .line 104
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getCurveID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v1

    .line 106
    .local v1, "signature":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    new-instance v2, Lorg/bouncycastle/its/ETSISignedData;

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    .line 107
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/its/ITSAlgorithmUtils;->getHashAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setHashId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    .line 108
    invoke-virtual {v3, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setTbsData(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    .line 109
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->self()Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSigner(Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    .line 110
    invoke-virtual {v3, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSignature(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->createSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/its/ETSISignedData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)V

    .line 106
    return-object v2
.end method

.method public build(Lorg/bouncycastle/its/operator/ITSContentSigner;Ljava/util/List;)Lorg/bouncycastle/its/ETSISignedData;
    .locals 6
    .param p1, "signer"    # Lorg/bouncycastle/its/operator/ITSContentSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signer",
            "certificateList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/its/operator/ITSContentSigner;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/its/ITSCertificate;",
            ">;)",
            "Lorg/bouncycastle/its/ETSISignedData;"
        }
    .end annotation

    .line 122
    .local p2, "certificateList":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/its/ITSCertificate;>;"
    invoke-direct {p0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->getToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v0

    .line 123
    .local v0, "toBeSignedData":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/its/ETSISignedDataBuilder;->def:Lorg/bouncycastle/oer/Element;

    invoke-static {v0, v2}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->write(Ljava/io/OutputStream;[B)V

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, "certificates":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/its/ITSCertificate;

    .line 128
    .local v3, "certificate":Lorg/bouncycastle/its/ITSCertificate;
    invoke-virtual {v3}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/Certificate;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v3    # "certificate":Lorg/bouncycastle/its/ITSCertificate;
    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getCurveID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v2

    .line 133
    .local v2, "signature":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    new-instance v3, Lorg/bouncycastle/its/ETSISignedData;

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v4

    .line 134
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/its/ITSAlgorithmUtils;->getHashAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setHashId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v4

    .line 135
    invoke-virtual {v4, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setTbsData(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;

    invoke-direct {v5, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;-><init>(Ljava/util/List;)V

    .line 136
    invoke-static {v5}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->certificate(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSigner(Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v4

    .line 137
    invoke-virtual {v4, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSignature(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->createSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/its/ETSISignedData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)V

    .line 133
    return-object v3
.end method

.method public build(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/its/ETSISignedData;
    .locals 5
    .param p1, "signer"    # Lorg/bouncycastle/its/operator/ITSContentSigner;
    .param p2, "identifier"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signer",
            "identifier"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->getToBeSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v0

    .line 151
    .local v0, "toBeSignedData":Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/its/ETSISignedDataBuilder;->def:Lorg/bouncycastle/oer/Element;

    invoke-static {v0, v2}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/its/ETSISignedDataBuilder;->write(Ljava/io/OutputStream;[B)V

    .line 153
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getCurveID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v1

    .line 155
    .local v1, "signature":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    new-instance v2, Lorg/bouncycastle/its/ETSISignedData;

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    .line 156
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/its/ITSAlgorithmUtils;->getHashAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setHashId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    .line 157
    invoke-virtual {v3, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setTbsData(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    .line 158
    invoke-static {p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->digest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSigner(Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    .line 159
    invoke-virtual {v3, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->setSignature(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData$Builder;->createSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/its/ETSISignedData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)V

    .line 155
    return-object v2
.end method

.method public setData(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)Lorg/bouncycastle/its/ETSISignedDataBuilder;
    .locals 3
    .param p1, "data"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 61
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;-><init>(I)V

    .line 62
    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->setProtocolVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->setContent(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->createIeee1609Dot2Data()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    .line 64
    return-object p0
.end method

.method public setExtDataHash(Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;)Lorg/bouncycastle/its/ETSISignedDataBuilder;
    .locals 0
    .param p1, "extDataHash"    # Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extDataHash"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->extDataHash:Lorg/bouncycastle/oer/its/ieee1609dot2/HashedData;

    .line 79
    return-object p0
.end method

.method public setUnsecuredData([B)Lorg/bouncycastle/its/ETSISignedDataBuilder;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 69
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;-><init>(I)V

    .line 70
    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->setProtocolVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    invoke-direct {v1, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;-><init>([B)V

    .line 72
    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->unsecuredData(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->setContent(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data$Builder;->createEtsiTs103097Data()Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/ETSISignedDataBuilder;->data:Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Data;

    .line 73
    return-object p0
.end method
