.class public Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;
.super Ljava/lang/Object;
.source "LocalizedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pkix/util/LocalizedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FilteredArguments"
.end annotation


# static fields
.field protected static final FILTER:I = 0x1

.field protected static final FILTER_URL:I = 0x2

.field protected static final NO_FILTER:I


# instance fields
.field protected argFilterType:[I

.field protected arguments:[Ljava/lang/Object;

.field protected filter:Lorg/bouncycastle/pkix/util/filter/Filter;

.field protected filteredArgs:[Ljava/lang/Object;

.field protected isLocaleSpecific:[Z

.field protected unpackedArgs:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 339
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;-><init>([Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/pkix/util/filter/Filter;

    .line 344
    iput-object p1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->arguments:[Ljava/lang/Object;

    .line 345
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    .line 346
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    .line 347
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->isLocaleSpecific:[Z

    .line 348
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->argFilterType:[I

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 351
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v2, p1, v0

    check-cast v2, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;->getInput()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 354
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->argFilterType:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    goto :goto_1

    .line 356
    :cond_0
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v3, p1, v0

    check-cast v3, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v3}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;->getInput()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    .line 359
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->argFilterType:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    goto :goto_1

    .line 365
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aput v2, v1, v0

    goto :goto_1

    .line 370
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v3, p1, v0

    aput-object v3, v1, v0

    .line 371
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aput v2, v1, v0

    .line 375
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->isLocaleSpecific:[Z

    iget-object v2, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v2, v2, v0

    instance-of v2, v2, Lorg/bouncycastle/pkix/util/LocaleString;

    aput-boolean v2, v1, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private filter(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "obj"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/pkix/util/filter/Filter;

    if-eqz v0, :cond_1

    .line 423
    if-nez p2, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 424
    .local v0, "o":Ljava/lang/Object;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 433
    const/4 v1, 0x0

    return-object v1

    .line 431
    :pswitch_0
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/pkix/util/filter/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/pkix/util/filter/Filter;->doFilterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 429
    :pswitch_1
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/pkix/util/filter/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/pkix/util/filter/Filter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 427
    :pswitch_2
    return-object v0

    .line 438
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->arguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getFilter()Lorg/bouncycastle/pkix/util/filter/Filter;
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/pkix/util/filter/Filter;

    return-object v0
.end method

.method public getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 392
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 395
    iget-object v2, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .local v2, "arg":Ljava/lang/Object;
    goto :goto_1

    .line 401
    .end local v2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 402
    .restart local v2    # "arg":Ljava/lang/Object;
    iget-object v3, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->isLocaleSpecific:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    .line 405
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/pkix/util/LocaleString;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pkix/util/LocaleString;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 406
    iget-object v3, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filter(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 410
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->argFilterType:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filter(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 411
    iget-object v3, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 414
    :goto_1
    aput-object v2, v0, v1

    .line 392
    .end local v2    # "arg":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFilter(Lorg/bouncycastle/pkix/util/filter/Filter;)V
    .locals 3
    .param p1, "filter"    # Lorg/bouncycastle/pkix/util/filter/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/pkix/util/filter/Filter;

    if-eq p1, v0, :cond_0

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->unpackedArgs:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 453
    iget-object v1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filteredArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "i":I
    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/pkix/util/LocalizedMessage$FilteredArguments;->filter:Lorg/bouncycastle/pkix/util/filter/Filter;

    .line 457
    return-void
.end method
