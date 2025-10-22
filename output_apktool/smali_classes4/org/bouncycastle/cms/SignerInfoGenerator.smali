.class public Lorg/bouncycastle/cms/SignerInfoGenerator;
.super Ljava/lang/Object;
.source "SignerInfoGenerator.java"


# instance fields
.field private calculatedDigest:[B

.field private certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

.field private final digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final digester:Lorg/bouncycastle/operator/DigestCalculator;

.field private final sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field private final sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private final signer:Lorg/bouncycastle/operator/ContentSigner;

.field private final signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

.field private final unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .locals 1
    .param p1, "signerIdentifier"    # Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .param p2, "signer"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p3, "digesterAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "sigEncAlgFinder"    # Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "signerIdentifier",
            "signer",
            "digesterAlgorithm",
            "sigEncAlgFinder"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 45
    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    .line 46
    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    .line 47
    iput-object p3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 48
    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    .line 49
    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 50
    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 51
    iput-object p4, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 52
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 1
    .param p1, "signerIdentifier"    # Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .param p2, "signer"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p3, "digester"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p4, "sigEncAlgFinder"    # Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;
    .param p5, "sAttrGen"    # Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .param p6, "unsAttrGen"    # Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "signerIdentifier",
            "signer",
            "digester",
            "sigEncAlgFinder",
            "sAttrGen",
            "unsAttrGen"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 62
    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    .line 63
    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    .line 64
    invoke-interface {p3}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 65
    iput-object p3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    .line 66
    iput-object p5, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 67
    iput-object p6, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 68
    iput-object p4, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 1
    .param p1, "original"    # Lorg/bouncycastle/cms/SignerInfoGenerator;
    .param p2, "sAttrGen"    # Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .param p3, "unsAttrGen"    # Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "sAttrGen",
            "unsAttrGen"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 76
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    .line 77
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    .line 78
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 79
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    .line 80
    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 81
    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 82
    iput-object p3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 83
    return-void
.end method

.method private getAttributeSet(Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 2
    .param p1, "attr"    # Lorg/bouncycastle/asn1/cms/AttributeTable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attr"
        }
    .end annotation

    .line 214
    if-eqz p1, :cond_0

    .line 216
    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 3
    .param p1, "contentType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "digAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "sigAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "hash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "contentType",
            "digAlgId",
            "sigAlgId",
            "hash"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v0, "param":Ljava/util/Map;
    if-eqz p1, :cond_0

    .line 228
    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    const-string v1, "digestAlgID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string/jumbo v1, "signatureAlgID"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "digest"

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-object v0
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 9
    .param p1, "contentType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "signedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v2}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;->findEncryptionAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    move-object v6, v1

    .line 144
    .local v6, "digestEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v1, 0x0

    .line 146
    .local v1, "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 149
    .end local v1    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v2, "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 150
    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v1, v6, v3}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v1

    .line 151
    .local v1, "parameters":Ljava/util/Map;
    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v3

    .line 153
    .local v3, "signed":Lorg/bouncycastle/asn1/cms/AttributeTable;
    invoke-direct {p0, v3}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getAttributeSet(Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    move-object v0, v4

    .line 156
    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v4}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 158
    .local v4, "sOut":Ljava/io/OutputStream;
    const-string v5, "DER"

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 160
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 161
    .end local v1    # "parameters":Ljava/util/Map;
    .end local v3    # "signed":Lorg/bouncycastle/asn1/cms/AttributeTable;
    .end local v4    # "sOut":Ljava/io/OutputStream;
    move-object v5, v0

    goto :goto_1

    .line 164
    .end local v2    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v1, "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 165
    .end local v1    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v2    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    goto :goto_0

    .line 171
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 175
    :goto_0
    move-object v5, v0

    .end local v0    # "signedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    .local v5, "signedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v0

    .line 177
    .local v0, "sigBytes":[B
    const/4 v1, 0x0

    .line 178
    .local v1, "unsignedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v3, :cond_2

    .line 180
    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v2, v6, v3}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v3

    .line 181
    .local v3, "parameters":Ljava/util/Map;
    const-string v4, "encryptedDigest"

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v4

    .line 185
    .local v4, "unsigned":Lorg/bouncycastle/asn1/cms/AttributeTable;
    invoke-direct {p0, v4}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getAttributeSet(Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    move-object v1, v7

    move-object v8, v1

    goto :goto_2

    .line 178
    .end local v3    # "parameters":Ljava/util/Map;
    .end local v4    # "unsigned":Lorg/bouncycastle/asn1/cms/AttributeTable;
    :cond_2
    move-object v8, v1

    .line 188
    .end local v1    # "unsignedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    .local v8, "unsignedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v1, :cond_3

    .line 191
    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object v2, v1

    move-object v4, v2

    goto :goto_3

    .line 197
    :cond_3
    move-object v4, v2

    .end local v2    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v4, "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :goto_3
    new-instance v2, Lorg/bouncycastle/asn1/cms/SignerInfo;

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 200
    .end local v0    # "sigBytes":[B
    .end local v4    # "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v5    # "signedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v6    # "digestEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v8    # "unsignedAttr":Lorg/bouncycastle/asn1/ASN1Set;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "encoding error."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public getCalculatedDigest()[B
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalculatingOutputStream()Ljava/io/OutputStream;
    .locals 3

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lorg/bouncycastle/util/io/TeeOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v2}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getGeneratedVersion()I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public getSignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object v0
.end method

.method public getUnsignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setAssociatedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 0
    .param p1, "certHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certHolder"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 209
    return-void
.end method
