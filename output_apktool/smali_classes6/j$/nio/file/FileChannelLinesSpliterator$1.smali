.class Lj$/nio/file/FileChannelLinesSpliterator$1;
.super Ljava/lang/Object;
.source "FileChannelLinesSpliterator.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/nio/file/FileChannelLinesSpliterator;->getBufferedReader()Ljava/io/BufferedReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lj$/nio/file/FileChannelLinesSpliterator;


# direct methods
.method constructor <init>(Lj$/nio/file/FileChannelLinesSpliterator;)V
    .locals 0
    .param p1, "this$0"    # Lj$/nio/file/FileChannelLinesSpliterator;

    .line 130
    iput-object p1, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v0}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfc(Lj$/nio/file/FileChannelLinesSpliterator;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 166
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v0}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfc(Lj$/nio/file/FileChannelLinesSpliterator;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v0}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfence(Lj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v0

    iget-object v1, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v1}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetindex(Lj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 134
    .local v0, "bytesToRead":I
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 135
    return v1

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 143
    .local v2, "oldLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 144
    iget-object v3, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v3}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfc(Lj$/nio/file/FileChannelLinesSpliterator;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    iget-object v4, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v4}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetindex(Lj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, p1, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    .line 145
    .local v3, "bytesRead":I
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 146
    .end local v2    # "oldLimit":I
    goto :goto_0

    .line 147
    .end local v3    # "bytesRead":I
    :cond_1
    iget-object v2, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v2}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfc(Lj$/nio/file/FileChannelLinesSpliterator;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    iget-object v3, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v3}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetindex(Lj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    .line 149
    .restart local v3    # "bytesRead":I
    :goto_0
    if-ne v3, v1, :cond_2

    .line 150
    iget-object v1, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    iget-object v2, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v2}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetfence(Lj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v2

    invoke-static {v1, v2}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fputindex(Lj$/nio/file/FileChannelLinesSpliterator;I)V

    .line 151
    return v3

    .line 154
    :cond_2
    iget-object v1, p0, Lj$/nio/file/FileChannelLinesSpliterator$1;->this$0:Lj$/nio/file/FileChannelLinesSpliterator;

    invoke-static {v1}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fgetindex(Lj$/nio/file/FileChannelLinesSpliterator;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lj$/nio/file/FileChannelLinesSpliterator;->-$$Nest$fputindex(Lj$/nio/file/FileChannelLinesSpliterator;I)V

    .line 155
    return v3
.end method
