.class public Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;
.super Ljava/lang/Object;
.source "FalconParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final falcon_1024:Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

.field public static final falcon_512:Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->falcon_512:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->falcon_512:Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->falcon_1024:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->falcon_1024:Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->parameters:Ljava/util/Map;

    .line 20
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "falcon-512"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->falcon_512:Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "falcon-1024"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->falcon_1024:Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 38
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
