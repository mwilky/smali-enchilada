.class Landroidx/slice/SliceXml;
.super Ljava/lang/Object;
.source "SliceXml.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ATTR_FORMAT:Ljava/lang/String; = "format"

.field private static final ATTR_HINTS:Ljava/lang/String; = "hints"

.field private static final ATTR_ICON_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final ATTR_ICON_RES_TYPE:Ljava/lang/String; = "resType"

.field private static final ATTR_ICON_TYPE:Ljava/lang/String; = "iconType"

.field private static final ATTR_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ICON_TYPE_DEFAULT:Ljava/lang/String; = "def"

.field private static final ICON_TYPE_RES:Ljava/lang/String; = "res"

.field private static final ICON_TYPE_URI:Ljava/lang/String; = "uri"

.field private static final NAMESPACE:Ljava/lang/String;

.field private static final TAG_ACTION:Ljava/lang/String; = "action"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_SLICE:Ljava/lang/String; = "slice"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    sput-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    return-void
.end method

.method public static convertToBytes(Landroid/support/v4/graphics/drawable/IconCompat;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)[B
    .locals 8
    .param p0, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;

    .line 366
    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 367
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 368
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 369
    .local v2, "height":I
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getMaxWidth()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 370
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getMaxWidth()I

    move-result v3

    mul-int/2addr v3, v2

    int-to-double v3, v3

    int-to-double v5, v1

    div-double/2addr v3, v5

    double-to-int v2, v3

    .line 371
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getMaxWidth()I

    move-result v1

    .line 373
    :cond_0
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getMaxHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 374
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getMaxHeight()I

    move-result v3

    mul-int/2addr v3, v1

    int-to-double v3, v3

    int-to-double v5, v2

    div-double/2addr v3, v5

    double-to-int v1, v3

    .line 375
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getMaxHeight()I

    move-result v2

    .line 377
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 379
    .local v3, "b":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 380
    .local v4, "c":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 382
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 383
    .local v5, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getQuality()I

    move-result v7

    invoke-virtual {v3, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 384
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static hintStr(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 389
    .local p0, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hints(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "hintStr"    # Ljava/lang/String;
    .annotation build Landroidx/slice/Slice$SliceHint;
    .end annotation

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static parseItem(Landroid/content/Context;Landroidx/slice/Slice$Builder;Lorg/xmlpull/v1/XmlPullParser;Landroidx/slice/SliceUtils$SliceActionListener;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroidx/slice/Slice$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "listener"    # Landroidx/slice/SliceUtils$SliceActionListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultCharset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroidx/slice/SliceUtils$SliceParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 130
    move-object/from16 v4, p3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 131
    .local v5, "outerDepth":I
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v6, "format"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "format":Ljava/lang/String;
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v7, "subtype"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "subtype":Ljava/lang/String;
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v8, "hints"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "hintStr":Ljava/lang/String;
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v9, "iconType"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "iconType":Ljava/lang/String;
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v10, "pkg"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, "pkg":Ljava/lang/String;
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v11, "resType"

    invoke-interface {v3, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 137
    .local v11, "resType":Ljava/lang/String;
    invoke-static {v8}, Landroidx/slice/SliceXml;->hints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "hints":[Ljava/lang/String;
    :goto_0
    move-object v12, v0

    .line 139
    .end local v0    # "hints":[Ljava/lang/String;
    .local v12, "hints":[Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v13, v0

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v0, v14, :cond_b

    const/4 v0, 0x3

    if-ne v13, v0, :cond_1

    .line 140
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v5, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    move/from16 v21, v5

    move-object/from16 v22, v8

    goto/16 :goto_a

    .line 141
    :cond_1
    :goto_1
    const/4 v15, 0x4

    if-ne v13, v15, :cond_8

    .line 142
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/16 v18, -0x1

    sparse-switch v17, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v15, "input"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v16, 0x0

    goto :goto_3

    :sswitch_1
    const-string v15, "image"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v16, 0x1

    goto :goto_3

    :sswitch_2
    const-string v15, "text"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v16, 0x3

    goto :goto_3

    :sswitch_3
    const-string v15, "long"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v16, 0x4

    goto :goto_3

    :sswitch_4
    const-string v15, "int"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v16, 0x2

    goto :goto_3

    :cond_2
    :goto_2
    move/from16 v16, v18

    :goto_3
    packed-switch v16, :pswitch_data_0

    .line 197
    move/from16 v21, v5

    move-object/from16 v22, v8

    .end local v5    # "outerDepth":I
    .end local v8    # "hintStr":Ljava/lang/String;
    .local v21, "outerDepth":I
    .local v22, "hintStr":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized format "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    .end local v21    # "outerDepth":I
    .end local v22    # "hintStr":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v8    # "hintStr":Ljava/lang/String;
    :pswitch_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15, v7, v12}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 195
    goto :goto_4

    .line 185
    .end local v0    # "v":Ljava/lang/String;
    :pswitch_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    .line 186
    .local v14, "v":Ljava/lang/String;
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-ge v15, v0, :cond_3

    .line 188
    new-instance v0, Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    move-object v14, v0

    .line 190
    :cond_3
    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0, v7, v12}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 191
    goto :goto_4

    .line 181
    .end local v14    # "v":Ljava/lang/String;
    :pswitch_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0    # "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14, v7, v12}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 183
    nop

    .line 137
    .end local v0    # "v":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v8    # "hintStr":Ljava/lang/String;
    .end local v13    # "type":I
    .restart local v21    # "outerDepth":I
    .restart local v22    # "hintStr":Ljava/lang/String;
    :goto_4
    move/from16 v21, v5

    move-object/from16 v22, v8

    goto/16 :goto_9

    .line 147
    .end local v21    # "outerDepth":I
    .end local v22    # "hintStr":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v8    # "hintStr":Ljava/lang/String;
    .restart local v13    # "type":I
    :pswitch_3
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v15, 0x1b8a0

    if-eq v0, v15, :cond_5

    const v15, 0x1c56c

    if-eq v0, v15, :cond_4

    goto :goto_5

    :cond_4
    const-string v0, "uri"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v18, 0x1

    goto :goto_5

    :cond_5
    const-string v0, "res"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v18, 0x0

    :cond_6
    :goto_5
    packed-switch v18, :pswitch_data_1

    .line 173
    move/from16 v21, v5

    move-object/from16 v22, v8

    .end local v5    # "outerDepth":I
    .end local v8    # "hintStr":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v22    # "hintStr":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0    # "v":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 175
    .local v5, "data":[B
    array-length v8, v5

    const/4 v14, 0x0

    invoke-static {v5, v14, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 176
    .local v8, "image":Landroid/graphics/Bitmap;
    invoke-static {v8}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v14

    invoke-virtual {v2, v14, v7, v12}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .end local v0    # "v":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v8    # "image":Landroid/graphics/Bitmap;
    goto/16 :goto_8

    .line 169
    .end local v21    # "outerDepth":I
    .end local v22    # "hintStr":Ljava/lang/String;
    .local v5, "outerDepth":I
    .local v8, "hintStr":Ljava/lang/String;
    :pswitch_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 170
    .restart local v0    # "v":Ljava/lang/String;
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithContentUri(Ljava/lang/String;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v14

    invoke-virtual {v2, v14, v7, v12}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 171
    nop

    .line 179
    .end local v0    # "v":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v8    # "hintStr":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v22    # "hintStr":Ljava/lang/String;
    :goto_6
    move/from16 v21, v5

    move-object/from16 v22, v8

    goto/16 :goto_8

    .line 149
    .end local v21    # "outerDepth":I
    .end local v22    # "hintStr":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v8    # "hintStr":Ljava/lang/String;
    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 151
    .local v15, "resName":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, v15, v11, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v19, v16

    .line 154
    .local v19, "id":I
    move/from16 v14, v19

    if-eqz v14, :cond_7

    .line 155
    .end local v19    # "id":I
    .local v14, "id":I
    nop

    .line 156
    move-object/from16 v20, v0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v10, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 155
    .end local v0    # "r":Landroid/content/res/Resources;
    .local v20, "r":Landroid/content/res/Resources;
    invoke-static {v0, v14}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {v2, v0, v7, v12}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .end local v14    # "id":I
    .end local v20    # "r":Landroid/content/res/Resources;
    goto :goto_6

    .line 163
    :catch_0
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v22, v8

    goto :goto_7

    .line 159
    .restart local v0    # "r":Landroid/content/res/Resources;
    .restart local v14    # "id":I
    :cond_7
    move-object/from16 v20, v0

    .end local v0    # "r":Landroid/content/res/Resources;
    .restart local v20    # "r":Landroid/content/res/Resources;
    :try_start_2
    new-instance v0, Landroidx/slice/SliceUtils$SliceParseException;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v21, v5

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "outerDepth":I
    .restart local v21    # "outerDepth":I
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v22, v8

    :try_start_4
    const-string v8, "Cannot find resource "

    .end local v8    # "hintStr":Ljava/lang/String;
    .restart local v22    # "hintStr":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroidx/slice/SliceUtils$SliceParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 163
    .end local v14    # "id":I
    .end local v20    # "r":Landroid/content/res/Resources;
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v22    # "hintStr":Ljava/lang/String;
    .restart local v8    # "hintStr":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v22, v8

    .end local v8    # "hintStr":Ljava/lang/String;
    .restart local v22    # "hintStr":Ljava/lang/String;
    goto :goto_7

    .end local v21    # "outerDepth":I
    .end local v22    # "hintStr":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v8    # "hintStr":Ljava/lang/String;
    :catch_3
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v22, v8

    .line 164
    .end local v5    # "outerDepth":I
    .end local v8    # "hintStr":Ljava/lang/String;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v21    # "outerDepth":I
    .restart local v22    # "hintStr":Ljava/lang/String;
    :goto_7
    new-instance v5, Landroidx/slice/SliceUtils$SliceParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid icon package "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v0}, Landroidx/slice/SliceUtils$SliceParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 179
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "resName":Ljava/lang/String;
    :goto_8
    goto :goto_9

    .line 145
    .end local v21    # "outerDepth":I
    .end local v22    # "hintStr":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v8    # "hintStr":Ljava/lang/String;
    :pswitch_6
    move/from16 v21, v5

    move-object/from16 v22, v8

    .end local v5    # "outerDepth":I
    .end local v8    # "hintStr":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v22    # "hintStr":Ljava/lang/String;
    goto :goto_9

    .line 199
    .end local v21    # "outerDepth":I
    .end local v22    # "hintStr":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v8    # "hintStr":Ljava/lang/String;
    :cond_8
    move/from16 v21, v5

    move-object/from16 v22, v8

    .end local v5    # "outerDepth":I
    .end local v8    # "hintStr":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v22    # "hintStr":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne v13, v0, :cond_9

    const-string v0, "slice"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 200
    invoke-static {v1, v3, v4}, Landroidx/slice/SliceXml;->parseSlice(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_9

    .line 201
    :cond_9
    const/4 v0, 0x2

    if-ne v13, v0, :cond_a

    const-string v0, "action"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 202
    new-instance v0, Landroidx/slice/SliceXml$1;

    invoke-direct {v0, v4}, Landroidx/slice/SliceXml$1;-><init>(Landroidx/slice/SliceUtils$SliceActionListener;)V

    .line 207
    invoke-static {v1, v3, v4}, Landroidx/slice/SliceXml;->parseSlice(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;

    move-result-object v5

    .line 202
    invoke-virtual {v2, v0, v5, v7}, Landroidx/slice/Slice$Builder;->addAction(Landroidx/slice/SliceItem$ActionHandler;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 137
    .end local v13    # "type":I
    :cond_a
    :goto_9
    move-object v0, v12

    move/from16 v5, v21

    move-object/from16 v8, v22

    goto/16 :goto_0

    .line 210
    .end local v21    # "outerDepth":I
    .end local v22    # "hintStr":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v8    # "hintStr":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_b
    move/from16 v21, v5

    move-object/from16 v22, v8

    .end local v5    # "outerDepth":I
    .end local v8    # "hintStr":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v22    # "hintStr":Ljava/lang/String;
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x197ef -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x36452d -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x5fb57ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "listener"    # Landroidx/slice/SliceUtils$SliceActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/slice/SliceUtils$SliceParseException;
        }
    .end annotation

    .line 83
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 84
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 86
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 88
    .local v1, "outerDepth":I
    const/4 v2, 0x0

    .line 89
    .local v2, "s":Landroidx/slice/Slice;
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v3, 0x3

    if-ne v4, v3, :cond_0

    .line 90
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 91
    :cond_0
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1

    .line 92
    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p0, v0, p3}, Landroidx/slice/SliceXml;->parseSlice(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;

    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 96
    :cond_2
    return-object v2

    .line 97
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "outerDepth":I
    .end local v2    # "s":Landroidx/slice/Slice;
    .end local v4    # "type":I
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to init XML Serialization"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseSlice(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "listener"    # Landroidx/slice/SliceUtils$SliceActionListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroidx/slice/SliceUtils$SliceParseException;
        }
    .end annotation

    .line 106
    const-string v0, "slice"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "action"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 111
    .local v0, "outerDepth":I
    sget-object v1, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v2, "uri"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "uri":Ljava/lang/String;
    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 113
    .local v2, "b":Landroidx/slice/Slice$Builder;
    sget-object v3, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v4, "hints"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/slice/SliceXml;->hints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "hints":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 116
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/4 v4, 0x3

    if-ne v5, v4, :cond_3

    .line 117
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 118
    :cond_3
    const/4 v4, 0x2

    if-ne v5, v4, :cond_2

    const-string v4, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-static {p0, v2, p1, p2}, Landroidx/slice/SliceXml;->parseItem(Landroid/content/Context;Landroidx/slice/Slice$Builder;Lorg/xmlpull/v1/XmlPullParser;Landroidx/slice/SliceUtils$SliceActionListener;)V

    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v4

    return-object v4
.end method

.method private static serialize(Landroidx/slice/Slice;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V
    .locals 3
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;
    .param p3, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p4, "isAction"    # Z
    .param p5, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string v1, "action"

    goto :goto_0

    :cond_0
    const-string v1, "slice"

    :goto_0
    invoke-interface {p3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v1, "uri"

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    if-eqz p5, :cond_1

    .line 238
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v1, "subtype"

    invoke-interface {p3, v0, v1, p5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v1, "hints"

    invoke-virtual {p0}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Landroidx/slice/SliceXml;->hintStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    :cond_2
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    .line 244
    .local v1, "item":Landroidx/slice/SliceItem;
    invoke-static {v1, p1, p2, p3}, Landroidx/slice/SliceXml;->serialize(Landroidx/slice/SliceItem;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 245
    .end local v1    # "item":Landroidx/slice/SliceItem;
    goto :goto_1

    .line 247
    :cond_3
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    if-eqz p4, :cond_4

    const-string v1, "action"

    goto :goto_2

    :cond_4
    const-string v1, "slice"

    :goto_2
    invoke-interface {p3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    return-void
.end method

.method private static serialize(Landroidx/slice/SliceItem;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 11
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;
    .param p3, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroidx/slice/SliceUtils$SerializeOptions;->checkThrow(Ljava/lang/String;)V

    .line 255
    sget-object v1, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v2, "item"

    invoke-interface {p3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    sget-object v1, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v2, "format"

    invoke-interface {p3, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    sget-object v1, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v2, "subtype"

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    sget-object v1, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v2, "hints"

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Landroidx/slice/SliceXml;->hintStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "slice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "input"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "long"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "int"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :pswitch_0
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    goto/16 :goto_2

    .line 307
    :pswitch_1
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spanned;

    const/16 v2, 0x16

    if-eqz v1, :cond_4

    .line 308
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spanned;

    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "text":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v2, :cond_3

    .line 311
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 311
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 314
    :cond_3
    invoke-interface {p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    .end local v1    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 316
    :cond_4
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1    # "text":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v2, :cond_5

    .line 319
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 319
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_5
    invoke-interface {p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    .end local v1    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 304
    :pswitch_2
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Landroidx/slice/SliceXml;->serialize(Landroidx/slice/Slice;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 305
    goto/16 :goto_2

    .line 301
    :pswitch_3
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    goto/16 :goto_2

    .line 277
    :pswitch_4
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getImageMode()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 278
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    .line 280
    .local v1, "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->getType()I

    move-result v2

    if-eq v2, v4, :cond_8

    if-eq v2, v3, :cond_6

    .line 293
    invoke-static {p3, v1, p1, p2}, Landroidx/slice/SliceXml;->serializeIcon(Lorg/xmlpull/v1/XmlSerializer;Landroid/support/v4/graphics/drawable/IconCompat;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)V

    .end local v1    # "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    goto :goto_1

    .line 285
    .restart local v1    # "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    :cond_6
    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 286
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 287
    invoke-static {p3, v1, p1}, Landroidx/slice/SliceXml;->serializeFileIcon(Lorg/xmlpull/v1/XmlSerializer;Landroid/support/v4/graphics/drawable/IconCompat;Landroid/content/Context;)V

    goto :goto_1

    .line 289
    :cond_7
    invoke-static {p3, v1, p1, p2}, Landroidx/slice/SliceXml;->serializeIcon(Lorg/xmlpull/v1/XmlSerializer;Landroid/support/v4/graphics/drawable/IconCompat;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)V

    .line 291
    goto :goto_1

    .line 282
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_8
    invoke-static {p3, v1, p1}, Landroidx/slice/SliceXml;->serializeResIcon(Lorg/xmlpull/v1/XmlSerializer;Landroid/support/v4/graphics/drawable/IconCompat;Landroid/content/Context;)V

    .line 283
    nop

    .line 296
    .end local v1    # "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    :goto_1
    goto :goto_2

    :cond_9
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getImageMode()I

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    .line 297
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slice contains an image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :pswitch_5
    goto :goto_2

    .line 266
    :pswitch_6
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result v1

    if-ne v1, v4, :cond_b

    .line 267
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    const/4 v9, 0x1

    .line 268
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v10

    .line 267
    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v5 .. v10}, Landroidx/slice/SliceXml;->serialize(Landroidx/slice/Slice;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    goto :goto_2

    .line 269
    :cond_b
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result v1

    if-eqz v1, :cond_c

    .line 331
    :goto_2
    sget-object v1, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v2, "item"

    invoke-interface {p3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    return-void

    .line 270
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slice contains an action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static serializeFileIcon(Lorg/xmlpull/v1/XmlSerializer;Landroid/support/v4/graphics/drawable/IconCompat;Landroid/content/Context;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    sget-object v0, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v1, "iconType"

    const-string v2, "uri"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    invoke-virtual {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    return-void
.end method

.method private static serializeIcon(Lorg/xmlpull/v1/XmlSerializer;Landroid/support/v4/graphics/drawable/IconCompat;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 4
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    invoke-static {p1, p2, p3}, Landroidx/slice/SliceXml;->convertToBytes(Landroid/support/v4/graphics/drawable/IconCompat;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)[B

    move-result-object v0

    .line 359
    .local v0, "outputStream":[B
    sget-object v1, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v2, "iconType"

    const-string v3, "def"

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    new-instance v1, Ljava/lang/String;

    .line 361
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 360
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    return-void
.end method

.method private static serializeResIcon(Lorg/xmlpull/v1/XmlSerializer;Landroid/support/v4/graphics/drawable/IconCompat;Landroid/content/Context;)V
    .locals 5
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 339
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->getResId()I

    move-result v1

    .line 340
    .local v1, "id":I
    sget-object v2, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v3, "iconType"

    const-string v4, "res"

    invoke-interface {p0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    sget-object v2, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v3, "pkg"

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    sget-object v2, Landroidx/slice/SliceXml;->NAMESPACE:Ljava/lang/String;

    const-string v3, "resType"

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "id":I
    nop

    .line 347
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slice contains invalid icon"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 7
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "options"    # Landroidx/slice/SliceUtils$SerializeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 221
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {v0, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 222
    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 224
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Landroidx/slice/SliceXml;->serialize(Landroidx/slice/Slice;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/String;)V

    .line 226
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 227
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    nop

    .line 231
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to init XML Serialization"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
