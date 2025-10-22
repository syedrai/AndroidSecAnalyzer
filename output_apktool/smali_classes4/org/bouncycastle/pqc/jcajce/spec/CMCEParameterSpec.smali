.class public Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;
.super Ljava/lang/Object;
.source "CMCEParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final mceliece348864:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece348864f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece460896:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece460896f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece6688128:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece6688128f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece6960119:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece6960119f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece8192128:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field public static final mceliece8192128f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece348864r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece348864:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece348864fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece348864f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece460896r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece460896:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    .line 16
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece460896fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece460896f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    .line 17
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6688128:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    .line 18
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6688128f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    .line 19
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6960119r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6960119:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    .line 20
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6960119fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6960119f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    .line 21
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece8192128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece8192128:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    .line 22
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece8192128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece8192128f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    .line 28
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "mceliece348864"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece348864:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "mceliece348864f"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece348864f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "mceliece460896"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece460896:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "mceliece460896f"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece460896f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "mceliece6688128"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6688128:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "mceliece6688128f"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6688128f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "mceliece6960119"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6960119:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "mceliece6960119f"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece6960119f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "mceliece8192128"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece8192128:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "mceliece8192128f"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->mceliece8192128f:Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;
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

    .line 54
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/CMCEParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
