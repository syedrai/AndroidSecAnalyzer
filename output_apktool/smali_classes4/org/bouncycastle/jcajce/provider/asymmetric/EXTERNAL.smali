.class public Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;
.super Ljava/lang/Object;
.source "EXTERNAL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$Mappings;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$ExternalKeyInfoConverter;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$KeyFactory;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.asymmetric.EXTERNAL"

.field private static baseConverter:Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

.field private static final externalAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetbaseConverter()Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->baseConverter:Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputbaseConverter(Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .locals 0

    sput-object p0, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->baseConverter:Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->externalAttributes:Ljava/util/Map;

    .line 29
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->externalAttributes:Ljava/util/Map;

    const-string v1, "SupportedKeyClasses"

    const-string v2, "org.bouncycastle.jcajce.ExternalPublicKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;->externalAttributes:Ljava/util/Map;

    const-string v1, "SupportedKeyFormats"

    const-string v2, "X.509"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
