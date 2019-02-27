.class public Landroid/graphics/drawable/RotateDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RotateDrawable$RotateState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mState:Landroid/graphics/drawable/RotateDrawable$RotateState;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    iput-object p1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 7

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/RotateDrawable$RotateState;->access$002(Landroid/graphics/drawable/RotateDrawable$RotateState;[I)[I

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    iget-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    :goto_1
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    :cond_3
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_4

    move v3, v4

    nop

    :cond_4
    iput-boolean v3, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    iget-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    :goto_2
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    :cond_6
    const/4 v1, 0x2

    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    const/4 v1, 0x3

    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    iget v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->access$000(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->access$000(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <rotate> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->access$000(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->access$000(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/drawable/RotateDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    :cond_1
    :goto_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v5, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v5, :cond_0

    int-to-float v5, v2

    iget v6, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    mul-float/2addr v5, v6

    goto :goto_0

    :cond_0
    iget v5, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    :goto_0
    iget-boolean v6, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v6, :cond_1

    int-to-float v6, v3

    iget v7, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    mul-float/2addr v6, v7

    goto :goto_1

    :cond_1
    iget v6, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget v8, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v9, v5

    iget v10, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getFromDegrees()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    return v0
.end method

.method public getPivotX()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    return v0
.end method

.method public getToDegrees()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/RotateDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isPivotXRelative()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    return v0
.end method

.method public isPivotYRelative()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    return v0
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    return-object v0
.end method

.method protected onLevelChange(I)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    int-to-float v0, p1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v1, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v2, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput v1, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    const/4 v2, 0x1

    return v2
.end method

.method public setFromDegrees(F)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setPivotXRelative(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setPivotYRelative(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setToDegrees(F)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
