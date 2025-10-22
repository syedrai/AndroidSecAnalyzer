.class public Lorg/bouncycastle/asn1/cms/CompressedDataParser;
.super Ljava/lang/Object;
.source "CompressedDataParser.java"


# instance fields
.field private _compressionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private _encapContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

.field private _version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedDataParser;->_version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 31
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedDataParser;->_compressionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 32
    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedDataParser;->_encapContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    .line 33
    return-void
.end method


# virtual methods
.method public getCompressionAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedDataParser;->_compressionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedDataParser;->_encapContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedDataParser;->_version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
