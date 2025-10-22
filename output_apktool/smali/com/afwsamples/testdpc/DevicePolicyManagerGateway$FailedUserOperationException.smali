.class public final Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedUserOperationException;
.super Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;
.source "DevicePolicyManagerGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FailedUserOperationException"
.end annotation


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "method",
            "args"
        }
    .end annotation

    .line 841
    invoke-static {p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedUserOperationException;->userStatusToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    return-void
.end method

.method private static userStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 845
    packed-switch p0, :pswitch_data_0

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_STATUS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 857
    :pswitch_0
    const-string v0, "ERROR_MAX_USERS"

    return-object v0

    .line 851
    :pswitch_1
    const-string v0, "ERROR_LOW_STORAGE"

    return-object v0

    .line 849
    :pswitch_2
    const-string v0, "ERROR_CURRENT_USER"

    return-object v0

    .line 855
    :pswitch_3
    const-string v0, "ERROR_MAX_RUNNING_USERS"

    return-object v0

    .line 853
    :pswitch_4
    const-string v0, "ERROR_MAX_MANAGED_PROFILE"

    return-object v0

    .line 859
    :pswitch_5
    const-string v0, "ERROR_UNKNOWN"

    return-object v0

    .line 847
    :pswitch_6
    const-string v0, "SUCCESS"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
