.class Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;
.super Ljava/lang/Object;
.source "Argon2BytesGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FillBlock"
.end annotation


# instance fields
.field R:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

.field Z:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

.field addressBlock:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

.field inputBlock:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;


# direct methods
.method static bridge synthetic -$$Nest$mfillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfillBlockWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->fillBlockWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->R:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    .line 557
    new-instance v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->Z:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    .line 559
    new-instance v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->addressBlock:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    .line 560
    new-instance v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->inputBlock:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;-><init>()V

    return-void
.end method

.method private applyBlake()V
    .locals 20

    .line 566
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 569
    mul-int/lit8 v4, v1, 0x10

    .line 570
    .local v4, "i16":I
    iget-object v3, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->Z:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v4, 0x3

    add-int/lit8 v8, v4, 0x4

    add-int/lit8 v9, v4, 0x5

    add-int/lit8 v10, v4, 0x6

    add-int/lit8 v11, v4, 0x7

    add-int/lit8 v12, v4, 0x8

    add-int/lit8 v13, v4, 0x9

    add-int/lit8 v14, v4, 0xa

    add-int/lit8 v15, v4, 0xb

    add-int/lit8 v16, v4, 0xc

    add-int/lit8 v17, v4, 0xd

    add-int/lit8 v18, v4, 0xe

    add-int/lit8 v19, v4, 0xf

    invoke-static/range {v3 .. v19}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->-$$Nest$smroundFunction(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V

    .line 566
    .end local v4    # "i16":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 585
    mul-int/lit8 v4, v1, 0x2

    .line 586
    .local v4, "i2":I
    iget-object v3, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->Z:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, 0x10

    add-int/lit8 v7, v4, 0x11

    add-int/lit8 v8, v4, 0x20

    add-int/lit8 v9, v4, 0x21

    add-int/lit8 v10, v4, 0x30

    add-int/lit8 v11, v4, 0x31

    add-int/lit8 v12, v4, 0x40

    add-int/lit8 v13, v4, 0x41

    add-int/lit8 v14, v4, 0x50

    add-int/lit8 v15, v4, 0x51

    add-int/lit8 v16, v4, 0x60

    add-int/lit8 v17, v4, 0x61

    add-int/lit8 v18, v4, 0x70

    add-int/lit8 v19, v4, 0x71

    invoke-static/range {v3 .. v19}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->-$$Nest$smroundFunction(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V

    .line 582
    .end local v4    # "i2":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 595
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 1
    .param p1, "Y"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .param p2, "currentBlock"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "Y",
            "currentBlock"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->Z:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$mcopyBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 600
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->applyBlake()V

    .line 601
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->Z:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$mxor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 602
    return-void
.end method

.method private fillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 2
    .param p1, "X"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .param p2, "Y"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .param p3, "currentBlock"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "Y",
            "currentBlock"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->R:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$mxor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 607
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->Z:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->R:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$mcopyBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 608
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->applyBlake()V

    .line 609
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->R:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->Z:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-static {p3, v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$mxor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 610
    return-void
.end method

.method private fillBlockWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 2
    .param p1, "X"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .param p2, "Y"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .param p3, "currentBlock"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "Y",
            "currentBlock"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->R:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$mxor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 615
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->Z:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->R:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$mcopyBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 616
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->applyBlake()V

    .line 617
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->R:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->Z:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-static {p3, v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$mxorWith(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 618
    return-void
.end method
