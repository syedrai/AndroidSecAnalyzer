.class Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;
.super Landroid/widget/ArrayAdapter;
.source "NetworkUsageStatsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/app/usage/NetworkStats$Bucket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "arg0",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .line 284
    .local p5, "arg3":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method private getDateString(Ljava/util/Date;Ljava/util/Date;)Landroid/text/Spanned;
    .locals 5
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "endDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startDate",
            "endDate"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->-$$Nest$fgetmDateStringFormat(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "startDateString":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->-$$Nest$fgetmHourMinuteDateFormat(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "startHourMinuteString":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->-$$Nest$fgetmHourMinuteDateFormat(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "endHourMinuteString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "resultString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 288
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 289
    iget-object v3, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    .line 290
    invoke-virtual {v3}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 291
    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/afwsamples/testdpc/R$layout;->network_usage_app_history_item:I

    .line 292
    move-object/from16 v5, p3

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 288
    :cond_0
    move-object/from16 v5, p3

    .line 294
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/NetworkStats$Bucket;

    .line 295
    .local v3, "item":Landroid/app/usage/NetworkStats$Bucket;
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getStartTimeStamp()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 296
    .local v4, "startDate":Ljava/util/Date;
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getEndTimeStamp()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 297
    .local v6, "endDate":Ljava/util/Date;
    sget v7, Lcom/afwsamples/testdpc/R$id;->text1:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 298
    .local v7, "text1":Landroid/widget/TextView;
    sget v8, Lcom/afwsamples/testdpc/R$id;->text2:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 299
    .local v8, "text2":Landroid/widget/TextView;
    invoke-direct {v0, v4, v6}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->getDateString(Ljava/util/Date;Ljava/util/Date;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v9, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    sget v10, Lcom/afwsamples/testdpc/R$string;->network_stats_bucket_usage:I

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    .line 303
    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->-$$Nest$mformatSize(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;J)Ljava/lang/String;

    move-result-object v11

    .line 304
    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    .line 305
    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->-$$Nest$mformatSize(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;J)Ljava/lang/String;

    move-result-object v13

    .line 306
    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v11, v15, v2

    const/4 v2, 0x1

    aput-object v12, v15, v2

    const/4 v2, 0x2

    aput-object v13, v15, v2

    const/4 v2, 0x3

    aput-object v14, v15, v2

    .line 301
    invoke-virtual {v9, v10, v15}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    return-object v1
.end method
