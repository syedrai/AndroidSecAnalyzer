.class public final Landroidx/activity/result/PickVisualMediaRequestKt;
.super Ljava/lang/Object;
.source "PickVisualMediaRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u001c\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005H\u0007\u001a.\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u001a6\u0010\u0000\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u001a:\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0007\u001aB\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "PickVisualMediaRequest",
        "Landroidx/activity/result/PickVisualMediaRequest;",
        "mediaType",
        "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;",
        "maxItems",
        "",
        "isOrderedSelection",
        "",
        "defaultTab",
        "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;",
        "accentColor",
        "",
        "mediaCapabilitiesForTranscoding",
        "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;",
        "activity_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final PickVisualMediaRequest(JLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 1
    .param p0, "accentColor"    # J
    .param p2, "mediaType"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;
    .param p3, "maxItems"    # I
    .param p4, "isOrderedSelection"    # Z
    .param p5, "defaultTab"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    const-string v0, "mediaType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTab"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 118
    invoke-virtual {v0, p2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p3}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMaxItems(I)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p4}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setOrderedSelection(Z)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p5}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setDefaultTab(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p0, p1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setAccentColor(J)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;JLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 1
    .param p0, "mediaCapabilitiesForTranscoding"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;
    .param p1, "accentColor"    # J
    .param p3, "mediaType"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;
    .param p4, "maxItems"    # I
    .param p5, "isOrderedSelection"    # Z
    .param p6, "defaultTab"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    const-string v0, "mediaType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTab"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 180
    invoke-virtual {v0, p3}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p4}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMaxItems(I)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p5}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setOrderedSelection(Z)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p6}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setDefaultTab(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p1, p2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setAccentColor(J)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaCapabilitiesForTranscoding(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 1
    .param p0, "mediaCapabilitiesForTranscoding"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;
    .param p1, "mediaType"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;
    .param p2, "maxItems"    # I
    .param p3, "isOrderedSelection"    # Z
    .param p4, "defaultTab"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    const-string v0, "mediaType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTab"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 148
    invoke-virtual {v0, p1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMaxItems(I)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p3}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setOrderedSelection(Z)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p4}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setDefaultTab(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaCapabilitiesForTranscoding(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 1
    .param p0, "mediaType"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Superseded by PickVisualMediaRequest that takes an optional maxItems"
    .end annotation

    const-string v0, "mediaType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;I)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 1
    .param p0, "mediaType"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;
    .param p1, "maxItems"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Superseded by PickVisualMediaRequest that take optional isOrderedSelection and defaultTab"
    .end annotation

    const-string v0, "mediaType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMaxItems(I)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 1
    .param p0, "mediaType"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;
    .param p1, "maxItems"    # I
    .param p2, "isOrderedSelection"    # Z
    .param p3, "defaultTab"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    const-string v0, "mediaType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTab"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 85
    invoke-virtual {v0, p0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMaxItems(I)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setOrderedSelection(Z)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p3}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setDefaultTab(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic PickVisualMediaRequest$default(JLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;ILjava/lang/Object;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 6

    .line 109
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 112
    sget-object p2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    check-cast p2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    move-object v2, p2

    goto :goto_0

    .line 109
    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 113
    sget-object p2, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;

    invoke-virtual {p2}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->getMaxItems$activity_release()I

    move-result p3

    move v3, p3

    goto :goto_1

    .line 109
    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 114
    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_2

    .line 109
    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 115
    sget-object p2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;

    move-object p5, p2

    check-cast p5, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    move-object v5, p5

    goto :goto_3

    .line 109
    :cond_3
    move-object v5, p5

    :goto_3
    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/activity/result/PickVisualMediaRequestKt;->PickVisualMediaRequest(JLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic PickVisualMediaRequest$default(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;JLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;ILjava/lang/Object;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 7

    .line 169
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 174
    sget-object p3, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    check-cast p3, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    move-object v3, p3

    goto :goto_0

    .line 169
    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    .line 175
    sget-object p3, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;

    invoke-virtual {p3}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->getMaxItems$activity_release()I

    move-result p4

    move v4, p4

    goto :goto_1

    .line 169
    :cond_1
    move v4, p4

    :goto_1
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    .line 176
    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_2

    .line 169
    :cond_2
    move v5, p5

    :goto_2
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    .line 177
    sget-object p3, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;

    move-object p6, p3

    check-cast p6, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    move-object v6, p6

    goto :goto_3

    .line 169
    :cond_3
    move-object v6, p6

    :goto_3
    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v6}, Landroidx/activity/result/PickVisualMediaRequestKt;->PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;JLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic PickVisualMediaRequest$default(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;ILjava/lang/Object;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 0

    .line 138
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 142
    sget-object p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    check-cast p1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 138
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 143
    sget-object p2, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;

    invoke-virtual {p2}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->getMaxItems$activity_release()I

    move-result p2

    .line 138
    :cond_1
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_2

    .line 144
    const/4 p3, 0x0

    .line 138
    :cond_2
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_3

    .line 145
    sget-object p4, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;

    check-cast p4, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    .line 138
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/activity/result/PickVisualMediaRequestKt;->PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$MediaCapabilities;Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic PickVisualMediaRequest$default(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IILjava/lang/Object;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 0

    .line 52
    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 58
    sget-object p0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    check-cast p0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 52
    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    .line 59
    sget-object p1, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;

    invoke-virtual {p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->getMaxItems$activity_release()I

    move-result p1

    .line 52
    :cond_1
    invoke-static {p0, p1}, Landroidx/activity/result/PickVisualMediaRequestKt;->PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;I)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic PickVisualMediaRequest$default(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;ILjava/lang/Object;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 0

    .line 36
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 40
    sget-object p0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    check-cast p0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 36
    :cond_0
    invoke-static {p0}, Landroidx/activity/result/PickVisualMediaRequestKt;->PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic PickVisualMediaRequest$default(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;ILjava/lang/Object;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 0

    .line 77
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 79
    sget-object p0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    check-cast p0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 77
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 80
    sget-object p1, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;

    invoke-virtual {p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->getMaxItems$activity_release()I

    move-result p1

    .line 77
    :cond_1
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_2

    .line 81
    const/4 p2, 0x0

    .line 77
    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    .line 82
    sget-object p3, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;

    check-cast p3, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    .line 77
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/activity/result/PickVisualMediaRequestKt;->PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;IZLandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object p0

    return-object p0
.end method
