.class public Lorg/bouncycastle/oer/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field private final aSwitch:Lorg/bouncycastle/oer/Switch;

.field private final baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field private final block:I

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final defaultValuesInChildren:Z

.field private final elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

.field private final enumValue:Ljava/math/BigInteger;

.field private final explicit:Z

.field private final extensionsInDefinition:Z

.field private final label:Ljava/lang/String;

.field private final lowerBound:Ljava/math/BigInteger;

.field private final mayRecurse:Z

.field private optionalChildrenInOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final optionals:I

.field private parent:Lorg/bouncycastle/oer/Element;

.field private final supplierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/oer/ElementSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private final typeName:Ljava/lang/String;

.field private final upperBound:Ljava/math/BigInteger;

.field private validSwitchValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)V
    .locals 2
    .param p1, "element"    # Lorg/bouncycastle/oer/Element;
    .param p2, "parent"    # Lorg/bouncycastle/oer/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "parent"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    .line 90
    iget-boolean v0, p1, Lorg/bouncycastle/oer/Element;->explicit:Z

    iput-boolean v0, p0, Lorg/bouncycastle/oer/Element;->explicit:Z

    .line 91
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    .line 93
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    .line 94
    iget-boolean v0, p1, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    iput-boolean v0, p0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    .line 95
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    .line 96
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 97
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    .line 98
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    .line 99
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    .line 100
    iget-boolean v0, p1, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    iput-boolean v0, p0, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    .line 101
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    iput-object v0, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    .line 103
    iput-object p2, p0, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    .line 104
    iget v0, p1, Lorg/bouncycastle/oer/Element;->block:I

    iput v0, p0, Lorg/bouncycastle/oer/Element;->block:I

    .line 105
    iget v0, p1, Lorg/bouncycastle/oer/Element;->optionals:I

    iput v0, p0, Lorg/bouncycastle/oer/Element;->optionals:I

    .line 106
    iget-boolean v0, p1, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    iput-boolean v0, p0, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/Element;

    .line 109
    .local v1, "e":Lorg/bouncycastle/oer/Element;
    iput-object p0, v1, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    .line 110
    .end local v1    # "e":Lorg/bouncycastle/oer/Element;
    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;Ljava/util/List;ZLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Switch;Ljava/util/List;Lorg/bouncycastle/oer/ElementSupplier;ZLjava/lang/String;Ljava/util/Map;IIZ)V
    .locals 17
    .param p1, "baseType"    # Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .param p3, "explicit"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "lowerBound"    # Ljava/math/BigInteger;
    .param p6, "upperBound"    # Ljava/math/BigInteger;
    .param p7, "extensionsInDefinition"    # Z
    .param p8, "enumValue"    # Ljava/math/BigInteger;
    .param p9, "defaultValue"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .param p10, "aSwitch"    # Lorg/bouncycastle/oer/Switch;
    .param p12, "elementSupplier"    # Lorg/bouncycastle/oer/ElementSupplier;
    .param p13, "mayRecurse"    # Z
    .param p14, "typeName"    # Ljava/lang/String;
    .param p16, "block"    # I
    .param p17, "optionals"    # I
    .param p18, "defaultValuesInChildren"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseType",
            "children",
            "explicit",
            "label",
            "lowerBound",
            "upperBound",
            "extensionsInDefinition",
            "enumValue",
            "defaultValue",
            "aSwitch",
            "switchValues",
            "elementSupplier",
            "mayRecurse",
            "typeName",
            "supplierMap",
            "block",
            "optionals",
            "defaultValuesInChildren"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/oer/OERDefinition$BaseType;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Z",
            "Ljava/math/BigInteger;",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            "Lorg/bouncycastle/oer/Switch;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;",
            "Lorg/bouncycastle/oer/ElementSupplier;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/oer/ElementSupplier;",
            ">;IIZ)V"
        }
    .end annotation

    .line 53
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/Element;>;"
    .local p11, "switchValues":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/asn1/ASN1Encodable;>;"
    .local p15, "supplierMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/bouncycastle/oer/ElementSupplier;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p15

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object/from16 v2, p1

    iput-object v2, v0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 55
    move-object/from16 v3, p2

    iput-object v3, v0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    .line 56
    move/from16 v4, p3

    iput-boolean v4, v0, Lorg/bouncycastle/oer/Element;->explicit:Z

    .line 57
    move-object/from16 v5, p4

    iput-object v5, v0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    .line 58
    move-object/from16 v6, p5

    iput-object v6, v0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    .line 59
    move-object/from16 v7, p6

    iput-object v7, v0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    .line 60
    move/from16 v8, p7

    iput-boolean v8, v0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    .line 61
    move-object/from16 v9, p8

    iput-object v9, v0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    .line 62
    move-object/from16 v10, p9

    iput-object v10, v0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 63
    move-object/from16 v11, p10

    iput-object v11, v0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    .line 64
    if-eqz p11, :cond_0

    invoke-static/range {p11 .. p11}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    iput-object v12, v0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    .line 65
    move-object/from16 v12, p12

    iput-object v12, v0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    .line 66
    move/from16 v13, p13

    iput-boolean v13, v0, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    .line 67
    move-object/from16 v14, p14

    iput-object v14, v0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    .line 68
    move/from16 v15, p16

    iput v15, v0, Lorg/bouncycastle/oer/Element;->block:I

    .line 69
    move/from16 v2, p17

    iput v2, v0, Lorg/bouncycastle/oer/Element;->optionals:I

    .line 70
    move/from16 v2, p18

    iput-boolean v2, v0, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    .line 71
    if-nez v1, :cond_1

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    goto :goto_1

    .line 77
    :cond_1
    iput-object v1, v0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    .line 80
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lorg/bouncycastle/oer/Element;

    .line 82
    .local v1, "e":Lorg/bouncycastle/oer/Element;
    iput-object v0, v1, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    .line 83
    .end local v1    # "e":Lorg/bouncycastle/oer/Element;
    move-object/from16 v1, p15

    goto :goto_2

    .line 84
    :cond_2
    return-void
.end method

.method public static expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;
    .locals 1
    .param p0, "e"    # Lorg/bouncycastle/oer/Element;
    .param p1, "parent"    # Lorg/bouncycastle/oer/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "e",
            "parent"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    invoke-interface {v0}, Lorg/bouncycastle/oer/ElementSupplier;->build()Lorg/bouncycastle/oer/Element;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getParent()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 128
    new-instance v0, Lorg/bouncycastle/oer/Element;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/oer/Element;-><init>(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)V

    move-object p0, v0

    .line 131
    :cond_0
    return-object p0
.end method


# virtual methods
.method public appendLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, " (E)"

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public canBeNegative()Z
    .locals 2

    .line 192
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 398
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 400
    return v0

    .line 402
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_d

    .line 407
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/oer/Element;

    .line 409
    .local v2, "element":Lorg/bouncycastle/oer/Element;
    iget-boolean v3, p0, Lorg/bouncycastle/oer/Element;->explicit:Z

    iget-boolean v4, v2, Lorg/bouncycastle/oer/Element;->explicit:Z

    if-eq v3, v4, :cond_2

    .line 411
    return v1

    .line 413
    :cond_2
    iget-boolean v3, p0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    iget-boolean v4, v2, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    if-eq v3, v4, :cond_3

    .line 415
    return v1

    .line 417
    :cond_3
    iget-boolean v3, p0, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    iget-boolean v4, v2, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    if-eq v3, v4, :cond_4

    .line 419
    return v1

    .line 421
    :cond_4
    iget-boolean v3, p0, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    iget-boolean v4, v2, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    if-eq v3, v4, :cond_5

    .line 423
    return v1

    .line 425
    :cond_5
    iget v3, p0, Lorg/bouncycastle/oer/Element;->optionals:I

    iget v4, v2, Lorg/bouncycastle/oer/Element;->optionals:I

    if-eq v3, v4, :cond_6

    .line 427
    return v1

    .line 429
    :cond_6
    iget v3, p0, Lorg/bouncycastle/oer/Element;->block:I

    iget v4, v2, Lorg/bouncycastle/oer/Element;->block:I

    if-eq v3, v4, :cond_7

    .line 431
    return v1

    .line 433
    :cond_7
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-eq v3, v4, :cond_8

    .line 435
    return v1

    .line 437
    :cond_8
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_9
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    if-eqz v3, :cond_a

    .line 439
    :goto_0
    return v1

    .line 441
    :cond_a
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1

    :cond_b
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 443
    :goto_1
    return v1

    .line 445
    :cond_c
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_2

    :cond_d
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    if-eqz v3, :cond_e

    .line 447
    :goto_2
    return v1

    .line 449
    :cond_e
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_3

    :cond_f
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    if-eqz v3, :cond_10

    .line 451
    :goto_3
    return v1

    .line 453
    :cond_10
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_4

    :cond_11
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    if-eqz v3, :cond_12

    .line 455
    :goto_4
    return v1

    .line 457
    :cond_12
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_5

    :cond_13
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v3, :cond_14

    .line 459
    :goto_5
    return v1

    .line 461
    :cond_14
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_6

    :cond_15
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    if-eqz v3, :cond_16

    .line 463
    :goto_6
    return v1

    .line 465
    :cond_16
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_7

    :cond_17
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    if-eqz v3, :cond_18

    .line 467
    :goto_7
    return v1

    .line 469
    :cond_18
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_8

    :cond_19
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    if-eqz v3, :cond_1a

    .line 471
    :goto_8
    return v1

    .line 473
    :cond_1a
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_9

    :cond_1b
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    if-eqz v3, :cond_1c

    .line 475
    :goto_9
    return v1

    .line 477
    :cond_1c
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_a

    :cond_1d
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 479
    :goto_a
    return v1

    .line 481
    :cond_1e
    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    iget-object v4, v2, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_b

    :cond_1f
    iget-object v3, v2, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    if-eqz v3, :cond_20

    :goto_b
    goto :goto_c

    :cond_20
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 404
    .end local v2    # "element":Lorg/bouncycastle/oer/Element;
    :cond_21
    :goto_d
    return v1
.end method

.method public getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-object v0
.end method

.method public getBlock()I
    .locals 1

    .line 343
    iget v0, p0, Lorg/bouncycastle/oer/Element;->block:I

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getDerivedTypeName()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$BaseType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementSupplier()Lorg/bouncycastle/oer/ElementSupplier;
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    return-object v0
.end method

.method public getEnumValue()Ljava/math/BigInteger;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getFirstChid()Lorg/bouncycastle/oer/Element;
    .locals 2

    .line 251
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/Element;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLowerBound()Ljava/math/BigInteger;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOptionalChildrenInOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    return-object v0
.end method

.method public getOptionals()I
    .locals 1

    .line 338
    iget v0, p0, Lorg/bouncycastle/oer/Element;->optionals:I

    return v0
.end method

.method public getParent()Lorg/bouncycastle/oer/Element;
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperBound()Ljava/math/BigInteger;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getValidSwitchValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    return-object v0
.end method

.method public getaSwitch()Lorg/bouncycastle/oer/Switch;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    return-object v0
.end method

.method public hasDefaultChildren()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    return v0
.end method

.method public hasPopulatedExtension()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 492
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$BaseType;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 493
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->children:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    .line 494
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v3, p0, Lorg/bouncycastle/oer/Element;->explicit:Z

    add-int/2addr v0, v3

    .line 495
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v2, v3

    .line 496
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->lowerBound:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    .line 497
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->upperBound:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v2, v3

    .line 498
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v3, p0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    add-int/2addr v0, v3

    .line 499
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->enumValue:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v2, v3

    .line 500
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    .line 501
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->aSwitch:Lorg/bouncycastle/oer/Switch;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    add-int/2addr v2, v3

    .line 502
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v3, p0, Lorg/bouncycastle/oer/Element;->defaultValuesInChildren:Z

    add-int/2addr v0, v3

    .line 503
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    add-int/2addr v2, v3

    .line 504
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->validSwitchValues:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    add-int/2addr v0, v3

    .line 505
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v2, v3

    .line 506
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v3, p0, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    add-int/2addr v0, v3

    .line 507
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_b
    add-int/2addr v2, v3

    .line 508
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    if-eqz v3, :cond_c

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_c
    add-int/2addr v0, v1

    .line 511
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/bouncycastle/oer/Element;->optionals:I

    add-int/2addr v1, v2

    .line 512
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/bouncycastle/oer/Element;->block:I

    add-int/2addr v0, v2

    .line 513
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public intBytesForRange()I
    .locals 6

    .line 203
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 205
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    sget-object v3, Lorg/bouncycastle/oer/OERDefinition;->uIntMax:[Ljava/math/BigInteger;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 213
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/oer/OERDefinition;->uIntMax:[Ljava/math/BigInteger;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_0

    .line 215
    return v2

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_1
    goto :goto_2

    .line 221
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v2, 0x1

    .restart local v2    # "j":I
    :goto_1
    sget-object v3, Lorg/bouncycastle/oer/OERDefinition;->sIntRange:[[Ljava/math/BigInteger;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 223
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/oer/OERDefinition;->sIntRange:[[Ljava/math/BigInteger;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/oer/OERDefinition;->sIntRange:[[Ljava/math/BigInteger;

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_3

    .line 225
    neg-int v1, v2

    return v1

    .line 221
    :cond_3
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 230
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_4
    :goto_2
    return v1
.end method

.method public isExplicit()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lorg/bouncycastle/oer/Element;->explicit:Z

    return v0
.end method

.method public isExtensionsInDefinition()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lorg/bouncycastle/oer/Element;->extensionsInDefinition:Z

    return v0
.end method

.method public isFixedLength()Z
    .locals 2

    .line 256
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLowerRangeZero()Z
    .locals 2

    .line 174
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMayRecurse()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lorg/bouncycastle/oer/Element;->mayRecurse:Z

    return v0
.end method

.method public isUnbounded()Z
    .locals 1

    .line 169
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnsignedWithRange()Z
    .locals 2

    .line 185
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->isLowerRangeZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public optionalOrDefaultChildrenInOrder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/Element;",
            ">;"
        }
    .end annotation

    .line 147
    monitor-enter p0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getOptionalChildrenInOrder()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "optList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/bouncycastle/oer/Element;>;"
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/Element;

    .line 156
    .local v2, "e":Lorg/bouncycastle/oer/Element;
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v2    # "e":Lorg/bouncycastle/oer/Element;
    :cond_1
    goto :goto_0

    .line 161
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/Element;->optionalChildrenInOrder:Ljava/util/List;

    .line 163
    .end local v0    # "optList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/bouncycastle/oer/Element;>;"
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getOptionalChildrenInOrder()Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rangeExpression()Ljava/lang/String;
    .locals 4

    .line 136
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "MIN"

    .line 137
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "MAX"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ... "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public resolveSupplier()Lorg/bouncycastle/oer/ElementSupplier;
    .locals 4

    .line 360
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/ElementSupplier;

    return-object v0

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/Element;->resolveSupplier(Ljava/lang/String;)Lorg/bouncycastle/oer/ElementSupplier;

    move-result-object v0

    return-object v0

    .line 370
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to resolve: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected resolveSupplier(Ljava/lang/String;)Lorg/bouncycastle/oer/ElementSupplier;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->label:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 376
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->supplierMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/ElementSupplier;

    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->parent:Lorg/bouncycastle/oer/Element;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/Element;->resolveSupplier(Ljava/lang/String;)Lorg/bouncycastle/oer/ElementSupplier;

    move-result-object v0

    return-object v0

    .line 386
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to resolve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 262
    iget-object v0, p0, Lorg/bouncycastle/oer/Element;->typeName:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/oer/Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$BaseType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
