.class public Lcom/android/systemui/statusbar/StatusBarTextView;
.super Landroid/widget/FrameLayout;
.source "StatusBarTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mDarkIntensity:F

.field private mDirty:Z

.field private mNetSpeedColor:I

.field private mDarkIconColor:I

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mRect:Landroid/graphics/Rect;

.field private mSlot:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mTint:I

.field private mVisible:Z

.field private mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDirty:Z

    return-void
.end method

.method private applyColors()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mRect:Landroid/graphics/Rect;
    
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDarkIntensity:F
    
    float-to-int v6, v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v5
    
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;
    
    if-nez v5, :cond_notch

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDarkIconColor:I #dark color

    if-nez v6, :cond_mw #set to grey if dark intensity is 1
    
    :cond_notch
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mNetSpeedColor:I #custom color

    :cond_mw
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;
    
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTint:I

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    return-void
.end method

.method public static fromResId(Landroid/content/Context;I)Lcom/android/systemui/statusbar/StatusBarTextView;
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarTextView;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarTextView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/StatusBarTextView;->setTextView(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    const-string v3, "StatusBarTextView"

    const-string v4, "Load StatusBarTextView error, the resource is not TextView."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/StatusBarTextView;->setTextView(Landroid/widget/TextView;)V

    :goto_0
    invoke-direct {v0}, Lcom/android/systemui/statusbar/StatusBarTextView;->initDotView()V
    
    const/4 v1, 0x0
    
    int-to-float v1, v1
    
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarTextView;->updateViews(F)V

    return-object v0
.end method

.method private initDotView()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07062e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/StatusBarTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTextView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private updateState()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarTextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->updateState()V

    :cond_1
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public isIconVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mRect:Landroid/graphics/Rect;
    
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDarkIntensity:F

    iput p3, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTint:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->applyColors()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->applyColors()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDirty:Z

    :cond_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->applyColors()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDirty:Z

    :cond_1
    return-void
.end method

.method public setVisibleState(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->updateState()V

    :cond_0
    return-void
.end method


.method public getLockscreenIconColors()I
    .locals 2
    
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mSlot:Ljava/lang/String;
    
    invoke-static {v0}, Lcom/android/mwilky/Renovate;->getStatusbarColorFromSlotNameOP(Ljava/lang/String;)I
    
    move-result v0

    return v0
.end method

.method public updateViews(F)V
    .locals 1
    
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->applyColors()V
    
    return-void
.end method

.method public readRenovateMods()V
    .locals 1
    
    sget v0, Lcom/android/mwilky/Renovate;->mNetSpeedColorOP:I
    
	iput v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mNetSpeedColor:I
	
	sget v0, Lcom/android/mwilky/Renovate;->mDarkIconColor:I
	
	iput v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDarkIconColor:I
	
    return-void
.end method