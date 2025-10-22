.class public Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;
.super Ljava/lang/Object;
.source "RainbowParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static parameters:Ljava/util/Map;

.field public static final rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

.field public static final rainbowIIIclassic:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

.field public static final rainbowIIIcompressed:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

.field public static final rainbowVcircumzenithal:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

.field public static final rainbowVclassic:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

.field public static final rainbowVcompressed:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowIIIclassic:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    .line 16
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowIIIcompressed:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    .line 18
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowVclassic:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    .line 19
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowVcircumzenithal:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    .line 20
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowVcompressed:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    .line 26
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "rainbow-iii-classic"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowIIIclassic:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "rainbow-iii-circumzenithal"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "rainbow-iii-compressed"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowIIIcompressed:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "rainbow-v-classic"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowVclassic:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "rainbow-v-circumzenithal"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowVcircumzenithal:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "rainbow-v-compressed"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->rainbowVcompressed:Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;
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

    .line 48
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
