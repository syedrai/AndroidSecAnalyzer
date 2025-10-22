.class public Lorg/bouncycastle/util/test/TestFailedException;
.super Ljava/lang/RuntimeException;
.source "TestFailedException.java"


# instance fields
.field private _result:Lorg/bouncycastle/util/test/TestResult;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/test/TestResult;)V
    .locals 0
    .param p1, "result"    # Lorg/bouncycastle/util/test/TestResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/bouncycastle/util/test/TestFailedException;->_result:Lorg/bouncycastle/util/test/TestResult;

    .line 12
    return-void
.end method


# virtual methods
.method public getResult()Lorg/bouncycastle/util/test/TestResult;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/util/test/TestFailedException;->_result:Lorg/bouncycastle/util/test/TestResult;

    return-object v0
.end method
