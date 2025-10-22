.class public abstract Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
.super Ljava/lang/Object;
.source "KeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/KeyedAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyedAppStateBuilder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Landroidx/enterprise/feedback/KeyedAppState;
.end method

.method public build()Landroidx/enterprise/feedback/KeyedAppState;
    .locals 5

    .line 217
    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->autoBuild()Landroidx/enterprise/feedback/KeyedAppState;

    move-result-object v0

    .line 218
    .local v0, "keyedAppState":Landroidx/enterprise/feedback/KeyedAppState;
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x64

    if-gt v1, v4, :cond_6

    .line 223
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3e8

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 226
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    const-string v2, "Message length can be at most %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 230
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_2

    goto :goto_1

    .line 231
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    const-string v2, "Data length can be at most %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getSeverity()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 236
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getSeverity()I

    move-result v1

    if-ne v1, v3, :cond_4

    goto :goto_2

    .line 237
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Severity must be SEVERITY_ERROR or SEVERITY_INFO"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_5
    :goto_2
    return-object v0

    .line 219
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    const-string v2, "Key length can be at most %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract setData(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract setSeverity(I)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "severity"
        }
    .end annotation
.end method
