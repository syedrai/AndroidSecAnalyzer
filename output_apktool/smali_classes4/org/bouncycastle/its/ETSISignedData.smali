.class public Lorg/bouncycastle/its/ETSISignedData;
.super Ljava/lang/Object;
.source "ETSISignedData.java"


# static fields
.field private static final oerDef:Lorg/bouncycastle/oer/Element;


# instance fields
.field private final signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Signed:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/its/ETSISignedData;->oerDef:Lorg/bouncycastle/oer/Element;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "str"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    instance-of v0, p1, Lorg/bouncycastle/oer/OERInputStream;

    if-eqz v0, :cond_0

    .line 47
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/oer/OERInputStream;

    .local v0, "oerIn":Lorg/bouncycastle/oer/OERInputStream;
    goto :goto_0

    .line 51
    .end local v0    # "oerIn":Lorg/bouncycastle/oer/OERInputStream;
    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/OERInputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/oer/OERInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .restart local v0    # "oerIn":Lorg/bouncycastle/oer/OERInputStream;
    :goto_0
    sget-object v1, Lorg/bouncycastle/its/ETSISignedData;->oerDef:Lorg/bouncycastle/oer/Element;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    .line 55
    .local v1, "asn1":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;->getContent()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object v2

    .line 56
    .local v2, "content":Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->getChoice()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 60
    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->getIeee1609Dot2Content()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    .line 62
    return-void

    .line 58
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "EtsiTs103097Data-Signed did not have signed data content"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;)V
    .locals 3
    .param p1, "etsiTs103097Data_signed"    # Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "etsiTs103097Data_signed"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;->getContent()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object v0

    .line 67
    .local v0, "content":Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->getChoice()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 71
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;->getContent()Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    .line 72
    return-void

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "EtsiTs103097Data-Signed did not have signed data content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)V
    .locals 1
    .param p1, "opaque"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opaque"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/its/ETSISignedData;-><init>(Ljava/io/InputStream;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)V
    .locals 0
    .param p1, "signedData"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signedData"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    .line 77
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "oerEncoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oerEncoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/its/ETSISignedData;-><init>(Ljava/io/InputStream;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    .line 102
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;

    iget-object v1, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    .line 104
    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->signedData(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataSigned;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Signed:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 105
    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignedData()Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    return-object v0
.end method

.method public signatureValid(Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;)Z
    .locals 5
    .param p1, "verifierProvider"    # Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifierProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    .line 91
    .local v0, "sig":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;->getChoice()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v1

    .line 92
    .local v1, "verifier":Lorg/bouncycastle/operator/ContentVerifier;
    invoke-interface {v1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 93
    .local v2, "os":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getTbsData()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedData;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 94
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 96
    iget-object v3, p0, Lorg/bouncycastle/its/ETSISignedData;->signedData:Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getSignature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toX962(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)[B

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v3

    return v3
.end method
