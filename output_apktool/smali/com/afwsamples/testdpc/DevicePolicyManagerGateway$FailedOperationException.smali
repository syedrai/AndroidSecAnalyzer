.class public final Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedOperationException;
.super Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;
.source "DevicePolicyManagerGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FailedOperationException"
.end annotation


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "args"
        }
    .end annotation

    .line 821
    const-string v0, "false"

    invoke-direct {p0, v0, p1, p2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    return-void
.end method
