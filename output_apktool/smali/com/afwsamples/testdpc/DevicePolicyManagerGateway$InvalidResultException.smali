.class public Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;
.super Ljava/lang/Exception;
.source "DevicePolicyManagerGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidResultException"
.end annotation


# instance fields
.field private final mMethod:Ljava/lang/String;

.field private final mResult:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "method",
            "args"
        }
    .end annotation

    .line 796
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 797
    iput-object p1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;->mResult:Ljava/lang/String;

    .line 798
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;->mMethod:Ljava/lang/String;

    .line 799
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 803
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;->mMethod:Ljava/lang/String;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;->mResult:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DPM."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
