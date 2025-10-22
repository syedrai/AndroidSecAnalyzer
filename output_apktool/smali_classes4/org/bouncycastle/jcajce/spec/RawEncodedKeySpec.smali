.class public Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "RawEncodedKeySpec.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 19
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "RAW"

    return-object v0
.end method
