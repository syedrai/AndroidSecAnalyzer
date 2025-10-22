.class public Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;
.super Ljava/lang/Exception;
.source "ImprintDigestInvalidException.java"


# instance fields
.field private token:Lorg/bouncycastle/tsp/TimeStampToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/tsp/TimeStampToken;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "token"    # Lorg/bouncycastle/tsp/TimeStampToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "token"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;->token:Lorg/bouncycastle/tsp/TimeStampToken;

    .line 15
    return-void
.end method


# virtual methods
.method public getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;->token:Lorg/bouncycastle/tsp/TimeStampToken;

    return-object v0
.end method
