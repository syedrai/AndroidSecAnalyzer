.class public Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;
.super Ljava/lang/Object;
.source "DilithiumParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final dilithium2:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

.field public static final dilithium3:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

.field public static final dilithium5:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->dilithium2:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->dilithium2:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->dilithium3:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->dilithium3:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->dilithium5:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->dilithium5:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->parameters:Ljava/util/Map;

    .line 21
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "dilithium2"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->dilithium2:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "dilithium3"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->dilithium3:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "dilithium5"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->dilithium5:Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;
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

    .line 40
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
