.class public interface abstract Lorg/bouncycastle/mime/MimeParserProvider;
.super Ljava/lang/Object;
.source "MimeParserProvider.java"


# virtual methods
.method public abstract createParser(Ljava/io/InputStream;)Lorg/bouncycastle/mime/MimeParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createParser(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Lorg/bouncycastle/mime/MimeParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headers",
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
