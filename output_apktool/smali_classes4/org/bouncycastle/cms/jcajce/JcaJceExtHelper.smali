.class interface abstract Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;
.super Ljava/lang/Object;
.source "JcaJceExtHelper.java"

# interfaces
.implements Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# virtual methods
.method public abstract createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyEncryptionAlgorithm",
            "keyEncryptionKey"
        }
    .end annotation
.end method

.method public abstract createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;[B[B)Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyEncryptionAlgorithm",
            "keyEncryptionKey",
            "partyUInfo",
            "partyVInfo"
        }
    .end annotation
.end method

.method public abstract createKEMUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyEncryptionAlgorithm",
            "keyEncryptionKey"
        }
    .end annotation
.end method

.method public abstract createSymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyEncryptionAlgorithm",
            "keyEncryptionKey"
        }
    .end annotation
.end method
