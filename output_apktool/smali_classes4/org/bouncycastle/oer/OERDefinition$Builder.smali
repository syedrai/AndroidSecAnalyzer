.class public Lorg/bouncycastle/oer/OERDefinition$Builder;
.super Ljava/lang/Object;
.source "OERDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected aSwitch:Lorg/bouncycastle/oer/Switch;

.field protected final baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field protected block:I

.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/bouncycastle/oer/OERDefinition$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

.field protected defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

.field protected elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

.field protected enumValue:Ljava/math/BigInteger;

.field protected explicit:Z

.field protected inScope:Ljava/lang/Boolean;

.field protected label:Ljava/lang/String;

.field protected lowerBound:Ljava/math/BigInteger;

.field protected mayRecurse:Z

.field protected placeholderValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field protected supplierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/oer/ElementSupplier;",
            ">;"
        }
    .end annotation
.end field

.field protected typeName:Ljava/lang/String;

.field protected upperBound:Ljava/math/BigInteger;

.field protected validSwitchValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetdefaultItemProvider(Lorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$ItemProvider;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcopy(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V
    .locals 1
    .param p1, "baseType"    # Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseType"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    .line 216
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder$1;-><init>(Lorg/bouncycastle/oer/OERDefinition$Builder;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    .line 213
    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 214
    return-void
.end method

.method private copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 6
    .param p1, "provider"    # Lorg/bouncycastle/oer/OERDefinition$ItemProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 226
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    .line 227
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    const/4 v1, 0x0

    .line 228
    .local v1, "t":I
    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 231
    .local v3, "child":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iget-object v4, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "t":I
    .local v5, "t":I
    invoke-interface {p1, v1, v3}, Lorg/bouncycastle/oer/OERDefinition$ItemProvider;->existingChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v3    # "child":Lorg/bouncycastle/oer/OERDefinition$Builder;
    move v1, v5

    goto :goto_0

    .line 233
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v5    # "t":I
    .restart local v1    # "t":I
    :cond_0
    iget-boolean v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    iput-boolean v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    .line 234
    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    .line 236
    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    .line 237
    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 238
    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    .line 239
    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope:Ljava/lang/Boolean;

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope:Ljava/lang/Boolean;

    .line 240
    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    .line 242
    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    .line 243
    iget-boolean v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    iput-boolean v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    .line 244
    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    .line 245
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    .line 246
    iget v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    iput v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    .line 247
    return-object v0
.end method


# virtual methods
.method protected addExtensions(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ExtensionList;)V
    .locals 4
    .param p1, "b"    # Lorg/bouncycastle/oer/OERDefinition$Builder;
    .param p2, "extensionList"    # Lorg/bouncycastle/oer/OERDefinition$ExtensionList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "extensionList"
        }
    .end annotation

    .line 383
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    .line 386
    .local v0, "stub":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iget v1, p2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->block:I

    iput v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    .line 387
    iget-object v1, p1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    return-void

    .line 392
    .end local v0    # "stub":Lorg/bouncycastle/oer/OERDefinition$Builder;
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 395
    .local v1, "item":Ljava/lang/Object;
    instance-of v2, v1, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    if-eqz v2, :cond_1

    .line 398
    iget v2, p2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->block:I

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    invoke-virtual {p0, p1, v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addOptionals(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$OptionalList;)V

    goto :goto_1

    .line 405
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    .line 406
    .local v2, "wrapped":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iget v3, p2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->block:I

    iput v3, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    .line 407
    iget-object v3, p1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v1    # "item":Ljava/lang/Object;
    .end local v2    # "wrapped":Lorg/bouncycastle/oer/OERDefinition$Builder;
    :goto_1
    goto :goto_0

    .line 410
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method protected addOptionals(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$OptionalList;)V
    .locals 4
    .param p1, "b"    # Lorg/bouncycastle/oer/OERDefinition$Builder;
    .param p2, "block"    # I
    .param p3, "optionalList"    # Lorg/bouncycastle/oer/OERDefinition$OptionalList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "block",
            "optionalList"
        }
    .end annotation

    .line 414
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 417
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    if-eqz v2, :cond_0

    .line 419
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addExtensions(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ExtensionList;)V

    goto :goto_1

    .line 423
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    .line 424
    .local v2, "wrapped":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput p2, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    .line 425
    iget-object v3, p1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "wrapped":Lorg/bouncycastle/oer/OERDefinition$Builder;
    :goto_1
    goto :goto_0

    .line 428
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected block(I)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "block"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "block"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 253
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    .line 254
    return-object v0
.end method

.method public build()Lorg/bouncycastle/oer/Element;
    .locals 21

    .line 485
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 486
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/Element;>;"
    const/4 v1, 0x0

    .line 489
    .local v1, "hasExtensions":Z
    iget-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    sget-object v3, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v2, v3, :cond_2

    .line 491
    const/4 v2, 0x0

    .line 492
    .local v2, "ordinal":I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 493
    .local v3, "dupCheck":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/math/BigInteger;>;"
    const/4 v5, 0x0

    .local v5, "t":I
    :goto_0
    iget-object v6, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 495
    iget-object v6, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 496
    .local v6, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iget-object v7, v6, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    if-nez v7, :cond_0

    .line 498
    int-to-long v7, v2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, v6, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    .line 499
    add-int/lit8 v2, v2, 0x1

    .line 502
    :cond_0
    iget-object v7, v6, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 504
    iget-object v7, v6, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v6    # "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 508
    .restart local v6    # "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "duplicate enum value at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 513
    .end local v2    # "ordinal":I
    .end local v3    # "dupCheck":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/math/BigInteger;>;"
    .end local v5    # "t":I
    .end local v6    # "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    :cond_2
    const/4 v2, 0x0

    .line 514
    .local v2, "optionals":I
    const/4 v3, 0x0

    .line 516
    .local v3, "defaultValuesInChildren":Z
    iget-object v5, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v9, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .end local v1    # "hasExtensions":Z
    .end local v2    # "optionals":I
    .end local v3    # "defaultValuesInChildren":Z
    .local v9, "hasExtensions":Z
    .local v19, "optionals":I
    .local v20, "defaultValuesInChildren":Z
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 519
    .local v1, "child":Lorg/bouncycastle/oer/OERDefinition$Builder;
    if-nez v9, :cond_3

    iget v2, v1, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    if-lez v2, :cond_3

    .line 521
    const/4 v2, 0x1

    move v9, v2

    .line 525
    :cond_3
    iget-boolean v2, v1, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    if-nez v2, :cond_4

    .line 527
    add-int/lit8 v19, v19, 0x1

    .line 530
    :cond_4
    if-nez v20, :cond_5

    iget-object v2, v1, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_5

    .line 532
    const/4 v2, 0x1

    move/from16 v20, v2

    .line 535
    :cond_5
    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    .end local v1    # "child":Lorg/bouncycastle/oer/OERDefinition$Builder;
    goto :goto_1

    .line 538
    :cond_6
    new-instance v2, Lorg/bouncycastle/oer/Element;

    iget-object v3, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_2
    iget-object v6, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    iget-object v7, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iget-object v8, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iget-object v10, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    iget-object v11, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v12, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    .line 549
    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    :goto_3
    iget-object v14, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iget-boolean v15, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    iget-object v13, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    .line 553
    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v16, 0x0

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    move-object/from16 v16, v1

    :goto_4
    iget v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    move-object/from16 v18, v16

    move-object/from16 v16, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v18

    move/from16 v18, v1

    invoke-direct/range {v2 .. v20}, Lorg/bouncycastle/oer/Element;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;Ljava/util/List;ZLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Switch;Ljava/util/List;Lorg/bouncycastle/oer/ElementSupplier;ZLjava/lang/String;Ljava/util/Map;IIZ)V

    .line 538
    return-object v2
.end method

.method public copy()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public decodeSwitch(Lorg/bouncycastle/oer/Switch;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "aSwitch"    # Lorg/bouncycastle/oer/Switch;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aSwitch"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 338
    .local v0, "cpy":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    .line 339
    return-object v0
.end method

.method public defaultValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "defaultValue"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 359
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 360
    return-object v0
.end method

.method public elementSupplier(Lorg/bouncycastle/oer/ElementSupplier;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "elementSupplier"    # Lorg/bouncycastle/oer/ElementSupplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementSupplier"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 265
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    .line 266
    return-object v0
.end method

.method public enumValue(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 602
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 603
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    .line 604
    return-object v0
.end method

.method public explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "explicit"
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 352
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput-boolean p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    .line 353
    return-object v0
.end method

.method public fixedSize(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 586
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    .line 587
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    .line 588
    return-object v0
.end method

.method public inScope(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2
    .param p1, "scope"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scope"
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 294
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope:Ljava/lang/Boolean;

    .line 295
    return-object v0
.end method

.method public varargs items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 7
    .param p1, "items"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 435
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_4

    .line 437
    aget-object v2, p1, v1

    .line 438
    .local v2, "item":Ljava/lang/Object;
    instance-of v3, v2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    if-eqz v3, :cond_0

    .line 440
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addExtensions(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ExtensionList;)V

    goto :goto_2

    .line 442
    :cond_0
    instance-of v3, v2, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    if-eqz v3, :cond_1

    .line 444
    iget v3, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    move-object v4, v2

    check-cast v4, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    invoke-virtual {p0, v0, v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addOptionals(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$OptionalList;)V

    goto :goto_2

    .line 453
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 455
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_1
    move-object v5, v2

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 457
    iget-object v5, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    move-object v6, v2

    check-cast v6, [Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-virtual {p0, v4, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "t":I
    :cond_2
    goto :goto_2

    .line 462
    :cond_3
    iget-object v3, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    .end local v2    # "item":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method public label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 472
    .local v0, "newBuilder":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    .line 473
    return-object v0
.end method

.method public labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefix"
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 345
    .local v0, "cpy":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    .line 346
    return-object v0
.end method

.method public varargs limitScopeTo([Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 7
    .param p1, "label"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 301
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 302
    .local v1, "labels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v2, "scopeLimited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/bouncycastle/oer/OERDefinition$Builder;>;"
    iget-object v3, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 309
    .local v4, "child":Lorg/bouncycastle/oer/OERDefinition$Builder;
    invoke-virtual {v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    iget-object v6, v4, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v4    # "child":Lorg/bouncycastle/oer/OERDefinition$Builder;
    goto :goto_0

    .line 311
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_0
    iput-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    .line 313
    return-object v0
.end method

.method public mayRecurse(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 479
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput-boolean p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    .line 480
    return-object v0
.end method

.method public range(JJLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2
    .param p1, "lower"    # J
    .param p3, "upper"    # J
    .param p5, "defaultIntValue"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lower",
            "upper",
            "defaultIntValue"
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 594
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    .line 595
    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    .line 596
    iput-object p5, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 597
    return-object v0
.end method

.method public range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "lower"    # Ljava/math/BigInteger;
    .param p2, "upper"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lower",
            "upper"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 562
    .local v0, "newBuilder":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    .line 563
    iput-object p2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    .line 564
    return-object v0
.end method

.method public rangeToMAXFrom(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2
    .param p1, "from"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 569
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 570
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    .line 571
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    .line 572
    return-object v0
.end method

.method public rangeZeroTo(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2
    .param p1, "max"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    .line 577
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 578
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    .line 579
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    .line 580
    return-object v0
.end method

.method public replaceChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "newItem"    # Lorg/bouncycastle/oer/OERDefinition$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "index",
            "newItem"
        }
    .end annotation

    .line 609
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/oer/OERDefinition$Builder$2;-><init>(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$Builder;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 319
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    .line 320
    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 322
    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    .line 324
    :cond_0
    return-object v0
.end method

.method public unbounded()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 329
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 330
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    .line 331
    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    .line 332
    return-object v0
.end method

.method public varargs validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3
    .param p1, "values"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 287
    .local v0, "b":Lorg/bouncycastle/oer/OERDefinition$Builder;
    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    return-object v0
.end method

.method protected wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2
    .param p1, "explicit"    # Z
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "explicit",
            "item"
        }
    .end annotation

    .line 365
    instance-of v0, p2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    if-eqz v0, :cond_0

    .line 367
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0

    .line 369
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-eqz v0, :cond_1

    .line 371
    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0

    .line 373
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 375
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0

    .line 378
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to wrap item in builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
