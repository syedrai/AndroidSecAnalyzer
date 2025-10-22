.class public Lorg/bouncycastle/jcajce/io/OutputStreamFactory;
.super Ljava/lang/Object;
.source "OutputStreamFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStream(Ljava/security/MessageDigest;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "digest"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/bouncycastle/jcajce/io/DigestUpdatingOutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/io/DigestUpdatingOutputStream;-><init>(Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static createStream(Ljava/security/Signature;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "signature"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;-><init>(Ljava/security/Signature;)V

    return-object v0
.end method

.method public static createStream(Ljavax/crypto/Mac;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "mac"    # Ljavax/crypto/Mac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mac"
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/bouncycastle/jcajce/io/MacUpdatingOutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/io/MacUpdatingOutputStream;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
