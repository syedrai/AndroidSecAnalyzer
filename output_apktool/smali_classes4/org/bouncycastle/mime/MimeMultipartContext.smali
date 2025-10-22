.class public interface abstract Lorg/bouncycastle/mime/MimeMultipartContext;
.super Ljava/lang/Object;
.source "MimeMultipartContext.java"

# interfaces
.implements Lorg/bouncycastle/mime/MimeContext;


# virtual methods
.method public abstract createContext(I)Lorg/bouncycastle/mime/MimeContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
