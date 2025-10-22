.class public interface abstract Lorg/bouncycastle/est/jcajce/JsseHostnameAuthorizer;
.super Ljava/lang/Object;
.source "JsseHostnameAuthorizer.java"


# virtual methods
.method public abstract verified(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
