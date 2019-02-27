.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field static final sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundFadeDurationMillis:J

.field mBackgroundFallbackResource:I

.field mBackgroundResource:I

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClipToOutline:Z

.field private mClosingActionMenu:Z

.field mContentParent:Landroid/view/ViewGroup;

.field private mContentParentExplicitlySet:Z

.field private mContentScene:Landroid/transition/Scene;

.field mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

.field mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

.field private mDecor:Lcom/android/internal/policy/DecorView;

.field private mDecorCaptionShade:I

.field mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field private mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mForceDecorInstall:Z

.field private mForcedNavigationBarColor:Z

.field private mForcedStatusBarColor:Z

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field mIsFloating:Z

.field private mIsStartingWindow:Z

.field private mIsTranslucent:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field private mLoadElevation:Z

.field mLogoRes:I

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field mNavigationBarColor:I

.field mNavigationBarDividerColor:I

.field private mNeedApplyTheme:Z

.field mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mReenterTransition:Landroid/transition/Transition;

.field mResourcesSetFlags:I

.field private mReturnTransition:Landroid/transition/Transition;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementExitTransition:Landroid/transition/Transition;

.field private mSharedElementReenterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field private mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field mStatusBarColor:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSupportsPictureInPicture:Z

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTextColor:I

.field private mTheme:I

.field private mThemeResId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionManager:Landroid/transition/TransitionManager;

.field private mUiOptions:I

.field private mUseDecorContext:Z

.field private mVolumeControlStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    new-instance v2, Lcom/android/internal/policy/PhoneWindow$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    sget-object v2, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    sget-object v2, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    sget-object v2, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNeedApplyTheme:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/DecorView;

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p2}, Landroid/view/Window;->getElevation()F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force_resizable_activities"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.picture_in_picture"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    nop

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    iput-object p3, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/PhoneWindow;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/PhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_2

    if-nez p2, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    :cond_1
    if-eqz p2, :cond_2

    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_4
    return-void
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    :cond_1
    const v0, 0x1020395

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The feature has not been requested"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-object v1, v0

    if-eqz v0, :cond_2

    array-length v0, v1

    if-gt v0, p1, :cond_4

    :cond_2
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    move-object v1, v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    :cond_4
    aget-object v0, v1, p1

    if-nez v0, :cond_5

    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    move-object v0, v2

    aput-object v2, v1, p1

    :cond_5
    return-object v0
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    :cond_1
    const v0, 0x1020396

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    :cond_1
    const v0, 0x10202e0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method private getOptionsPanelGravity()I
    .locals 3

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x51

    return v1
.end method

.method private getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The feature has not been requested"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-object v1, v0

    if-eqz v0, :cond_2

    array-length v0, v1

    if-gt v0, p1, :cond_4

    :cond_2
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    move-object v1, v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    :cond_4
    aget-object v0, v1, p1

    if-nez v0, :cond_6

    if-eqz p3, :cond_5

    nop

    move-object v2, p3

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    :goto_0
    move-object v0, v2

    aput-object v2, v1, p1

    :cond_6
    return-object v0
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    :cond_1
    const v0, 0x10203b7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 4

    if-eq p1, p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move-object v2, p2

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x10f0000

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "view not added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private installDecor()V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/high16 v3, 0x40000

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->setDescendantFocusability(I)V

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->setIsRootNamespace(Z)V

    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->makeOptionalFitsSystemWindows()V

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const v3, 0x1020223

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DecorContentParent;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const v4, 0x1020180

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/PhoneWindow;->mNeedApplyTheme:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mThemeResId:I

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mThemeResId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/internal/policy/PhoneWindow;->mThemeResId:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_3
    const/16 v4, 0xd

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v1, :cond_e

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v7

    move v8, v0

    :goto_1
    if-ge v8, v4, :cond_6

    shl-int v9, v2, v8

    and-int/2addr v9, v7

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v9, v8}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v9, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    invoke-interface {v8, v9}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v8, v2

    if-nez v8, :cond_8

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v8}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v8, v2

    if-nez v8, :cond_9

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v8}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v9, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    invoke-interface {v8, v9}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    :cond_9
    :goto_3
    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_a

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v8}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v9, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    invoke-interface {v8, v9}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    :cond_b
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz v8, :cond_c

    iget-object v9, v8, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v9, :cond_d

    :cond_c
    iget-boolean v9, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-nez v9, :cond_d

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    :cond_d
    goto :goto_5

    :cond_e
    const v7, 0x1020016

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v7, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_10

    const v7, 0x1020467

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_f
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_10
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_5
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_12

    iget v5, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(I)V

    :cond_12
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    if-nez v4, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0x1b

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v5}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    goto :goto_6

    :cond_13
    new-instance v4, Landroid/transition/TransitionManager;

    invoke-direct {v4}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    :cond_14
    :goto_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    const/16 v4, 0x1c

    invoke-direct {p0, v0, v6, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v4, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v5, 0x28

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    const/16 v4, 0x1d

    invoke-direct {p0, v0, v6, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v4, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v5, 0x29

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    const/16 v4, 0x1e

    invoke-direct {p0, v0, v6, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v4, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v5, 0x2a

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    const/16 v4, 0x1f

    invoke-direct {p0, v0, v6, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v4, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v5, 0x2b

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0x21

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    :cond_16
    iget-wide v4, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0x25

    const/16 v5, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    :cond_18
    return-void
.end method

.method private isNotInstantAppAndKeyguardRestricted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTvUserSetupComplete()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tv_user_setup_complete"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    and-int/2addr v0, v1

    return v0
.end method

.method private launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isTvUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v3, Landroid/view/SearchEvent;

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    move-object v2, v3

    :cond_2
    :try_start_0
    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "PhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WindowCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not implement method onSearchRequested(SearchEvent); fa"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x0

    :goto_1
    move v1, v3

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "search"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v3

    return v3

    :cond_4
    return v1
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5

    nop

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    if-nez v5, :cond_5

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_6

    return-void

    :cond_6
    const/4 v6, -0x2

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    const/4 v8, -0x1

    if-eqz v7, :cond_9

    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v6, -0x1

    goto/16 :goto_4

    :cond_8
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v7, :cond_12

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_12

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v8, :cond_12

    const/4 v6, -0x1

    goto/16 :goto_4

    :cond_9
    :goto_2
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v7, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v7, :cond_c

    :cond_a
    return-void

    :cond_b
    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_c

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_c

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->removeAllViews()V

    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_6

    :cond_d
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_e

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v7, v9

    :cond_e
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v8, :cond_f

    iget v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    const/4 v6, -0x1

    goto :goto_3

    :cond_f
    iget v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    :goto_3
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_10

    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_10

    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_10
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget-object v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11, v7}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    :cond_11
    nop

    :cond_12
    :goto_4
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, -0x2

    iget v14, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    iget v15, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    const/16 v16, 0x3eb

    const/high16 v17, 0x820000

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget v7, v7, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    move-object v11, v3

    move v12, v6

    move/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v7, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v7, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v7, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    goto :goto_5

    :cond_13
    iget v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_5
    iget v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v5, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    return-void

    :cond_14
    :goto_6
    return-void

    :cond_15
    :goto_7
    return-void
.end method

.method private registerSwipeCallbacks(Landroid/view/ViewGroup;)V
    .locals 3

    instance-of v0, p1, Lcom/android/internal/widget/SwipeDismissLayout;

    if-nez v0, :cond_0

    const-string v0, "PhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentParent is not a SwipeDismissLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout;

    new-instance v1, Lcom/android/internal/policy/PhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$2;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V

    new-instance v1, Lcom/android/internal/policy/PhoneWindow$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$3;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V

    return-void
.end method

.method private reopenMenu(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_4

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v2, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    :cond_4
    nop

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_9

    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_2

    :cond_8
    move v3, v2

    goto :goto_2

    :cond_9
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    :goto_2
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    iput-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private transitionTo(Landroid/transition/Scene;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-void
.end method

.method private updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v0

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p3, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_7

    iget-object v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v1, :cond_6

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_7

    :cond_6
    iput-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private updateInt(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onIntChanged(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateProgressBars(I)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v3

    const/16 v4, 0x2710

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne p1, v6, :cond_5

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-nez v6, :cond_1

    if-ge v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const-string v0, "PhoneWindow"

    const-string v4, "Horizontal progress bar not located in current window decor"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_12

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_6

    :cond_4
    const-string v0, "PhoneWindow"

    const-string v4, "Circular progress bar not located in current window decor"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    const/4 v6, -0x2

    if-ne p1, v6, :cond_9

    and-int/lit8 v0, v3, 0x4

    const/16 v4, 0x8

    if-eqz v0, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    :cond_6
    const-string v0, "PhoneWindow"

    const-string v5, "Horizontal progress bar not located in current window decor"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_12

    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_6

    :cond_8
    const-string v0, "PhoneWindow"

    const-string v4, "Circular progress bar not located in current window decor"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    const/4 v6, -0x3

    if-ne p1, v6, :cond_b

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_6

    :cond_a
    const-string v0, "PhoneWindow"

    const-string v4, "Horizontal progress bar not located in current window decor"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    const/4 v0, -0x4

    if-ne p1, v0, :cond_d

    if-eqz v2, :cond_c

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_6

    :cond_c
    const-string v0, "PhoneWindow"

    const-string v4, "Horizontal progress bar not located in current window decor"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    if-ltz p1, :cond_10

    if-gt p1, v4, :cond_10

    if-eqz v2, :cond_e

    add-int/lit8 v0, p1, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4

    :cond_e
    const-string v0, "PhoneWindow"

    const-string v5, "Horizontal progress bar not located in current window decor"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-ge p1, v4, :cond_f

    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_6

    :cond_f
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_6

    :cond_10
    const/16 v0, 0x4e20

    if-gt v0, p1, :cond_12

    const/16 v0, 0x7530

    if-gt p1, v0, :cond_12

    if-eqz v2, :cond_11

    add-int/lit16 v0, p1, -0x4e20

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_5

    :cond_11
    const-string v0, "PhoneWindow"

    const-string v4, "Horizontal progress bar not located in current window decor"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    :cond_12
    :goto_6
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PhoneWindow"

    const-string v1, "addContentView does not support content transitions"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_2
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    return-void
.end method

.method public clearContentView()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->clearContentView()V

    :cond_0
    return-void
.end method

.method public final closeAllPanels()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    nop

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    return-void
.end method

.method public final closePanel(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    :goto_0
    return-void
.end method

.method public final closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    :cond_1
    if-eqz p2, :cond_2

    iget v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v2, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    iput-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-ne v3, p1, :cond_4

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    :cond_4
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method doInvalidatePanelMenu(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1

    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    :cond_1
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    const/16 v3, 0x8

    if-eq p1, v3, :cond_3

    if-nez p1, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_4
    return-void
.end method

.method doPendingInvalidatePanelMenu()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    nop

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected generateDecor(I)Lcom/android/internal/policy/DecorView;
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/policy/DecorContext;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/policy/DecorContext;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_1
    move-object v0, v1

    new-instance v1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v0, p1, p0, v2}, Lcom/android/internal/policy/DecorView;-><init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-object v1
.end method

.method protected generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v4

    not-int v4, v4

    const v5, 0x10100

    and-int/2addr v4, v5

    iget-boolean v6, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v6, :cond_0

    const/4 v5, -0x2

    invoke-virtual {v0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    :goto_0
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    goto :goto_1

    :cond_1
    const/16 v5, 0xf

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    :cond_2
    :goto_1
    const/16 v5, 0x11

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v8, 0x9

    if-eqz v5, :cond_3

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    :cond_3
    const/16 v5, 0x10

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    :cond_4
    const/16 v9, 0x19

    invoke-virtual {v2, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    const/16 v10, 0xb

    if-eqz v9, :cond_5

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    :cond_5
    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v8

    not-int v8, v8

    const/16 v9, 0x400

    and-int/2addr v8, v9

    invoke-virtual {v0, v9, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    :cond_6
    const/16 v8, 0x17

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_7

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v8

    not-int v8, v8

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    invoke-virtual {v0, v9, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    :cond_7
    const/16 v8, 0x18

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_8

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v8

    not-int v8, v8

    const/high16 v9, 0x8000000

    and-int/2addr v8, v9

    invoke-virtual {v0, v9, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    :cond_8
    const/16 v8, 0x16

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_9

    const/high16 v8, 0x2000000

    const/high16 v9, 0x2000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v11

    not-int v11, v11

    and-int/2addr v9, v11

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    :cond_9
    const/16 v8, 0xe

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x100000

    const/high16 v9, 0x100000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v11

    not-int v11, v11

    and-int/2addr v9, v11

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    :cond_a
    const/16 v8, 0x12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v9, v10, :cond_b

    move v9, v7

    goto :goto_2

    :cond_b
    nop

    move v9, v3

    :goto_2
    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x800000

    const/high16 v9, 0x800000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v11

    not-int v11, v11

    and-int/2addr v9, v11

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    :cond_c
    const/16 v8, 0x13

    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v8, 0x14

    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v8, 0x37

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v8, :cond_d

    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    iput-object v8, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    :cond_d
    const/16 v8, 0x37

    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_e
    const/16 v8, 0x38

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v8, :cond_f

    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    iput-object v8, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    :cond_f
    const/16 v8, 0x38

    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_10
    const/16 v8, 0x35

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v8, :cond_11

    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    iput-object v8, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    :cond_11
    const/16 v8, 0x35

    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_12
    const/16 v8, 0x36

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v8, :cond_13

    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    iput-object v8, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    :cond_13
    const/16 v8, 0x36

    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_14
    const/16 v8, 0x1a

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_15

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    :cond_15
    const/16 v8, 0x2d

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_16

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    :cond_16
    const/4 v8, 0x5

    invoke-virtual {v2, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v9, v10, :cond_17

    move v11, v7

    goto :goto_3

    :cond_17
    move v11, v3

    :goto_3
    const/16 v12, 0xe

    if-ge v9, v12, :cond_18

    move v12, v7

    goto :goto_4

    :cond_18
    move v12, v3

    :goto_4
    const/16 v13, 0x15

    if-ge v9, v13, :cond_19

    move v13, v7

    goto :goto_5

    :cond_19
    move v13, v3

    :goto_5
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x11200fc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    goto :goto_6

    :cond_1a
    move v15, v3

    goto :goto_7

    :cond_1b
    :goto_6
    move v15, v7

    :goto_7
    const/4 v6, 0x2

    if-nez v11, :cond_1d

    if-eqz v12, :cond_1c

    if-eqz v14, :cond_1c

    if-eqz v15, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-virtual {v0, v6}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    goto :goto_9

    :cond_1d
    :goto_8
    invoke-virtual {v0, v7}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    :goto_9
    iget-boolean v10, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    const/high16 v6, -0x1000000

    if-nez v10, :cond_1e

    const/16 v10, 0x23

    invoke-virtual {v2, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    iput v10, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    :cond_1e
    iget-boolean v10, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v10, :cond_1f

    const/16 v10, 0x24

    invoke-virtual {v2, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    iput v10, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    const/16 v10, 0x32

    invoke-virtual {v2, v10, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    iput v10, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    new-array v10, v7, [I

    const/16 v16, 0x3c

    aput v16, v10, v3

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_1f

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    if-ne v10, v6, :cond_1f

    const v6, -0x141415

    iput v6, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-boolean v10, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v10, :cond_21

    if-nez v13, :cond_20

    const/16 v10, 0x22

    invoke-virtual {v2, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_20

    const/high16 v10, -0x80000000

    const/high16 v16, -0x80000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v7

    not-int v7, v7

    and-int v7, v16, v7

    invoke-virtual {v0, v10, v7}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    :cond_20
    iget-object v7, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v7, v7, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    if-eqz v7, :cond_21

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v10, 0x20000

    or-int/2addr v7, v10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_21
    const/16 v7, 0x2e

    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_22

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v7

    or-int/lit16 v7, v7, 0x2000

    invoke-virtual {v1, v7}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    :cond_22
    const/16 v7, 0x31

    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_23

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v1, v5}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    :cond_23
    const/16 v5, 0x33

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v7, -0x1

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ltz v7, :cond_24

    const/4 v10, 0x2

    if-gt v7, v10, :cond_24

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_a

    :cond_24
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown windowLayoutInDisplayCutoutMode: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x33

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_25
    :goto_a
    iget-boolean v5, v0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    if-nez v5, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v5, v7, :cond_27

    :cond_26
    const/16 v5, 0x15

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    move-result v5

    if-nez v5, :cond_28

    const/16 v5, 0xd

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :cond_28
    iget-boolean v5, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/16 v7, 0xb

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v5

    const/4 v7, 0x2

    and-int/2addr v5, v7

    if-nez v5, :cond_29

    iget v5, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v5, v7

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    move-result v5

    if-nez v5, :cond_2a

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    :cond_2a
    iget v5, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-nez v5, :cond_2b

    const/16 v5, 0x8

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v5

    if-nez v5, :cond_30

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2e

    iget v5, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    if-nez v5, :cond_2c

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    :cond_2c
    iget v5, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-nez v5, :cond_2d

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    :cond_2d
    const/16 v5, 0x2f

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    :cond_2e
    iget-boolean v5, v0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    if-eqz v5, :cond_2f

    const/16 v5, 0x26

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    :cond_2f
    const/16 v5, 0x27

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    const/4 v5, 0x7

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v5

    and-int/lit16 v7, v5, 0x800

    if-eqz v7, :cond_31

    const v7, 0x10900de

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnSwipeEnabled(Z)V

    goto/16 :goto_e

    :cond_31
    and-int/lit8 v7, v5, 0x18

    if-eqz v7, :cond_33

    iget-boolean v7, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v7, :cond_32

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v3, 0x1110027

    const/4 v1, 0x1

    invoke-virtual {v10, v3, v7, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v7, Landroid/util/TypedValue;->resourceId:I

    goto :goto_b

    :cond_32
    const v1, 0x10900e0

    :goto_b
    move v7, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_e

    :cond_33
    and-int/lit8 v1, v5, 0x24

    if-eqz v1, :cond_34

    and-int/lit16 v1, v5, 0x100

    if-nez v1, :cond_34

    const v7, 0x10900db

    :goto_c
    goto :goto_e

    :cond_34
    and-int/lit16 v1, v5, 0x80

    if-eqz v1, :cond_36

    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v1, :cond_35

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v7, 0x1110024

    const/4 v10, 0x1

    invoke-virtual {v3, v7, v1, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_d

    :cond_35
    const v1, 0x10900da

    :goto_d
    move v7, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto :goto_e

    :cond_36
    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_39

    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v1, :cond_37

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v7, 0x1110026

    const/4 v10, 0x1

    invoke-virtual {v3, v7, v1, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_e

    :cond_37
    and-int/lit16 v1, v5, 0x100

    if-eqz v1, :cond_38

    const/16 v1, 0x34

    const v3, 0x10900d9

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    goto :goto_c

    :cond_38
    const v7, 0x10900df

    goto :goto_c

    :cond_39
    and-int/lit16 v1, v5, 0x400

    if-eqz v1, :cond_3a

    const v7, 0x10900dd

    goto :goto_c

    :cond_3a
    const v7, 0x10900dc

    :goto_e
    move v1, v7

    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->startChanging()V

    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v7, v0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v7, v1}, Lcom/android/internal/policy/DecorView;->onResourcesLoaded(Landroid/view/LayoutInflater;I)V

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_42

    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_3b

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v7

    if-eqz v7, :cond_3b

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_3b
    and-int/lit16 v7, v5, 0x800

    if-eqz v7, :cond_3c

    invoke-direct {v0, v3}, Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks(Landroid/view/ViewGroup;)V

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v7

    if-nez v7, :cond_41

    iget v7, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    if-eqz v7, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_f

    :cond_3d
    iget-object v7, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_f
    iget-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v10, v7}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-eqz v10, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    move/from16 v17, v1

    iget v1, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    invoke-virtual {v10, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_10

    :cond_3e
    move/from16 v17, v1

    const/4 v1, 0x0

    :goto_10
    iget-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v10, v1}, Lcom/android/internal/policy/DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move-object/from16 v18, v1

    iget v1, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    invoke-virtual {v10, v1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v10, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    invoke-virtual {v1, v10}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3f
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    if-nez v1, :cond_40

    iget v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    :cond_40
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    goto :goto_11

    :cond_41
    move/from16 v17, v1

    :goto_11
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    return-object v3

    :cond_42
    move/from16 v17, v1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v7, "Window couldn\'t find content container view"

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getDecorCaptionShade()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    return v0
.end method

.method public final getDecorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method getLocalFeaturesPrivate()I
    .locals 1

    invoke-super {p0}, Landroid/view/Window;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method public getNavigationBarDividerColor()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    return v0
.end method

.method getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    :goto_0
    return-object v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    :goto_0
    return-object v0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    :goto_0
    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    :goto_0
    return-object v0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x12c

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    :goto_0
    return-wide v0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    :goto_0
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_5

    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v2

    if-eqz v2, :cond_4

    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 5

    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    const/16 v0, 0x51

    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    iget v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x1

    return v1
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010431

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    const v6, 0x1010397

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v4, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_2
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    if-eqz v4, :cond_4

    new-instance v5, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v5

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_4
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    return v2
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method public invalidatePanelMenu(I)V
    .locals 3

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    :cond_0
    return-void
.end method

.method public isFloating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method isShowingWallpaper()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    return v0
.end method

.method protected onActive()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    :cond_1
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_2
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_3
    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_0

    :goto_1
    nop

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_2
    return-void
.end method

.method protected onIntChanged(II)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    const v0, 0x1020467

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_7

    const/16 v1, 0x4f

    if-eq p2, v1, :cond_5

    const/16 v1, 0x52

    if-eq p2, v1, :cond_3

    const/16 v1, 0x82

    if-eq p2, v1, :cond_5

    const/16 v1, 0xa4

    if-eq p2, v1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto :goto_3

    :cond_1
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, p3}, Landroid/media/session/MediaController;->dispatchVolumeButtonEventAsSystemService(Landroid/view/KeyEvent;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v2}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    :goto_1
    return v3

    :cond_3
    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, p1

    :goto_2
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    return v3

    :cond_5
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEventAsSystemService(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v3

    :cond_6
    return v2

    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_8

    goto :goto_3

    :cond_8
    if-gez p1, :cond_9

    :goto_3
    return v2

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_a
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_0
    return v2
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_d

    const/16 v1, 0x4f

    if-eq p2, v1, :cond_b

    const/16 v1, 0x52

    if-eq p2, v1, :cond_9

    const/16 v1, 0x82

    if-eq p2, v1, :cond_b

    const/16 v1, 0xa4

    if-eq p2, v1, :cond_8

    const/16 v1, 0xab

    if-eq p2, v1, :cond_6

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isNotInstantAppAndKeyguardRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x6

    if-ne v1, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    :cond_4
    return v3

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, p3}, Landroid/media/session/MediaController;->dispatchVolumeButtonEventAsSystemService(Landroid/view/KeyEvent;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v2}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    :goto_1
    return v3

    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Window$WindowControllerCallback;->enterPictureInPictureModeIfPossible()V

    :cond_7
    return v3

    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, p3, v2}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    return v3

    :cond_9
    if-gez p1, :cond_a

    goto :goto_2

    :cond_a
    move v2, p1

    :goto_2
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    return v3

    :cond_b
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEventAsSystemService(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_c

    return v3

    :cond_c
    return v2

    :cond_d
    if-gez p1, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez p1, :cond_f

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v2, :cond_f

    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    return v3

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    return v3

    :cond_10
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 5

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_9

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v2

    goto :goto_1

    :cond_3
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_6

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    iget-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_5

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    :cond_5
    if-eqz v3, :cond_7

    const v4, 0xc351

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    :goto_0
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    :cond_7
    :goto_1
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_3

    :cond_8
    const-string v0, "PhoneWindow"

    const-string v4, "Couldn\'t get audio manager"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    :goto_2
    return-void

    :cond_a
    :goto_3
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    return-void
.end method

.method public onMultiWindowModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updatePictureInPictureOutlineProvider(Z)V

    :cond_0
    return-void
.end method

.method onViewRootImplSet(Landroid/view/ViewRootImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    return-void
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    :goto_0
    return-void
.end method

.method openPanelsAfterRestore()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final peekDecorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x52

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v3, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    :cond_2
    return v2
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    :cond_3
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    :cond_6
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_15

    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    iget-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_d

    :cond_7
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_9

    :cond_8
    return v1

    :cond_9
    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v4, :cond_a

    new-instance v4, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$1;)V

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    :cond_b
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    if-eqz v0, :cond_13

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    :cond_d
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_e

    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    iput-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    :cond_e
    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_f

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    :cond_f
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v1

    :cond_10
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    goto :goto_2

    :cond_11
    const/4 v4, -0x1

    :goto_2
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v2, :cond_12

    move v5, v2

    goto :goto_3

    :cond_12
    move v5, v1

    :goto_3
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    iget-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    iget-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_5

    :cond_13
    :goto_4
    invoke-virtual {p1, v5}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    if-eqz v3, :cond_14

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    :cond_14
    return v1

    :cond_15
    :goto_5
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    return v2
.end method

.method public reportActivityRelaunched()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportActivityRelaunched()V

    :cond_0
    return-void
.end method

.method public requestFeature(I)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v2, v0

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    and-int/lit16 v3, v2, -0x34c2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    if-ne p1, v4, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_3

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    :cond_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    if-eq p1, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine swipe dismissal and the action bar."

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    if-eq p1, v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine swipe dismissal and the action bar."

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v1

    return v1

    :cond_a
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "requestFeature() must be called before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android:views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_1
    const-string v1, "android:focusedViewId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    const-string v3, "PhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previously focused view reported id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " during save, but can\'t be found during restore."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const-string v2, "android:Panels"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_6

    const-string v3, "android:ActionBar"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4, v3}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_1

    :cond_5
    const-string v4, "PhoneWindow"

    const-string v5, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const-string v3, "android:focusedViewId"

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "android:Panels"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_3

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v4}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    const-string v5, "android:ActionBar"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_3
    return-object v0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(I)V

    :cond_3
    return-void
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    return-void
.end method

.method public final setChildInt(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    return-void
.end method

.method public final setClipToOutline(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method public setCloseOnSwipeEnabled(Z)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/internal/widget/SwipeDismissLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->setDismissable(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/Window;->setCloseOnSwipeEnabled(Z)V

    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/oneplus/embryo/EmbryoApp;->getInstance()Lcom/oneplus/embryo/EmbryoApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/embryo/EmbryoApp;->checkMainLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/transition/Scene;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    return-void
.end method

.method public setDecorCaptionShade(I)V
    .locals 1

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionShade()V

    :cond_0
    return-void
.end method

.method public setDefaultIcon(I)V
    .locals 2

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    :cond_3
    :goto_0
    return-void
.end method

.method public setDefaultLogo(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    :cond_1
    return-void
.end method

.method protected setDefaultWindowFormat(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/Window;->setDefaultWindowFormat(I)V

    return-void
.end method

.method public final setElevation(F)V
    .locals 4

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    :cond_0
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v2, p2, :cond_0

    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    :cond_0
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_0

    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    :cond_0
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v2, p2, :cond_0

    iput p2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setFeatureInt(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    :cond_0
    return-void
.end method

.method public setIsStartingWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 4

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [I

    const/16 v3, 0x3c

    aput v3, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-eq v0, v2, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "android.systemui.cts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNavigationBarColor color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->updateNavBarColor()V

    :cond_1
    return-void
.end method

.method public setNavigationBarDividerColor(I)V
    .locals 3

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    return-void
.end method

.method public setStartupWindowTheme(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNeedApplyTheme:Z

    iput p2, p0, Lcom/android/internal/policy/PhoneWindow;->mThemeResId:I

    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 3

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 2

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->onWindowTitleChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    return-void
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    return-void
.end method

.method public setUiOptions(II)V
    .locals 2

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setFocusable(Z)V

    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    :goto_0
    return-void
.end method

.method protected final updateDrawable(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    :cond_0
    return-void
.end method

.method public updateNavBarColor()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->notifyNavBarColorChanged(ILjava/lang/String;)V

    return-void
.end method
