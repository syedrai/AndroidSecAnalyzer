.class Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;
.super Ljava/lang/Object;
.source "TimeStampTokenGenerator.java"

# interfaces
.implements Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/tsp/TimeStampTokenGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$essCertid:Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

.field final synthetic val$signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ess/ESSCertIDv2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/tsp/TimeStampTokenGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$signerInfoGen",
            "val$essCertid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 216
    iput-object p2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;->val$signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    iput-object p3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;->val$essCertid:Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 4
    .param p1, "parameters"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSAttributeTableGenerationException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;->val$signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getSignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 222
    .local v0, "table":Lorg/bouncycastle/asn1/cms/AttributeTable;
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificateV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v1

    if-nez v1, :cond_0

    .line 224
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificateV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/ess/SigningCertificateV2;

    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;->val$essCertid:Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ess/SigningCertificateV2;-><init>(Lorg/bouncycastle/asn1/ess/ESSCertIDv2;)V

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/cms/AttributeTable;->add(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    return-object v1

    .line 227
    :cond_0
    return-object v0
.end method
