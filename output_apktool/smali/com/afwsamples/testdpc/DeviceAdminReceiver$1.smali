.class Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;
.super Landroid/os/AsyncTask;
.source "DeviceAdminReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bugreportFileHash:Ljava/lang/String;

.field final synthetic val$bugreportUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/DeviceAdminReceiver;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/DeviceAdminReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$bugreportUri",
            "val$bugreportFileHash",
            "val$result"
        }
    .end annotation

    .line 169
    iput-object p2, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$bugreportUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$bugreportFileHash:Ljava/lang/String;

    iput-object p5, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 169
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 177
    move-object/from16 v1, p0

    const-string v2, "DeviceAdminReceiver"

    :try_start_0
    iget-object v0, v1, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    .line 178
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$bugreportUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 179
    .local v0, "mInputPfd":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 180
    .local v3, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    .line 181
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iget-object v6, v1, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$bugreportUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .local v4, "outputBugreportFile":Ljava/io/File;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing bugreport to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 184
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 186
    .local v6, "buffer":[B
    const-wide/16 v7, 0x0

    .line 187
    .local v7, "totalRead":J
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v10, v9

    .local v10, "read":I
    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eq v9, v11, :cond_0

    .line 188
    int-to-long v13, v10

    add-long/2addr v7, v13

    .line 189
    invoke-virtual {v5, v6, v12, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 192
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 193
    iget-object v9, v1, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    sget v11, Lcom/afwsamples/testdpc/R$string;->received_bugreport:I

    .line 196
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$bugreportFileHash:Ljava/lang/String;

    .line 198
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v13, v12, v16

    const/4 v13, 0x1

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v15, v12, v13

    .line 194
    invoke-virtual {v9, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, "message":Ljava/lang/String;
    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    nop

    .end local v0    # "mInputPfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "buffer":[B
    .end local v7    # "totalRead":J
    .end local v10    # "read":I
    goto :goto_1

    .line 200
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "outputBugreportFile":Ljava/io/File;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v9    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, v1, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    sget v3, Lcom/afwsamples/testdpc/R$string;->received_bugreport_failed_retrieval:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v9    # "message":Ljava/lang/String;
    :goto_1
    return-object v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    .line 169
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/afwsamples/testdpc/R$string;->bugreport_title:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 211
    iget-object v0, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 212
    return-void
.end method
