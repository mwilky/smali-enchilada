.class public Lcom/oneplus/screenshot/anim/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TARGET_ANIM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_CUSTOM:I = 0x5

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VISIBILITY:Ljava/lang/String; = "visibility"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "alpha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lcom/oneplus/screenshot/R$styleable;->Target:[I

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->getLoader()Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_2

    new-instance v7, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v7}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    new-instance v8, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v8}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    new-instance v9, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v9}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    move v11, v5

    :goto_0
    if-ge v11, v10, :cond_1

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-static {v0, v13}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v14

    sget-object v15, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5, v14}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x8

    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const-string v13, "visibility"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v5, 0x0

    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    const-string v14, "visibility"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4, v7}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropAnimator(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    invoke-virtual {v1, v4, v8}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropStart(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    invoke-virtual {v1, v4, v9}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropEnd(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move-object v9, v1

    :goto_0
    move v10, v2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v11, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v10, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v1, p2

    goto/16 :goto_5

    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-eq v11, v1, :cond_0

    const/4 v1, 0x2

    if-eq v11, v1, :cond_2

    nop

    move-object/from16 v1, p2

    goto/16 :goto_4

    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v1, "objectAnimator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v6, v7}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_2
    move-object/from16 v1, p2

    goto :goto_3

    :cond_3
    const-string v1, "animator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-static {v6, v7, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v1, "set"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v13, v1

    sget-object v0, Landroid/R$styleable;->AnimatorSet:[I

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    const/4 v0, 0x0

    invoke-virtual {v14, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object v4, v13

    check-cast v4, Landroid/animation/AnimatorSet;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move v5, v15

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    nop

    move-object/from16 v1, p2

    move-object v0, v13

    goto :goto_3

    :cond_5
    const-string v1, "targetAnimator"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v1, p2

    invoke-static {v6, v7, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v0

    :goto_3
    if-eqz v8, :cond_7

    if-nez v9, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    :cond_6
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    goto :goto_4

    :cond_8
    move-object/from16 v1, p2

    const-string v2, "target"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v0

    check-cast v2, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-static {v6, v7, v2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V

    nop

    :goto_4
    move v2, v10

    goto/16 :goto_0

    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown animator name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_5
    if-eqz v8, :cond_c

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    add-int/lit8 v12, v3, 0x1

    aput-object v5, v2, v3

    nop

    move v3, v12

    goto :goto_6

    :cond_a
    if-nez p5, :cond_b

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_c
    :goto_7
    return-object v0
.end method

.method private static createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/anim/TargetAnimator;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-direct {v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;-><init>()V

    move-object v0, v1

    :goto_1
    invoke-virtual {v0, p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->setLoader(Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)V

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    invoke-static {p0, v0, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v1
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Landroid/R$styleable;->Animator:[I

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x1

    const/16 v4, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    int-to-long v8, v8

    const/4 v10, 0x7

    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    if-nez p2, :cond_0

    new-instance v12, Landroid/animation/ValueAnimator;

    invoke-direct {v12}, Landroid/animation/ValueAnimator;-><init>()V

    move-object v11, v12

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x5

    const/4 v14, 0x6

    if-nez v10, :cond_1

    move v15, v3

    goto :goto_1

    :cond_1
    move v15, v7

    :goto_1
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    move/from16 v16, v7

    :goto_2
    if-eqz v16, :cond_3

    iget v7, v3, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_4

    const/16 v18, 0x1

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    :goto_4
    if-eqz v18, :cond_5

    iget v2, v6, Landroid/util/TypedValue;->type:I

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    move-object/from16 v19, v3

    const/16 v3, 0x1c

    if-eqz v16, :cond_6

    if-lt v7, v3, :cond_6

    const/16 v3, 0x1f

    if-le v7, v3, :cond_7

    goto :goto_6

    :cond_6
    const/16 v3, 0x1f

    :goto_6
    if-eqz v18, :cond_8

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_8

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_8

    :cond_7
    const/4 v15, 0x0

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_8
    if-eqz v15, :cond_e

    if-eqz v16, :cond_c

    const/4 v3, 0x5

    if-ne v7, v3, :cond_9

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    :goto_7
    if-eqz v18, :cond_b

    const/4 v3, 0x5

    if-ne v2, v3, :cond_a

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_8

    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    :goto_8
    move-object/from16 v21, v6

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/16 v17, 0x0

    aput v20, v6, v17

    move/from16 v22, v10

    const/4 v10, 0x1

    aput v3, v6, v10

    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_a

    :cond_b
    move-object/from16 v21, v6

    move/from16 v22, v10

    const/4 v10, 0x1

    const/16 v17, 0x0

    new-array v3, v10, [F

    aput v20, v3, v17

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_a

    :cond_c
    move-object/from16 v21, v6

    move/from16 v22, v10

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    :goto_9
    const/4 v6, 0x1

    new-array v10, v6, [F

    const/4 v6, 0x0

    aput v3, v10, v6

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_a
    nop

    move/from16 v23, v7

    goto/16 :goto_e

    :cond_e
    move-object/from16 v21, v6

    move/from16 v22, v10

    if-eqz v16, :cond_14

    const/4 v3, 0x5

    if-ne v7, v3, :cond_f

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v3, v6

    move v6, v3

    goto :goto_b

    :cond_f
    const/16 v3, 0x1c

    if-lt v7, v3, :cond_10

    const/16 v3, 0x1f

    if-gt v7, v3, :cond_10

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    goto :goto_b

    :cond_10
    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    :goto_b
    move v3, v6

    if-eqz v18, :cond_13

    const/4 v6, 0x5

    if-ne v2, v6, :cond_11

    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    move v10, v6

    const/4 v6, 0x0

    goto :goto_c

    :cond_11
    const/16 v6, 0x1c

    if-lt v2, v6, :cond_12

    const/16 v6, 0x1f

    if-gt v2, v6, :cond_12

    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    goto :goto_c

    :cond_12
    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    :goto_c
    move/from16 v23, v7

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v3, v7, v6

    const/4 v6, 0x1

    aput v10, v7, v6

    invoke-virtual {v11, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_e

    :cond_13
    move/from16 v23, v7

    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v6, 0x0

    aput v3, v7, v6

    invoke-virtual {v11, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_e

    :cond_14
    move/from16 v23, v7

    if-eqz v18, :cond_17

    const/4 v3, 0x5

    if-ne v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    move v6, v3

    const/4 v3, 0x0

    goto :goto_d

    :cond_15
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_16

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_16

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    :goto_d
    const/4 v7, 0x1

    new-array v10, v7, [I

    aput v6, v10, v3

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :cond_17
    :goto_e
    invoke-virtual {v11, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v11, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_18

    nop

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_18
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_19

    nop

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_19
    if-eqz v12, :cond_1a

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_1a
    nop

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_1b

    invoke-static {v0, v3}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v11
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private static loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "class"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-object v1
.end method
