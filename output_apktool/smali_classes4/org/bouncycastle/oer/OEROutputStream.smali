.class public Lorg/bouncycastle/oer/OEROutputStream;
.super Ljava/io/OutputStream;
.source "OEROutputStream.java"


# static fields
.field private static final bits:[I


# instance fields
.field protected debugOutput:Ljava/io/PrintWriter;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    return-void

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
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 40
    return-void
.end method

.method public static byteLength(J)I
    .locals 8
    .param p0, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 44
    const-wide/high16 v0, -0x100000000000000L

    .line 45
    .local v0, "m":J
    const/16 v2, 0x8

    .line 46
    .local v2, "j":I
    :goto_0
    if-lez v2, :cond_0

    and-long v3, p0, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 48
    const/16 v3, 0x8

    shl-long/2addr p0, v3

    .line 46
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 50
    :cond_0
    return v2
.end method

.method private encodeLength(J)V
    .locals 3
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    const-wide/16 v0, 0x7f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 682
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 687
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 688
    .local v0, "value":[B
    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    array-length v2, v0

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 689
    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 691
    .end local v0    # "value":[B
    :goto_0
    return-void
.end method

.method private encodeQuantity(J)V
    .locals 3
    .param p1, "quantity"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quantity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 697
    .local v0, "quantityEncoded":[B
    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 698
    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 699
    return-void
.end method


# virtual methods
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

    .line 649
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    .line 652
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 653
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    const/4 v1, -0x1

    .line 654
    .local v1, "level":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 656
    aget-object v3, v0, v2

    .line 657
    .local v3, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "debugPrint"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 659
    const/4 v1, 0x0

    .line 660
    goto :goto_1

    .line 662
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OERInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    add-int/lit8 v1, v1, 0x1

    .line 654
    .end local v3    # "ste":Ljava/lang/StackTraceElement;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    .end local v2    # "i":I
    :cond_2
    :goto_2
    if-lez v1, :cond_3

    .line 670
    iget-object v2, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 668
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 672
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 673
    iget-object v2, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 675
    .end local v0    # "callStack":[Ljava/lang/StackTraceElement;
    .end local v1    # "level":I
    :cond_4
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 705
    return-void
.end method

.method public write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V
    .locals 16
    .param p1, "encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .param p2, "oerElement"    # Lorg/bouncycastle/oer/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodable",
            "oerElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget-object v3, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    if-ne v0, v3, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    instance-of v3, v0, Lorg/bouncycastle/oer/OEROptional;

    if-eqz v3, :cond_1

    .line 63
    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 64
    return-void

    .line 69
    :cond_1
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 71
    .end local p1    # "encodable":Lorg/bouncycastle/asn1/ASN1Encodable;
    .local v0, "encodable":Lorg/bouncycastle/asn1/ASN1Encodable;
    sget-object v3, Lorg/bouncycastle/oer/OEROutputStream$1;->$SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType:[I

    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, " "

    const/16 v5, 0xff

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x1

    packed-switch v3, :pswitch_data_0

    .end local p0    # "this":Lorg/bouncycastle/oer/OEROutputStream;
    goto/16 :goto_1f

    .line 631
    .restart local p0    # "this":Lorg/bouncycastle/oer/OEROutputStream;
    :pswitch_0
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 632
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v3

    .line 633
    .local v3, "asn1Boolean":Lorg/bouncycastle/asn1/ASN1Boolean;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 635
    iget-object v4, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 639
    :cond_2
    iget-object v4, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 641
    :goto_0
    iget-object v4, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_1f

    .line 629
    .end local v3    # "asn1Boolean":Lorg/bouncycastle/asn1/ASN1Boolean;
    :pswitch_1
    goto/16 :goto_1f

    .line 611
    :pswitch_2
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    .line 612
    .local v3, "octets":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 613
    .local v4, "bytes":[B
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 615
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 619
    :cond_3
    array-length v5, v4

    int-to-long v5, v5

    invoke-direct {v1, v5, v6}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 620
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 622
    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 623
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 624
    goto/16 :goto_1f

    .line 608
    .end local v3    # "octets":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v4    # "bytes":[B
    :pswitch_3
    goto/16 :goto_1f

    .line 588
    :pswitch_4
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    .line 589
    .local v3, "bitString":Lorg/bouncycastle/asn1/ASN1BitString;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v4

    .line 590
    .restart local v4    # "bytes":[B
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 592
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 593
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    goto :goto_2

    .line 597
    :cond_4
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v5

    .line 598
    .local v5, "padBits":I
    array-length v6, v4

    add-int/2addr v6, v8

    int-to-long v6, v6

    invoke-direct {v1, v6, v7}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 599
    iget-object v6, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write(I)V

    .line 600
    iget-object v6, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write([B)V

    .line 601
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 603
    .end local v5    # "padBits":I
    :goto_2
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 605
    .end local v3    # "bitString":Lorg/bouncycastle/asn1/ASN1BitString;
    .end local v4    # "bytes":[B
    goto/16 :goto_1f

    .line 578
    :pswitch_5
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v3

    .line 579
    .local v3, "utf8":Lorg/bouncycastle/asn1/ASN1UTF8String;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 580
    .local v4, "encoded":[B
    array-length v5, v4

    int-to-long v5, v5

    invoke-direct {v1, v5, v6}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 581
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 582
    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 583
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 584
    goto/16 :goto_1f

    .line 550
    .end local v3    # "utf8":Lorg/bouncycastle/asn1/ASN1UTF8String;
    .end local v4    # "encoded":[B
    :pswitch_6
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v3

    .line 551
    .local v3, "iaf":Lorg/bouncycastle/asn1/ASN1IA5String;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1IA5String;->getOctets()[B

    move-result-object v5

    .line 556
    .local v5, "encoded":[B
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    array-length v8, v5

    if-ne v6, v8, :cond_5

    goto :goto_3

    .line 558
    :cond_5
    new-instance v6, Ljava/io/IOException;

    array-length v7, v5

    .line 559
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getUpperBound()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IA5String string length does not equal declared fixed length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 562
    :cond_6
    :goto_3
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 564
    iget-object v4, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    .line 568
    :cond_7
    array-length v4, v5

    int-to-long v8, v4

    invoke-direct {v1, v8, v9}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 569
    iget-object v4, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 571
    :goto_4
    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 572
    iget-object v4, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 573
    goto/16 :goto_1f

    .line 533
    .end local v3    # "iaf":Lorg/bouncycastle/asn1/ASN1IA5String;
    .end local v5    # "encoded":[B
    :pswitch_7
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    .line 534
    .local v3, "octets":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 535
    .local v4, "bytes":[B
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->isFixedLength()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 537
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    .line 541
    :cond_8
    array-length v5, v4

    int-to-long v5, v5

    invoke-direct {v1, v5, v6}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 542
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 544
    :goto_5
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 545
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 546
    goto/16 :goto_1f

    .line 455
    .end local v3    # "octets":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v4    # "bytes":[B
    :pswitch_8
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    .line 459
    .local v3, "integer":Lorg/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->intBytesForRange()I

    move-result v4

    .line 460
    .local v4, "intBytesForRange":I
    if-lez v4, :cond_9

    .line 465
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v5

    .line 466
    .restart local v5    # "encoded":[B
    sparse-switch v4, :sswitch_data_0

    .line 475
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown uint length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 472
    :sswitch_0
    iget-object v6, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    .line 473
    nop

    .line 477
    .end local v5    # "encoded":[B
    goto :goto_8

    .line 478
    :cond_9
    if-gez v4, :cond_a

    .line 486
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 487
    .local v5, "number":Ljava/math/BigInteger;
    sparse-switch v4, :sswitch_data_1

    .line 502
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "unknown twos compliment length"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 490
    :sswitch_1
    invoke-static {v5}, Lorg/bouncycastle/util/BigIntegers;->byteValueExact(Ljava/math/BigInteger;)B

    move-result v7

    new-array v8, v8, [B

    aput-byte v7, v8, v6

    .line 491
    .local v8, "encoded":[B
    goto :goto_6

    .line 493
    .end local v8    # "encoded":[B
    :sswitch_2
    invoke-static {v5}, Lorg/bouncycastle/util/BigIntegers;->shortValueExact(Ljava/math/BigInteger;)S

    move-result v6

    invoke-static {v6}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v8

    .line 494
    .restart local v8    # "encoded":[B
    goto :goto_6

    .line 496
    .end local v8    # "encoded":[B
    :sswitch_3
    invoke-static {v5}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v6

    invoke-static {v6}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v8

    .line 497
    .restart local v8    # "encoded":[B
    goto :goto_6

    .line 499
    .end local v8    # "encoded":[B
    :sswitch_4
    invoke-static {v5}, Lorg/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v8

    .line 500
    .restart local v8    # "encoded":[B
    nop

    .line 505
    :goto_6
    iget-object v6, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    .line 506
    .end local v5    # "number":Ljava/math/BigInteger;
    .end local v8    # "encoded":[B
    goto :goto_8

    .line 511
    :cond_a
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->isLowerRangeZero()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 515
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v5

    .local v5, "encoded":[B
    goto :goto_7

    .line 520
    .end local v5    # "encoded":[B
    :cond_b
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 523
    .restart local v5    # "encoded":[B
    :goto_7
    array-length v6, v5

    int-to-long v6, v6

    invoke-direct {v1, v6, v7}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 524
    iget-object v6, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    .line 526
    .end local v5    # "encoded":[B
    :goto_8
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 527
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 530
    .end local v3    # "integer":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v4    # "intBytesForRange":I
    goto/16 :goto_1f

    .line 412
    :pswitch_9
    instance-of v3, v0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_c

    .line 414
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    .local v3, "ordinal":Ljava/math/BigInteger;
    goto :goto_9

    .line 418
    .end local v3    # "ordinal":Ljava/math/BigInteger;
    :cond_c
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    .line 421
    .restart local v3    # "ordinal":Ljava/math/BigInteger;
    :goto_9
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 423
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/oer/Element;

    .line 424
    .local v7, "child":Lorg/bouncycastle/oer/Element;
    invoke-static {v7, v2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v7

    .line 430
    invoke-virtual {v7}, Lorg/bouncycastle/oer/Element;->getEnumValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 432
    const-wide/16 v8, 0x7f

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_d

    .line 435
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 436
    .local v4, "val":[B
    array-length v8, v4

    and-int/2addr v5, v8

    or-int/lit16 v5, v5, 0x80

    .line 437
    .local v5, "l":I
    iget-object v8, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v8, v5}, Ljava/io/OutputStream;->write(I)V

    .line 438
    iget-object v8, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write([B)V

    .line 439
    .end local v4    # "val":[B
    .end local v5    # "l":I
    goto :goto_b

    .line 442
    :cond_d
    iget-object v4, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 444
    :goto_b
    iget-object v4, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 445
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->rangeExpression()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 446
    return-void

    .line 448
    .end local v7    # "child":Lorg/bouncycastle/oer/Element;
    :cond_e
    goto :goto_a

    .line 451
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enum value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " no in defined child list"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 329
    .end local v3    # "ordinal":Ljava/math/BigInteger;
    :pswitch_a
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 330
    .local v3, "item":Lorg/bouncycastle/asn1/ASN1Primitive;
    new-instance v4, Lorg/bouncycastle/oer/BitBuilder;

    invoke-direct {v4}, Lorg/bouncycastle/oer/BitBuilder;-><init>()V

    .line 333
    .local v4, "bb":Lorg/bouncycastle/oer/BitBuilder;
    const/4 v5, 0x0

    .line 334
    .local v5, "valueToWrite":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v6, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_13

    .line 336
    move-object v6, v3

    check-cast v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 341
    .local v6, "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v7

    .line 342
    .local v7, "tagClass":I
    and-int/lit16 v8, v7, 0x80

    invoke-virtual {v4, v8}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    move-result-object v8

    and-int/lit8 v9, v7, 0x40

    .line 343
    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    .line 345
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    .line 346
    .local v8, "tag":I
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    .line 347
    .end local v6    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v7    # "tagClass":I
    nop

    .line 358
    const/16 v6, 0x3f

    const/4 v7, 0x6

    if-gt v8, v6, :cond_10

    .line 360
    int-to-long v9, v8

    invoke-virtual {v4, v9, v10, v7}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;

    goto :goto_c

    .line 365
    :cond_10
    const-wide/16 v9, 0xff

    invoke-virtual {v4, v9, v10, v7}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;

    .line 367
    invoke-virtual {v4, v8}, Lorg/bouncycastle/oer/BitBuilder;->write7BitBytes(I)V

    .line 371
    :goto_c
    iget-object v6, v1, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v6, :cond_11

    .line 373
    instance-of v6, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_11

    .line 375
    move-object v6, v3

    check-cast v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 376
    .restart local v6    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    goto :goto_d

    .line 385
    :sswitch_5
    const-string v7, "PR"

    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    goto :goto_d

    .line 382
    :sswitch_6
    const-string v7, "CS"

    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 383
    goto :goto_d

    .line 379
    :sswitch_7
    const-string v7, "AS"

    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 380
    nop

    .line 393
    .end local v6    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_11
    :goto_d
    iget-object v6, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v6}, Lorg/bouncycastle/oer/BitBuilder;->writeAndClear(Ljava/io/OutputStream;)I

    .line 395
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/oer/Element;

    .line 396
    .local v6, "val":Lorg/bouncycastle/oer/Element;
    invoke-static {v6, v2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v6

    .line 398
    invoke-virtual {v6}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v7

    if-lez v7, :cond_12

    .line 400
    invoke-virtual {v1, v5, v6}, Lorg/bouncycastle/oer/OEROutputStream;->writePlainType(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    goto :goto_e

    .line 404
    :cond_12
    invoke-virtual {v1, v5, v6}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 406
    :goto_e
    iget-object v7, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 407
    goto/16 :goto_1f

    .line 350
    .end local v6    # "val":Lorg/bouncycastle/oer/Element;
    .end local v8    # "tag":I
    :cond_13
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "only support tagged objects"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 301
    .end local v3    # "item":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v4    # "bb":Lorg/bouncycastle/oer/BitBuilder;
    .end local v5    # "valueToWrite":Lorg/bouncycastle/asn1/ASN1Primitive;
    :pswitch_b
    instance-of v3, v0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v3, :cond_14

    .line 303
    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 304
    .local v3, "e":Ljava/util/Enumeration;
    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v1, v4, v5}, Lorg/bouncycastle/oer/OEROutputStream;->encodeQuantity(J)V

    goto :goto_f

    .line 306
    .end local v3    # "e":Ljava/util/Enumeration;
    :cond_14
    instance-of v3, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_16

    .line 308
    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 309
    .restart local v3    # "e":Ljava/util/Enumeration;
    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v1, v4, v5}, Lorg/bouncycastle/oer/OEROutputStream;->encodeQuantity(J)V

    .line 317
    :goto_f
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getFirstChid()Lorg/bouncycastle/oer/Element;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v4

    .line 319
    .local v4, "encodingElement":Lorg/bouncycastle/oer/Element;
    :goto_10
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 321
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 322
    .local v5, "o":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v6, v4}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 323
    .end local v5    # "o":Ljava/lang/Object;
    goto :goto_10

    .line 324
    :cond_15
    iget-object v5, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 325
    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 326
    goto/16 :goto_1f

    .line 313
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v4    # "encodingElement":Lorg/bouncycastle/oer/Element;
    :cond_16
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "encodable at for SEQ_OF is not a container"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :pswitch_c
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 82
    .local v3, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x7

    .line 83
    .local v4, "j":I
    const/4 v5, 0x0

    .line 88
    .local v5, "mask":I
    const/4 v9, 0x0

    .line 89
    .local v9, "extensionDefined":Z
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->isExtensionsInDefinition()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 91
    const/4 v10, 0x0

    .local v10, "t":I
    :goto_11
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_19

    .line 93
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/oer/Element;

    .line 94
    .local v11, "e":Lorg/bouncycastle/oer/Element;
    invoke-virtual {v11}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v12, v13, :cond_17

    .line 96
    goto :goto_12

    .line 99
    :cond_17
    invoke-virtual {v11}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v12

    if-lez v12, :cond_18

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    if-ge v10, v12, :cond_18

    .line 101
    sget-object v12, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {v3, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OEROptional;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 104
    const/4 v9, 0x1

    .line 105
    goto :goto_12

    .line 91
    .end local v11    # "e":Lorg/bouncycastle/oer/Element;
    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 110
    .end local v10    # "t":I
    :cond_19
    :goto_12
    if-eqz v9, :cond_1a

    .line 112
    sget-object v10, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v10, v10, v4

    or-int/2addr v5, v10

    .line 114
    :cond_1a
    add-int/lit8 v4, v4, -0x1

    .line 120
    :cond_1b
    const/4 v10, 0x0

    .restart local v10    # "t":I
    :goto_13
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_26

    .line 122
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/oer/Element;

    .line 123
    .local v11, "childOERDescription":Lorg/bouncycastle/oer/Element;
    invoke-virtual {v11}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v12, v13, :cond_1c

    .line 127
    goto/16 :goto_16

    .line 130
    :cond_1c
    invoke-virtual {v11}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v12

    if-lez v12, :cond_1d

    .line 134
    goto/16 :goto_17

    .line 137
    :cond_1d
    invoke-static {v11, v2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v11

    .line 138
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v12

    if-eqz v12, :cond_1e

    .line 140
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v12

    new-instance v13, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;

    invoke-direct {v13, v3}, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-interface {v12, v13}, Lorg/bouncycastle/oer/Switch;->result(Lorg/bouncycastle/oer/SwitchIndexer;)Lorg/bouncycastle/oer/Element;

    move-result-object v11

    .line 141
    invoke-static {v11, v2}, Lorg/bouncycastle/oer/Element;->expandDeferredDefinition(Lorg/bouncycastle/oer/Element;Lorg/bouncycastle/oer/Element;)Lorg/bouncycastle/oer/Element;

    move-result-object v11

    .line 145
    :cond_1e
    if-gez v4, :cond_1f

    .line 147
    iget-object v12, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v12, v5}, Ljava/io/OutputStream;->write(I)V

    .line 148
    const/4 v4, 0x7

    .line 149
    const/4 v5, 0x0

    .line 152
    :cond_1f
    invoke-virtual {v3, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    .line 154
    .local v12, "asn1EncodableChild":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {v11}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v13

    if-eqz v13, :cond_21

    instance-of v13, v12, Lorg/bouncycastle/oer/OEROptional;

    if-nez v13, :cond_20

    goto :goto_14

    .line 157
    :cond_20
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "absent sequence element that is required by oer definition"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    :cond_21
    :goto_14
    invoke-virtual {v11}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v13

    if-nez v13, :cond_25

    .line 162
    invoke-virtual {v3, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    .line 163
    .local v13, "obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {v11}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    if-eqz v14, :cond_23

    .line 166
    instance-of v14, v13, Lorg/bouncycastle/oer/OEROptional;

    if-eqz v14, :cond_22

    .line 168
    move-object v14, v13

    check-cast v14, Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {v14}, Lorg/bouncycastle/oer/OEROptional;->isDefined()Z

    move-result v14

    if-eqz v14, :cond_24

    .line 170
    move-object v14, v13

    check-cast v14, Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {v14}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    invoke-virtual {v11}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24

    .line 172
    sget-object v14, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v14, v14, v4

    or-int/2addr v5, v14

    goto :goto_15

    .line 178
    :cond_22
    invoke-virtual {v11}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24

    .line 180
    sget-object v14, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v14, v14, v4

    or-int/2addr v5, v14

    goto :goto_15

    .line 186
    :cond_23
    sget-object v14, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    if-eq v12, v14, :cond_24

    .line 188
    sget-object v14, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v14, v14, v4

    or-int/2addr v5, v14

    .line 191
    :cond_24
    :goto_15
    add-int/lit8 v4, v4, -0x1

    .line 120
    .end local v11    # "childOERDescription":Lorg/bouncycastle/oer/Element;
    .end local v12    # "asn1EncodableChild":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v13    # "obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_25
    :goto_16
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_13

    .line 195
    .end local v10    # "t":I
    :cond_26
    :goto_17
    const/4 v10, 0x7

    if-eq v4, v10, :cond_27

    .line 197
    iget-object v11, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v11, v5}, Ljava/io/OutputStream;->write(I)V

    .line 201
    :cond_27
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v11

    .line 206
    .local v11, "childElements":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/Element;>;"
    const/4 v12, 0x0

    .local v12, "t":I
    :goto_18
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_2c

    .line 208
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/oer/Element;

    .line 210
    .local v13, "childOERElement":Lorg/bouncycastle/oer/Element;
    invoke-virtual {v13}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v14

    sget-object v15, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v14, v15, :cond_28

    .line 212
    const/16 p1, 0x1

    goto :goto_1a

    .line 215
    :cond_28
    invoke-virtual {v13}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v14

    if-lez v14, :cond_29

    .line 217
    const/16 p1, 0x1

    goto :goto_1b

    .line 220
    :cond_29
    invoke-virtual {v3, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    .line 222
    .local v14, "child":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {v13}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v15

    if-eqz v15, :cond_2a

    .line 224
    invoke-virtual {v13}, Lorg/bouncycastle/oer/Element;->getaSwitch()Lorg/bouncycastle/oer/Switch;

    move-result-object v15

    const/16 p1, 0x1

    new-instance v8, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;

    invoke-direct {v8, v3}, Lorg/bouncycastle/oer/SwitchIndexer$Asn1SequenceIndexer;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-interface {v15, v8}, Lorg/bouncycastle/oer/Switch;->result(Lorg/bouncycastle/oer/SwitchIndexer;)Lorg/bouncycastle/oer/Element;

    move-result-object v13

    goto :goto_19

    .line 222
    :cond_2a
    const/16 p1, 0x1

    .line 227
    :goto_19
    invoke-virtual {v13}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    if-eqz v8, :cond_2b

    .line 229
    invoke-virtual {v13}, Lorg/bouncycastle/oer/Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 231
    goto :goto_1a

    .line 234
    :cond_2b
    :try_start_0
    invoke-virtual {v1, v14, v13}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v13    # "childOERElement":Lorg/bouncycastle/oer/Element;
    .end local v14    # "child":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_1a
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_18

    .line 234
    .end local v0    # "encodable":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v3    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "j":I
    .end local v5    # "mask":I
    .end local v9    # "extensionDefined":Z
    .end local v11    # "childElements":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/Element;>;"
    .end local v12    # "t":I
    .end local p0    # "this":Lorg/bouncycastle/oer/OEROutputStream;
    .end local p2    # "oerElement":Lorg/bouncycastle/oer/Element;
    :catchall_0
    move-exception v0

    throw v0

    .line 206
    .restart local v0    # "encodable":Lorg/bouncycastle/asn1/ASN1Encodable;
    .restart local v3    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v4    # "j":I
    .restart local v5    # "mask":I
    .restart local v9    # "extensionDefined":Z
    .restart local v11    # "childElements":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/Element;>;"
    .restart local v12    # "t":I
    .restart local p2    # "oerElement":Lorg/bouncycastle/oer/Element;
    :cond_2c
    const/16 p1, 0x1

    .line 241
    :goto_1b
    if-eqz v9, :cond_33

    .line 245
    move v8, v12

    .line 246
    .local v8, "start":I
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    .local v13, "presensceList":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x7

    .line 248
    const/4 v5, 0x0

    .line 249
    move v14, v8

    .local v14, "i":I
    :goto_1c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_2f

    .line 251
    if-gez v4, :cond_2d

    .line 253
    invoke-virtual {v13, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 254
    const/4 v4, 0x7

    .line 255
    const/4 v5, 0x0

    .line 258
    :cond_2d
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    if-ge v14, v15, :cond_2e

    sget-object v15, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {v3, v14}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-virtual {v15, v6}, Lorg/bouncycastle/oer/OEROptional;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 260
    sget-object v6, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v6, v6, v4

    or-int/2addr v5, v6

    .line 262
    :cond_2e
    add-int/lit8 v4, v4, -0x1

    .line 249
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    goto :goto_1c

    .line 265
    .end local v14    # "i":I
    :cond_2f
    if-eq v4, v10, :cond_30

    .line 268
    invoke-virtual {v13, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 271
    :cond_30
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v14, v6

    invoke-direct {v1, v14, v15}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 272
    if-ne v4, v10, :cond_31

    .line 274
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/bouncycastle/oer/OEROutputStream;->write(I)V

    goto :goto_1d

    .line 278
    :cond_31
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v1, v6}, Lorg/bouncycastle/oer/OEROutputStream;->write(I)V

    .line 280
    :goto_1d
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/oer/OEROutputStream;->write([B)V

    .line 283
    :goto_1e
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    if-ge v12, v6, :cond_33

    .line 286
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v12, v6, :cond_32

    sget-object v6, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {v3, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/bouncycastle/oer/OEROptional;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    .line 288
    invoke-virtual {v3, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/oer/Element;

    invoke-virtual {v1, v6, v10}, Lorg/bouncycastle/oer/OEROutputStream;->writePlainType(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 283
    :cond_32
    add-int/lit8 v12, v12, 0x1

    goto :goto_1e

    .line 292
    .end local v8    # "start":I
    .end local v13    # "presensceList":Ljava/io/ByteArrayOutputStream;
    :cond_33
    iget-object v6, v1, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 293
    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 295
    .end local v3    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "j":I
    .end local v5    # "mask":I
    .end local v9    # "extensionDefined":Z
    .end local v11    # "childElements":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/oer/Element;>;"
    .end local v12    # "t":I
    goto :goto_1f

    .line 75
    :pswitch_d
    invoke-virtual {v2}, Lorg/bouncycastle/oer/Element;->getElementSupplier()Lorg/bouncycastle/oer/ElementSupplier;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/oer/ElementSupplier;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 76
    nop

    .line 644
    :goto_1f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x8 -> :sswitch_4
        -0x4 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0xc0 -> :sswitch_5
    .end sparse-switch
.end method

.method public writePlainType(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V
    .locals 4
    .param p1, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .param p2, "e"    # Lorg/bouncycastle/oer/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 712
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/oer/OEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/oer/OEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 713
    .local v1, "oerOutputStream":Lorg/bouncycastle/oer/OEROutputStream;
    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)V

    .line 714
    invoke-virtual {v1}, Lorg/bouncycastle/oer/OEROutputStream;->flush()V

    .line 715
    invoke-virtual {v1}, Lorg/bouncycastle/oer/OEROutputStream;->close()V

    .line 717
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 718
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OEROutputStream;->write([B)V

    .line 719
    return-void
.end method
