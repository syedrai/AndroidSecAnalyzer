.class public Lorg/bouncycastle/pkix/util/LocalizedException;
.super Ljava/lang/Exception;
.source "LocalizedException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field protected message:Lorg/bouncycastle/pkix/util/ErrorBundle;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    .locals 1
    .param p1, "message"    # Lorg/bouncycastle/pkix/util/ErrorBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pkix/util/ErrorBundle;->getText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/pkix/util/LocalizedException;->message:Lorg/bouncycastle/pkix/util/ErrorBundle;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Lorg/bouncycastle/pkix/util/ErrorBundle;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pkix/util/ErrorBundle;->getText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/pkix/util/LocalizedException;->message:Lorg/bouncycastle/pkix/util/ErrorBundle;

    .line 34
    iput-object p2, p0, Lorg/bouncycastle/pkix/util/LocalizedException;->cause:Ljava/lang/Throwable;

    .line 35
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedException;->message:Lorg/bouncycastle/pkix/util/ErrorBundle;

    return-object v0
.end method
