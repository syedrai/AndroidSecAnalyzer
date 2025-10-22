.class public Lorg/bouncycastle/jcajce/util/PrivateKeyAnnotator;
.super Ljava/lang/Object;
.source "PrivateKeyAnnotator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static annotate(Ljava/security/PrivateKey;Ljava/lang/String;)Lorg/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .locals 1
    .param p0, "privKey"    # Ljava/security/PrivateKey;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privKey",
            "label"
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public static annotate(Ljava/security/PrivateKey;Ljava/util/Map;)Lorg/bouncycastle/jcajce/util/AnnotatedPrivateKey;
    .locals 3
    .param p0, "privKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privKey",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/bouncycastle/jcajce/util/AnnotatedPrivateKey;"
        }
    .end annotation

    .line 27
    .local p1, "annotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 29
    .local v0, "savedAnnotations":Ljava/util/Map;
    new-instance v1, Lorg/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/jcajce/util/AnnotatedPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/util/Map;)V

    return-object v1
.end method
