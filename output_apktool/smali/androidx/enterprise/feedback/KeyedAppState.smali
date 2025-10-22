.class public abstract Landroidx/enterprise/feedback/KeyedAppState;
.super Ljava/lang/Object;
.source "KeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;,
        Landroidx/enterprise/feedback/KeyedAppState$Severity;
    }
.end annotation


# static fields
.field public static final MAX_DATA_LENGTH:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_KEY_LENGTH:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_MESSAGE_LENGTH:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEVERITY_ERROR:I = 0x2

.field public static final SEVERITY_INFO:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .locals 2

    .line 91
    new-instance v0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;

    invoke-direct {v0}, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->setSeverity(I)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    return-object v0
.end method

.method static fromBundle(Landroid/os/Bundle;)Landroidx/enterprise/feedback/KeyedAppState;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 145
    invoke-static {p0}, Landroidx/enterprise/feedback/KeyedAppState;->isValid(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Landroidx/enterprise/feedback/KeyedAppState;->builder()Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    .line 150
    const-string v1, "androidx.enterprise.feedback.APP_STATE_KEY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    .line 151
    const-string v1, "androidx.enterprise.feedback.APP_STATE_SEVERITY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->setSeverity(I)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    .line 152
    const-string v1, "androidx.enterprise.feedback.APP_STATE_MESSAGE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    .line 153
    const-string v1, "androidx.enterprise.feedback.APP_STATE_DATA"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->setData(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->build()Landroidx/enterprise/feedback/KeyedAppState;

    move-result-object v0

    .line 149
    return-object v0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bundle is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getMaxDataLength()I
    .locals 1

    .line 85
    const/16 v0, 0x3e8

    return v0
.end method

.method public static final getMaxKeyLength()I
    .locals 1

    .line 71
    const/16 v0, 0x64

    return v0
.end method

.method public static final getMaxMessageLength()I
    .locals 1

    .line 78
    const/16 v0, 0x3e8

    return v0
.end method

.method static isValid(Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 158
    const-string v0, "androidx.enterprise.feedback.APP_STATE_KEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    const-string v2, "androidx.enterprise.feedback.APP_STATE_SEVERITY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 164
    .local v2, "severity":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 165
    return v1

    .line 168
    :cond_1
    const-string v4, "androidx.enterprise.feedback.APP_STATE_MESSAGE"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "message":Ljava/lang/String;
    const/16 v5, 0x3e8

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 170
    return v1

    .line 173
    :cond_2
    const-string v6, "androidx.enterprise.feedback.APP_STATE_DATA"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "data":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_3

    .line 175
    return v1

    .line 178
    :cond_3
    return v3

    .line 160
    .end local v2    # "severity":I
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public abstract getData()Ljava/lang/String;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getSeverity()I
.end method

.method toStateBundle()Landroid/os/Bundle;
    .locals 3

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "androidx.enterprise.feedback.APP_STATE_KEY"

    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "androidx.enterprise.feedback.APP_STATE_SEVERITY"

    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getSeverity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "androidx.enterprise.feedback.APP_STATE_MESSAGE"

    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, "androidx.enterprise.feedback.APP_STATE_DATA"

    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_1
    return-object v0
.end method
