.class Landroidx/print/PrintHelper$PrintUriAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintUriAdapter"
.end annotation


# instance fields
.field mAttributes:Landroid/print/PrintAttributes;

.field mBitmap:Landroid/graphics/Bitmap;

.field final mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

.field final mFittingMode:I

.field final mImageFile:Landroid/net/Uri;

.field final mJobName:Ljava/lang/String;

.field mLoadBitmap:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/print/PrintHelper;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroidx/print/PrintHelper$OnPrintFinishCallback;I)V
    .locals 0
    .param p2, "jobName"    # Ljava/lang/String;
    .param p3, "imageFile"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroidx/print/PrintHelper$OnPrintFinishCallback;
    .param p5, "fittingMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 387
    iput-object p1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 388
    iput-object p2, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    .line 389
    iput-object p3, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mImageFile:Landroid/net/Uri;

    .line 390
    iput-object p4, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 391
    iput p5, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mFittingMode:I

    .line 392
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 393
    return-void
.end method


# virtual methods
.method cancelLoad()V
    .locals 3

    .line 500
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v0, v0, Landroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v1, v1, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_1

    .line 502
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 504
    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v1, v1, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 506
    :cond_0
    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 508
    :cond_1
    monitor-exit v0

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFinish()V
    .locals 2

    .line 513
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 514
    invoke-virtual {p0}, Landroidx/print/PrintHelper$PrintUriAdapter;->cancelLoad()V

    .line 515
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 518
    :cond_0
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Landroidx/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroidx/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 521
    :cond_1
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 525
    :cond_2
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 402
    monitor-enter p0

    .line 403
    :try_start_0
    iput-object p2, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    .line 404
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 409
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 413
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 414
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 415
    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 417
    .local v0, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 418
    .local v1, "changed":Z
    invoke-virtual {p4, v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 419
    return-void

    .line 422
    .end local v0    # "info":Landroid/print/PrintDocumentInfo;
    .end local v1    # "changed":Z
    :cond_1
    new-instance v2, Landroidx/print/PrintHelper$PrintUriAdapter$1;

    move-object v3, p0

    move-object v6, p1

    move-object v5, p2

    move-object v4, p3

    move-object v7, p4

    .end local p1    # "oldPrintAttributes":Landroid/print/PrintAttributes;
    .end local p2    # "newPrintAttributes":Landroid/print/PrintAttributes;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p4    # "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .local v4, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v5, "newPrintAttributes":Landroid/print/PrintAttributes;
    .local v6, "oldPrintAttributes":Landroid/print/PrintAttributes;
    .local v7, "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    invoke-direct/range {v2 .. v7}, Landroidx/print/PrintHelper$PrintUriAdapter$1;-><init>(Landroidx/print/PrintHelper$PrintUriAdapter;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/net/Uri;

    .line 495
    invoke-virtual {v2, p1}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, v3, Landroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 496
    return-void

    .line 404
    .end local v4    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local v5    # "newPrintAttributes":Landroid/print/PrintAttributes;
    .end local v6    # "oldPrintAttributes":Landroid/print/PrintAttributes;
    .end local v7    # "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .restart local p1    # "oldPrintAttributes":Landroid/print/PrintAttributes;
    .restart local p2    # "newPrintAttributes":Landroid/print/PrintAttributes;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p4    # "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    :catchall_0
    move-exception v0

    move-object v3, p0

    move-object v6, p1

    move-object v5, p2

    move-object v4, p3

    move-object v7, p4

    move-object p1, v0

    .end local p1    # "oldPrintAttributes":Landroid/print/PrintAttributes;
    .end local p2    # "newPrintAttributes":Landroid/print/PrintAttributes;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p4    # "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .restart local v4    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local v5    # "newPrintAttributes":Landroid/print/PrintAttributes;
    .restart local v6    # "oldPrintAttributes":Landroid/print/PrintAttributes;
    .restart local v7    # "layoutResultCallback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 7
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 531
    iget-object v0, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->this$0:Landroidx/print/PrintHelper;

    iget-object v1, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    iget v2, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mFittingMode:I

    iget-object v3, p0, Landroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p2    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p4    # "writeResultCallback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    .local v4, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v6, "writeResultCallback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    invoke-virtual/range {v0 .. v6}, Landroidx/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 533
    return-void
.end method
