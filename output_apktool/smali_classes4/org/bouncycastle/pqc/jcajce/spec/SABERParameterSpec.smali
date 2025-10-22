.class public Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;
.super Ljava/lang/Object;
.source "SABERParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final firesaberkem128r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

.field public static final firesaberkem192r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

.field public static final firesaberkem256r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

.field public static final lightsaberkem128r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

.field public static final lightsaberkem192r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

.field public static final lightsaberkem256r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

.field private static parameters:Ljava/util/Map;

.field public static final saberkem128r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

.field public static final saberkem192r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

.field public static final saberkem256r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->lightsaberkem128r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->saberkem128r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->firesaberkem128r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    .line 16
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->lightsaberkem192r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    .line 17
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->saberkem192r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    .line 18
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->firesaberkem192r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    .line 19
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->lightsaberkem256r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    .line 20
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->saberkem256r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    .line 21
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->firesaberkem256r3:Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->parameters:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;
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
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/SABERParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
