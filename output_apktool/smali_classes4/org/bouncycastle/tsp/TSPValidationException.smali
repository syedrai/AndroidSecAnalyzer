.class public Lorg/bouncycastle/tsp/TSPValidationException;
.super Lorg/bouncycastle/tsp/TSPException;
.source "TSPValidationException.java"


# instance fields
.field private failureCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/tsp/TSPValidationException;->failureCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "failureCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "failureCode"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/tsp/TSPValidationException;->failureCode:I

    .line 22
    iput p2, p0, Lorg/bouncycastle/tsp/TSPValidationException;->failureCode:I

    .line 23
    return-void
.end method


# virtual methods
.method public getFailureCode()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/bouncycastle/tsp/TSPValidationException;->failureCode:I

    return v0
.end method
