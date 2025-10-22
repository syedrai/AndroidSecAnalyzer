.class public Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;
.super Lorg/bouncycastle/tsp/ers/ERSException;
.source "ArchiveTimeStampValidationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
