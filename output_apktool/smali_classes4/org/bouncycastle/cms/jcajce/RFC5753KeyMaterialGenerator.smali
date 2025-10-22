.class Lorg/bouncycastle/cms/jcajce/RFC5753KeyMaterialGenerator;
.super Ljava/lang/Object;
.source "RFC5753KeyMaterialGenerator.java"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKDFMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)[B
    .locals 6
    .param p1, "keyAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "keySize"    # I
    .param p3, "userKeyMaterialParameters"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyAlgorithm",
            "keySize",
            "userKeyMaterialParameters"
        }
    .end annotation

    .line 15
    new-instance v0, Lorg/bouncycastle/asn1/cms/ecc/ECCCMSSharedInfo;

    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v1

    invoke-direct {v0, p1, p3, v1}, Lorg/bouncycastle/asn1/cms/ecc/ECCCMSSharedInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)V

    .line 19
    .local v0, "eccInfo":Lorg/bouncycastle/asn1/cms/ecc/ECCCMSSharedInfo;
    :try_start_0
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/ecc/ECCCMSSharedInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 21
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create KDF material: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
