.class public Lorg/bouncycastle/oer/OERInputStream;
.super Ljava/io/FilterInputStream;
.source "OERInputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/OERInputStream$LengthInfo;,
        Lorg/bouncycastle/oer/OERInputStream$Sequence;,
        Lorg/bouncycastle/oer/OERInputStream$Choice;
    }
.end annotation


# static fields
.field private static final bits:[I

.field private static final bitsR:[I


# instance fields
.field protected debugOutput:Ljava/io/PrintWriter;

.field protected debugStream:Ljava/io/PrintWriter;

.field private maxByteAllocation:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetbits()[I
    .locals 1

    sget-object v0, Lorg/bouncycastle/oer/OERInputStream;->bits:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 36
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/oer/OERInputStream;->bits:[I

    .line 37
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/oer/OERInputStream;->bitsR:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    .line 39
    const/high16 v1, 0x100000

    iput v1, p0, Lorg/bouncycastle/oer/OERInputStream;->maxByteAllocation:I

    .line 40
    iput-object v0, p0, Lorg/bouncycastle/oer/OERInputStream;->debugStream:Ljava/io/PrintWriter;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "maxByteAllocation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "maxByteAllocation"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    .line 39
    const/high16 v1, 0x100000

    iput v1, p0, Lorg/bouncycastle/oer/OERInputStream;->maxByteAllocation:I

    .line 40
    iput-object v0, p0, Lorg/bouncycastle/oer/OERInputStream;->debugStream:Ljava/io/PrintWriter;

    .line 63
    iput p2, p0, Lorg/bouncycastle/oer/OERInputStream;->maxByteAllocation:I

    .line 64
    return-void
.end method

.method private absent(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p1, "child"    # Lorg/bouncycastle/oer/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 542
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Absent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 543
    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    return-object v0
.end method

.method private allocateArray(I)[B
    .locals 4
    .param p1, "requiredSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requiredSize"
        }
    .end annotation

    .line 548
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream;->maxByteAllocation:I

    if-gt p1, v0, :cond_0

    .line 552
    new-array v0, p1, [B

    return-object v0

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/OERInputStream;->maxByteAllocation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "required byte array size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was greater than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private countOptionalChildTypes(Lorg/bouncycastle/oer/Element;)I
    .locals 4
    .param p1, "element"    # Lorg/bouncycastle/oer/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "optionalElements":I
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/Element;

    .line 89
    .local v2, "e":Lorg/bouncycastle/oer/Element;
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 90
    .end local v2    # "e":Lorg/bouncycastle/oer/Element;
    goto :goto_0

    .line 91
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public static parse([BLorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p0, "src"    # [B
    .param p1, "element"    # Lorg/bouncycastle/oer/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/bouncycastle/oer/OERInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    .local v0, "in":Lorg/bouncycastle/oer/OERInputStream;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public choice()Lorg/bouncycastle/oer/OERInputStream$Choice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    new-instance v0, Lorg/bouncycastle/oer/OERInputStream$Choice;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/OERInputStream$Choice;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected debugPrint(Ljava/lang/String;)V
    .locals 6
    .param p1, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    .line 730
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 731
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    const/4 v1, -0x1

    .line 732
    .local v1, "level":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 734
    aget-object v3, v0, v2

    .line 735
    .local v3, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "debugPrint"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 737
    const/4 v1, 0x0

    .line 738
    goto :goto_1

    .line 740
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OERInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 742
    add-int/lit8 v1, v1, 0x1

    .line 732
    .end local v3    # "ste":Ljava/lang/StackTraceElement;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 746
    .end local v2    # "i":I
    :cond_2
    :goto_2
    if-lez v1, :cond_3

    .line 748
    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 746
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 750
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 751
    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 753
    .end local v0    # "callStack":[Ljava/lang/StackTraceElement;
    .end local v1    # "level":I
    :cond_4
    return-void
.end method

.method public enumeration()Ljava/math/BigInteger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->read()I

    move-result v0

    .line 661
    .local v0, "first":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 669
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_2

    .line 672
    and-int/lit8 v1, v0, 0x7f

    .line 673
    .local v1, "l":I
    if-nez v1, :cond_0

    .line 675
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v2

    .line 677
    :cond_0
    new-array v2, v1, [B

    .line 678
    .local v2, "buf":[B
    invoke-static {p0, v2}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    .line 680
    .local v3, "i":I
    array-length v4, v2

    if-ne v3, v4, :cond_1

    .line 685
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v4

    .line 682
    :cond_1
    new-instance v4, Ljava/io/EOFException;

    const-string/jumbo v5, "unable to fully read integer component of enumeration"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 687
    .end local v1    # "l":I
    .end local v2    # "buf":[B
    .end local v3    # "i":I
    :cond_2
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 663
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "expecting prefix of enumeration"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public int16()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 601
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parseInt(ZI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public int32()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 607
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parseInt(ZI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public int64()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 613
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parseInt(ZI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public int8()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 595
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parseInt(ZI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 13
    .param p1, "element"    # Lorg/bouncycastle/oer/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    sget-object v0, Lorg/bouncycastle/oer/OERInputStream$1;->$SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType:[I

    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ")"

    const-string v2, " "

    const/4 v3, 0x0

    const-string v4, ") = "

    const/16 v5, 0x8

    packed-switch v0, :pswitch_data_0

    .line 537
    .end local p0    # "this":Lorg/bouncycastle/oer/OERInputStream;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    .restart local p0    # "this":Lorg/bouncycastle/oer/OERInputStream;
    :pswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->read()I

    move-result v0

    if-nez v0, :cond_0

    .line 531
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object v0

    .line 533
    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object v0

    .line 518
    :pswitch_1
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v0

    .line 519
    .local v0, "li":Lorg/bouncycastle/oer/OERInputStream$LengthInfo;
    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v1

    new-array v1, v1, [B

    .line 520
    .local v1, "value":[B
    invoke-static {p0, v1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 526
    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v3

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ext "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 527
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v2

    .line 522
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "could not read all of count of open value in choice (...) "

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    .end local v0    # "li":Lorg/bouncycastle/oer/OERInputStream$LengthInfo;
    .end local v1    # "value":[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 514
    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    return-object v0

    .line 478
    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    div-int/2addr v0, v5

    new-array v0, v0, [B

    .local v0, "data":[B
    goto :goto_0

    .line 482
    .end local v0    # "data":[B
    :cond_2
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_3

    .line 485
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    div-int/2addr v0, v5

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v0

    .restart local v0    # "data":[B
    goto :goto_0

    .line 490
    .end local v0    # "data":[B
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v0

    div-int/2addr v0, v5

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v0

    .line 492
    .restart local v0    # "data":[B
    :goto_0
    invoke-static {p0, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 493
    iget-object v1, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v1, :cond_7

    .line 495
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 496
    .local v1, "sb":Ljava/lang/StringBuffer;
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIT STRING("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-eq v2, v3, :cond_6

    .line 499
    aget-byte v3, v0, v2

    .line 500
    .local v3, "b":B
    const/4 v4, 0x0

    .local v4, "t":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 502
    and-int/lit16 v6, v3, 0x80

    if-lez v6, :cond_4

    const-string v6, "1"

    goto :goto_3

    :cond_4
    const-string v6, "0"

    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    shl-int/lit8 v6, v3, 0x1

    int-to-byte v3, v6

    .line 500
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 497
    .end local v3    # "b":B
    .end local v4    # "t":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 506
    .end local v2    # "i":I
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 509
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    return-object v1

    .line 462
    .end local v0    # "data":[B
    :pswitch_4
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v0

    .line 463
    .restart local v0    # "data":[B
    invoke-static {p0, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    array-length v2, v0

    if-ne v1, v2, :cond_9

    .line 467
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "content":Ljava/lang/String;
    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v2, :cond_8

    .line 470
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "UTF8 String ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 472
    :cond_8
    new-instance v2, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 465
    .end local v1    # "content":Ljava/lang/String;
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not read all of utf 8 string"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    .end local v0    # "data":[B
    :pswitch_5
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 438
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v0

    .restart local v0    # "data":[B
    goto :goto_4

    .line 443
    .end local v0    # "data":[B
    :cond_a
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v0

    .line 446
    .restart local v0    # "data":[B
    :goto_4
    invoke-static {p0, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    array-length v2, v0

    if-ne v1, v2, :cond_c

    .line 450
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v1

    .line 451
    .restart local v1    # "content":Ljava/lang/String;
    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v2, :cond_b

    .line 453
    array-length v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IA5 String ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 455
    :cond_b
    new-instance v2, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 448
    .end local v1    # "content":Ljava/lang/String;
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not read all of IA5 string"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    .end local v0    # "data":[B
    :pswitch_6
    const/4 v0, 0x0

    .line 405
    .local v0, "readSize":I
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getLowerBound()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 408
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_5

    .line 412
    :cond_d
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v0

    .line 415
    :goto_5
    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v1

    .line 418
    .local v1, "data":[B
    invoke-static {p0, v1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v5

    if-ne v5, v0, :cond_10

    .line 423
    iget-object v5, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v5, :cond_f

    .line 426
    array-length v5, v1

    const/16 v6, 0x20

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 427
    .local v5, "l":I
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v1

    invoke-static {v1, v3, v5}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v3

    array-length v9, v1

    if-le v9, v6, :cond_e

    const-string v6, "..."

    goto :goto_6

    :cond_e
    const-string v6, ""

    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "OCTET STRING ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 430
    .end local v5    # "l":I
    :cond_f
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v2

    .line 420
    :cond_10
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "did not read all of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    .end local v0    # "readSize":I
    .end local v1    # "data":[B
    :pswitch_7
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->intBytesForRange()I

    move-result v0

    .line 341
    .local v0, "bytesToRead":I
    if-eqz v0, :cond_12

    .line 343
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v2

    .line 344
    .local v2, "data":[B
    invoke-static {p0, v2}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 346
    if-gez v0, :cond_11

    .line 348
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    .local v3, "bi":Ljava/math/BigInteger;
    goto :goto_8

    .line 352
    .end local v3    # "bi":Ljava/math/BigInteger;
    :cond_11
    invoke-static {v2}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([B)Ljava/math/BigInteger;

    move-result-object v3

    .restart local v3    # "bi":Ljava/math/BigInteger;
    goto :goto_8

    .line 357
    .end local v2    # "data":[B
    .end local v3    # "bi":Ljava/math/BigInteger;
    :cond_12
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->isLowerRangeZero()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 359
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v2

    .line 360
    .local v2, "lengthInfo":Lorg/bouncycastle/oer/OERInputStream$LengthInfo;
    invoke-static {v2}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v3

    .line 361
    .local v3, "data":[B
    invoke-static {p0, v3}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 362
    array-length v4, v3

    if-nez v4, :cond_13

    .line 364
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .local v4, "bi":Ljava/math/BigInteger;
    goto :goto_7

    .line 368
    .end local v4    # "bi":Ljava/math/BigInteger;
    :cond_13
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 370
    .end local v2    # "lengthInfo":Lorg/bouncycastle/oer/OERInputStream$LengthInfo;
    .restart local v4    # "bi":Ljava/math/BigInteger;
    :goto_7
    move-object v2, v3

    move-object v3, v4

    goto :goto_8

    .line 377
    .end local v3    # "data":[B
    .end local v4    # "bi":Ljava/math/BigInteger;
    :cond_14
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v2

    .line 378
    .restart local v2    # "lengthInfo":Lorg/bouncycastle/oer/OERInputStream$LengthInfo;
    invoke-static {v2}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v3

    .line 379
    .restart local v3    # "data":[B
    invoke-static {p0, v3}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 380
    array-length v4, v3

    if-nez v4, :cond_15

    .line 382
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object v2, v3

    move-object v3, v4

    .restart local v4    # "bi":Ljava/math/BigInteger;
    goto :goto_8

    .line 386
    .end local v4    # "bi":Ljava/math/BigInteger;
    :cond_15
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>([B)V

    move-object v2, v3

    move-object v3, v4

    .line 391
    .local v2, "data":[B
    .local v3, "bi":Ljava/math/BigInteger;
    :goto_8
    iget-object v4, p0, Lorg/bouncycastle/oer/OERInputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v4, :cond_16

    .line 393
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    array-length v5, v2

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "INTEGER byteLen= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hex= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 396
    :cond_16
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    .line 326
    .end local v0    # "bytesToRead":I
    .end local v2    # "data":[B
    .end local v3    # "bi":Ljava/math/BigInteger;
    :pswitch_8
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->enumeration()Ljava/math/BigInteger;

    move-result-object v0

    .line 327
    .local v0, "bi":Ljava/math/BigInteger;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/oer/Element;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ENUM("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 328
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    .line 290
    .end local v0    # "bi":Ljava/math/BigInteger;
    :pswitch_9
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->choice()Lorg/bouncycastle/oer/OERInputStream$Choice;

    move-result-object v0

    .line 291
    .local v0, "choice":Lorg/bouncycastle/oer/OERInputStream$Choice;
    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERInputStream$Choice;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tag:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERInputStream$Choice;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 294
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERInputStream$Choice;->getTag()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/Element;

    invoke-static {v1, p1}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v1

    .line 296
    .local v1, "choiceDef":Lorg/bouncycastle/oer/Element;
    invoke-virtual {v1}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v2

    if-lez v2, :cond_17

    .line 298
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chosen (Ext): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 299
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v3, v0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tag:I

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parseOpenType(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 303
    :cond_17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chosen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 304
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v3, v0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tag:I

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 307
    .end local v1    # "choiceDef":Lorg/bouncycastle/oer/Element;
    :cond_18
    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERInputStream$Choice;->isApplicationTagClass()Z

    move-result v1

    const-string v2, "Unimplemented tag type"

    if-nez v1, :cond_1b

    .line 311
    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERInputStream$Choice;->isPrivateTagClass()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 315
    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERInputStream$Choice;->isUniversalTagClass()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 317
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    .end local v0    # "choice":Lorg/bouncycastle/oer/OERInputStream$Choice;
    :pswitch_a
    new-instance v0, Lorg/bouncycastle/oer/OERInputStream$Sequence;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/oer/OERInputStream$Sequence;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/oer/Element;)V

    .line 150
    .local v0, "sequence":Lorg/bouncycastle/oer/OERInputStream$Sequence;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERInputStream$Sequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 151
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 152
    .local v1, "avec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/Element;>;"
    const/4 v4, 0x0

    .line 158
    .local v4, "t":I
    const/4 v6, 0x0

    .line 159
    .local v6, "optionalPos":I
    const/4 v4, 0x0

    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_24

    .line 161
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/oer/Element;

    .line 163
    .local v7, "child":Lorg/bouncycastle/oer/Element;
    invoke-virtual {v7}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v8, v9, :cond_1c

    .line 167
    goto/16 :goto_b

    .line 170
    :cond_1c
    invoke-virtual {v7}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v8

    if-lez v8, :cond_1d

    .line 173
    goto/16 :goto_c

    .line 176
    :cond_1d
    invoke-static {v7, p1}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v7

    .line 179
    invoke-virtual {v7}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v8

    if-eqz v8, :cond_1e

    .line 181
    invoke-virtual {v7}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v8

    new-instance v9, Lorg/bouncycastle/oer/SwitchIndexer$Asn1EncodableVectorIndexer;

    invoke-direct {v9, v1}, Lorg/bouncycastle/oer/SwitchIndexer$Asn1EncodableVectorIndexer;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-interface {v8, v9}, Lorg/bouncycastle/oer/Switch;->result(Lorg/bouncycastle/oer/SwitchIndexer;)Lorg/bouncycastle/oer/Element;

    move-result-object v8

    .line 182
    .local v8, "resolvedChild":Lorg/bouncycastle/oer/Element;
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getParent()Lorg/bouncycastle/oer/Element;

    move-result-object v9

    if-eq v9, p1, :cond_1f

    .line 184
    new-instance v9, Lorg/bouncycastle/oer/Element;

    invoke-direct {v9, v8, p1}, Lorg/bouncycastle/oer/Element;-><init>(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)V

    move-object v8, v9

    goto :goto_a

    .line 189
    .end local v8    # "resolvedChild":Lorg/bouncycastle/oer/Element;
    :cond_1e
    move-object v8, v7

    .line 192
    .restart local v8    # "resolvedChild":Lorg/bouncycastle/oer/Element;
    :cond_1f
    :goto_a
    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$Sequence;->-$$Nest$fgetvaluePresent(Lorg/bouncycastle/oer/OERInputStream$Sequence;)[Z

    move-result-object v9

    if-nez v9, :cond_20

    .line 195
    invoke-virtual {p0, v8}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_b

    .line 200
    :cond_20
    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$Sequence;->-$$Nest$fgetvaluePresent(Lorg/bouncycastle/oer/OERInputStream$Sequence;)[Z

    move-result-object v9

    aget-boolean v9, v9, v4

    if-eqz v9, :cond_22

    .line 202
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 204
    :try_start_0
    invoke-virtual {p0, v8}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_b

    .end local v0    # "sequence":Lorg/bouncycastle/oer/OERInputStream$Sequence;
    .end local v1    # "avec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/Element;>;"
    .end local v4    # "t":I
    .end local v6    # "optionalPos":I
    .end local v7    # "child":Lorg/bouncycastle/oer/Element;
    .end local v8    # "resolvedChild":Lorg/bouncycastle/oer/Element;
    .end local p0    # "this":Lorg/bouncycastle/oer/OERInputStream;
    .end local p1    # "element":Lorg/bouncycastle/oer/Element;
    :catchall_0
    move-exception p1

    throw p1

    .line 209
    .restart local v0    # "sequence":Lorg/bouncycastle/oer/OERInputStream$Sequence;
    .restart local v1    # "avec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/Element;>;"
    .restart local v4    # "t":I
    .restart local v6    # "optionalPos":I
    .restart local v7    # "child":Lorg/bouncycastle/oer/Element;
    .restart local v8    # "resolvedChild":Lorg/bouncycastle/oer/Element;
    .restart local p1    # "element":Lorg/bouncycastle/oer/Element;
    :cond_21
    invoke-virtual {p0, v8}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_b

    .line 214
    :cond_22
    invoke-virtual {v8}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 216
    invoke-virtual {v7}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_b

    .line 220
    :cond_23
    invoke-direct {p0, v7}, Lorg/bouncycastle/oer/OERInputStream;->absent(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    .end local v7    # "child":Lorg/bouncycastle/oer/Element;
    .end local v8    # "resolvedChild":Lorg/bouncycastle/oer/Element;
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 229
    :cond_24
    :goto_c
    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$Sequence;->-$$Nest$fgetextensionFlagSet(Lorg/bouncycastle/oer/OERInputStream$Sequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 231
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v7

    .line 232
    .local v7, "l":I
    invoke-direct {p0, v7}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v8

    .line 233
    .local v8, "rawPresenceList":[B
    iget-object v9, p0, Lorg/bouncycastle/oer/OERInputStream;->in:Ljava/io/InputStream;

    invoke-static {v9, v8}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v9

    array-length v10, v8

    if-ne v9, v10, :cond_2c

    .line 238
    const/16 v9, 0x8

    .line 239
    .local v9, "presenceIndex":I
    array-length v10, v8

    mul-int/lit8 v10, v10, 0x8

    aget-byte v3, v8, v3

    sub-int/2addr v10, v3

    .line 242
    .local v10, "stop":I
    :goto_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v4, v3, :cond_25

    if-ge v9, v10, :cond_2d

    .line 244
    :cond_25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_26

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/oer/Element;

    goto :goto_e

    :cond_26
    const/4 v3, 0x0

    .line 246
    .local v3, "child":Lorg/bouncycastle/oer/Element;
    :goto_e
    if-nez v3, :cond_28

    .line 250
    div-int/lit8 v5, v9, 0x8

    aget-byte v5, v8, v5

    sget-object v11, Lorg/bouncycastle/oer/OERInputStream;->bitsR:[I

    rem-int/lit8 v12, v9, 0x8

    aget v11, v11, v12

    and-int/2addr v5, v11

    if-eqz v5, :cond_2a

    .line 253
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v5

    .line 254
    .local v5, "len":I
    :goto_f
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_27

    .line 256
    iget-object v11, p0, Lorg/bouncycastle/oer/OERInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    goto :goto_f

    .line 260
    .end local v5    # "len":I
    :cond_27
    goto :goto_10

    .line 264
    :cond_28
    if-ge v9, v10, :cond_29

    div-int/lit8 v5, v9, 0x8

    aget-byte v5, v8, v5

    sget-object v11, Lorg/bouncycastle/oer/OERInputStream;->bitsR:[I

    rem-int/lit8 v12, v9, 0x8

    aget v11, v11, v12

    and-int/2addr v5, v11

    if-eqz v5, :cond_29

    .line 267
    invoke-virtual {p0, v3}, Lorg/bouncycastle/oer/OERInputStream;->parseOpenType(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_10

    .line 271
    :cond_29
    invoke-virtual {v3}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 277
    sget-object v5, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 281
    :cond_2a
    :goto_10
    nop

    .end local v3    # "child":Lorg/bouncycastle/oer/Element;
    add-int/lit8 v9, v9, 0x1

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 273
    .restart local v3    # "child":Lorg/bouncycastle/oer/Element;
    :cond_2b
    new-instance v5, Ljava/io/IOException;

    const-string v11, "extension is marked as explicit but is not defined in presence list"

    invoke-direct {v5, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    .end local v3    # "child":Lorg/bouncycastle/oer/Element;
    .end local v9    # "presenceIndex":I
    .end local v10    # "stop":I
    :cond_2c
    new-instance v3, Ljava/io/IOException;

    const-string v5, "did not fully read presence list."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 285
    .end local v7    # "l":I
    .end local v8    # "rawPresenceList":[B
    :cond_2d
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v3

    .line 114
    .end local v0    # "sequence":Lorg/bouncycastle/oer/OERInputStream$Sequence;
    .end local v1    # "avec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/Element;>;"
    .end local v4    # "t":I
    .end local v6    # "optionalPos":I
    :pswitch_b
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v0

    .line 118
    .local v0, "l":I
    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v2

    .line 119
    .local v2, "lenEnc":[B
    invoke-static {p0, v2}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v4

    array-length v5, v2

    if-ne v4, v5, :cond_30

    .line 127
    invoke-static {v2}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([B)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 130
    .local v4, "j":I
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 132
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 134
    .restart local v1    # "avec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/oer/Element;

    invoke-virtual {v5}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v5

    if-nez v5, :cond_2f

    .line 139
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_11
    if-ge v5, v4, :cond_2e

    .line 141
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/oer/Element;

    invoke-static {v6, p1}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v6

    .line 142
    .local v6, "def":Lorg/bouncycastle/oer/Element;
    invoke-virtual {p0, v6}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 139
    .end local v6    # "def":Lorg/bouncycastle/oer/Element;
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 144
    .end local v5    # "n":I
    :cond_2e
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v3

    .line 136
    :cond_2f
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "element def for item in SEQ OF has a switch, switches only supported in sequences"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    .end local v1    # "avec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "j":I
    :cond_30
    new-instance v1, Ljava/io/IOException;

    const-string v3, "could not read all of count of seq-of values"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0    # "l":I
    .end local v2    # "lenEnc":[B
    :pswitch_c
    new-instance v0, Lorg/bouncycastle/oer/Element;

    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->getElementSupplier()Lorg/bouncycastle/oer/ElementSupplier;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/oer/ElementSupplier;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/oer/Element;-><init>(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A switch element should only be found within a sequence."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :pswitch_e
    invoke-virtual {p1}, Lorg/bouncycastle/oer/Element;->resolveSupplier()Lorg/bouncycastle/oer/ElementSupplier;

    move-result-object v0

    .line 104
    .local v0, "es":Lorg/bouncycastle/oer/ElementSupplier;
    new-instance v1, Lorg/bouncycastle/oer/Element;

    invoke-interface {v0}, Lorg/bouncycastle/oer/ElementSupplier;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/oer/Element;-><init>(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseInt(ZI)Ljava/math/BigInteger;
    .locals 4
    .param p1, "unsigned"    # Z
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unsigned",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 558
    new-array v0, p2, [B

    .line 559
    .local v0, "buf":[B
    invoke-static {p0, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 560
    .local v1, "read":I
    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 564
    new-instance v2, Ljava/math/BigInteger;

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0

    :cond_0
    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    :goto_0
    return-object v2

    .line 562
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "integer not fully read"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected parseOpenType(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 5
    .param p1, "e"    # Lorg/bouncycastle/oer/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;->-$$Nest$mintLength(Lorg/bouncycastle/oer/OERInputStream$LengthInfo;)I

    move-result v0

    .line 695
    .local v0, "len":I
    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERInputStream;->allocateArray(I)[B

    move-result-object v1

    .line 696
    .local v1, "openTypeRaw":[B
    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream;->in:Ljava/io/InputStream;

    invoke-static {v2, v1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    array-length v3, v1

    if-ne v2, v3, :cond_1

    .line 700
    const/4 v2, 0x0

    .line 703
    .local v2, "oerIn":Lorg/bouncycastle/oer/OERInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 704
    .local v3, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lorg/bouncycastle/oer/OERInputStream;

    invoke-direct {v4, v3}, Lorg/bouncycastle/oer/OERInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 705
    invoke-virtual {v2, p1}, Lorg/bouncycastle/oer/OERInputStream;->parse(Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    nop

    .line 711
    invoke-virtual {v2}, Lorg/bouncycastle/oer/OERInputStream;->close()V

    .line 705
    return-object v4

    .line 709
    .end local v3    # "bin":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    .line 711
    invoke-virtual {v2}, Lorg/bouncycastle/oer/OERInputStream;->close()V

    .line 713
    :cond_0
    throw v3

    .line 698
    .end local v2    # "oerIn":Lorg/bouncycastle/oer/OERInputStream;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "did not fully read open type as raw bytes"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readLength()Lorg/bouncycastle/oer/OERInputStream$LengthInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "accumulator":I
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream;->read()I

    move-result v1

    .line 627
    .local v1, "byteVal":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 632
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_0

    .line 634
    and-int/lit8 v2, v1, 0x7f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Len (Short form): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 635
    new-instance v2, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    and-int/lit8 v3, v1, 0x7f

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;-><init>(Ljava/math/BigInteger;Z)V

    return-object v2

    .line 642
    :cond_0
    and-int/lit8 v2, v1, 0x7f

    new-array v2, v2, [B

    .line 643
    .local v2, "lengthInt":[B
    invoke-static {p0, v2}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_1

    .line 649
    and-int/lit8 v3, v1, 0x7f

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Len (Long Form): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " actual len: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/oer/OERInputStream;->debugPrint(Ljava/lang/String;)V

    .line 651
    new-instance v3, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;

    invoke-static {v2}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([B)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/oer/OERInputStream$LengthInfo;-><init>(Ljava/math/BigInteger;Z)V

    return-object v3

    .line 645
    :cond_1
    new-instance v3, Ljava/io/EOFException;

    const-string v4, "did not read all bytes of length definition"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 629
    .end local v2    # "lengthInt":[B
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "expecting length"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public uint16()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 577
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parseInt(ZI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public uint32()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 583
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parseInt(ZI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public uint64()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 589
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OERInputStream;->parseInt(ZI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public uint8()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 571
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/bouncycastle/oer/OERInputStream;->parseInt(ZI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
