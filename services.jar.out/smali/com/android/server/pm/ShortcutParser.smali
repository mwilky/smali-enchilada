.class public Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# static fields
.field private static final DEBUG:Z = false

.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_SHORTCUTS:Ljava/lang/String; = "shortcuts"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;
    .locals 29

    if-eqz p10, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    or-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    if-eqz p9, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v0, v2

    if-eqz p10, :cond_2

    :goto_2
    move/from16 v27, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :goto_3
    new-instance v1, Landroid/content/pm/ShortcutInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v2, v1

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v9, p5

    move/from16 v12, p6

    move/from16 v15, p7

    move/from16 v19, p8

    move/from16 v23, v0

    move/from16 v24, p9

    invoke-direct/range {v2 .. v27}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method private static parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "ShortcutService"

    const-string v2, "android:name for shortcut category must be string literal."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .locals 17

    move-object/from16 v12, p3

    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Shortcut:[I

    move-object/from16 v14, p1

    invoke-virtual {v0, v14, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v15, v0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const-string v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:shortcutId must be string literal. activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_0
    :try_start_1
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v15, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    const/4 v1, 0x0

    invoke-virtual {v15, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move/from16 v16, v2

    const/4 v2, 0x4

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v2, 0x5

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:shortcutId must be provided. activity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_1
    if-nez v16, :cond_2

    :try_start_2
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:shortcutShortLabel must be provided. activity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_2
    move-object v1, v13

    move/from16 v2, p4

    move-object v3, v0

    move-object/from16 v4, p2

    move-object v5, v12

    move/from16 v6, v16

    move/from16 v9, p5

    :try_start_3
    invoke-static/range {v1 .. v11}, Lcom/android/server/pm/ShortcutParser;->createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    move-object v2, v1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    nop

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/android/server/pm/ShortcutService;->getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {p0, v6, p1, p2, v2}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    nop

    return-object v2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while parsing shortcut XML for package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_4
    :goto_2
    return-object v1
.end method

.method private static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    const-string v0, "android.app.shortcuts"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/pm/ShortcutService;->injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v9, v0

    if-nez v9, :cond_1

    nop

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object p4

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v10, p2

    invoke-direct {v0, v10, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v12, v0

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v1

    move v13, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move v15, v0

    move v6, v1

    move-object v0, v3

    move-object v14, v4

    move-object/from16 v4, p4

    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v3, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    const/4 v1, 0x3

    if-ne v3, v1, :cond_3

    :try_start_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v16, :cond_2

    goto :goto_1

    :cond_2
    move-object v12, v4

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    move-object v12, v4

    goto/16 :goto_c

    :cond_3
    :goto_1
    :try_start_4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    move/from16 v17, v16

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v18, v16

    const/4 v2, 0x2

    if-ne v3, v1, :cond_d

    move-object/from16 v19, v11

    move/from16 v11, v17

    if-ne v11, v2, :cond_c

    :try_start_5
    const-string/jumbo v1, "shortcut"

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v0, :cond_4

    nop

    move-object v8, v5

    move/from16 v17, v6

    move-object v2, v12

    move-object/from16 v5, v19

    move-object v12, v4

    goto/16 :goto_a

    :cond_4
    move-object v1, v0

    const/16 v16, 0x0

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v12

    const-string v12, "Shortcut "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has no intent. Skipping it."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    move-object/from16 v20, v12

    goto :goto_2

    :cond_6
    move-object/from16 v20, v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    if-lt v6, v13, :cond_8

    const-string v0, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "More than "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " shortcuts found for "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ". Skipping the rest."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    return-object v4

    :cond_8
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const v10, 0x1000c000

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    nop

    :try_start_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz v14, :cond_9

    invoke-virtual {v1, v14}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    const/4 v0, 0x0

    move-object v14, v0

    :cond_9
    if-nez v4, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    :cond_a
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v10, "ShortcutService"

    const-string v12, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v10, p2

    goto/16 :goto_0

    :cond_b
    move-object/from16 v20, v12

    goto :goto_4

    :cond_c
    move-object/from16 v20, v12

    move-object/from16 v2, v18

    goto :goto_4

    :cond_d
    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move/from16 v11, v17

    move-object/from16 v2, v18

    :goto_4
    const/4 v1, 0x2

    if-eq v3, v1, :cond_e

    nop

    :goto_5
    move-object v12, v4

    move-object v8, v5

    move/from16 v17, v6

    :goto_6
    move-object/from16 v5, v19

    move-object/from16 v2, v20

    goto/16 :goto_a

    :cond_e
    const/4 v10, 0x1

    if-ne v11, v10, :cond_f

    const-string/jumbo v1, "shortcuts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_f

    goto :goto_5

    :cond_f
    const/4 v1, 0x2

    if-ne v11, v1, :cond_13

    :try_start_9
    const-string/jumbo v1, "shortcut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v1, :cond_13

    move-object v1, v7

    move v12, v10

    move-object v10, v2

    move-object/from16 v2, v20

    move/from16 v16, v3

    move-object/from16 v3, p2

    move-object v12, v4

    move-object/from16 v4, v19

    move-object v8, v5

    move/from16 v5, p3

    move/from16 v17, v6

    move v6, v15

    :try_start_a
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_6

    :cond_10
    if-eqz v12, :cond_12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_7
    if-ltz v2, :cond_12

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "ShortcutService"

    const-string v4, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_12
    move-object v0, v1

    const/4 v14, 0x0

    nop

    move-object/from16 v10, p2

    move-object v5, v8

    move-object v4, v12

    move/from16 v6, v17

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v8, p1

    goto/16 :goto_0

    :cond_13
    move-object v10, v2

    move/from16 v16, v3

    move-object v12, v4

    move-object v8, v5

    move/from16 v17, v6

    const/4 v1, 0x3

    if-ne v11, v1, :cond_17

    const-string/jumbo v1, "intent"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    move-object/from16 v5, v19

    move-object/from16 v2, v20

    goto :goto_8

    :cond_14
    iget-object v1, v7, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-static {v1, v9, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut intent action must be provided. activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    move-object/from16 v5, v19

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_16
    move-object/from16 v5, v19

    move-object/from16 v2, v20

    :goto_8
    const-string v1, "ShortcutService"

    const-string v3, "Ignoring excessive intent tag."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :cond_17
    move-object/from16 v5, v19

    move-object/from16 v2, v20

    const/4 v1, 0x3

    if-ne v11, v1, :cond_1b

    const-string v1, "categories"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_18

    goto :goto_a

    :cond_18
    invoke-static {v7, v2}, Lcom/android/server/pm/ShortcutParser;->parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Empty category found. activity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_19
    if-nez v14, :cond_1a

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v3

    :cond_1a
    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    :goto_9
    move-object/from16 v10, p2

    move-object v11, v5

    move-object v5, v8

    move-object v4, v12

    move/from16 v6, v17

    move-object/from16 v8, p1

    move-object v12, v2

    goto/16 :goto_0

    :cond_1b
    const-string v1, "ShortcutService"

    const-string v3, "Invalid tag \'%s\' found at depth %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v4, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x1

    aput-object v6, v4, v18

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    nop

    :cond_1c
    :goto_a
    move-object/from16 v10, p2

    move-object v11, v5

    move-object v5, v8

    move-object v4, v12

    move/from16 v6, v17

    move-object/from16 v8, p1

    move-object v12, v2

    goto/16 :goto_0

    :cond_1d
    move-object v12, v4

    :goto_b
    if-eqz v9, :cond_1e

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1e
    return-object v12

    :catchall_2
    move-exception v0

    move-object v12, v4

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v12, p4

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object/from16 v12, p4

    move-object v9, v1

    :goto_c
    if-eqz v9, :cond_1f

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1f
    throw v0
.end method
