.class public final synthetic Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic f$0:Lokio/BufferedSource;

.field public synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public synthetic f$3:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;->f$0:Lokio/BufferedSource;

    iput-object p2, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;->f$0:Lokio/BufferedSource;

    iget-object v1, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lokio/internal/ZipFilesKt;->$r8$lambda$5-J3E0__WBrube-8HDpQUwq6Yos(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
