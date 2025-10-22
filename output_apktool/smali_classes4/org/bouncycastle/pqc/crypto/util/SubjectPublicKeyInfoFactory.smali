.class public Lorg/bouncycastle/pqc/crypto/util/SubjectPublicKeyInfoFactory;
.super Ljava/lang/Object;
.source "SubjectPublicKeyInfoFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static createSubjectPublicKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 10
    .param p0, "publicKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    instance-of v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    .line 66
    .local v0, "keyParams":Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->qTeslaLookupAlgID(I)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 68
    .local v1, "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v2

    .line 70
    .end local v0    # "keyParams":Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;
    .end local v1    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    if-eqz v0, :cond_1

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    .line 74
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;

    .line 75
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincs256LookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    .restart local v1    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getKeyData()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v2

    .line 78
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;
    .end local v1    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    if-eqz v0, :cond_2

    .line 80
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    .line 82
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 83
    .restart local v1    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v2

    .line 85
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;
    .end local v1    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 87
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    .line 89
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes(Lorg/bouncycastle/util/Encodable;)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v1

    .line 91
    .local v1, "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 92
    .local v2, "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 94
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;

    if-eqz v0, :cond_4

    .line 96
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;

    .line 98
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;->getL()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;->getLMSPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes(Lorg/bouncycastle/util/Encodable;)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v1

    .line 100
    .restart local v1    # "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 101
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 103
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    if-eqz v0, :cond_5

    .line 105
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    .line 107
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 109
    .restart local v1    # "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincsPlusOidLookup(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 110
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v3, v2, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v3

    .line 112
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_5
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    if-eqz v0, :cond_6

    .line 114
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    .line 116
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 118
    .restart local v1    # "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->mcElieceOidLookup(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 120
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v3, v2, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v3

    .line 122
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_6
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    if-eqz v0, :cond_8

    .line 124
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    .line 126
    .local v0, "keyParams":Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getPublicSeed()[B

    move-result-object v1

    .line 127
    .local v1, "publicSeed":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getRoot()[B

    move-result-object v2

    .line 128
    .local v2, "root":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getEncoded()[B

    move-result-object v3

    .line 129
    .local v3, "keyEnc":[B
    array-length v4, v3

    array-length v5, v1

    array-length v6, v2

    add-int/2addr v5, v6

    if-le v4, v5, :cond_7

    .line 131
    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 133
    .local v4, "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v5, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v5, v4, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v5

    .line 137
    .end local v4    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_7
    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;

    .line 138
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/util/Utils;->xmssLookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;-><init>(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 140
    .restart local v4    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v5, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v6, Lorg/bouncycastle/pqc/asn1/XMSSPublicKey;

    invoke-direct {v6, v1, v2}, Lorg/bouncycastle/pqc/asn1/XMSSPublicKey;-><init>([B[B)V

    invoke-direct {v5, v4, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v5

    .line 143
    .end local v0    # "keyParams":Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
    .end local v1    # "publicSeed":[B
    .end local v2    # "root":[B
    .end local v3    # "keyEnc":[B
    .end local v4    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    if-eqz v0, :cond_a

    .line 145
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    .line 147
    .local v0, "keyParams":Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getPublicSeed()[B

    move-result-object v1

    .line 148
    .restart local v1    # "publicSeed":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object v2

    .line 149
    .restart local v2    # "root":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getEncoded()[B

    move-result-object v3

    .line 150
    .restart local v3    # "keyEnc":[B
    array-length v4, v3

    array-length v5, v1

    array-length v6, v2

    add-int/2addr v5, v6

    if-le v4, v5, :cond_9

    .line 152
    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 154
    .restart local v4    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v5, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v5, v4, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v5

    .line 158
    .end local v4    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_9
    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v8

    .line 159
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/util/Utils;->xmssLookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;-><init>(IILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 160
    .restart local v4    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v5, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v6, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getPublicSeed()[B

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/pqc/asn1/XMSSMTPublicKey;-><init>([B[B)V

    invoke-direct {v5, v4, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v5

    .line 163
    .end local v0    # "keyParams":Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;
    .end local v1    # "publicSeed":[B
    .end local v2    # "root":[B
    .end local v3    # "keyEnc":[B
    .end local v4    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_b

    .line 165
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .line 166
    .local v0, "pub":Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getG()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getAlgorithmIdentifier(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;-><init>(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 167
    .local v1, "mcEliecePub":Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 169
    .local v2, "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v3, v2, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 171
    .end local v0    # "pub":Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;
    .end local v1    # "mcEliecePub":Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_b
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;

    if-eqz v0, :cond_c

    .line 173
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;

    .line 175
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 177
    .local v1, "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->frodoOidLookup(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 179
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 181
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_c
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;

    if-eqz v0, :cond_d

    .line 183
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;

    .line 185
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 187
    .restart local v1    # "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->saberOidLookup(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 189
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 191
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_d
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    if-eqz v0, :cond_e

    .line 193
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    .line 195
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 197
    .restart local v1    # "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->picnicOidLookup(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 198
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 200
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_e
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    if-eqz v0, :cond_f

    .line 202
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    .line 204
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 206
    .restart local v1    # "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntruOidLookup(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 207
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 209
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_f
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    if-eqz v0, :cond_10

    .line 211
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    .line 213
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getH()[B

    move-result-object v2

    .line 214
    .local v2, "encoding":[B
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/util/Utils;->falconOidLookup(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 216
    .local v3, "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    array-length v4, v2

    add-int/2addr v4, v1

    new-array v4, v4, [B

    .line 217
    .local v4, "keyEnc":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v5

    const/4 v6, 0x0

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 218
    array-length v5, v2

    invoke-static {v2, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    .line 222
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;
    .end local v2    # "encoding":[B
    .end local v3    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "keyEnc":[B
    :cond_10
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    if-eqz v0, :cond_11

    .line 224
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    .line 226
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/util/Utils;->kyberOidLookup(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 228
    .local v1, "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v2

    .line 230
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;
    .end local v1    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_11
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;

    if-eqz v0, :cond_12

    .line 232
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;

    .line 234
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 235
    .local v1, "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntrulprimeOidLookup(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 237
    .local v2, "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 239
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_12
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;

    if-eqz v0, :cond_13

    .line 241
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;

    .line 243
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 244
    .restart local v1    # "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sntruprimeOidLookup(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 246
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 248
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_13
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    if-eqz v0, :cond_14

    .line 250
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    .line 252
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/util/Utils;->dilithiumOidLookup(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 254
    .local v1, "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v2

    .line 256
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;
    .end local v1    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_14
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;

    if-eqz v0, :cond_15

    .line 258
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;

    .line 260
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 262
    .local v1, "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->bikeOidLookup(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 264
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v3, v2, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v3

    .line 266
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_15
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;

    if-eqz v0, :cond_16

    .line 268
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;

    .line 270
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 272
    .restart local v1    # "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->hqcOidLookup(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 274
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v3, v2, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v3

    .line 276
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_16
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    if-eqz v0, :cond_17

    .line 278
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    .line 280
    .local v0, "params":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getEncoded()[B

    move-result-object v1

    .line 282
    .restart local v1    # "encoding":[B
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->rainbowOidLookup(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 284
    .restart local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 288
    .end local v0    # "params":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    .end local v1    # "encoding":[B
    .end local v2    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "key parameters not recognized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
