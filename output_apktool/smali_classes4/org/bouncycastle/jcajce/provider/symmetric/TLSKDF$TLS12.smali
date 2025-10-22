.class public Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;
.super Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;
.source "TLSKDF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TLS12"
.end annotation


# instance fields
.field private final prf:Lorg/bouncycastle/crypto/Mac;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Mac;)V
    .locals 0
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "prf"    # Lorg/bouncycastle/crypto/Mac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algName",
            "prf"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;-><init>(Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->prf:Lorg/bouncycastle/crypto/Mac;

    .line 114
    return-void
.end method

.method private PRF(Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;Lorg/bouncycastle/crypto/Mac;)[B
    .locals 4
    .param p1, "parameters"    # Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;
    .param p2, "prf"    # Lorg/bouncycastle/crypto/Mac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "prf"
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    .local v0, "label":[B
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    .line 132
    .local v1, "labelSeed":[B
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getSecret()[B

    move-result-object v2

    .line 134
    .local v2, "secret":[B
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getLength()I

    move-result v3

    new-array v3, v3, [B

    .line 136
    .local v3, "buf":[B
    invoke-static {p2, v2, v1, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->-$$Nest$smhmac_hash(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    .line 138
    return-object v3
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySpec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 120
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->prf:Lorg/bouncycastle/crypto/Mac;

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->PRF(Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;Lorg/bouncycastle/crypto/Mac;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
