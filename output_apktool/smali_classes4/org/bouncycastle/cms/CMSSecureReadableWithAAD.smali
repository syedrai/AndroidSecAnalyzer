.class interface abstract Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;
.super Ljava/lang/Object;
.source "CMSSecureReadableWithAAD.java"

# interfaces
.implements Lorg/bouncycastle/cms/CMSSecureReadable;


# virtual methods
.method public abstract getAADStream()Ljava/io/OutputStream;
.end method

.method public abstract getMAC()[B
.end method

.method public abstract setAADStream(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation
.end method
