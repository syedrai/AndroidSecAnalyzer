.class Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;
.super Ljava/lang/Object;
.source "FalconSign.java"


# instance fields
.field common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

.field fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    .line 15
    return-void
.end method

.method private static MKN(I)I
    .locals 1
    .param p0, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logn"
        }
    .end annotation

    .line 19
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method do_sign_dyn(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I
    .locals 25
    .param p1, "samp"    # Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
    .param p2, "samp_ctx"    # Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    .param p3, "srcs2"    # [S
    .param p4, "s2"    # I
    .param p5, "srcf"    # [B
    .param p6, "f"    # I
    .param p7, "srcg"    # [B
    .param p8, "g"    # I
    .param p9, "srcF"    # [B
    .param p10, "F"    # I
    .param p11, "srcG"    # [B
    .param p12, "G"    # I
    .param p13, "srchm"    # [S
    .param p14, "hm"    # I
    .param p15, "logn"    # I
    .param p16, "srctmp"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p17, "tmp"    # I
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
            0x0
        }
        names = {
            "samp",
            "samp_ctx",
            "srcs2",
            "s2",
            "srcf",
            "f",
            "srcg",
            "g",
            "srcF",
            "F",
            "srcG",
            "G",
            "srchm",
            "hm",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 785
    invoke-static/range {p15 .. p15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v6

    .line 790
    .local v6, "n":I
    move/from16 v8, p17

    .line 791
    .local v8, "b00":I
    add-int v2, v8, v6

    .line 792
    .local v2, "b01":I
    add-int v12, v2, v6

    .line 793
    .local v12, "b10":I
    add-int v7, v12, v6

    .line 794
    .local v7, "b11":I
    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p15

    move-object/from16 v1, p16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 795
    move v10, v2

    .end local v2    # "b01":I
    .local v10, "b01":I
    move-object/from16 v3, p7

    move/from16 v4, p8

    move v2, v8

    .end local v8    # "b00":I
    .local v2, "b00":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 796
    .end local v2    # "b00":I
    .restart local v8    # "b00":I
    move-object/from16 v3, p9

    move/from16 v4, p10

    move v2, v7

    .end local v7    # "b11":I
    .local v2, "b11":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 797
    .end local v2    # "b11":I
    .restart local v7    # "b11":I
    move-object/from16 v3, p11

    move/from16 v4, p12

    move v2, v12

    .end local v12    # "b10":I
    .local v2, "b10":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 798
    move-object v9, v0

    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 799
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 800
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 801
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 802
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 803
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 819
    add-int v11, v7, v6

    .line 820
    .local v11, "t0":I
    add-int v4, v11, v6

    .line 823
    .local v4, "t1":I
    invoke-static {v1, v10, v1, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v11, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 827
    invoke-static {v1, v8, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p16

    move/from16 v24, v4

    move v4, v2

    move/from16 v2, v24

    .local v2, "t1":I
    .local v4, "b10":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 829
    move v13, v2

    move v12, v4

    .end local v2    # "t1":I
    .end local v4    # "b10":I
    .restart local v12    # "b10":I
    .local v13, "t1":I
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 830
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v2, v8

    move v4, v11

    .end local v8    # "b00":I
    .end local v11    # "t0":I
    .local v2, "b00":I
    .local v4, "t0":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 832
    move/from16 v17, v2

    move v8, v4

    .end local v2    # "b00":I
    .end local v4    # "t0":I
    .local v8, "t0":I
    .local v17, "b00":I
    invoke-static {v1, v10, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v4, v7

    move v2, v10

    .end local v7    # "b11":I
    .end local v10    # "b01":I
    .local v2, "b01":I
    .local v4, "b11":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 834
    .end local v4    # "b11":I
    .restart local v7    # "b11":I
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v4, v13

    .end local v13    # "t1":I
    .local v4, "t1":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 836
    .end local v2    # "b01":I
    .restart local v10    # "b01":I
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v12, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 838
    invoke-static {v1, v7, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 839
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 840
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v2, v12

    .end local v12    # "b10":I
    .local v2, "b10":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 847
    move/from16 v18, v2

    .end local v2    # "b10":I
    .local v18, "b10":I
    move v0, v8

    .end local v8    # "t0":I
    .local v0, "t0":I
    move/from16 v8, v17

    .line 848
    .local v8, "g00":I
    move v2, v10

    .line 849
    .local v2, "b01":I
    .local v10, "g01":I
    move/from16 v12, v18

    .line 850
    .local v12, "g11":I
    move v2, v0

    .line 851
    add-int v11, v2, v6

    .line 852
    .end local v0    # "t0":I
    .restart local v11    # "t0":I
    add-int v0, v11, v6

    .line 862
    .end local v4    # "t1":I
    .local v0, "t1":I
    const/4 v3, 0x0

    move v13, v3

    .local v13, "u":I
    :goto_0
    if-ge v13, v6, :cond_0

    .line 864
    add-int v3, v11, v13

    iget-object v4, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v14, p14, v13

    aget-short v14, p13, v14

    int-to-long v14, v14

    invoke-virtual {v4, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, v1, v3

    .line 862
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 874
    :cond_0
    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v11, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 875
    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inverse_of_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 877
    .local v14, "ni":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-static {v1, v11, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    move v4, v2

    move v2, v0

    .end local v0    # "t1":I
    .local v2, "t1":I
    .local v4, "b01":I
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 879
    move v15, v2

    move/from16 v19, v4

    .end local v2    # "t1":I
    .end local v4    # "b01":I
    .local v15, "t1":I
    .local v19, "b01":I
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    iget-object v2, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v15, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 880
    iget-object v0, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v4, v7

    move v2, v11

    .end local v7    # "b11":I
    .end local v11    # "t0":I
    .local v2, "t0":I
    .local v4, "b11":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 881
    move v0, v4

    .end local v4    # "b11":I
    .local v0, "b11":I
    iget-object v3, v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v2, v14, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 889
    mul-int/lit8 v3, v6, 0x2

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 890
    add-int v4, v12, v6

    .line 891
    .end local v2    # "t0":I
    .local v4, "t0":I
    add-int v2, v4, v6

    .line 896
    .end local v15    # "t1":I
    .local v2, "t1":I
    add-int v16, v2, v6

    move-object/from16 v5, p16

    move-object/from16 v7, p16

    move-object/from16 v9, p16

    move-object/from16 v11, p16

    move-object v3, v14

    .end local v14    # "ni":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "ni":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move/from16 v14, p15

    move-object/from16 v15, p16

    move/from16 v21, v0

    move-object/from16 v23, v3

    move/from16 v20, v6

    move/from16 v22, v13

    move-object/from16 v0, p0

    move/from16 v13, p15

    move-object v3, v1

    move v6, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .end local v0    # "b11":I
    .end local v2    # "t1":I
    .end local v3    # "ni":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v13    # "u":I
    .local v6, "t1":I
    .local v20, "n":I
    .local v21, "b11":I
    .local v22, "u":I
    .local v23, "ni":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 908
    move-object v1, v3

    move/from16 v7, p17

    .line 909
    .end local v17    # "b00":I
    .local v7, "b00":I
    move/from16 v9, v20

    .end local v20    # "n":I
    .local v9, "n":I
    add-int v2, v7, v9

    .line 910
    .end local v19    # "b01":I
    .local v2, "b01":I
    add-int v11, v2, v9

    .line 911
    .end local v18    # "b10":I
    .local v11, "b10":I
    add-int v13, v11, v9

    .line 913
    .end local v21    # "b11":I
    .local v13, "b11":I
    add-int v0, v13, v9

    mul-int/lit8 v3, v9, 0x2

    invoke-static {v1, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 914
    add-int v14, v13, v9

    .line 915
    .end local v4    # "t0":I
    .local v14, "t0":I
    add-int v6, v14, v9

    .line 916
    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p15

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 917
    move v15, v2

    .end local v2    # "b01":I
    .local v15, "b01":I
    move-object/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v1, p16

    move v2, v7

    .end local v7    # "b00":I
    .local v2, "b00":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 918
    .end local v2    # "b00":I
    .restart local v7    # "b00":I
    move-object/from16 v3, p9

    move/from16 v4, p10

    move v2, v13

    .end local v13    # "b11":I
    .local v2, "b11":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 919
    .end local v2    # "b11":I
    .restart local v13    # "b11":I
    move-object/from16 v3, p11

    move/from16 v4, p12

    move v2, v11

    .end local v11    # "b10":I
    .local v2, "b10":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 920
    move-object v11, v0

    move v0, v2

    .end local v2    # "b10":I
    .local v0, "b10":I
    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v15, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 921
    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 922
    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v13, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 923
    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 924
    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v15, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 925
    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v13, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 926
    add-int v2, v6, v9

    .line 927
    .local v2, "tx":I
    add-int v3, v2, v9

    .line 933
    .local v3, "ty":I
    invoke-static {v1, v14, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 935
    invoke-static {v1, v6, v1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 936
    move v4, v0

    .end local v0    # "b10":I
    .local v4, "b10":I
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v16, v3

    .end local v3    # "ty":I
    .local v16, "ty":I
    move-object/from16 v3, p16

    move/from16 v24, v7

    move v7, v4

    move/from16 v4, v24

    .local v4, "b00":I
    .local v7, "b10":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 937
    move/from16 v18, v2

    move/from16 v17, v4

    .end local v2    # "tx":I
    .end local v4    # "b00":I
    .restart local v17    # "b00":I
    .local v18, "tx":I
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v4, v7

    move/from16 v2, v16

    .end local v7    # "b10":I
    .end local v16    # "ty":I
    .local v2, "ty":I
    .local v4, "b10":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 938
    .end local v2    # "ty":I
    .end local v4    # "b10":I
    .restart local v7    # "b10":I
    .restart local v16    # "ty":I
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v4, v16

    move/from16 v2, v18

    .end local v16    # "ty":I
    .end local v18    # "tx":I
    .local v2, "tx":I
    .local v4, "ty":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 940
    invoke-static {v1, v14, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 941
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v5, v15

    move v15, v2

    move v2, v4

    move v4, v5

    move/from16 v5, p15

    .local v2, "ty":I
    .local v4, "b01":I
    .local v15, "tx":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 944
    move/from16 v18, v2

    move/from16 v16, v4

    .end local v2    # "ty":I
    .end local v4    # "b01":I
    .local v16, "b01":I
    .local v18, "ty":I
    invoke-static {v1, v15, v1, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 945
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v2, v6

    move v4, v13

    .end local v6    # "t1":I
    .end local v13    # "b11":I
    .local v2, "t1":I
    .local v4, "b11":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 946
    .end local v4    # "b11":I
    .restart local v13    # "b11":I
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v4, v18

    .end local v18    # "ty":I
    .local v4, "ty":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 947
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v14, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 948
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 950
    new-array v0, v9, [S

    .line 951
    .local v0, "s1tmp":[S
    const/4 v3, 0x0

    .line 952
    .local v3, "sqn":I
    const/4 v6, 0x0

    .line 953
    .local v6, "ng":I
    const/16 v18, 0x0

    move/from16 v24, v18

    move-object/from16 v18, v0

    move/from16 v0, v24

    .end local v22    # "u":I
    .local v0, "u":I
    .local v18, "s1tmp":[S
    :goto_1
    if-ge v0, v9, :cond_1

    .line 957
    add-int v19, p14, v0

    aget-short v19, p13, v19

    const v20, 0xffff

    and-int v19, v19, v20

    move/from16 v20, v0

    .end local v0    # "u":I
    .local v20, "u":I
    iget-object v0, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v21, v14, v20

    aget-object v1, p16, v21

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v0

    long-to-int v1, v0

    sub-int v0, v19, v1

    .line 958
    .local v0, "z":I
    mul-int v1, v0, v0

    add-int/2addr v3, v1

    .line 959
    or-int/2addr v6, v3

    .line 960
    int-to-short v1, v0

    aput-short v1, v18, v20

    .line 953
    .end local v0    # "z":I
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v1, p16

    .end local v20    # "u":I
    .local v0, "u":I
    goto :goto_1

    .line 962
    :cond_1
    move/from16 v20, v0

    .end local v0    # "u":I
    .restart local v20    # "u":I
    ushr-int/lit8 v0, v6, 0x1f

    neg-int v0, v0

    or-int/2addr v0, v3

    .line 973
    .end local v3    # "sqn":I
    .local v0, "sqn":I
    new-array v1, v9, [S

    .line 974
    .local v1, "s2tmp":[S
    const/4 v3, 0x0

    .end local v20    # "u":I
    .local v3, "u":I
    :goto_2
    if-ge v3, v9, :cond_2

    .line 976
    move/from16 v19, v2

    .end local v2    # "t1":I
    .local v19, "t1":I
    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v20, v19, v3

    move/from16 v21, v3

    .end local v3    # "u":I
    .local v21, "u":I
    aget-object v3, p16, v20

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v2

    neg-long v2, v2

    long-to-int v3, v2

    int-to-short v2, v3

    aput-short v2, v1, v21

    .line 974
    add-int/lit8 v3, v21, 0x1

    move/from16 v2, v19

    .end local v21    # "u":I
    .restart local v3    # "u":I
    goto :goto_2

    .line 978
    .end local v19    # "t1":I
    .restart local v2    # "t1":I
    :cond_2
    move/from16 v19, v2

    move/from16 v21, v3

    .end local v2    # "t1":I
    .end local v3    # "u":I
    .restart local v19    # "t1":I
    .restart local v21    # "u":I
    iget-object v2, v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->is_short_half(I[SII)I

    move-result v2

    if-eqz v2, :cond_3

    .line 981
    move-object/from16 v2, p3

    move/from16 v20, v0

    move/from16 v0, p4

    .end local v0    # "sqn":I
    .local v20, "sqn":I
    invoke-static {v1, v3, v2, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 984
    const/4 v3, 0x1

    return v3

    .line 986
    .end local v20    # "sqn":I
    .restart local v0    # "sqn":I
    :cond_3
    return v3
.end method

.method do_sign_tree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I
    .locals 23
    .param p1, "samp"    # Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
    .param p2, "samp_ctx"    # Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    .param p3, "srcs2"    # [S
    .param p4, "s2"    # I
    .param p5, "srcexpanded_key"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "expanded_key"    # I
    .param p7, "srchm"    # [S
    .param p8, "hm"    # I
    .param p9, "logn"    # I
    .param p10, "srctmp"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p11, "tmp"    # I
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
            0x0
        }
        names = {
            "samp",
            "samp_ctx",
            "srcs2",
            "s2",
            "srcexpanded_key",
            "expanded_key",
            "srchm",
            "hm",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 658
    move-object/from16 v0, p0

    move/from16 v5, p9

    move-object/from16 v1, p10

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v7

    .line 659
    .local v7, "n":I
    move/from16 v10, p11

    .line 660
    .local v10, "t0":I
    add-int v2, v10, v7

    .line 661
    .local v2, "t1":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b00(I)I

    move-result v3

    add-int v16, p6, v3

    .line 662
    .local v16, "b00":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b01(I)I

    move-result v3

    add-int v4, p6, v3

    .line 663
    .local v4, "b01":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b10(I)I

    move-result v3

    add-int v17, p6, v3

    .line 664
    .local v17, "b10":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b11(I)I

    move-result v3

    add-int v8, p6, v3

    .line 665
    .local v8, "b11":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_tree(I)I

    move-result v3

    add-int v9, p6, v3

    .line 670
    .local v9, "tree":I
    const/4 v3, 0x0

    move v11, v3

    .local v11, "u":I
    :goto_0
    if-ge v11, v7, :cond_0

    .line 672
    add-int v3, v10, v11

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v12, p8, v11

    aget-short v12, p7, v12

    int-to-long v12, v12

    invoke-virtual {v6, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    aput-object v6, v1, v3

    .line 670
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 682
    :cond_0
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 683
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v12, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inverse_of_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 685
    .local v12, "ni":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-static {v1, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v3, v2

    move v6, v5

    move-object/from16 v2, p10

    move v5, v4

    move-object/from16 v4, p5

    .end local v2    # "t1":I
    .end local v4    # "b01":I
    .local v3, "t1":I
    .local v5, "b01":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 687
    move-object v1, v2

    move v13, v3

    move/from16 v18, v5

    move v5, v6

    .end local v3    # "t1":I
    .end local v5    # "b01":I
    .local v13, "t1":I
    .local v18, "b01":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v2, v1, v13, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 688
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v2, p10

    move v5, v8

    move v3, v10

    .end local v8    # "b11":I
    .end local v10    # "t0":I
    .local v3, "t0":I
    .local v5, "b11":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 689
    move-object v1, v2

    move/from16 v19, v5

    move v5, v6

    .end local v3    # "t0":I
    .end local v5    # "b11":I
    .restart local v10    # "t0":I
    .local v19, "b11":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v2, v1, v10, v12, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 691
    add-int v2, v13, v7

    .line 692
    .local v2, "tx":I
    add-int v4, v2, v7

    .line 697
    .local v4, "ty":I
    add-int v15, v4, v7

    move-object/from16 v5, p10

    move v8, v9

    .end local v9    # "tree":I
    .local v8, "tree":I
    move-object/from16 v9, p10

    move v3, v11

    .end local v11    # "u":I
    .local v3, "u":I
    move-object/from16 v11, p10

    move-object/from16 v14, p10

    move/from16 v21, v3

    move v6, v4

    move/from16 v20, v7

    move-object/from16 v22, v12

    move v12, v13

    move-object/from16 v7, p5

    move/from16 v13, p9

    move-object v3, v1

    move v4, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .end local v2    # "tx":I
    .end local v3    # "u":I
    .end local v7    # "n":I
    .end local v13    # "t1":I
    .local v4, "tx":I
    .local v6, "ty":I
    .local v12, "t1":I
    .local v20, "n":I
    .local v21, "u":I
    .local v22, "ni":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 704
    move-object v1, v3

    move v2, v4

    move v7, v6

    move-object v6, v0

    .end local v4    # "tx":I
    .end local v6    # "ty":I
    .restart local v2    # "tx":I
    .local v7, "ty":I
    move/from16 v9, v20

    .end local v20    # "n":I
    .local v9, "n":I
    invoke-static {v1, v2, v1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    invoke-static {v1, v7, v1, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 707
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p5

    move/from16 v5, p9

    move/from16 v4, v16

    .end local v16    # "b00":I
    .local v4, "b00":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 708
    move v13, v2

    move v11, v4

    .end local v2    # "tx":I
    .end local v4    # "b00":I
    .local v11, "b00":I
    .local v13, "tx":I
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v1, p10

    move v2, v7

    move/from16 v4, v17

    .end local v7    # "ty":I
    .end local v17    # "b10":I
    .local v2, "ty":I
    .local v4, "b10":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 709
    move v7, v4

    move v4, v2

    .end local v2    # "ty":I
    .local v4, "ty":I
    .local v7, "b10":I
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p10

    move v2, v13

    .end local v13    # "tx":I
    .local v2, "tx":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 711
    .end local v2    # "tx":I
    .restart local v13    # "tx":I
    invoke-static {v1, v10, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p5

    move v2, v4

    move/from16 v4, v18

    .end local v18    # "b01":I
    .local v2, "ty":I
    .local v4, "b01":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 715
    move v14, v2

    .end local v2    # "ty":I
    .end local v4    # "b01":I
    .local v14, "ty":I
    .restart local v18    # "b01":I
    invoke-static {v1, v13, v1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v2, v12

    move/from16 v4, v19

    .end local v12    # "t1":I
    .end local v19    # "b11":I
    .local v2, "t1":I
    .local v4, "b11":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 717
    .end local v2    # "t1":I
    .end local v4    # "b11":I
    .restart local v12    # "t1":I
    .restart local v19    # "b11":I
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p10

    move v4, v14

    .end local v12    # "t1":I
    .end local v14    # "ty":I
    .restart local v2    # "t1":I
    .local v4, "ty":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 719
    .end local v2    # "t1":I
    .restart local v12    # "t1":I
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 720
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v12, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 725
    new-array v0, v9, [S

    .line 726
    .local v0, "s1tmp":[S
    const/4 v2, 0x0

    .line 727
    .local v2, "sqn":I
    const/4 v3, 0x0

    .line 728
    .local v3, "ng":I
    const/4 v14, 0x0

    .end local v21    # "u":I
    .local v14, "u":I
    :goto_1
    if-ge v14, v9, :cond_1

    .line 732
    add-int v15, p8, v14

    aget-short v15, p7, v15

    const v16, 0xffff

    and-int v15, v15, v16

    move/from16 v16, v2

    .end local v2    # "sqn":I
    .local v16, "sqn":I
    iget-object v2, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v17, v10, v14

    move/from16 v20, v3

    .end local v3    # "ng":I
    .local v20, "ng":I
    aget-object v3, v1, v17

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v2

    long-to-int v3, v2

    sub-int/2addr v15, v3

    .line 733
    .local v15, "z":I
    mul-int v2, v15, v15

    add-int v2, v16, v2

    .line 734
    .end local v16    # "sqn":I
    .restart local v2    # "sqn":I
    or-int v3, v20, v2

    .line 735
    .end local v20    # "ng":I
    .restart local v3    # "ng":I
    move/from16 v16, v2

    .end local v2    # "sqn":I
    .restart local v16    # "sqn":I
    int-to-short v2, v15

    aput-short v2, v0, v14

    .line 728
    .end local v15    # "z":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    goto :goto_1

    .line 737
    .end local v16    # "sqn":I
    .restart local v2    # "sqn":I
    :cond_1
    move/from16 v16, v2

    move/from16 v20, v3

    .end local v2    # "sqn":I
    .end local v3    # "ng":I
    .restart local v16    # "sqn":I
    .restart local v20    # "ng":I
    ushr-int/lit8 v2, v20, 0x1f

    neg-int v2, v2

    or-int v2, v16, v2

    .line 748
    .end local v16    # "sqn":I
    .restart local v2    # "sqn":I
    new-array v3, v9, [S

    .line 749
    .local v3, "s2tmp":[S
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v9, :cond_2

    .line 751
    iget-object v15, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v16, v12, v14

    move/from16 v17, v4

    .end local v4    # "ty":I
    .local v17, "ty":I
    aget-object v4, v1, v16

    move/from16 v21, v7

    move/from16 v16, v8

    .end local v7    # "b10":I
    .end local v8    # "tree":I
    .local v16, "tree":I
    .local v21, "b10":I
    invoke-virtual {v15, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v7

    neg-long v7, v7

    long-to-int v4, v7

    int-to-short v4, v4

    aput-short v4, v3, v14

    .line 749
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v16

    move/from16 v4, v17

    move/from16 v7, v21

    goto :goto_2

    .line 753
    .end local v16    # "tree":I
    .end local v17    # "ty":I
    .end local v21    # "b10":I
    .restart local v4    # "ty":I
    .restart local v7    # "b10":I
    .restart local v8    # "tree":I
    :cond_2
    move/from16 v17, v4

    move/from16 v21, v7

    move/from16 v16, v8

    .end local v4    # "ty":I
    .end local v7    # "b10":I
    .end local v8    # "tree":I
    .restart local v16    # "tree":I
    .restart local v17    # "ty":I
    .restart local v21    # "b10":I
    iget-object v4, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v3, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->is_short_half(I[SII)I

    move-result v4

    if-eqz v4, :cond_3

    .line 756
    move-object/from16 v4, p3

    move/from16 v8, p4

    invoke-static {v3, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    move/from16 v15, p11

    invoke-static {v0, v7, v1, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    const/4 v7, 0x1

    return v7

    .line 761
    :cond_3
    move-object/from16 v4, p3

    move/from16 v8, p4

    move/from16 v15, p11

    return v7
.end method

.method expand_privkey([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BI[BI[BI[BII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 21
    .param p1, "srcexpanded_key"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "expanded_key"    # I
    .param p3, "srcf"    # [B
    .param p4, "f"    # I
    .param p5, "srcg"    # [B
    .param p6, "g"    # I
    .param p7, "srcF"    # [B
    .param p8, "F"    # I
    .param p9, "srcG"    # [B
    .param p10, "G"    # I
    .param p11, "logn"    # I
    .param p12, "srctmp"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p13, "tmp"    # I
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
            0x0
        }
        names = {
            "srcexpanded_key",
            "expanded_key",
            "srcf",
            "f",
            "srcg",
            "g",
            "srcF",
            "F",
            "srcG",
            "G",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 226
    move-object/from16 v0, p0

    move/from16 v5, p11

    move-object/from16 v6, p12

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v12

    .line 227
    .local v12, "n":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b00(I)I

    move-result v1

    add-int v13, p2, v1

    .line 228
    .local v13, "b00":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b01(I)I

    move-result v1

    add-int v14, p2, v1

    .line 229
    .local v14, "b01":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b10(I)I

    move-result v1

    add-int v7, p2, v1

    .line 230
    .local v7, "b10":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b11(I)I

    move-result v1

    add-int v8, p2, v1

    .line 231
    .local v8, "b11":I
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_tree(I)I

    move-result v1

    add-int v9, p2, v1

    .line 237
    .local v9, "tree":I
    move v2, v14

    .line 238
    .local v2, "rf":I
    move v10, v13

    .line 239
    .local v10, "rg":I
    move v11, v8

    .line 240
    .local v11, "rF":I
    move v15, v7

    .line 242
    .local v15, "rG":I
    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 243
    move v0, v10

    move v10, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move/from16 v4, p6

    .local v2, "rg":I
    .local v10, "rf":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 244
    move v0, v11

    move v11, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v3, p7

    move/from16 v4, p8

    .local v2, "rF":I
    .local v11, "rg":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 245
    move v0, v15

    move v15, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v3, p9

    move/from16 v4, p10

    .local v2, "rG":I
    .local v15, "rF":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    .line 250
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 251
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v11, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 252
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v15, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 253
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 254
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 255
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v1, v15, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 267
    move/from16 v4, p13

    .line 268
    .local v4, "g00":I
    add-int v3, v4, v12

    .line 269
    .local v3, "g01":I
    move/from16 v16, v7

    .end local v7    # "b10":I
    .local v16, "b10":I
    add-int v7, v3, v12

    .line 270
    .local v7, "g11":I
    move/from16 v17, v2

    .end local v2    # "rG":I
    .local v17, "rG":I
    add-int v2, v7, v12

    .line 273
    .local v2, "gxx":I
    invoke-static {v1, v13, v6, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    move/from16 v18, v3

    .end local v3    # "g01":I
    .local v18, "g01":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 276
    invoke-static {v1, v14, v6, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v3, v6, v2, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 278
    move-object v3, v0

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p12

    move/from16 v19, v4

    move v4, v2

    move/from16 v2, v19

    move/from16 v19, v9

    move/from16 v9, v18

    move/from16 v18, v17

    move/from16 v17, v8

    move-object v8, v1

    move-object v1, v6

    move-object/from16 v6, p0

    .end local v8    # "b11":I
    .local v2, "g00":I
    .local v4, "gxx":I
    .local v9, "g01":I
    .local v17, "b11":I
    .local v18, "rG":I
    .local v19, "tree":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 281
    move/from16 v20, v2

    .end local v2    # "g00":I
    .local v20, "g00":I
    invoke-static {v8, v13, v1, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v3, v8

    move v2, v9

    move v8, v4

    move/from16 v4, v16

    .end local v9    # "g01":I
    .end local v16    # "b10":I
    .local v2, "g01":I
    .local v4, "b10":I
    .local v8, "gxx":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 284
    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    move/from16 v16, v2

    move v9, v4

    .end local v2    # "g01":I
    .end local v4    # "b10":I
    .local v9, "b10":I
    .local v16, "g01":I
    invoke-static {v1, v14, v3, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move v2, v8

    move/from16 v4, v17

    .end local v8    # "gxx":I
    .end local v17    # "b11":I
    .local v2, "gxx":I
    .local v4, "b11":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 286
    move v8, v4

    move v4, v2

    move v2, v8

    move-object v8, v3

    .local v2, "b11":I
    .local v4, "gxx":I
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p12

    move-object/from16 v1, p12

    move/from16 v17, v13

    move v13, v2

    move/from16 v2, v16

    .end local v16    # "g01":I
    .local v2, "g01":I
    .local v13, "b11":I
    .local v17, "b00":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 289
    .end local v2    # "g01":I
    .restart local v16    # "g01":I
    invoke-static {v8, v9, v1, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v7, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 292
    invoke-static {v8, v13, v1, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-virtual {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 294
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move v2, v7

    .end local v7    # "g11":I
    .local v2, "g11":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 299
    move-object/from16 v5, p12

    move-object/from16 v7, p12

    move v0, v10

    .end local v10    # "rf":I
    .local v0, "rf":I
    move-object/from16 v10, p12

    move v1, v11

    move v11, v4

    move/from16 v4, v20

    move/from16 v20, v1

    move-object v1, v8

    move v8, v2

    move/from16 v2, v19

    move/from16 v19, v0

    move-object v0, v6

    move/from16 v6, v16

    move/from16 v16, v9

    move/from16 v9, p11

    .end local v0    # "rf":I
    .end local v9    # "b10":I
    .local v2, "tree":I
    .local v4, "g00":I
    .local v6, "g01":I
    .local v8, "g11":I
    .local v11, "gxx":I
    .local v16, "b10":I
    .local v19, "rf":I
    .local v20, "rg":I
    invoke-virtual/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 304
    move v5, v9

    invoke-virtual {v0, v1, v2, v5, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V

    .line 305
    return-void
.end method

.method ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V
    .locals 5
    .param p1, "srctree"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "tree"    # I
    .param p3, "orig_logn"    # I
    .param p4, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srctree",
            "tree",
            "orig_logn",
            "logn"
        }
    .end annotation

    .line 147
    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    .line 148
    .local v0, "n":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    add-int/lit8 v1, p2, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v4, p2, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqrt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v4, v4, p3

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v1

    goto :goto_0

    .line 159
    :cond_0
    add-int v1, p2, v0

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {p0, p1, v1, p3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V

    .line 160
    add-int v1, p2, v0

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {p0, p1, v1, p3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V

    .line 163
    :goto_0
    return-void
.end method

.method ffLDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 17
    .param p1, "srctree"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "tree"    # I
    .param p3, "srcg00"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "g00"    # I
    .param p5, "srcg01"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "g01"    # I
    .param p7, "srcg11"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p8, "g11"    # I
    .param p9, "logn"    # I
    .param p10, "srctmp"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p11, "tmp"    # I
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
            0x0
        }
        names = {
            "srctree",
            "tree",
            "srcg00",
            "g00",
            "srcg01",
            "g01",
            "srcg11",
            "g11",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v2, p10

    invoke-static/range {p9 .. p9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v13

    .line 112
    .local v13, "n":I
    const/4 v1, 0x1

    if-ne v13, v1, :cond_0

    .line 114
    add-int/lit8 v1, p2, 0x0

    add-int/lit8 v3, v7, 0x0

    aget-object v3, v6, v3

    aput-object v3, p1, v1

    .line 115
    return-void

    .line 117
    :cond_0
    shr-int/lit8 v14, v13, 0x1

    .line 118
    .local v14, "hn":I
    move/from16 v15, p11

    .line 119
    .local v15, "d00":I
    add-int v4, p11, v13

    .line 120
    .local v4, "d11":I
    shl-int/lit8 v1, v13, 0x1

    add-int v16, p11, v1

    .line 123
    .end local p11    # "tmp":I
    .local v16, "tmp":I
    invoke-static {v6, v7, v2, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v5, p2

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move v3, v4

    move-object/from16 v4, p1

    .end local v4    # "d11":I
    .local v3, "d11":I
    invoke-virtual/range {v1 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_LDLmv_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 126
    move v9, v3

    .end local v3    # "d11":I
    .local v9, "d11":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v5, v16, v14

    move-object/from16 v4, p10

    move-object/from16 v6, p10

    move/from16 v8, p9

    move-object/from16 v2, p10

    move v7, v15

    move/from16 v3, v16

    .end local v15    # "d00":I
    .end local v16    # "tmp":I
    .local v3, "tmp":I
    .local v7, "d00":I
    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 127
    move v4, v7

    move v7, v9

    move v9, v3

    .end local v3    # "tmp":I
    .local v4, "d00":I
    .local v7, "d11":I
    .local v9, "tmp":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v5, v4, v14

    move v3, v4

    .end local v4    # "d00":I
    .local v3, "d00":I
    move-object/from16 v4, p10

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 129
    move v10, v3

    .end local v3    # "d00":I
    .local v10, "d00":I
    invoke-static {v2, v9, v2, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    add-int v2, p2, v13

    add-int v6, v7, v14

    move v4, v7

    .end local v7    # "d11":I
    .local v4, "d11":I
    add-int/lit8 v7, p9, -0x1

    move-object/from16 v5, p10

    move-object/from16 v8, p10

    move-object/from16 v1, p1

    move-object/from16 v3, p10

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 132
    move v11, v4

    .end local v4    # "d11":I
    .local v11, "d11":I
    add-int v1, p2, v13

    add-int/lit8 v2, p9, -0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int v6, v10, v14

    add-int/lit8 v7, p9, -0x1

    move-object/from16 v1, p1

    move v4, v10

    .end local v10    # "d00":I
    .local v4, "d00":I
    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 134
    return-void
.end method

.method ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 24
    .param p1, "srctree"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "tree"    # I
    .param p3, "srcg0"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "g0"    # I
    .param p5, "srcg1"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "g1"    # I
    .param p7, "logn"    # I
    .param p8, "srctmp"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p9, "tmp"    # I
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
            0x0
        }
        names = {
            "srctree",
            "tree",
            "srcg0",
            "g0",
            "srcg1",
            "g1",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 59
    move-object/from16 v0, p0

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v10

    .line 60
    .local v10, "n":I
    const/4 v1, 0x1

    if-ne v10, v1, :cond_0

    .line 62
    add-int/lit8 v1, p2, 0x0

    add-int/lit8 v2, p4, 0x0

    aget-object v2, p3, v2

    aput-object v2, p1, v1

    .line 63
    return-void

    .line 65
    :cond_0
    shr-int/lit8 v11, v10, 0x1

    .line 72
    .local v11, "hn":I
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v21, p3

    move/from16 v22, p4

    move-object/from16 v15, p1

    move/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, p5

    move/from16 v20, p6

    move/from16 v23, p7

    move-object/from16 v13, p8

    move/from16 v14, p9

    invoke-virtual/range {v12 .. v23}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_LDLmv_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 80
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v5, p6, v11

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 81
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v5, p4, v11

    move-object/from16 v4, p3

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 87
    add-int v2, p2, v10

    add-int v6, p6, v11

    add-int/lit8 v7, p7, -0x1

    move-object/from16 v5, p5

    move-object/from16 v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 89
    add-int v1, p2, v10

    add-int/lit8 v2, p7, -0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int v6, p4, v11

    add-int/lit8 v7, p7, -0x1

    move-object/from16 v5, p3

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 91
    return-void
.end method

.method ffLDL_treesize(I)I
    .locals 1
    .param p1, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logn"
        }
    .end annotation

    .line 43
    add-int/lit8 v0, p1, 0x1

    shl-int/2addr v0, p1

    return v0
.end method

.method ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 26
    .param p1, "samp"    # Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
    .param p2, "samp_ctx"    # Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    .param p3, "srcz0"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "z0"    # I
    .param p5, "srcz1"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "z1"    # I
    .param p7, "srctree"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p8, "tree"    # I
    .param p9, "srct0"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p10, "t0"    # I
    .param p11, "srct1"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p12, "t1"    # I
    .param p13, "logn"    # I
    .param p14, "srctmp"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p15, "tmp"    # I
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
            0x0
        }
        names = {
            "samp",
            "samp_ctx",
            "srcz0",
            "z0",
            "srcz1",
            "z1",
            "srctree",
            "tree",
            "srct0",
            "t0",
            "srct1",
            "t1",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 424
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p13

    const/4 v3, 0x2

    if-ne v5, v3, :cond_0

    .line 429
    add-int/lit8 v3, p8, 0x4

    .line 430
    .local v3, "tree0":I
    add-int/lit8 v4, p8, 0x8

    .line 436
    .local v4, "tree1":I
    add-int/lit8 v6, p12, 0x0

    aget-object v6, p11, v6

    .line 437
    .local v6, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v7, p12, 0x2

    aget-object v7, p11, v7

    .line 438
    .local v7, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v8, p12, 0x1

    aget-object v8, p11, v8

    .line 439
    .local v8, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v9, p12, 0x3

    aget-object v9, p11, v9

    .line 440
    .local v9, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    .line 441
    .local v10, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v7, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    .line 442
    .local v11, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    .line 443
    .local v12, "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    .line 444
    .local v13, "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    .line 445
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v7, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    .line 446
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move/from16 v16, v3

    .end local v3    # "tree0":I
    .local v16, "tree0":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v14, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 447
    .local v3, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v11, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v17, v3

    .end local v3    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v17, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v14, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 449
    .local v3, "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object/from16 v14, v17

    .line 450
    .local v14, "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v15, v3

    .line 451
    .local v15, "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v18, v4, 0x3

    move-object/from16 v19, v3

    .end local v3    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    aget-object v3, p7, v18

    .line 452
    .local v3, "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move/from16 v18, v4

    .end local v4    # "tree1":I
    .local v18, "tree1":I
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v20, v6

    .end local v6    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v20, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {v1, v2, v14, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v6

    move-object/from16 v21, v7

    .end local v7    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v21, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 453
    .end local v17    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v4, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v7

    move-object/from16 v17, v8

    .end local v8    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v17, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 454
    .end local v19    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v14, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    .line 455
    .end local v20    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v7, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v15, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    .line 456
    .end local v21    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v8, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v19, v18, 0x0

    move-object/from16 v20, v3

    .end local v3    # "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v20, "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    aget-object v3, p7, v19

    .line 457
    .end local v17    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v17, v18, 0x1

    aget-object v9, p7, v17

    .line 458
    move-object/from16 v17, v4

    .end local v4    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v17, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v19, v6

    .end local v6    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v19    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v7, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    move-object/from16 v21, v10

    .end local v10    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v21, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 459
    .end local v21    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v4, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v7, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v21, v7

    .end local v7    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v21, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v8, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 460
    .end local v11    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v4, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    .line 461
    .end local v14    # "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v7, "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v6, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    .line 462
    .end local v15    # "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v10, "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v11, v18, 0x2

    aget-object v11, p7, v11

    .line 463
    .end local v20    # "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v11, "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v15

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    .end local v3    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v20, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v22, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    int-to-long v3, v15

    invoke-virtual {v14, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 464
    .end local v12    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v12

    int-to-long v14, v12

    invoke-virtual {v4, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 466
    .end local v13    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v4, "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v12, v3

    .line 467
    .end local v21    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v12, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v8, v4

    .line 468
    move-object/from16 v13, v17

    .line 469
    .end local v20    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v13, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object/from16 v9, v19

    .line 470
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v13, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v20, v3

    .end local v3    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v20, "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v14, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 471
    .end local v22    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v13, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v21, v4

    .end local v4    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v21, "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v14, v15, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 472
    .end local v6    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v4, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v6, p6, 0x0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v12, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    move-object v15, v14

    .end local v20    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v15, "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    aput-object v14, p5, v6

    .line 473
    add-int/lit8 v6, p6, 0x2

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v8, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    move-object/from16 v20, v14

    .end local v17    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v20, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    aput-object v14, p5, v6

    .line 474
    add-int/lit8 v6, p6, 0x1

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v12, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    move-object/from16 v17, v14

    .end local v21    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v17, "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    aput-object v14, p5, v6

    .line 475
    add-int/lit8 v6, p6, 0x3

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v8, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    move-object/from16 v21, v14

    .end local v19    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v21, "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    aput-object v14, p5, v6

    .line 480
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v14, p12, 0x0

    aget-object v14, p11, v14

    invoke-virtual {v6, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 481
    .end local v15    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v15, p12, 0x1

    aget-object v15, p11, v15

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    .end local v17    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {v14, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 482
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v15, p12, 0x2

    aget-object v15, p11, v15

    move-object/from16 v17, v3

    move-object/from16 v3, v20

    .end local v20    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v17    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {v14, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 483
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v15, p12, 0x3

    aget-object v15, p11, v15

    move-object/from16 v20, v3

    move-object/from16 v3, v21

    .end local v21    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v20    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {v14, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 485
    move-object v12, v6

    .line 486
    move-object/from16 v8, v20

    .line 487
    add-int/lit8 v14, p8, 0x0

    aget-object v13, p7, v14

    .line 488
    add-int/lit8 v14, p8, 0x2

    aget-object v9, p7, v14

    .line 489
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v21, v3

    .end local v3    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v21    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 490
    .end local v6    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v12, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v8, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 491
    .end local v20    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object/from16 v12, v17

    .line 492
    move-object/from16 v8, v21

    .line 493
    add-int/lit8 v14, p8, 0x1

    aget-object v13, p7, v14

    .line 494
    add-int/lit8 v14, p8, 0x3

    aget-object v9, p7, v14

    .line 495
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v20, v4

    .end local v4    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v20, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    invoke-virtual {v14, v15, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 496
    .end local v17    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v4, "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v12, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v17, v7

    .end local v7    # "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v17, "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v8, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    invoke-virtual {v14, v15, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    .line 498
    .end local v21    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v7, "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v15, p10, 0x0

    aget-object v15, p9, v15

    invoke-virtual {v14, v3, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 499
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v15, p10, 0x1

    aget-object v15, p9, v15

    invoke-virtual {v14, v4, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 500
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v15, p10, 0x2

    aget-object v15, p9, v15

    invoke-virtual {v14, v6, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 501
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v15, p10, 0x3

    aget-object v15, p9, v15

    invoke-virtual {v14, v7, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    .line 506
    move-object v12, v3

    .line 507
    move-object v8, v6

    .line 508
    move-object v13, v4

    .line 509
    move-object v9, v7

    .line 510
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    .line 511
    .end local v19    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v14, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    .line 512
    .end local v20    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v15, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object/from16 v19, v3

    .end local v3    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 513
    .end local v19    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v3    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object/from16 v19, v4

    .end local v4    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 514
    .end local v19    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v4    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object/from16 v19, v6

    .end local v6    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 515
    .end local v14    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    .line 516
    .end local v15    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v14, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v20, v7

    .end local v7    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v20, "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v6, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v21, v8

    .end local v8    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v21, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v15, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    .line 517
    .end local v19    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v7, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v14, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v19, v6

    .end local v6    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v8, v15, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 519
    .end local v20    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v8, v7

    .line 520
    .end local v17    # "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v8, "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v10, v6

    .line 521
    add-int/lit8 v15, v16, 0x3

    aget-object v11, p7, v15

    .line 522
    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v17, v6

    .end local v6    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v17, "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {v1, v2, v8, v11}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v6

    move-object/from16 v20, v7

    .end local v7    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v20, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    int-to-long v6, v6

    invoke-virtual {v15, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    move-object v7, v6

    .line 523
    .end local v20    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v7, "y0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v20, v6

    .end local v6    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v20    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {v1, v2, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v6

    move-object/from16 v23, v11

    move-object/from16 v22, v12

    .end local v11    # "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v12    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v22, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v23, "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    int-to-long v11, v6

    invoke-virtual {v15, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    move-object v11, v6

    .line 524
    .end local v17    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v11, "y1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v8, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    .line 525
    .end local v22    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v12    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    .line 526
    .end local v21    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v15, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v17, v16, 0x0

    aget-object v13, p7, v17

    .line 527
    add-int/lit8 v17, v16, 0x1

    aget-object v9, p7, v17

    .line 528
    move-object/from16 v17, v6

    .end local v6    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v17    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v21, v7

    .end local v7    # "y0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v21, "y0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v22, v8

    .end local v8    # "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v22, "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v15, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 529
    .end local v19    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v12, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v19, v9

    .end local v9    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v15, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    .line 530
    .end local v14    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v7, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    .line 531
    .end local v22    # "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v8    # "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v7, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    .line 532
    .end local v10    # "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v9, "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v10, v16, 0x2

    aget-object v10, p7, v10

    .line 533
    .end local v23    # "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v10, "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v22, v3

    .end local v3    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v22, "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    invoke-virtual {v1, v2, v8, v10}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v3

    move-object/from16 v23, v4

    .end local v4    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v23, "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    int-to-long v3, v3

    invoke-virtual {v14, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 534
    .end local v22    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v3    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v14

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .end local v6    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v22, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v24, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    int-to-long v6, v14

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 536
    .end local v23    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v4    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v6, v3

    .line 537
    .end local v12    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v6, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object v7, v4

    .line 538
    .end local v15    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v7, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object/from16 v12, v20

    .line 539
    .end local v13    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v12, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move-object/from16 v13, v17

    .line 540
    .end local v19    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v13, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v19, v3

    .end local v3    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v19, "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v14, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 541
    .end local v22    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v3, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v22, v4

    .end local v4    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v22, "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v14, v15, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 542
    .end local v24    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v4, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v14, p4, 0x0

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    aput-object v15, p3, v14

    .line 543
    add-int/lit8 v14, p4, 0x2

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v7, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    aput-object v15, p3, v14

    .line 544
    add-int/lit8 v14, p4, 0x1

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    aput-object v15, p3, v14

    .line 545
    add-int/lit8 v14, p4, 0x3

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v7, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    aput-object v15, p3, v14

    .line 547
    return-void

    .line 555
    .end local v3    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v4    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v8    # "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v9    # "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v10    # "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v11    # "y1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v12    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v13    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v16    # "tree0":I
    .end local v17    # "w3":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v18    # "tree1":I
    .end local v19    # "w0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v20    # "w2":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v21    # "y0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v22    # "w1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    :cond_0
    const/4 v3, 0x1

    if-ne v5, v3, :cond_1

    .line 560
    add-int/lit8 v3, p12, 0x0

    aget-object v3, p11, v3

    .line 561
    .local v3, "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v4, p12, 0x1

    aget-object v4, p11, v4

    .line 562
    .local v4, "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v6, p8, 0x3

    aget-object v6, p7, v6

    .line 563
    .local v6, "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v7, p6, 0x0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object v9, v8

    .local v9, "y0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    aput-object v8, p5, v7

    .line 564
    add-int/lit8 v7, p6, 0x1

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object v10, v8

    .local v10, "y1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    aput-object v8, p5, v7

    .line 565
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v3, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    .line 566
    .local v7, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v4, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    .line 567
    .local v8, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v11, p8, 0x0

    aget-object v11, p7, v11

    .line 568
    .local v11, "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v12, p8, 0x1

    aget-object v12, p7, v12

    .line 569
    .local v12, "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v8, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    .line 570
    .local v13, "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v7, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v16, v3

    .end local v3    # "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v16, "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v8, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 571
    .local v3, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v15, p10, 0x0

    aget-object v15, p9, v15

    invoke-virtual {v14, v13, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    .line 572
    .end local v16    # "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v14, "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v16, p10, 0x1

    move-object/from16 v17, v4

    .end local v4    # "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v17, "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    aget-object v4, p9, v16

    invoke-virtual {v15, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    .line 573
    .end local v17    # "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .restart local v4    # "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    add-int/lit8 v15, p8, 0x2

    aget-object v6, p7, v15

    .line 574
    add-int/lit8 v15, p4, 0x0

    move-object/from16 v16, v3

    .end local v3    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v16, "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v14, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v5

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .end local v7    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v8    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v17, "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .local v18, "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    int-to-long v7, v5

    invoke-virtual {v3, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p3, v15

    .line 575
    add-int/lit8 v3, p4, 0x1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v2, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    aput-object v5, p3, v3

    .line 577
    return-void

    .line 603
    .end local v4    # "x1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v6    # "sigma":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v9    # "y0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v10    # "y1":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v11    # "b_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v12    # "b_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v13    # "c_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v14    # "x0":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v16    # "c_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v17    # "a_re":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v18    # "a_im":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    :cond_1
    shl-int v11, v3, p13

    .line 604
    .local v11, "n":I
    shr-int/lit8 v16, v11, 0x1

    .line 605
    .local v16, "hn":I
    add-int v17, p8, v11

    .line 606
    .local v17, "tree0":I
    add-int v3, p8, v11

    add-int/lit8 v4, p13, -0x1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v4

    add-int v12, v3, v4

    .line 613
    .local v12, "tree1":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v7, p6, v16

    move-object/from16 v6, p5

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p13

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 614
    add-int v6, p15, v16

    move v8, v12

    .end local v12    # "tree1":I
    .local v8, "tree1":I
    add-int v12, p6, v16

    add-int/lit8 v13, p13, -0x1

    add-int v15, p15, v11

    move-object/from16 v5, p14

    move v3, v11

    .end local v11    # "n":I
    .local v3, "n":I
    move-object/from16 v11, p5

    move-object/from16 v14, p14

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v7, p7

    move/from16 v4, p15

    move/from16 v25, v3

    move-object/from16 v3, p14

    .end local v3    # "n":I
    .local v25, "n":I
    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 616
    move/from16 v18, v8

    move-object v8, v0

    .end local v8    # "tree1":I
    .local v18, "tree1":I
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v6, p15, v16

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v7, p13

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 622
    move-object/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, v25

    .end local v25    # "n":I
    .restart local v11    # "n":I
    invoke-static {v9, v10, v3, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v5, p13

    move-object v1, v3

    move v2, v4

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 624
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v1, p14

    move/from16 v2, p15

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 625
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 630
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v4, p4, v16

    move-object/from16 v3, p3

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v5, p14

    move/from16 v6, p15

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 631
    add-int v6, p15, v16

    add-int v12, p4, v16

    add-int/lit8 v13, p13, -0x1

    add-int v15, p15, v11

    move v3, v11

    .end local v11    # "n":I
    .restart local v3    # "n":I
    move-object/from16 v11, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v7, p7

    move/from16 v4, p15

    move/from16 v25, v3

    move-object v0, v8

    move/from16 v8, v17

    move-object/from16 v3, p14

    .end local v3    # "n":I
    .end local v17    # "tree0":I
    .local v8, "tree0":I
    .restart local v25    # "n":I
    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 633
    move v9, v8

    move-object v8, v0

    .end local v8    # "tree0":I
    .local v9, "tree0":I
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v6, p15, v16

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v7, p13

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 634
    return-void
.end method

.method ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 20
    .param p1, "samp"    # Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
    .param p2, "samp_ctx"    # Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    .param p3, "srct0"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p4, "t0"    # I
    .param p5, "srct1"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p6, "t1"    # I
    .param p7, "srcg00"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p8, "g00"    # I
    .param p9, "srcg01"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p10, "g01"    # I
    .param p11, "srcg11"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p12, "g11"    # I
    .param p13, "orig_logn"    # I
    .param p14, "logn"    # I
    .param p15, "srctmp"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p16, "tmp"    # I
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
            0x0
        }
        names = {
            "samp",
            "samp_ctx",
            "srct0",
            "t0",
            "srct1",
            "t1",
            "srcg00",
            "g00",
            "srcg01",
            "g01",
            "srcg11",
            "g11",
            "orig_logn",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez p14, :cond_0

    .line 330
    add-int/lit8 v3, p8, 0x0

    aget-object v3, p7, v3

    .line 331
    .local v3, "leaf":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqrt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v6, v6, p13

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 332
    add-int/lit8 v4, p4, 0x0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v6, p4, 0x0

    aget-object v6, p3, v6

    invoke-virtual {v1, v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    aput-object v5, p3, v4

    .line 333
    add-int/lit8 v4, p6, 0x0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v6, p6, 0x0

    aget-object v6, p5, v6

    invoke-virtual {v1, v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    aput-object v5, p5, v4

    .line 334
    return-void

    .line 337
    .end local v3    # "leaf":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    :cond_0
    const/4 v3, 0x1

    shl-int v11, v3, p14

    .line 338
    .local v11, "n":I
    shr-int/lit8 v12, v11, 0x1

    .line 344
    .local v12, "hn":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p9

    move/from16 v7, p10

    move-object/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p14

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_LDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 350
    move-object v13, v6

    move v14, v7

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v7, p16, v12

    move-object/from16 v6, p15

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v4, p15

    move/from16 v5, p16

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 352
    move-object v15, v8

    move v3, v9

    invoke-static {v4, v5, v15, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v7, v5, v12

    move/from16 v1, p8

    move-object/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 355
    move v6, v5

    move-object v3, v8

    move-object v5, v4

    move v4, v9

    invoke-static {v5, v6, v3, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    invoke-static {v13, v14, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    invoke-static {v15, v1, v13, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    add-int v7, v14, v12

    invoke-static {v3, v4, v13, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    add-int v5, v6, v11

    .line 377
    .local v5, "z1":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v7, v5, v12

    move-object/from16 v6, p15

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v4, p15

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 378
    move v4, v5

    .end local v5    # "z1":I
    .local v4, "z1":I
    add-int v6, v4, v12

    add-int v10, p12, v12

    move v3, v12

    .end local v12    # "hn":I
    .local v3, "hn":I
    add-int v12, v14, v3

    add-int/lit8 v14, p14, -0x1

    add-int v16, v4, v11

    move-object/from16 v5, p15

    move-object/from16 v9, p11

    move-object/from16 v15, p15

    move-object/from16 v1, p1

    move-object/from16 v7, p11

    move/from16 v8, p12

    move/from16 v18, v3

    move/from16 v17, v11

    move-object v11, v13

    move/from16 v13, p13

    move-object/from16 v3, p15

    .end local v3    # "hn":I
    .end local v11    # "n":I
    .local v17, "n":I
    .local v18, "hn":I
    invoke-virtual/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 380
    move-object v8, v0

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v9, v17

    .end local v17    # "n":I
    .local v9, "n":I
    shl-int/lit8 v1, v9, 0x1

    add-int v2, p16, v1

    add-int v6, v4, v18

    move/from16 v7, p14

    move-object/from16 v1, p15

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 390
    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-static {v10, v11, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    shl-int/lit8 v2, v9, 0x1

    add-int v2, p16, v2

    move v5, v4

    move v4, v2

    move v2, v5

    move/from16 v5, p14

    .end local v4    # "z1":I
    .local v2, "z1":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 393
    move v4, v2

    .end local v2    # "z1":I
    .restart local v4    # "z1":I
    shl-int/lit8 v0, v9, 0x1

    add-int v0, p16, v0

    invoke-static {v1, v0, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v2, p16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 395
    move/from16 v17, v4

    .end local v4    # "z1":I
    .local v17, "z1":I
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v4, p16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 401
    nop

    .line 402
    .local v4, "z0":I
    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v12, v4, v18

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v1, p15

    move v2, v4

    move v4, v12

    .end local v4    # "z0":I
    .local v2, "z0":I
    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 403
    move v4, v2

    .end local v2    # "z0":I
    .restart local v4    # "z0":I
    add-int v6, v4, v18

    add-int v10, p8, v18

    add-int/lit8 v14, p14, -0x1

    add-int v16, v4, v9

    move-object/from16 v5, p15

    move v0, v9

    .end local v9    # "n":I
    .local v0, "n":I
    move-object/from16 v9, p7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p7

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v19, v0

    move-object v0, v8

    move/from16 v8, p8

    .end local v0    # "n":I
    .local v19, "n":I
    invoke-virtual/range {v0 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 405
    move-object v8, v0

    iget-object v0, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v6, v4, v18

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v7, p14

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    .line 406
    return-void
.end method

.method sign_dyn([SILorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 20
    .param p1, "srcsig"    # [S
    .param p2, "sig"    # I
    .param p3, "rng"    # Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .param p4, "srcf"    # [B
    .param p5, "f"    # I
    .param p6, "srcg"    # [B
    .param p7, "g"    # I
    .param p8, "srcF"    # [B
    .param p9, "F"    # I
    .param p10, "srcG"    # [B
    .param p11, "G"    # I
    .param p12, "srchm"    # [S
    .param p13, "hm"    # I
    .param p14, "logn"    # I
    .param p15, "srctmp"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p16, "tmp"    # I
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
            0x0
        }
        names = {
            "srcsig",
            "sig",
            "rng",
            "srcf",
            "f",
            "srcg",
            "g",
            "srcF",
            "F",
            "srcG",
            "G",
            "srchm",
            "hm",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 1041
    move/from16 v18, p16

    .line 1054
    .local v18, "ftmp":I
    :goto_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;-><init>()V

    .line 1055
    .local v0, "spc":Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;-><init>()V

    .line 1062
    .local v2, "samp":Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
    move-object/from16 v1, p0

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v3, v3, p14

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 1063
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_init(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)V

    .line 1064
    move-object v3, v0

    .line 1069
    .local v3, "samp_ctx":Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    invoke-virtual/range {v1 .. v18}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->do_sign_dyn(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I

    move-result v19

    if-eqz v19, :cond_0

    .line 1072
    nop

    .line 1075
    .end local v0    # "spc":Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    .end local v2    # "samp":Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
    .end local v3    # "samp_ctx":Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    return-void

    .line 1074
    :cond_0
    goto :goto_0
.end method

.method sign_tree([SILorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 15
    .param p1, "srcsig"    # [S
    .param p2, "sig"    # I
    .param p3, "rng"    # Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .param p4, "srcexpanded_key"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p5, "expanded_key"    # I
    .param p6, "srchm"    # [S
    .param p7, "hm"    # I
    .param p8, "logn"    # I
    .param p9, "srctmp"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p10, "tmp"    # I
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
            0x0
        }
        names = {
            "srcsig",
            "sig",
            "rng",
            "srcexpanded_key",
            "expanded_key",
            "srchm",
            "hm",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 997
    move/from16 v11, p10

    .line 1010
    .local v11, "ftmp":I
    :goto_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;-><init>()V

    move-object v12, v0

    .line 1011
    .local v12, "spc":Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;-><init>()V

    .line 1018
    .local v1, "samp":Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v0, v0, p8

    iput-object v0, v12, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    .line 1019
    iget-object v0, v12, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    move-object/from16 v13, p3

    invoke-virtual {v0, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_init(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)V

    .line 1020
    move-object v2, v12

    .line 1025
    .local v2, "samp_ctx":Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    move-object v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->do_sign_tree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I

    move-result v14

    if-eqz v14, :cond_0

    .line 1028
    nop

    .line 1031
    .end local v1    # "samp":Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
    .end local v2    # "samp_ctx":Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    .end local v12    # "spc":Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    return-void

    .line 1030
    :cond_0
    goto :goto_0
.end method

.method skoff_b00(I)I
    .locals 1
    .param p1, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logn"
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method skoff_b01(I)I
    .locals 1
    .param p1, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logn"
        }
    .end annotation

    .line 196
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    return v0
.end method

.method skoff_b10(I)I
    .locals 1
    .param p1, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logn"
        }
    .end annotation

    .line 201
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method skoff_b11(I)I
    .locals 1
    .param p1, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logn"
        }
    .end annotation

    .line 206
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method skoff_tree(I)I
    .locals 1
    .param p1, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logn"
        }
    .end annotation

    .line 211
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V
    .locals 6
    .param p1, "srcr"    # [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p2, "r"    # I
    .param p3, "srct"    # [B
    .param p4, "t"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcr",
            "r",
            "srct",
            "t",
            "logn"
        }
    .end annotation

    .line 175
    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    .line 176
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 178
    add-int v2, p2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p4, v1

    aget-byte v4, p3, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method
