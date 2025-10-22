.class interface abstract Lorg/bouncycastle/eac/jcajce/EACHelper;
.super Ljava/lang/Object;
.source "EACHelper.java"


# virtual methods
.method public abstract createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method
