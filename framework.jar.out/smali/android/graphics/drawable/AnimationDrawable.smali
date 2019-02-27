.class public Landroid/graphics/drawable/AnimationDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "AnimationDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

.field private mCurFrame:I

.field private mMutated:Z

.field private mRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    new-instance v1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-direct {v1, p1, p0, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    if-eq v2, v1, :cond_9

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    if-ge v2, v0, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_9

    :cond_1
    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    goto :goto_0

    :cond_2
    if-gt v4, v0, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/android/internal/R$styleable;->AnimationDrawableItem:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/AnimationDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ltz v6, :cond_8

    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v7, :cond_6

    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v3, v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    goto :goto_1

    :cond_4
    if-ne v3, v2, :cond_5

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_2

    :cond_5
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v2, v7, v6}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    if-eqz v7, :cond_7

    invoke-virtual {v7, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    goto :goto_0

    :cond_8
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": <item> tag requires a \'duration\' attribute"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    return-void
.end method

.method private nextFrame(Z)V
    .locals 6

    iget v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-lt v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v5, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v5}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v5

    if-nez v5, :cond_1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-direct {p0, v0, p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    return-void
.end method

.method private setFrame(IZZ)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz p3, :cond_3

    iput p1, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$100(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v2

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-boolean v1, v1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mVariablePadding:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mVariablePadding:Z

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$002(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_0
    return-void
.end method

.method public clearMutated()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    return-void
.end method

.method cloneConstantState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->cloneConstantState()Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    move-result-object v0

    return-object v0
.end method

.method public getDuration(I)I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$100(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public getFrame(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AnimationDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/AnimationDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->updateDensity(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimationDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    return-void
.end method

.method public isOneShot()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$200(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->nextFrame(Z)V

    return-void
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    :cond_0
    return-void
.end method

.method public setOneShot(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$002(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer;->setVisible(ZZ)Z

    move-result v0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    if-eqz v0, :cond_6

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_3

    iget-boolean v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v3}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget v3, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    iget-object v4, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget v2, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    :goto_2
    iget-boolean v4, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    invoke-direct {p0, v2, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_6
    :goto_3
    return v0
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, v0, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimationState:Landroid/graphics/drawable/AnimationDrawable$AnimationState;

    invoke-static {v1}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    invoke-direct {p0, v2, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->setFrame(IZZ)V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mAnimating:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mCurFrame:I

    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable;->mRunning:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
