.class public Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;
.super Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
.source "PQCOtherInfoGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartyV"
.end annotation


# instance fields
.field private encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/KEMParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V
    .locals 2
    .param p1, "kemParams"    # Lorg/bouncycastle/pqc/crypto/KEMParameters;
    .param p2, "algorithmID"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "partyUInfo"    # [B
    .param p4, "partyVInfo"    # [B
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kemParams",
            "algorithmID",
            "partyUInfo",
            "partyVInfo",
            "random"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V

    .line 155
    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;

    goto :goto_0

    .line 159
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown KEMParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/crypto/util/DEROtherInfo;
    .locals 2

    .line 202
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->used:Z

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->used:Z

    .line 209
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->build()Lorg/bouncycastle/crypto/util/DEROtherInfo;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "builder already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuppPrivInfoPartB([B)[B
    .locals 3
    .param p1, "suppPrivInfoPartA"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppPrivInfoPartA"
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->used:Z

    .line 188
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->-$$Nest$smgetPublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v0

    .line 190
    .local v0, "bEp":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->withSuppPrivInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    .line 192
    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 194
    .end local v0    # "bEp":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot decode public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public withSuppPubInfo([B)Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
    .locals 1
    .param p1, "suppPubInfo"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppPubInfo"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->withSuppPubInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    .line 179
    return-object p0
.end method
