.class public Landroidx/slice/SliceUtils;
.super Ljava/lang/Object;
.source "SliceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceUtils$SliceParseException;,
        Landroidx/slice/SliceUtils$SliceActionListener;,
        Landroidx/slice/SliceUtils$SerializeOptions;
    }
.end annotation


# static fields
.field public static final LOADING_ALL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOADING_COMPLETE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOADING_PARTIAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Landroid/content/Context;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/SliceUtils$SerializeOptions;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p1, p0, p2}, Landroidx/slice/SliceXml;->convertToBytes(Landroid/support/v4/graphics/drawable/IconCompat;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithData([BII)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p1
.end method

.method public static convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroidx/slice/Slice;->getSpec()Landroidx/slice/SliceSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->setSpec(Landroidx/slice/SliceSpec;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "slice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "input"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "image"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    const-string v5, "long"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_5
    const-string v5, "int"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "action"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_2

    :pswitch_4
    new-instance v3, Landroidx/slice/SliceUtils$1;

    invoke-direct {v3}, Landroidx/slice/SliceUtils$1;-><init>()V

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-static {p0, v4, p2}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addAction(Landroidx/slice/SliceItem$ActionHandler;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_2

    :pswitch_5
    goto :goto_2

    :pswitch_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot serialize action"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_2
    goto :goto_4

    :pswitch_7
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto :goto_4

    :pswitch_8
    invoke-virtual {p2}, Landroidx/slice/SliceUtils$SerializeOptions;->getImageMode()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    goto :goto_3

    :pswitch_9
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-static {p0, v3, p2}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/SliceUtils$SerializeOptions;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    goto :goto_3

    :pswitch_a
    goto :goto_3

    :pswitch_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot serialize icon"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_3
    goto :goto_4

    :pswitch_c
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    invoke-static {p0, v3, p2}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    nop

    :cond_1
    :goto_4
    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

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
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private static doesStreamStartWith(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 4

    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    return v3

    :cond_0
    array-length v2, v1

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_1

    return v3

    :cond_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    return v3
.end method

.method public static getLoadingState(Landroidx/slice/Slice;)I
    .locals 4
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "partial"

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x2

    return v1
.end method

.method public static getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 4
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "slice"

    const-string v1, "actions"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const-string v1, "actions"

    const-string v3, "shortcut"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v3, "slice"

    invoke-static {v0, v3, v1, v2}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    nop

    :cond_0
    return-object v2
.end method

.method public static getSliceKeywords(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 6
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "slice"

    const-string v1, "keywords"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "text"

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    return-object v2
.end method

.method public static parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/slice/SliceUtils$SliceActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/slice/SliceUtils$SliceParseException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-class v1, Landroidx/slice/Slice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-static {v1, v0}, Landroidx/slice/SliceUtils;->doesStreamStartWith(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->fromInputStream(Ljava/io/InputStream;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    check-cast v3, Landroidx/slice/Slice;

    new-instance v4, Landroidx/slice/SliceUtils$2;

    invoke-direct {v4, p3}, Landroidx/slice/SliceUtils$2;-><init>(Landroidx/slice/SliceUtils$SliceActionListener;)V

    invoke-static {v3, v4}, Landroidx/slice/SliceUtils;->setActions(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;)V

    return-object v3

    :cond_0
    invoke-static {p0, v0, p2, p3}, Landroidx/slice/SliceXml;->parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;

    move-result-object v3

    return-object v3
.end method

.method public static serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 1
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/slice/SliceUtils$SerializeOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1, p0, p3}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/slice/Slice;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/versionedparcelable/ParcelUtils;->toOutputStream(Landroidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 0
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/slice/SliceUtils$SerializeOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p4}, Landroidx/slice/SliceUtils;->serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Landroidx/slice/SliceUtils$SerializeOptions;)V

    return-void
.end method

.method private static setActions(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x54d081ca

    if-eq v4, v5, :cond_1

    const v5, 0x6873d92

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "slice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "action"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/slice/SliceUtils;->setActions(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;)V

    goto :goto_2

    :pswitch_1
    new-instance v2, Landroid/support/v4/util/Pair;

    iget-object v3, v1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/util/Pair;

    iget-object v3, v3, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v2, p1, v3}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/slice/SliceUtils;->setActions(Landroidx/slice/Slice;Landroidx/slice/SliceItem$ActionHandler;)V

    nop

    :goto_2
    goto :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
