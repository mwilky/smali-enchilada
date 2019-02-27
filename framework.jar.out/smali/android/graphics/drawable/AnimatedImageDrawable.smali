.class public Landroid/graphics/drawable/AnimatedImageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedImageDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedImageDrawable$State;
    }
.end annotation


# static fields
.field private static final FINISHED:I = -0x1

.field public static final LOOP_INFINITE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPEAT_INFINITE:I = -0x1

.field private static final REPEAT_UNDEFINED:I = -0x2


# instance fields
.field private mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Animatable2$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mHandler:Landroid/os/Handler;

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mStarting:Z

.field private mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedImageDrawable$State;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    return-void
.end method

.method public constructor <init>(JLandroid/graphics/ImageDecoder;IIIILandroid/graphics/Rect;Ljava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v10

    invoke-static/range {p5 .. p7}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v11

    if-nez v9, :cond_0

    iput v10, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    iput v11, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    goto :goto_0

    :cond_0
    iget v0, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    iget v1, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v1

    iget v2, v9, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v2

    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v7, v8}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    :goto_0
    new-instance v12, Landroid/graphics/drawable/AnimatedImageDrawable$State;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move v3, v10

    move v4, v11

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedImageDrawable;->nCreate(JLandroid/graphics/ImageDecoder;IILandroid/graphics/Rect;)J

    move-result-wide v2

    move-object v0, v12

    move-object v1, v6

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedImageDrawable$State;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    iput-object v12, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v0, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nNativeByteSize(J)J

    move-result-wide v0

    new-instance v2, Llibcore/util/NativeAllocationRegistry;

    const-class v3, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-static {}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetNativeFinalizer()J

    move-result-wide v14

    move-object v12, v2

    move-wide/from16 v16, v0

    invoke-direct/range {v12 .. v17}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    iget-object v3, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v4, v6, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v4, v4, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-virtual {v2, v3, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic lambda$postOnAnimationEnd$2(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$postOnAnimationStart$1(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateStateFromTypedArray$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->isAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image is not animated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nCreate(JLandroid/graphics/ImageDecoder;IILandroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nDraw(JJ)J
.end method

.method private static native nGetAlpha(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetRepeatCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nIsRunning(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nNativeByteSize(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetColorFilter(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetMirrored(JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetOnAnimationEndListener(JLandroid/graphics/drawable/AnimatedImageDrawable;)V
.end method

.method private static native nSetRepeatCount(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nStart(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nStop(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private postOnAnimationEnd()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$dGAkP-tKNvqn_qCWdrQRL806ExQ;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$dGAkP-tKNvqn_qCWdrQRL806ExQ;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postOnAnimationStart()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$6aWLU8OYhdfACSejz5_iGirYxUk;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$6aWLU8OYhdfACSejz5_iGirYxUk;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x2

    if-eqz v3, :cond_5

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1, v3, p2, v6, v4}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    const v7, 0xffff

    if-lez p2, :cond_1

    iget v8, v6, Landroid/util/TypedValue;->density:I

    if-lez v8, :cond_1

    iget v8, v6, Landroid/util/TypedValue;->density:I

    if-eq v8, v7, :cond_1

    iget v8, v6, Landroid/util/TypedValue;->density:I

    if-ne v8, p2, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v8, v6, Landroid/util/TypedValue;->density:I

    goto :goto_0

    :cond_0
    iget v8, v6, Landroid/util/TypedValue;->density:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v8, v9

    div-int/2addr v8, p2

    iput v8, v6, Landroid/util/TypedValue;->density:I

    :cond_1
    :goto_0
    const/4 v8, 0x0

    iget v9, v6, Landroid/util/TypedValue;->density:I

    if-nez v9, :cond_2

    const/16 v8, 0xa0

    goto :goto_1

    :cond_2
    iget v9, v6, Landroid/util/TypedValue;->density:I

    if-eq v9, v7, :cond_3

    iget v8, v6, Landroid/util/TypedValue;->density:I

    :cond_3
    :goto_1
    const/4 v7, 0x0

    move-object v9, v7

    :try_start_0
    invoke-virtual {v1, v3, v6}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v1, v10, v8}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v11

    sget-object v12, Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$Cgt3NliB7ZYUONyDd-eQGdYbEKc;->INSTANCE:Landroid/graphics/drawable/-$$Lambda$AnimatedImageDrawable$Cgt3NliB7ZYUONyDd-eQGdYbEKc;

    invoke-static {v11, v12}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v12

    nop

    instance-of v10, v9, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v10, v10, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    move-object v11, v9

    check-cast v11, Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-object v12, v11, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput-object v12, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput-object v7, v11, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v7, v11, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    iput v7, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    iget v7, v11, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    iput v7, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    if-eq v10, v5, :cond_5

    invoke-virtual {p0, v10}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    goto :goto_2

    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": <animated-image> did not decode animated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v2

    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": <animated-image> requires a valid \'src\' attribute"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    :cond_5
    :goto_2
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v7

    iput-object v7, v6, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    iget-object v6, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v6, v6, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v6, v6, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v6, v6, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    aget v6, v6, v2

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": <animated-image> requires a valid \'src\' attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    const/4 v7, 0x3

    iget-boolean v10, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    invoke-virtual {p1, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-eq v4, v5, :cond_8

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    :cond_8
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v5, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v5, v5, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    :cond_9
    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v1, v1, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetOnAnimationEndListener(JLandroid/graphics/drawable/AnimatedImageDrawable;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationStart()V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Landroid/graphics/drawable/AnimatedImageDrawable;->nDraw(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/-$$Lambda$AlQeVq8Y-kfuQeb-JLZ0ueV4DE8;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/-$$Lambda$AlQeVq8Y-kfuQeb-JLZ0ueV4DE8;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    iput-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/drawable/AnimatedImageDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationEnd()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called draw on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlpha()I
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetAlpha(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called getAlpha on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getLoopCount(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getRepeatCount()I
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v1, v1, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->nGetRepeatCount(J)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called getRepeatCount on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object v0, Lcom/android/internal/R$styleable;->AnimatedImageDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mSrcDensityOverride:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;I)V

    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    return v0
.end method

.method public isRunning()Z
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nIsRunning(J)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called isRunning on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 6

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v1, v0

    nop

    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v2, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v2, v3, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetMirrored(JZ)V

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetOnAnimationEndListener(JLandroid/graphics/drawable/AnimatedImageDrawable;)V

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetAlpha(JI)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called setAlpha on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha must be between 0 and 255! provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoMirrored(Z)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-boolean v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput-boolean p1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetMirrored(JZ)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v2, v2, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetColorFilter(JJ)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called setColorFilter on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLoopCount(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iput p1, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nSetRepeatCount(JI)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value passed to setRepeatCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nStart(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mStarting:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->invalidateSelf()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called start on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mState:Landroid/graphics/drawable/AnimatedImageDrawable$State;

    iget-wide v0, v0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->nStop(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->postOnAnimationEnd()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called stop on empty AnimatedImageDrawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->clearAnimationCallbacks()V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
