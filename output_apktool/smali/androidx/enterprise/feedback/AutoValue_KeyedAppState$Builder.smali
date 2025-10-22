.class final Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;
.super Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
.source "AutoValue_KeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/AutoValue_KeyedAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private set$0:B

.field private severity:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;-><init>()V

    .line 100
    return-void
.end method


# virtual methods
.method autoBuild()Landroidx/enterprise/feedback/KeyedAppState;
    .locals 8

    .line 127
    iget-byte v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->set$0:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v2, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;

    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->key:Ljava/lang/String;

    iget v4, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->severity:I

    iget-object v5, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->message:Ljava/lang/String;

    iget-object v6, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->data:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/enterprise/feedback/AutoValue_KeyedAppState-IA;)V

    return-object v2

    .line 129
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "missing":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->key:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 131
    const-string v2, " key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_2
    iget-byte v2, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->set$0:B

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 134
    const-string v1, " severity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_3
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

.method public setData(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
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

    .line 122
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->data:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
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

    .line 103
    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->key:Ljava/lang/String;

    .line 107
    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
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

    .line 117
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->message:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public setSeverity(I)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
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

    .line 111
    iput p1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->severity:I

    .line 112
    iget-byte v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->set$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->set$0:B

    .line 113
    return-object p0
.end method
