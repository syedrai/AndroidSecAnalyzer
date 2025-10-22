.class Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageChunk"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0x120s

.field private static final PACKAGE_NAME_MAX_LENGTH:I = 0x80


# instance fields
.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

.field private final packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field private final typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

.field private final typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List;)V
    .locals 4
    .param p1, "packageInfo"    # Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageInfo",
            "colorResources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p2, "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 342
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->generateTypeStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 343
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->generateKeyStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 344
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    invoke-direct {v0, p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    .line 346
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    const/16 v1, 0x120

    invoke-virtual {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->getChunkSize()I

    move-result v2

    const/16 v3, 0x200

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 347
    return-void
.end method

.method private generateKeyStrings(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorResources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 368
    .local p1, "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 369
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 370
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->-$$Nest$fgetname(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private generateTypeStrings(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorResources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 350
    .local p1, "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 351
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->-$$Nest$fgettypeId(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v0

    .line 352
    .local v0, "colorTypeId":B
    new-array v1, v0, [Ljava/lang/String;

    .line 355
    .local v1, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    .line 356
    add-int/lit8 v3, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v0, -0x1

    const-string v3, "color"

    aput-object v3, v1, v2

    .line 361
    return-object v1

    .line 363
    .end local v0    # "colorTypeId":B
    .end local v1    # "types":[Ljava/lang/String;
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getChunkSize()I
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 399
    invoke-virtual {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v0

    add-int/lit16 v0, v0, 0x120

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 400
    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    .line 401
    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSizeWithTypeChunk()I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 377
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->-$$Nest$fgetid(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->-$$Nest$smintToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 378
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->-$$Nest$fgetname(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 379
    .local v0, "packageName":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x80

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 380
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 381
    aget-char v2, v0, v1

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->-$$Nest$smcharToByteArray(C)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 383
    :cond_0
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->-$$Nest$smcharToByteArray(C)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 379
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x120

    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->-$$Nest$smintToByteArray(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 387
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->-$$Nest$smintToByteArray(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 388
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 389
    invoke-virtual {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->-$$Nest$smintToByteArray(I)[B

    move-result-object v1

    .line 388
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 390
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->-$$Nest$smintToByteArray(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 391
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->-$$Nest$smintToByteArray(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 392
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 393
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 394
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 395
    return-void
.end method
