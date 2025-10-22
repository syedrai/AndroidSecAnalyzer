.class public interface abstract Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;
.super Ljava/lang/Object;
.source "ChannelBindingProvider.java"


# virtual methods
.method public abstract canAccessChannelBinding(Ljava/net/Socket;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sock"
        }
    .end annotation
.end method

.method public abstract getChannelBinding(Ljava/net/Socket;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sock",
            "binding"
        }
    .end annotation
.end method
