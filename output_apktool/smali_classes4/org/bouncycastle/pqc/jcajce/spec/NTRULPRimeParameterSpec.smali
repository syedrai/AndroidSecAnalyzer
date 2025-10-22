.class public Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;
.super Ljava/lang/Object;
.source "NTRULPRimeParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final ntrulpr1013:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field public static final ntrulpr1277:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field public static final ntrulpr653:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field public static final ntrulpr761:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field public static final ntrulpr857:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field public static final ntrulpr953:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr653:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr653:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr761:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr761:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr857:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr857:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    .line 16
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr953:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr953:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    .line 17
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr1013:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr1013:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    .line 18
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr1277:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr1277:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    .line 24
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntrulpr653"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr653:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntrulpr761"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr761:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntrulpr857"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr857:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntrulpr953"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr953:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntrulpr1013"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr1013:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "ntrulpr1277"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr1277:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;
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

    .line 45
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
