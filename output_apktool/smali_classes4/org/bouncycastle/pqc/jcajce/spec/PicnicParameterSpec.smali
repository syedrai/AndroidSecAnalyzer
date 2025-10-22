.class public Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;
.super Ljava/lang/Object;
.source "PicnicParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static parameters:Ljava/util/Map;

.field public static final picnic3l1:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnic3l3:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnic3l5:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnicl1fs:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnicl1full:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnicl1ur:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnicl3fs:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnicl3full:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnicl3ur:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnicl5fs:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnicl5full:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

.field public static final picnicl5ur:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl1fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl1fs:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl1ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl1ur:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl3fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl3fs:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 16
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl3ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl3ur:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 17
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl5fs:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl5fs:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 18
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl5ur:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl5ur:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 19
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnic3l1:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnic3l1:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 20
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnic3l3:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnic3l3:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 21
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnic3l5:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnic3l5:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 22
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl1full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl1full:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 23
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl3full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl3full:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 24
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->picnicl5full:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl5full:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    .line 30
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnicl1fs"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl1fs:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnicl1ur"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl1ur:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnicl3fs"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl3fs:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnicl3ur"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl3ur:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnicl5fs"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl5fs:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnicl5ur"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl5ur:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnic3l1"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnic3l1:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnic3l3"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnic3l3:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnic3l5"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnic3l5:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnicl1full"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl1full:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnicl3full"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl3full:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "picnicl5full"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->picnicl5full:Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;
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

    .line 58
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/PicnicParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
