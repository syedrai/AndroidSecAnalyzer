.class public interface abstract Lorg/bouncycastle/est/ESTClientSourceProvider;
.super Ljava/lang/Object;
.source "ESTClientSourceProvider.java"


# virtual methods
.method public abstract makeSource(Ljava/lang/String;I)Lorg/bouncycastle/est/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "port"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
