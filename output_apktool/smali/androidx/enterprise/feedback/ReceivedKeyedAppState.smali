.class public abstract Landroidx/enterprise/feedback/ReceivedKeyedAppState;
.super Ljava/lang/Object;
.source "ReceivedKeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 1

    .line 46
    new-instance v0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;

    invoke-direct {v0}, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;-><init>()V

    return-object v0
.end method

.method static fromBundle(Landroid/os/Bundle;Ljava/lang/String;J)Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bundle",
            "packageName",
            "timestamp"
        }
    .end annotation

    .line 51
    invoke-static {p0}, Landroidx/enterprise/feedback/KeyedAppState;->isValid(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->builder()Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;->setPackageName(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p2, p3}, Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;->setTimestamp(J)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;

    move-result-object v0

    .line 58
    const-string v1, "androidx.enterprise.feedback.APP_STATE_KEY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;->setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;

    move-result-object v0

    .line 59
    const-string v1, "androidx.enterprise.feedback.APP_STATE_SEVERITY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;->setSeverity(I)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;

    move-result-object v0

    .line 60
    const-string v1, "androidx.enterprise.feedback.APP_STATE_MESSAGE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;->setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;

    move-result-object v0

    .line 61
    const-string v1, "androidx.enterprise.feedback.APP_STATE_DATA"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;->setData(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;->build()Landroidx/enterprise/feedback/ReceivedKeyedAppState;

    move-result-object v0

    .line 55
    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bundle is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getData()Ljava/lang/String;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getSeverity()I
.end method

.method public abstract getTimestamp()J
.end method
