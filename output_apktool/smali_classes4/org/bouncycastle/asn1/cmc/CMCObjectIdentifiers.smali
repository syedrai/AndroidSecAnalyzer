.class public interface abstract Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;
.super Ljava/lang/Object;
.source "CMCObjectIdentifiers.java"


# static fields
.field public static final id_cct:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cct_PKIData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cct_PKIResponse:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_addExtensions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_authData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_batchRequests:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_batchResponses:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_confirmCertAcceptance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_controlProcessed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_dataReturn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_decryptedPOP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_encryptedPOP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_getCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_getCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_identification:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_identityProof:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_identityProofV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_lraPOPWitness:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_modCertTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_popLinkRandom:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_popLinkWitness:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_popLinkWitnessV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_publishCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_queryPending:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_recipientNonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_responseInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_revokeRequest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_senderNonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_statusInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_statusInfoV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_transactionId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_trustedAnchors:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_kp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_kp_cmKGA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_kp_cmcCA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_kp_cmcRA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "12"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_kp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_identityProof:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "4"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_dataReturn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "18"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "19"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_responseInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "21"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_queryPending:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "22"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_popLinkRandom:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "23"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_popLinkWitness:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "2"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_identification:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "5"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_transactionId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "6"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_senderNonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_recipientNonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct_PKIData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct_PKIResponse:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_statusInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_addExtensions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_encryptedPOP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_decryptedPOP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "11"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_lraPOPWitness:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_getCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "16"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_getCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "17"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_revokeRequest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 71
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "24"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_confirmCertAcceptance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_statusInfoV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 82
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "26"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_trustedAnchors:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "27"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_authData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 87
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "28"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_batchRequests:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "29"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_batchResponses:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 90
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "30"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_publishCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "31"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_modCertTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "32"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_controlProcessed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 101
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "34"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_identityProofV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "33"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_popLinkWitnessV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_kp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_kp_cmcCA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 119
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_kp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_kp_cmcRA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 126
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_kp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_kp_cmKGA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
