.class public Lcom/android/systemui/statusbar/phone/HighlightHintView;
.super Landroid/widget/FrameLayout;
.source "HighlightHintView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field public static TAG_KEYGUARD_STATUSBAR:I

.field public static TAG_STATUSBAR:I


# instance fields
.field private mBgHeightMax:I

.field mChronometerContainer:Landroid/widget/FrameLayout;

.field private mContainer:Landroid/view/ViewGroup;

.field mContentWidth:I

.field private mContext:Landroid/content/Context;

.field private mHint:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HighlightHintView"

    sput-object v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    const/16 v0, 0x3e9

    sput v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_KEYGUARD_STATUSBAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBgHeightMax:I

    const v0, 0x7f0d0073

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getMaxHighlightHintTextWidth()I
    .locals 13

    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v5

    if-eqz v5, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    if-eq v6, v5, :cond_4

    :cond_3
    invoke-virtual {v2, v3, v4}, Landroid/widget/Chronometer;->measure(II)V

    iput v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    :cond_4
    invoke-virtual {v2}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0701ff

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int/2addr v8, v7

    sub-int/2addr v8, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getWidth()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v9, v11

    double-to-int v9, v9

    if-lez v8, :cond_6

    move v10, v8

    goto :goto_1

    :cond_6
    move v10, v9

    :goto_1
    return v10
.end method

.method private updateHint()V
    .locals 11

    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v4

    const/4 v5, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eq v4, v5, :cond_2

    invoke-virtual {v1}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f07061e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    int-to-float v9, v4

    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v8

    if-eq v8, v5, :cond_4

    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getMaxHighlightHintTextWidth()I

    move-result v9

    if-lez v9, :cond_3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Landroid/app/Notification;->ShowChronometerOnStatusBar()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06022f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v8, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-ne v6, v8, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    int-to-float v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/widget/Chronometer;->setTextSize(IF)V

    invoke-virtual {v6, v5}, Landroid/widget/Chronometer;->setTextColor(I)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v8}, Landroid/widget/Chronometer;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    goto :goto_4

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void

    :cond_c
    :goto_5
    return-void
.end method

.method private updateLayout()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBgHeightMax:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBgHeightMax:I

    :cond_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingEnd()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->addCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateLayout()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a018e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a018f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    const v0, 0x7f0a0190

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a018c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateLayout()V

    return-void
.end method

.method public onHighlightHintInfoChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-le v2, v1, :cond_0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
