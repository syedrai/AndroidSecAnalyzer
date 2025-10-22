.class public interface abstract Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;
.super Ljava/lang/Object;
.source "EncryptedValuePadder.java"


# virtual methods
.method public abstract getPaddedData([B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract getUnpaddedData([B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paddedData"
        }
    .end annotation
.end method
