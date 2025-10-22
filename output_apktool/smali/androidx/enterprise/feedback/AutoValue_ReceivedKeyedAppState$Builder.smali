.class final Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;
.super Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
.source "AutoValue_ReceivedKeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private set$0:B

.field private severity:I

.field private timestamp:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;-><init>()V

    .line 128
    return-void
.end method


# virtual methods
.method public build()Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    .locals 10

    .line 169
    iget-byte v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->set$0:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance v1, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;

    iget-object v2, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->packageName:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->timestamp:J

    iget-object v5, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->key:Ljava/lang/String;

    iget v6, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->severity:I

    iget-object v7, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->message:Ljava/lang/String;

    iget-object v8, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->data:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;-><init>(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState-IA;)V

    return-object v1

    .line 172
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "missing":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->packageName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 174
    const-string v1, " packageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_2
    iget-byte v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    .line 177
    const-string v1, " timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_3
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->key:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 180
    const-string v1, " key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_4
    iget-byte v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 183
    const-string v1, " severity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setData(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->data:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 145
    if-eqz p1, :cond_0

    .line 148
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->key:Ljava/lang/String;

    .line 149
    return-object p0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->message:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 131
    if-eqz p1, :cond_0

    .line 134
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->packageName:Ljava/lang/String;

    .line 135
    return-object p0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeverity(I)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 1
    .param p1, "severity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "severity"
        }
    .end annotation

    .line 153
    iput p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->severity:I

    .line 154
    iget-byte v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->set$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->set$0:B

    .line 155
    return-object p0
.end method

.method public setTimestamp(J)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 1
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 139
    iput-wide p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->timestamp:J

    .line 140
    iget-byte v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->set$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->set$0:B

    .line 141
    return-object p0
.end method
