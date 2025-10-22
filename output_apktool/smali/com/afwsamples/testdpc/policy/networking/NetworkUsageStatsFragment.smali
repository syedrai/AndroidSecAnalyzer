.class public Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;
.super Landroid/app/ListFragment;
.source "NetworkUsageStatsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/afwsamples/testdpc/common/OnBackPressedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final QUERY_APPHISTORY_POS:I = 0x4

.field private static final QUERY_APPSUMMARY_POS:I = 0x3

.field private static final QUERY_DEVICE_POS:I = 0x1

.field private static final QUERY_PROFILE_POS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TestDPC.NetworkUsageStatsFragment"


# instance fields
.field private mAppHistoryList:Landroid/widget/ListView;

.field private mDataUsageList:Landroid/widget/ListView;

.field private mDataUsageSummary:Landroid/widget/TextView;

.field private mDateStringFormat:Ljava/text/DateFormat;

.field private mEndDate:Ljava/util/Date;

.field private mEndDateButton:Landroid/widget/Button;

.field private mExplanation:Landroid/widget/TextView;

.field private mHourMinuteDateFormat:Ljava/text/DateFormat;

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mQuerySpinner:Landroid/widget/Spinner;

.field private mStartDate:Ljava/util/Date;

.field private mStartDateButton:Landroid/widget/Button;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDateStringFormat(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)Ljava/text/DateFormat;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDateStringFormat:Ljava/text/DateFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHourMinuteDateFormat(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)Ljava/text/DateFormat;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mHourMinuteDateFormat:Ljava/text/DateFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbindView(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->bindView(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mformatSize(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateButtonsText(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->updateButtonsText()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private bindView(Landroid/view/View;Ljava/util/List;)V
    .locals 20
    .param p1, "appView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appView",
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;)V"
        }
    .end annotation

    .line 382
    .local p2, "item":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;

    .line 383
    .local v2, "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    iget-object v3, v2, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 384
    .local v3, "title":Landroid/widget/TextView;
    iget-object v4, v2, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->summary:Landroid/widget/TextView;

    .line 385
    .local v4, "summary":Landroid/widget/TextView;
    iget-object v5, v2, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->state:Landroid/widget/TextView;

    .line 386
    .local v5, "state":Landroid/widget/TextView;
    iget-object v6, v2, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->image:Landroid/widget/ImageView;

    .line 387
    .local v6, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 388
    .local v7, "res":Landroid/content/res/Resources;
    const v0, 0x108009b

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 389
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/NetworkStats$Bucket;

    .line 390
    .local v10, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {v10}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v11

    .line 391
    .local v11, "uid":I
    const/4 v12, 0x1

    sparse-switch v11, :sswitch_data_0

    .line 409
    sget v13, Lcom/afwsamples/testdpc/R$string;->network_stats_uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v12, [Ljava/lang/Object;

    aput-object v14, v15, v8

    invoke-virtual {v1, v13, v15}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v13, v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v13}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 411
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v0, v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 412
    .local v14, "packageNames":[Ljava/lang/String;
    if-eqz v14, :cond_0

    array-length v0, v14

    goto :goto_1

    .line 404
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "packageNames":[Ljava/lang/String;
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :sswitch_0
    sget v13, Lcom/afwsamples/testdpc/R$string;->network_stats_uid_system:I

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    .line 406
    goto :goto_0

    .line 394
    :sswitch_1
    sget v13, Lcom/afwsamples/testdpc/R$string;->network_stats_uid_removed:I

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    .line 396
    goto :goto_0

    .line 399
    :sswitch_2
    sget v13, Lcom/afwsamples/testdpc/R$string;->network_stats_uid_tethering:I

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    .line 401
    nop

    .line 445
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v18, v7

    goto/16 :goto_5

    .line 412
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "packageNames":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    move v15, v0

    .line 414
    .local v15, "length":I
    if-ne v15, v12, :cond_2

    .line 415
    :try_start_0
    aget-object v0, v14, v8

    .line 416
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v12, v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 417
    invoke-virtual {v12, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 418
    .local v12, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v12, :cond_1

    .line 419
    iget-object v8, v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v8, v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v8

    .line 422
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v12    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move-object v0, v13

    goto/16 :goto_4

    .line 440
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move-object v0, v13

    goto/16 :goto_5

    .line 423
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v15, :cond_5

    .line 424
    :try_start_1
    aget-object v8, v14, v0

    .line 425
    .local v8, "packageName":Ljava/lang/String;
    iget-object v12, v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 426
    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    .local v17, "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    :try_start_2
    invoke-virtual {v12, v8, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 427
    .local v12, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 428
    move-object/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "res":Landroid/content/res/Resources;
    .local v18, "res":Landroid/content/res/Resources;
    :try_start_3
    invoke-virtual {v2, v8, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 430
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_4

    if-eqz v12, :cond_4

    .line 431
    iget v7, v12, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v7, :cond_3

    .line 432
    iget-object v7, v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v19, v0

    .end local v0    # "i":I
    .local v19, "i":I
    iget v0, v12, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 433
    invoke-virtual {v7, v8, v0, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 432
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v13, v0

    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 431
    .end local v19    # "i":I
    .local v0, "i":I
    .restart local v13    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    move/from16 v19, v0

    .end local v0    # "i":I
    .restart local v19    # "i":I
    goto :goto_3

    .line 430
    .end local v19    # "i":I
    .restart local v0    # "i":I
    :cond_4
    move/from16 v19, v0

    .line 423
    .end local v0    # "i":I
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v12    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v19    # "i":I
    :goto_3
    add-int/lit8 v0, v19, 0x1

    move-object/from16 v9, p2

    move-object/from16 v2, v17

    move-object/from16 v7, v18

    .end local v19    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 440
    .end local v0    # "i":I
    :catch_1
    move-exception v0

    move-object v0, v13

    goto :goto_5

    .end local v18    # "res":Landroid/content/res/Resources;
    .restart local v7    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v0

    move-object/from16 v18, v7

    move-object v0, v13

    .end local v7    # "res":Landroid/content/res/Resources;
    .restart local v18    # "res":Landroid/content/res/Resources;
    goto :goto_5

    .end local v17    # "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    .end local v18    # "res":Landroid/content/res/Resources;
    .local v2, "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    .restart local v7    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move-object v0, v13

    .end local v2    # "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    .end local v7    # "res":Landroid/content/res/Resources;
    .restart local v17    # "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    .restart local v18    # "res":Landroid/content/res/Resources;
    goto :goto_5

    .line 423
    .end local v17    # "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    .end local v18    # "res":Landroid/content/res/Resources;
    .restart local v0    # "i":I
    .restart local v2    # "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    .restart local v7    # "res":Landroid/content/res/Resources;
    :cond_5
    move/from16 v19, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    .end local v0    # "i":I
    .end local v2    # "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    .end local v7    # "res":Landroid/content/res/Resources;
    .restart local v17    # "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    .restart local v18    # "res":Landroid/content/res/Resources;
    .restart local v19    # "i":I
    move-object v0, v13

    .line 442
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "i":I
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :goto_4
    nop

    .line 445
    .end local v14    # "packageNames":[Ljava/lang/String;
    .end local v15    # "length":I
    :goto_5
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 447
    .local v2, "bucketsCount":I
    const/4 v7, 0x1

    if-ne v2, v7, :cond_6

    .line 448
    invoke-virtual {v10}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v7

    invoke-virtual {v10}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v12

    add-long/2addr v7, v12

    invoke-direct {v1, v7, v8}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {v10}, Landroid/app/usage/NetworkStats$Bucket;->getState()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_6

    .line 452
    :pswitch_1
    sget v7, Lcom/afwsamples/testdpc/R$string;->network_stats_foreground_state:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 454
    goto :goto_6

    .line 457
    :pswitch_2
    sget v7, Lcom/afwsamples/testdpc/R$string;->network_stats_default_state:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 459
    goto :goto_6

    .line 462
    :pswitch_3
    sget v7, Lcom/afwsamples/testdpc/R$string;->network_stats_combined_state:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 464
    :goto_6
    goto :goto_7

    .line 467
    :cond_6
    sget v7, Lcom/afwsamples/testdpc/R$string;->network_stats_items:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v9, v16

    invoke-virtual {v1, v7, v9}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    sget v7, Lcom/afwsamples/testdpc/R$string;->network_stats_combined_state:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 470
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "sizeBytes"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeBytes"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTodayPlus(II)Ljava/util/Date;
    .locals 3
    .param p1, "calendarField"    # I
    .param p2, "valueToAdd"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "calendarField",
            "valueToAdd"
        }
    .end annotation

    .line 370
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 371
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 372
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 373
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 374
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 375
    if-lez p2, :cond_0

    .line 376
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 378
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private pickDate(Ljava/util/Date;)V
    .locals 7
    .param p1, "target"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "target"
        }
    .end annotation

    .line 338
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 339
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 340
    new-instance v1, Landroid/app/DatePickerDialog;

    .line 342
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;-><init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Ljava/util/Calendar;Ljava/util/Date;)V

    .line 353
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 354
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 355
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 356
    .local v1, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    .line 357
    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 329
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/afwsamples/testdpc/R$string;->network_stats_error_title:I

    .line 330
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 331
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 333
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 335
    return-void
.end method

.method private transitionAppHistoryView(I)V
    .locals 2
    .param p1, "appHistoryVisibility"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appHistoryVisibility"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mAppHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 475
    return-void
.end method

.method private updateButtonsText()V
    .locals 3

    .line 360
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 361
    .local v0, "dateFormat":Ljava/text/DateFormat;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDateButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDateButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mAppHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->transitionAppHistoryView(I)V

    .line 170
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 156
    .local v0, "id":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->start_date_button:I

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->pickDate(Ljava/util/Date;)V

    goto :goto_0

    .line 158
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->end_date_button:I

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->pickDate(Ljava/util/Date;)V

    .line 161
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "*dd/MM/yyyy*"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDateStringFormat:Ljava/text/DateFormat;

    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "kk:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mHourMinuteDateFormat:Ljava/text/DateFormat;

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 104
    sget v0, Lcom/afwsamples/testdpc/R$layout;->network_usage_stats:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$string;->data_usage:I

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 108
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 109
    nop

    .line 110
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "netstats"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/NetworkStatsManager;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    .line 113
    new-instance v3, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;

    .line 115
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/afwsamples/testdpc/R$layout;->data_usage_item:I

    const v7, 0x1020016

    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    move-object v4, p0

    move-object v9, p1

    .end local p1    # "inflater":Landroid/view/LayoutInflater;
    .local v9, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {v3 .. v9}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;-><init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;)V

    iput-object v3, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 132
    sget p1, Lcom/afwsamples/testdpc/R$id;->query_type_spinner:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mQuerySpinner:Landroid/widget/Spinner;

    .line 133
    iget-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mQuerySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 134
    sget p1, Lcom/afwsamples/testdpc/R$id;->explanation:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mExplanation:Landroid/widget/TextView;

    .line 135
    invoke-direct {p0, v1, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getTodayPlus(II)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    .line 136
    const/4 p1, 0x5

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getTodayPlus(II)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    .line 137
    sget p1, Lcom/afwsamples/testdpc/R$id;->start_date_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDateButton:Landroid/widget/Button;

    .line 138
    iget-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDateButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_0
    sget p1, Lcom/afwsamples/testdpc/R$id;->end_date_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDateButton:Landroid/widget/Button;

    .line 142
    iget-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDateButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->updateButtonsText()V

    .line 146
    sget p1, Lcom/afwsamples/testdpc/R$id;->data_usage_summary:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    .line 147
    const p1, 0x102000a

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    .line 148
    iget-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    iget-object v1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    sget p1, Lcom/afwsamples/testdpc/R$id;->app_history:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, v4, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mAppHistoryList:Landroid/widget/ListView;

    .line 150
    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "pos",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 177
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 178
    .local v1, "result":Landroid/app/usage/NetworkStats;
    const/4 v2, 0x0

    .line 179
    .local v2, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mAppHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mExplanation:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v0, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_5

    .line 236
    :pswitch_0
    :try_start_0
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

    const-string v9, ""

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    .line 238
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 237
    const/4 v8, 0x1

    invoke-virtual/range {v7 .. v13}, Landroid/app/usage/NetworkStatsManager;->queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v0

    move-object v1, v0

    .line 239
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 241
    .local v0, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;>;"
    if-eqz v1, :cond_1

    .line 242
    :goto_0
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    new-instance v3, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v3}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    move-object v2, v3

    .line 244
    invoke-virtual {v1, v2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 245
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v3

    .line 246
    .local v3, "uid":I
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 247
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    if-nez v4, :cond_0

    .line 248
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 249
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    nop

    .end local v3    # "uid":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    goto :goto_0

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 256
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_5

    .line 219
    .end local v0    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;>;"
    :pswitch_1
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

    const-string v9, ""

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    .line 221
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 220
    const/4 v8, 0x1

    invoke-virtual/range {v7 .. v13}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v0

    move-object v1, v0

    .line 222
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    if-eqz v1, :cond_2

    .line 224
    :goto_1
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    move-object v2, v0

    .line 226
    invoke-virtual {v1, v2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 227
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    new-array v3, v5, [Landroid/app/usage/NetworkStats$Bucket;

    aput-object v2, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 231
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 233
    goto/16 :goto_5

    .line 203
    :pswitch_2
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

    const-string v9, ""

    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    .line 205
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 204
    const/4 v8, 0x1

    invoke-virtual/range {v7 .. v13}, Landroid/app/usage/NetworkStatsManager;->querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v7

    move-object v2, v7

    .line 206
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mExplanation:Landroid/widget/TextView;

    sget v8, Lcom/afwsamples/testdpc/R$string;->network_stats_profile_summary_explanation:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    sget v8, Lcom/afwsamples/testdpc/R$string;->network_stats_profile_summary:I

    .line 210
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v9

    .line 211
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 212
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v11

    invoke-direct {p0, v11, v12}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v11

    .line 213
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v6

    aput-object v10, v4, v5

    aput-object v11, v4, v3

    aput-object v12, v4, v0

    .line 208
    invoke-virtual {p0, v8, v4}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    goto/16 :goto_5

    .line 187
    :pswitch_3
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

    const-string v9, ""

    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    .line 189
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 188
    const/4 v8, 0x1

    invoke-virtual/range {v7 .. v13}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v7

    move-object v2, v7

    .line 190
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mExplanation:Landroid/widget/TextView;

    sget v8, Lcom/afwsamples/testdpc/R$string;->network_stats_device_summary_explanation:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    sget v8, Lcom/afwsamples/testdpc/R$string;->network_stats_device_summary:I

    .line 194
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 196
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v11

    invoke-direct {p0, v11, v12}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v11

    .line 197
    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v6

    aput-object v10, v4, v5

    aput-object v11, v4, v3

    aput-object v12, v4, v0

    .line 192
    invoke-virtual {p0, v8, v4}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    goto :goto_5

    .line 265
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 262
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->showErrorDialog(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4

    .line 266
    :goto_3
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->close()V

    goto :goto_6

    .line 260
    :catch_2
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    sget v3, Lcom/afwsamples/testdpc/R$string;->network_stats_security_error_msg:I

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->showErrorDialog(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .end local v0    # "e":Ljava/lang/SecurityException;
    if-eqz v1, :cond_4

    .line 266
    goto :goto_3

    .line 265
    :goto_4
    if-eqz v1, :cond_3

    .line 266
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->close()V

    .line 268
    :cond_3
    throw v0

    .line 265
    :goto_5
    if-eqz v1, :cond_4

    .line 266
    goto :goto_3

    .line 269
    :cond_4
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "v",
            "position",
            "id"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 279
    .local v6, "item":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->transitionAppHistoryView(I)V

    .line 280
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->transitionAppHistoryView(I)V

    .line 282
    new-instance v1, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;

    .line 284
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x109000d

    const v5, 0x1020016

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;-><init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/content/Context;IILjava/util/List;)V

    .line 324
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/app/usage/NetworkStats$Bucket;>;"
    iget-object v0, v2, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mAppHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 280
    .end local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/app/usage/NetworkStats$Bucket;>;"
    :cond_0
    move-object v2, p0

    .line 326
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 274
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
