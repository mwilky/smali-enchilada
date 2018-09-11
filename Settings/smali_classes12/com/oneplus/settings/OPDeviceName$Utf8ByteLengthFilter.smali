.class Lcom/oneplus/settings/OPDeviceName$Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "OPDeviceName.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDeviceName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Utf8ByteLengthFilter"
.end annotation


# instance fields
.field private final mMaxBytes:I

.field final synthetic this$0:Lcom/oneplus/settings/OPDeviceName;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDeviceName;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPDeviceName;
    .param p2, "maxBytes"    # I

    .line 280
    iput-object p1, p0, Lcom/oneplus/settings/OPDeviceName$Utf8ByteLengthFilter;->this$0:Lcom/oneplus/settings/OPDeviceName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p2, p0, Lcom/oneplus/settings/OPDeviceName$Utf8ByteLengthFilter;->mMaxBytes:I

    .line 282
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 18
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 286
    const/4 v2, 0x0

    .line 288
    .local v2, "srcByteCount":I
    move v3, v2

    move/from16 v2, p2

    .local v2, "i":I
    .local v3, "srcByteCount":I
    :goto_0
    const/4 v5, 0x2

    const/16 v6, 0x800

    const/16 v7, 0x80

    const/4 v8, 0x1

    if-ge v2, v1, :cond_2

    .line 289
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 290
    .local v9, "c":C
    if-ge v9, v7, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    if-ge v9, v6, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    :goto_1
    add-int/2addr v3, v8

    .line 288
    .end local v9    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "i":I
    :cond_2
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 294
    .local v2, "destLen":I
    const/4 v9, 0x0

    .line 296
    .local v9, "destByteCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v2, :cond_7

    .line 297
    move/from16 v11, p5

    if-lt v10, v11, :cond_4

    move/from16 v12, p6

    if-lt v10, v12, :cond_3

    goto :goto_3

    .line 296
    :cond_3
    move-object/from16 v13, p4

    goto :goto_5

    .line 298
    :cond_4
    move/from16 v12, p6

    :goto_3
    move-object/from16 v13, p4

    invoke-interface {v13, v10}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    .line 299
    .local v14, "c":C
    if-ge v14, v7, :cond_5

    .line 300
    move v15, v8

    goto :goto_4

    :cond_5
    if-ge v14, v6, :cond_6

    move v15, v5

    goto :goto_4

    :cond_6
    const/4 v15, 0x3

    :goto_4
    add-int/2addr v9, v15

    .line 296
    .end local v14    # "c":C
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 303
    .end local v10    # "i":I
    :cond_7
    move-object/from16 v13, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v10, p0

    iget v14, v10, Lcom/oneplus/settings/OPDeviceName$Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int/2addr v14, v9

    .line 304
    .local v14, "keepBytes":I
    if-gtz v14, :cond_8

    .line 305
    const-string v4, ""

    return-object v4

    .line 306
    :cond_8
    const/4 v15, 0x0

    if-lt v14, v3, :cond_9

    .line 307
    return-object v15

    .line 310
    :cond_9
    move/from16 v16, v14

    move/from16 v14, p2

    .local v14, "i":I
    .local v16, "keepBytes":I
    :goto_6
    if-ge v14, v1, :cond_d

    .line 311
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 312
    .local v4, "c":C
    if-ge v4, v7, :cond_a

    .line 313
    move/from16 v17, v8

    goto :goto_7

    :cond_a
    if-ge v4, v6, :cond_b

    move/from16 v17, v5

    goto :goto_7

    :cond_b
    const/16 v17, 0x3

    :goto_7
    sub-int v16, v16, v17

    .line 314
    if-gez v16, :cond_c

    .line 315
    move/from16 v5, p2

    invoke-interface {v0, v5, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    return-object v6

    .line 310
    .end local v4    # "c":C
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 321
    .end local v14    # "i":I
    :cond_d
    return-object v15
.end method
