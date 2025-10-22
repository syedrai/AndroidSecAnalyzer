.class public Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;
.super Ljava/lang/Object;
.source "SNTRUPrimeParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static parameters:Ljava/util/Map;

.field public static final sntrup1013:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

.field public static final sntrup1277:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

.field public static final sntrup653:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

.field public static final sntrup761:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

.field public static final sntrup857:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

.field public static final sntrup953:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup653:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup653:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup761:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup761:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup857:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup857:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    .line 16
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup953:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup953:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    .line 17
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup1013:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup1013:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    .line 18
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup1277:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup1277:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    .line 24
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string/jumbo v1, "sntrup653"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup653:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string/jumbo v1, "sntrup761"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup761:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string/jumbo v1, "sntrup857"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup857:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string/jumbo v1, "sntrup953"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup953:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string/jumbo v1, "sntrup1013"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup1013:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    const-string/jumbo v1, "sntrup1277"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->sntrup1277:Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
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
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;
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
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/SNTRUPrimeParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
