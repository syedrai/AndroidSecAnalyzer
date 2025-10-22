.class public Lorg/bouncycastle/tsp/ers/ERSException;
.super Ljava/lang/Exception;
.source "ERSException.java"


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSException;->cause:Ljava/lang/Throwable;

    .line 23
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
