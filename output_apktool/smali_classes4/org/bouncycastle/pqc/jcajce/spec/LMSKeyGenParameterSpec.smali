.class public Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "LMSKeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static final otsParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final sigParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final lmOtsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field private final lmSigParams:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->otsParameters:Ljava/util/Map;

    .line 21
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-sha256-n32-h5"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-sha256-n32-h10"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-sha256-n32-h15"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-sha256-n32-h20"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-sha256-n32-h25"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-sha256-n24-h5"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-sha256-n24-h10"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-sha256-n24-h15"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-sha256-n24-h20"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-sha256-n24-h25"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-shake256-n32-h5"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-shake256-n32-h10"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-shake256-n32-h15"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-shake256-n32-h20"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-shake256-n32-h25"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-shake256-n24-h5"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-shake256-n24-h10"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-shake256-n24-h15"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-shake256-n24-h20"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    const-string v1, "lms-shake256-n24-h25"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->otsParameters:Ljava/util/Map;

    const-string/jumbo v1, "sha256-n32-w1"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->otsParameters:Ljava/util/Map;

    const-string/jumbo v1, "sha256-n32-w2"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->otsParameters:Ljava/util/Map;

    const-string/jumbo v1, "sha256-n32-w4"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->otsParameters:Ljava/util/Map;

    const-string/jumbo v1, "sha256-n32-w8"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)V
    .locals 0
    .param p1, "lmSigParams"    # Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .param p2, "lmOtsParameters"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lmSigParams",
            "lmOtsParameters"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->lmSigParams:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 60
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->lmOtsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 61
    return-void
.end method

.method public static fromNames(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;
    .locals 4
    .param p0, "sigParams"    # Ljava/lang/String;
    .param p1, "otsParams"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sigParams",
            "otsParams"
        }
    .end annotation

    .line 85
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " not recognized"

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->otsParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->sigParameters:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->otsParameters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)V

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LM OTS parameter name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LM signature parameter name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getOtsParams()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->lmOtsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    return-object v0
.end method

.method public getSigParams()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->lmSigParams:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    return-object v0
.end method
