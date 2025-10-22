.class Lorg/bouncycastle/est/ESTResponse$2;
.super Ljava/io/InputStream;
.source "ESTResponse.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/ESTResponse;->wrapWithCounter(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/ESTResponse;

.field final synthetic val$absoluteReadLimit:Ljava/lang/Long;

.field final synthetic val$in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/bouncycastle/est/ESTResponse;Ljava/io/InputStream;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/est/ESTResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$in",
            "val$absoluteReadLimit"
        }
    .end annotation

    .line 191
    iput-object p2, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$in:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$absoluteReadLimit:Ljava/lang/Long;

    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v0}, Lorg/bouncycastle/est/ESTResponse;->-$$Nest$fgetcontentLength(Lorg/bouncycastle/est/ESTResponse;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v0}, Lorg/bouncycastle/est/ESTResponse;->-$$Nest$fgetcontentLength(Lorg/bouncycastle/est/ESTResponse;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v2}, Lorg/bouncycastle/est/ESTResponse;->-$$Nest$fgetread(Lorg/bouncycastle/est/ESTResponse;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v1}, Lorg/bouncycastle/est/ESTResponse;->-$$Nest$fgetread(Lorg/bouncycastle/est/ESTResponse;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v3}, Lorg/bouncycastle/est/ESTResponse;->-$$Nest$fgetcontentLength(Lorg/bouncycastle/est/ESTResponse;)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stream closed before limit fully read, Read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ContentLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_2

    .line 220
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 221
    return-void

    .line 217
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed with extra content in pipe that exceeds content length."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 196
    .local v0, "i":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 198
    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v1}, Lorg/bouncycastle/est/ESTResponse;->-$$Nest$fgetread(Lorg/bouncycastle/est/ESTResponse;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/est/ESTResponse;->-$$Nest$fputread(Lorg/bouncycastle/est/ESTResponse;J)V

    .line 199
    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$absoluteReadLimit:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v1}, Lorg/bouncycastle/est/ESTResponse;->-$$Nest$fgetread(Lorg/bouncycastle/est/ESTResponse;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance v1, Ljava/io/IOException;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$absoluteReadLimit:Ljava/lang/Long;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Absolute Read Limit exceeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_1
    :goto_0
    return v0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
