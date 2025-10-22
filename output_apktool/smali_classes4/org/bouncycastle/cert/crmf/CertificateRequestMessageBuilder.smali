.class public Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
.super Ljava/lang/Object;
.source "CertificateRequestMessageBuilder.java"


# instance fields
.field private agreeMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

.field private final certReqId:Ljava/math/BigInteger;

.field private controls:Ljava/util/List;

.field private extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

.field private password:[C

.field private pkmacBuilder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

.field private popRaVerified:Lorg/bouncycastle/asn1/ASN1Null;

.field private popSigner:Lorg/bouncycastle/operator/ContentSigner;

.field private popoPrivKey:Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

.field private popoType:I

.field private regInfo:[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

.field private sender:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private templateBuilder:Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "certReqId"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certReqId"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoType:I

    .line 56
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->certReqId:Ljava/math/BigInteger;

    .line 58
    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->controls:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->regInfo:[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    .line 62
    return-void
.end method

.method private createTime(Ljava/util/Date;)Lorg/bouncycastle/asn1/x509/Time;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 137
    if-eqz p1, :cond_0

    .line 139
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    return-object v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addControl(Lorg/bouncycastle/cert/crmf/Control;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1
    .param p1, "control"    # Lorg/bouncycastle/cert/crmf/Control;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "control"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->controls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-object p0
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oid",
            "critical",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->addExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    return-object p0
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oid",
            "critical",
            "value"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 163
    return-object p0
.end method

.method public build()Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 262
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 264
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->certReqId:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 266
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    .line 271
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->build()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 273
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->controls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 275
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 277
    .local v2, "controlV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->controls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/cert/crmf/Control;

    .line 281
    .local v4, "control":Lorg/bouncycastle/cert/crmf/Control;
    new-instance v5, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    invoke-interface {v4}, Lorg/bouncycastle/cert/crmf/Control;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-interface {v4}, Lorg/bouncycastle/cert/crmf/Control;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 282
    .end local v4    # "control":Lorg/bouncycastle/cert/crmf/Control;
    goto :goto_0

    .line 284
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 287
    .end local v2    # "controlV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v2}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v2

    .line 290
    .local v2, "request":Lorg/bouncycastle/asn1/crmf/CertRequest;
    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/bouncycastle/operator/ContentSigner;

    if-eqz v3, :cond_6

    .line 292
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v1

    .line 295
    .local v1, "template":Lorg/bouncycastle/asn1/crmf/CertTemplate;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getPublicKey()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 311
    :cond_3
    new-instance v3, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;

    invoke-direct {v3, v2}, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;-><init>(Lorg/bouncycastle/asn1/crmf/CertRequest;)V

    .local v3, "builder":Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    goto :goto_3

    .line 297
    .end local v3    # "builder":Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getPublicKey()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 298
    .local v3, "pubKeyInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v4, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;

    invoke-direct {v4, v3}, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 300
    .local v4, "builder":Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v5, :cond_5

    .line 302
    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->setSender(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;

    goto :goto_2

    .line 306
    :cond_5
    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->pkmacBuilder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    iget-object v6, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->password:[C

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->setPublicKeyMac(Lorg/bouncycastle/cert/crmf/PKMACBuilder;[C)Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;

    .line 308
    .end local v3    # "pubKeyInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_2
    move-object v3, v4

    .line 314
    .end local v4    # "builder":Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    .local v3, "builder":Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    :goto_3
    new-instance v4, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/bouncycastle/operator/ContentSigner;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;-><init>(Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)V

    .line 315
    .end local v1    # "template":Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .end local v3    # "builder":Lorg/bouncycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    .local v4, "proofOfPossession":Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    goto :goto_4

    .line 316
    .end local v4    # "proofOfPossession":Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    :cond_6
    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    if-eqz v3, :cond_7

    .line 318
    new-instance v1, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    iget v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoType:I

    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;-><init>(ILorg/bouncycastle/asn1/crmf/POPOPrivKey;)V

    move-object v4, v1

    .restart local v4    # "proofOfPossession":Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    goto :goto_4

    .line 320
    .end local v4    # "proofOfPossession":Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    :cond_7
    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->agreeMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    if-eqz v3, :cond_8

    .line 322
    new-instance v3, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    new-instance v4, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->agreeMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;-><init>(Lorg/bouncycastle/asn1/crmf/PKMACValue;)V

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;-><init>(ILorg/bouncycastle/asn1/crmf/POPOPrivKey;)V

    move-object v4, v3

    .restart local v4    # "proofOfPossession":Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    goto :goto_4

    .line 324
    .end local v4    # "proofOfPossession":Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popRaVerified:Lorg/bouncycastle/asn1/ASN1Null;

    if-eqz v1, :cond_9

    .line 326
    new-instance v1, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;-><init>()V

    move-object v4, v1

    .restart local v4    # "proofOfPossession":Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    goto :goto_4

    .line 330
    .end local v4    # "proofOfPossession":Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    :cond_9
    new-instance v1, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;-><init>()V

    move-object v4, v1

    .line 333
    .restart local v4    # "proofOfPossession":Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    :goto_4
    new-instance v1, Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->regInfo:[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;-><init>(Lorg/bouncycastle/asn1/crmf/CertRequest;Lorg/bouncycastle/asn1/crmf/ProofOfPossession;[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;)V

    .line 335
    .local v1, "certReqMsg":Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    new-instance v3, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;

    invoke-direct {v3, v1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    return-object v3
.end method

.method public setAuthInfoPKMAC(Lorg/bouncycastle/cert/crmf/PKMACBuilder;[C)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 0
    .param p1, "pkmacBuilder"    # Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkmacBuilder",
            "password"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->pkmacBuilder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    .line 242
    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->password:[C

    .line 244
    return-object p0
.end method

.method public setAuthInfoSender(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1
    .param p1, "sender"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sender"
        }
    .end annotation

    .line 249
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->setAuthInfoSender(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAuthInfoSender(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 0
    .param p1, "sender"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sender"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 256
    return-object p0
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 83
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    .line 88
    :cond_0
    return-object p0
.end method

.method public setProofOfPossessionAgreeMAC(Lorg/bouncycastle/asn1/crmf/PKMACValue;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 2
    .param p1, "macValue"    # Lorg/bouncycastle/asn1/crmf/PKMACValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "macValue"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/bouncycastle/operator/ContentSigner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popRaVerified:Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    if-nez v0, :cond_0

    .line 222
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->agreeMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    .line 224
    return-object p0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only one proof of possession allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProofOfPossessionRaVerified()Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/bouncycastle/operator/ContentSigner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popRaVerified:Lorg/bouncycastle/asn1/ASN1Null;

    .line 236
    return-object p0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only one proof of possession allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProofOfPossessionSigningKeySigner(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 2
    .param p1, "popSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popSigner"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popRaVerified:Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->agreeMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    if-nez v0, :cond_0

    .line 180
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/bouncycastle/operator/ContentSigner;

    .line 182
    return-object p0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only one proof of possession allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProofOfPossessionSubsequentMessage(ILorg/bouncycastle/asn1/crmf/SubsequentMessage;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 2
    .param p1, "type"    # I
    .param p2, "msg"    # Lorg/bouncycastle/asn1/crmf/SubsequentMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "msg"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/bouncycastle/operator/ContentSigner;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popRaVerified:Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->agreeMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    if-nez v0, :cond_2

    .line 204
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type must be ProofOfPossession.TYPE_KEY_ENCIPHERMENT or ProofOfPossession.TYPE_KEY_AGREEMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    :goto_0
    iput p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoType:I

    .line 210
    new-instance v0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;-><init>(Lorg/bouncycastle/asn1/crmf/SubsequentMessage;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    .line 212
    return-object p0

    .line 202
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only one proof of possession allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProofOfPossessionSubsequentMessage(Lorg/bouncycastle/asn1/crmf/SubsequentMessage;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 2
    .param p1, "msg"    # Lorg/bouncycastle/asn1/crmf/SubsequentMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popSigner:Lorg/bouncycastle/operator/ContentSigner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popRaVerified:Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->agreeMAC:Lorg/bouncycastle/asn1/crmf/PKMACValue;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoType:I

    .line 193
    new-instance v0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;-><init>(Lorg/bouncycastle/asn1/crmf/SubsequentMessage;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->popoPrivKey:Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    .line 195
    return-object p0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only one proof of possession allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1
    .param p1, "publicKey"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 73
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->setPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    .line 78
    :cond_0
    return-object p0
.end method

.method public setRegInfo([Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 0
    .param p1, "regInfo"    # [Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "regInfo"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->regInfo:[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    .line 68
    return-object p0
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialNumber"
        }
    .end annotation

    .line 103
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->setSerialNumber(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    .line 108
    :cond_0
    return-object p0
.end method

.method public setSerialNumber(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1
    .param p1, "serialNumber"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialNumber"
        }
    .end annotation

    .line 113
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->setSerialNumber(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    .line 118
    :cond_0
    return-object p0
.end method

.method public setSubject(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 1
    .param p1, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subject"
        }
    .end annotation

    .line 93
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->setSubject(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    .line 98
    :cond_0
    return-object p0
.end method

.method public setValidity(Ljava/util/Date;Ljava/util/Date;)Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;
    .locals 4
    .param p1, "notBeforeDate"    # Ljava/util/Date;
    .param p2, "notAfterDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "notBeforeDate",
            "notAfterDate"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->templateBuilder:Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    new-instance v1, Lorg/bouncycastle/asn1/crmf/OptionalValidity;

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->createTime(Ljava/util/Date;)Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-direct {p0, p2}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessageBuilder;->createTime(Ljava/util/Date;)Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/crmf/OptionalValidity;-><init>(Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;->setValidity(Lorg/bouncycastle/asn1/crmf/OptionalValidity;)Lorg/bouncycastle/asn1/crmf/CertTemplateBuilder;

    .line 132
    return-object p0
.end method
