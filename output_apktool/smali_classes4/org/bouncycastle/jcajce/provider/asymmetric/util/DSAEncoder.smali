.class public interface abstract Lorg/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;
.super Ljava/lang/Object;
.source "DSAEncoder.java"


# virtual methods
.method public abstract decode([B)[Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
