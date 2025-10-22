.class public interface abstract Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;
.super Ljava/lang/Object;
.source "CMPObjectIdentifiers.java"


# static fields
.field public static final ct_encKeyWithID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dhBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_caCerts:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_certProfile:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_certReqTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_crlStatusList:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_crls:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_rootCaCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_it_rootCaKeyUpdate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pkip:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl_algId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regCtrl_rsaKeyLen:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_caKeyUpdateInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_caProtEncCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_confirmWaitTime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_currentCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_encKeyPairTypes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_implicitConfirm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_keyPairParamRep:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_keyPairParamReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_origPKIMessage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_preferredSymAlg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_revPassphrase:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_signKeyPairTypes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_suppLangTags:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final it_unsupportedOIDs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_altCertTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_authenticator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_oldCertID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_pkiPublicationInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_protocolEncrKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regInfo_certReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final regInfo_utf8Pairs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113533.7.66.13"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113533.7.66.30"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->dhBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 63
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_caProtEncCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_signKeyPairTypes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_encKeyPairTypes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_preferredSymAlg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_caKeyUpdateInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_currentCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_unsupportedOIDs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 96
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_keyPairParamReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 100
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "11"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_keyPairParamRep:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 104
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_revPassphrase:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 108
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_implicitConfirm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "14"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_confirmWaitTime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 116
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_origPKIMessage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "16"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->it_suppLangTags:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 126
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "17"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_caCerts:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 133
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "18"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_rootCaKeyUpdate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 140
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_certReqTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 147
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_rootCaCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 153
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_certProfile:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 155
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_crlStatusList:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 157
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "23"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_it_crls:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 182
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_pkip:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 187
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_regCtrl:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 191
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 197
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 201
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_authenticator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 205
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_pkiPublicationInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 209
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 213
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_oldCertID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 217
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_protocolEncrKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 223
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.1.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regCtrl_altCertTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 228
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regInfo_utf8Pairs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 232
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.5.2.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->regInfo_certReq:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 241
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113549.1.9.16.1.21"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->ct_encKeyWithID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 249
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_pkip:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.11"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_regCtrl_algId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 256
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_pkip:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.12"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->id_regCtrl_rsaKeyLen:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
