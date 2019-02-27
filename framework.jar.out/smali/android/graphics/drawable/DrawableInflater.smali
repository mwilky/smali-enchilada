.class public final Landroid/graphics/drawable/DrawableInflater;
.super Ljava/lang/Object;
.source "DrawableInflater.java"


# static fields
.field private static final CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassLoader:Ljava/lang/ClassLoader;

.field private final mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    iput-object p2, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    :try_start_0
    sget-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v3, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v1, v4

    sget-object v4, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :try_start_2
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class is not a Drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "animated-vector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "animated-rotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "animated-image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v0, "selector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v0, "level-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v0, "shape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "inset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "clip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v0, "layer-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_b
    const-string v0, "animated-selector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_c
    const-string/jumbo v0, "vector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_d
    const-string/jumbo v0, "rotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_e
    const-string/jumbo v0, "ripple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_f
    const-string v0, "bitmap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_10
    const-string v0, "animation-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_11
    const-string/jumbo v0, "nine-patch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_12
    const-string/jumbo v0, "transition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_13
    const-string v0, "adaptive-icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    return-object v0

    :pswitch_4
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    return-object v0

    :pswitch_6
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    return-object v0

    :pswitch_7
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    return-object v0

    :pswitch_8
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    return-object v0

    :pswitch_9
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>()V

    return-object v0

    :pswitch_a
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    return-object v0

    :pswitch_b
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0

    :pswitch_c
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-object v0

    :pswitch_d
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>()V

    return-object v0

    :pswitch_e
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RippleDrawable;-><init>()V

    return-object v0

    :pswitch_f
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    return-object v0

    :pswitch_10
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    return-object v0

    :pswitch_11
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    return-object v0

    :pswitch_12
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    return-object v0

    :pswitch_13
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78aade90 -> :sswitch_13
        -0x66c492ab -> :sswitch_12
        -0x63a70093 -> :sswitch_11
        -0x5905b6b9 -> :sswitch_10
        -0x52c70ed1 -> :sswitch_f
        -0x377b49d0 -> :sswitch_e
        -0x372522a5 -> :sswitch_d
        -0x30e61ebd -> :sswitch_c
        -0x1e6b8b37 -> :sswitch_b
        -0x59d5866 -> :sswitch_a
        0x2ea350 -> :sswitch_9
        0x5a72f63 -> :sswitch_8
        0x5fb611d -> :sswitch_7
        0x683094a -> :sswitch_6
        0x6854fa1 -> :sswitch_5
        0x993c947 -> :sswitch_4
        0x4705f3df -> :sswitch_3
        0x55f3e0b1 -> :sswitch_2
        0x780890c5 -> :sswitch_1
        0x7e4794ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

.method public static loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/DrawableInflater;->loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public inflateFromXml(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "drawable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p3, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "<drawable> tag must specify class attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setSrcDensityOverride(I)V

    iget-object v1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p2, p3, p5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method
