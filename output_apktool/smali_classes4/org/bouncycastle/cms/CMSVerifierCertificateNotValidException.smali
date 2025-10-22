.class public Lorg/bouncycastle/cms/CMSVerifierCertificateNotValidException;
.super Lorg/bouncycastle/cms/CMSException;
.source "CMSVerifierCertificateNotValidException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method
