.class Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;
.super Ljava/lang/Object;
.source "CMSAuthEnvelopedDataParser.java"

# interfaces
.implements Lorg/bouncycastle/cms/MACProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalMacProvider"
.end annotation


# instance fields
.field private final authEnvData:Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

.field private mac:[B

.field private final parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

.field private readable:Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)V
    .locals 0
    .param p1, "authEnvData"    # Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;
    .param p2, "parser"    # Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authEnvData",
            "parser"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->authEnvData:Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

    .line 274
    iput-object p2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    .line 275
    return-void
.end method


# virtual methods
.method public getMAC()[B
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->mac:[B

    return-object v0
.end method

.method public init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->-$$Nest$fputauthAttrs(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;Lorg/bouncycastle/asn1/cms/AttributeTable;)V

    .line 281
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->-$$Nest$fgetauthAttrs(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->readable:Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    invoke-static {v1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->-$$Nest$fgetauthAttrSet(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;->setAuthAttrSet(Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 284
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->readable:Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;->getAADStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    invoke-static {v1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->-$$Nest$fgetauthAttrs(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1Structure()Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cms/Attributes;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->authEnvData:Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->getMac()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->mac:[B

    .line 287
    return-void
.end method

.method setSecureReadable(Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;)V
    .locals 0
    .param p1, "secureReadable"    # Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secureReadable"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->readable:Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;

    .line 292
    return-void
.end method
