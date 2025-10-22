.class public Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;
.super Lorg/bouncycastle/pkix/util/filter/UntrustedInput;
.source "UntrustedUrlInput.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    .line 12
    return-void
.end method
