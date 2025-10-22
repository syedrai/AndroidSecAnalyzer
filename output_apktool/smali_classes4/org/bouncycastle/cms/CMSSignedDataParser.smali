.class public Lorg/bouncycastle/cms/CMSSignedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;
.source "CMSSignedDataParser.java"


# static fields
.field private static final HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

.field private static final dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;


# instance fields
.field private _certSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private _crlSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private _isCertCrlParsed:Z

.field private _signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

.field private _signedContentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private _signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

.field private _signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

.field private digestAlgorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private digests:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    .line 91
    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .param p2, "sigData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestCalculatorProvider",
            "sigData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/cms/CMSSignedDataParser;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V
    .locals 9
    .param p1, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .param p2, "signedContent"    # Lorg/bouncycastle/cms/CMSTypedStream;
    .param p3, "sigData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestCalculatorProvider",
            "signedContent",
            "sigData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 144
    invoke-direct {p0, p3}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    .line 148
    :try_start_0
    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedDataParser;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    .line 155
    .local v0, "digAlgs":Lorg/bouncycastle/asn1/ASN1SetParser;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 157
    .local v1, "algSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    :goto_0
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SetParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v3, v2

    .local v3, "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v2, :cond_1

    .line 159
    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 161
    .local v2, "algId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    :try_start_1
    invoke-interface {p1, v2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v4

    .line 167
    .local v4, "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    if-eqz v4, :cond_0

    .line 169
    iget-object v5, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .end local v4    # "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    :cond_0
    goto :goto_1

    .line 172
    :catch_0
    move-exception v4

    .line 176
    .end local v2    # "algId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :goto_1
    goto :goto_0

    .line 178
    :cond_1
    :try_start_2
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digestAlgorithms:Ljava/util/Set;

    .line 183
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v2

    .line 184
    .local v2, "cont":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 186
    .local v4, "contentParser":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v5, v4, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz v5, :cond_3

    .line 188
    move-object v5, v4

    check-cast v5, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    .line 190
    .local v5, "octs":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    new-instance v6, Lorg/bouncycastle/cms/CMSTypedStream;

    .line 191
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-interface {v5}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    .line 193
    .local v6, "ctStr":Lorg/bouncycastle/cms/CMSTypedStream;
    iget-object v7, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    if-nez v7, :cond_2

    .line 195
    iput-object v6, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    goto :goto_2

    .line 202
    :cond_2
    invoke-virtual {v6}, Lorg/bouncycastle/cms/CMSTypedStream;->drain()V

    .line 204
    .end local v5    # "octs":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    .end local v6    # "ctStr":Lorg/bouncycastle/cms/CMSTypedStream;
    :goto_2
    goto :goto_3

    .line 205
    :cond_3
    if-eqz v4, :cond_5

    .line 207
    new-instance v5, Lorg/bouncycastle/cms/PKCS7TypedStream;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/cms/PKCS7TypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 209
    .local v5, "pkcs7Stream":Lorg/bouncycastle/cms/PKCS7TypedStream;
    iget-object v6, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    if-nez v6, :cond_4

    .line 211
    iput-object v5, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    goto :goto_3

    .line 218
    :cond_4
    invoke-virtual {v5}, Lorg/bouncycastle/cms/PKCS7TypedStream;->drain()V

    .line 222
    .end local v5    # "pkcs7Stream":Lorg/bouncycastle/cms/PKCS7TypedStream;
    :cond_5
    :goto_3
    if-nez p2, :cond_6

    .line 224
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_4

    .line 228
    :cond_6
    iget-object v5, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {v5}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 234
    .end local v0    # "digAlgs":Lorg/bouncycastle/asn1/ASN1SetParser;
    .end local v1    # "algSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    .end local v2    # "cont":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .end local v3    # "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v4    # "contentParser":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_4
    nop

    .line 235
    return-void

    .line 231
    :catch_1
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "io exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSTypedStream;[B)V
    .locals 1
    .param p1, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .param p2, "signedContent"    # Lorg/bouncycastle/cms/CMSTypedStream;
    .param p3, "sigBlock"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestCalculatorProvider",
            "signedContent",
            "sigBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/cms/CMSSignedDataParser;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;[B)V
    .locals 1
    .param p1, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .param p2, "sigBlock"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestCalculatorProvider",
            "sigBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedDataParser;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Ljava/io/InputStream;)V

    .line 109
    return-void
.end method

.method private static getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1
    .param p0, "asn1SetParser"    # Lorg/bouncycastle/asn1/ASN1SetParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asn1SetParser"
        }
    .end annotation

    .line 606
    if-nez p0, :cond_0

    .line 607
    const/4 v0, 0x0

    goto :goto_0

    .line 608
    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 606
    :goto_0
    return-object v0
.end method

.method private static pipeEncapsulatedOctetString(Lorg/bouncycastle/asn1/cms/ContentInfoParser;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "encapContentInfo"    # Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .param p1, "rawOutputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encapContentInfo",
            "rawOutputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    nop

    .line 615
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    .line 617
    .local v0, "octs":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    if-eqz v0, :cond_0

    .line 619
    invoke-static {v0, p1}, Lorg/bouncycastle/cms/CMSSignedDataParser;->pipeOctetString(Lorg/bouncycastle/asn1/ASN1OctetStringParser;Ljava/io/OutputStream;)V

    .line 640
    :cond_0
    return-void
.end method

.method private static pipeOctetString(Lorg/bouncycastle/asn1/ASN1OctetStringParser;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "octs"    # Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "octs",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v0

    .line 650
    .local v0, "outOctets":Ljava/io/OutputStream;
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 651
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 652
    return-void
.end method

.method private populateCertCrlSets()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 363
    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_isCertCrlParsed:Z

    if-eqz v0, :cond_0

    .line 365
    return-void

    .line 368
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_isCertCrlParsed:Z

    .line 373
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCertificates()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_certSet:Lorg/bouncycastle/asn1/ASN1Set;

    .line 374
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCrls()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_crlSet:Lorg/bouncycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    nop

    .line 380
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "problem parsing cert/crl sets"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static replaceCertificatesAndCRLs(Ljava/io/InputStream;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 14
    .param p0, "original"    # Ljava/io/InputStream;
    .param p1, "certs"    # Lorg/bouncycastle/util/Store;
    .param p2, "crls"    # Lorg/bouncycastle/util/Store;
    .param p3, "attrCerts"    # Lorg/bouncycastle/util/Store;
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "certs",
            "crls",
            "attrCerts",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    move-object/from16 v0, p4

    new-instance v1, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    .line 507
    .local v1, "in":Lorg/bouncycastle/asn1/ASN1StreamParser;
    new-instance v2, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    .line 508
    .local v2, "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedDataParser;

    move-result-object v3

    .line 510
    .local v3, "signedData":Lorg/bouncycastle/asn1/cms/SignedDataParser;
    new-instance v4, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 512
    .local v4, "sGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    sget-object v5, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 514
    new-instance v5, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 517
    .local v5, "sigGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 520
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v9

    invoke-interface {v9}, Lorg/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 523
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v6

    .line 525
    .local v6, "encapContentInfo":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    new-instance v9, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 527
    .local v9, "eiGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 529
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/bouncycastle/cms/CMSSignedDataParser;->pipeEncapsulatedOctetString(Lorg/bouncycastle/asn1/cms/ContentInfoParser;Ljava/io/OutputStream;)V

    .line 531
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    .line 536
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCertificates()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;

    .line 537
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCrls()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;

    .line 542
    if-nez p1, :cond_0

    if-eqz p3, :cond_3

    .line 544
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v10, "certificates":Ljava/util/List;
    if-eqz p1, :cond_1

    .line 548
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 550
    :cond_1
    if-eqz p3, :cond_2

    .line 552
    invoke-static/range {p3 .. p3}, Lorg/bouncycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 555
    :cond_2
    invoke-static {v10}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v11

    .line 557
    .local v11, "asn1Certs":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 559
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    new-instance v13, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v13, v7, v7, v11}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/DERTaggedObject;->getEncoded()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    .line 563
    .end local v10    # "certificates":Ljava/util/List;
    .end local v11    # "asn1Certs":Lorg/bouncycastle/asn1/ASN1Set;
    :cond_3
    if-eqz p2, :cond_4

    .line 565
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v10

    .line 567
    .local v10, "asn1Crls":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 569
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    new-instance v12, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v12, v7, v8, v10}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/DERTaggedObject;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/io/OutputStream;->write([B)V

    .line 573
    .end local v10    # "asn1Crls":Lorg/bouncycastle/asn1/ASN1Set;
    :cond_4
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v8

    invoke-interface {v8}, Lorg/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 575
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    .line 577
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    .line 579
    return-object v0
.end method

.method public static replaceSigners(Ljava/io/InputStream;Lorg/bouncycastle/cms/SignerInformationStore;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 13
    .param p0, "original"    # Ljava/io/InputStream;
    .param p1, "signerInformationStore"    # Lorg/bouncycastle/cms/SignerInformationStore;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "signerInformationStore",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    new-instance v0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    .line 426
    .local v0, "in":Lorg/bouncycastle/asn1/ASN1StreamParser;
    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    .line 427
    .local v1, "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedDataParser;

    move-result-object v2

    .line 429
    .local v2, "signedData":Lorg/bouncycastle/asn1/cms/SignedDataParser;
    new-instance v3, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 431
    .local v3, "sGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    sget-object v4, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 433
    new-instance v4, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 436
    .local v4, "sigGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 439
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 441
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 443
    .local v5, "digestAlgs":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 445
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/cms/SignerInformation;

    .line 446
    .local v9, "signer":Lorg/bouncycastle/cms/SignerInformation;
    sget-object v10, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v9}, Lorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    sget-object v12, Lorg/bouncycastle/cms/CMSSignedDataParser;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-virtual {v10, v11, v12}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 447
    .end local v9    # "signer":Lorg/bouncycastle/cms/SignerInformation;
    goto :goto_0

    .line 449
    .end local v8    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v9, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/DERSet;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 452
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v8

    .line 454
    .local v8, "encapContentInfo":Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    new-instance v9, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 456
    .local v9, "eiGen":Lorg/bouncycastle/asn1/BERSequenceGenerator;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 458
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-static {v8, v10}, Lorg/bouncycastle/cms/CMSSignedDataParser;->pipeEncapsulatedOctetString(Lorg/bouncycastle/asn1/cms/ContentInfoParser;Ljava/io/OutputStream;)V

    .line 460
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    .line 463
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCertificates()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v10

    invoke-static {v4, v10, v6}, Lorg/bouncycastle/cms/CMSSignedDataParser;->writeSetToGeneratorTagged(Lorg/bouncycastle/asn1/ASN1Generator;Lorg/bouncycastle/asn1/ASN1SetParser;I)V

    .line 464
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCrls()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v6

    invoke-static {v4, v6, v7}, Lorg/bouncycastle/cms/CMSSignedDataParser;->writeSetToGeneratorTagged(Lorg/bouncycastle/asn1/ASN1Generator;Lorg/bouncycastle/asn1/ASN1SetParser;I)V

    .line 467
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 468
    .local v6, "signerInfos":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 470
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/cms/SignerInformation;

    .line 472
    .local v10, "signer":Lorg/bouncycastle/cms/SignerInformation;
    invoke-virtual {v10}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 473
    .end local v10    # "signer":Lorg/bouncycastle/cms/SignerInformation;
    goto :goto_1

    .line 475
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    new-instance v10, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v10, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/DERSet;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/OutputStream;->write([B)V

    .line 477
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    .line 479
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    .line 481
    return-object p2
.end method

.method private static writeSetToGeneratorTagged(Lorg/bouncycastle/asn1/ASN1Generator;Lorg/bouncycastle/asn1/ASN1SetParser;I)V
    .locals 4
    .param p0, "asn1Gen"    # Lorg/bouncycastle/asn1/ASN1Generator;
    .param p1, "asn1SetParser"    # Lorg/bouncycastle/asn1/ASN1SetParser;
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "asn1Gen",
            "asn1SetParser",
            "tagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 590
    .local v0, "asn1Set":Lorg/bouncycastle/asn1/ASN1Set;
    if-eqz v0, :cond_1

    .line 592
    instance-of v1, p1, Lorg/bouncycastle/asn1/BERSetParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Generator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-direct {v3, v2, p2, v0}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/BERTaggedObject;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Generator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, p2, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERTaggedObject;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 601
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAttributeCertificates()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 341
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_certSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getAttributeCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCRLs()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 328
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_crlSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCRLs(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 315
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_certSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digestAlgorithms:Ljava/util/Set;

    return-object v0
.end method

.method public getOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/util/Store;
    .locals 2
    .param p1, "otherRevocationInfoFormat"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherRevocationInfoFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 357
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_crlSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getSignedContent()Lorg/bouncycastle/cms/CMSTypedStream;
    .locals 3

    .line 395
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x0

    return-object v0

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    .line 401
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    .line 400
    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->attachDigestsToInputStream(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 403
    .local v0, "digStream":Ljava/io/InputStream;
    new-instance v1, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public getSignedContentTypeOID()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    if-nez v0, :cond_2

    .line 267
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "signerInfos":Ljava/util/List;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v1, "hashes":Ljava/util/Map;
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 273
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 277
    .local v3, "digestKey":Ljava/lang/Object;
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .end local v3    # "digestKey":Ljava/lang/Object;
    goto :goto_0

    .line 282
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v3

    .line 285
    .local v3, "s":Lorg/bouncycastle/asn1/ASN1SetParser;
    :goto_1
    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1SetParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    move-object v5, v4

    .local v5, "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v4, :cond_1

    .line 287
    invoke-interface {v5}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v4

    .line 289
    .local v4, "info":Lorg/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 291
    .local v6, "hash":[B
    new-instance v7, Lorg/bouncycastle/cms/SignerInformation;

    iget-object v8, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v9, 0x0

    invoke-direct {v7, v4, v8, v9, v6}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    nop

    .end local v4    # "info":Lorg/bouncycastle/asn1/cms/SignerInfo;
    .end local v6    # "hash":[B
    goto :goto_1

    .line 297
    .end local v3    # "s":Lorg/bouncycastle/asn1/ASN1SetParser;
    .end local v5    # "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    nop

    .line 299
    new-instance v3, Lorg/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v3, v0}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    goto :goto_2

    .line 294
    :catch_0
    move-exception v3

    .line 296
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "io exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 302
    .end local v0    # "signerInfos":Ljava/util/List;
    .end local v1    # "hashes":Ljava/util/Map;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method
