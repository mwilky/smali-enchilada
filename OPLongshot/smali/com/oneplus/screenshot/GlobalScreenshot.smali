.class public Lcom/oneplus/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;,
        Lcom/oneplus/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;,
        Lcom/oneplus/screenshot/GlobalScreenshot$TargetChosenReceiver;,
        Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
    }
.end annotation


# static fields
.field public static ALERTS:Ljava/lang/String; = null

.field private static final BACKGROUND_ALPHA:F = 0.7f

.field private static final LONGSHOT_DROP_OUT_DELAY:I = 0x9c4

.field private static final LONGSHOT_SUPPORT_GUIDER_SHOWED:Ljava/lang/String; = "longshot_support_guider_showed"

.field private static final LONGSHOT_UNSUPPORT_GUIDER_SHOWED:Ljava/lang/String; = "longshot_unsupport_guider_showed"

.field private static final OP_GALLERY_EDITOR_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery.PhotoEditorActivity"

.field private static final OP_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field public static SCREENSHOTS:Ljava/lang/String; = null

.field private static final SCREENSHOT_DROP_IN_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_IN_MIN_SCALE:F = 0.725f

.field private static final SCREENSHOT_DROP_OUT_DELAY:I = 0x1f4

.field private static final SCREENSHOT_DROP_OUT_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE:F = 0.45f

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE_OFFSET:F = 0.0f

.field private static final SCREENSHOT_DROP_OUT_SCALE_DURATION:I = 0x172

.field private static final SCREENSHOT_FAST_DROP_OUT_DURATION:I = 0x140

.field private static final SCREENSHOT_FAST_DROP_OUT_MIN_SCALE:F = 0.6f

.field private static final SCREENSHOT_FLASH_TO_PEAK_DURATION:I = 0x82

.field private static final SCREENSHOT_SCALE:F = 1.0f

.field static final SCREENSHOT_URI_ID:Ljava/lang/String; = "android:screenshot_uri_id"

.field private static final TAG:Ljava/lang/String; = "Longshot.GlobalScreenshot"

.field public static mIsBusy:Z

.field public static mLastImageTime:J


# instance fields
.field private mAnimScale:F

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeleteIcon:Landroid/widget/ImageView;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditIcon:Landroid/widget/ImageView;

.field final mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

.field private mFinisher:Ljava/lang/Runnable;

.field private mFooter:Landroid/widget/LinearLayout;

.field private mGuideButton:Landroid/widget/Button;

.field private mGuideText:Landroid/widget/TextView;

.field private mGuiderHost:Landroid/widget/LinearLayout;

.field private mGuiderShowing:Z

.field private mIsLongShotStarted:Z

.field private mIsSaveScreenshotAfterAnimationEnd:Z

.field private mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

.field private mLongshotIcon:Landroid/widget/ImageView;

.field private mLongshotSupportGuiderShowed:Z

.field private mLongshotUnSupportGuiderShowed:Z

.field private mNavBarVisible:Z

.field private mNotRecycled:Z

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mSaveInBgTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

.field private mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mShareIcon:Landroid/widget/ImageButton;

.field private mStatusBarVisible:Z

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    const-string v0, "SCN"

    sput-object v0, Lcom/oneplus/screenshot/GlobalScreenshot;->SCREENSHOTS:Ljava/lang/String;

    const-string v0, "ALR"

    sput-object v0, Lcom/oneplus/screenshot/GlobalScreenshot;->ALERTS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsLongShotStarted:Z

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotUnSupportGuiderShowed:Z

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$8;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$8;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotRecycled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f0b000a

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/ScreenshotSelectorView;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setFocusable(Z)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b000b

    invoke-virtual {v3, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b000c

    invoke-virtual {v3, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b000d

    invoke-virtual {v3, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b000e

    invoke-virtual {v3, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b000f

    invoke-virtual {v3, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b0010

    invoke-virtual {v3, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b0011

    invoke-virtual {v3, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "longshot_support_guider_showed"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "longshot_unsupport_guider_showed"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotUnSupportGuiderShowed:Z

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$1;

    invoke-direct {v5, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7de

    const v12, 0x1080500

    const/4 v13, -0x3

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "ScreenshotAnimation"

    invoke-virtual {v3, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const v3, 0x1050006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    const v3, 0x7f070077

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    iget v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    iput v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    move v3, v0

    const v5, 0x7f070075

    :try_start_0
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    goto :goto_2

    :catch_0
    move-exception v5

    :goto_2
    if-gtz v3, :cond_2

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_2
    iput v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewWidth:I

    const v5, 0x7f070076

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewHeight:I

    new-instance v5, Landroid/media/MediaActionSound;

    invoke-direct {v5}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v5, v0}, Landroid/media/MediaActionSound;->load(I)V

    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    const/4 v6, 0x2

    new-array v7, v6, [Landroid/app/NotificationChannel;

    new-instance v8, Landroid/app/NotificationChannel;

    sget-object v9, Lcom/oneplus/screenshot/GlobalScreenshot;->SCREENSHOTS:Ljava/lang/String;

    const v10, 0x7f0c001e

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v8, v7, v0

    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v6, Lcom/oneplus/screenshot/GlobalScreenshot;->ALERTS:Ljava/lang/String;

    const v8, 0x1040403

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-direct {v0, v6, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v0, v7, v4

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideScreenshotLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/screenshot/GlobalScreenshot;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/screenshot/GlobalScreenshot;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotRecycled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotRecycled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideLongshotGuider()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/oneplus/screenshot/GlobalScreenshot;Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;)Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/screenshot/GlobalScreenshot;)F
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic access$2400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->shareVia(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->edit(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/ScreenshotSelectorView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->showLongshotGuider()V

    return-void
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    const v0, 0x3e9aca6b

    const v1, 0x3f1aca6b

    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$9;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$9;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$10;

    invoke-direct {v3, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$10;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1ae

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$11;

    invoke-direct {v5, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$11;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$12;

    invoke-direct {v5, p0, v3, v2}, Lcom/oneplus/screenshot/GlobalScreenshot$12;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    if-eqz v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :goto_0
    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$13;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$13;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x3f5c4771

    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$15;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$15;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    int-to-float v3, p1

    iget v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    int-to-float v4, p2

    iget v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    div-float/2addr v4, v5

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/PointF;

    neg-float v7, v3

    const v8, 0x3ee66666    # 0.45f

    mul-float v9, v8, v3

    add-float/2addr v7, v9

    neg-float v9, v4

    mul-float/2addr v8, v4

    add-float/2addr v9, v8

    invoke-direct {v6, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    const-wide/16 v7, 0x1ae

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/oneplus/screenshot/GlobalScreenshot$16;

    invoke-direct {v7, p0, v2, v6}, Lcom/oneplus/screenshot/GlobalScreenshot$16;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$14;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$14;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_2
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private delete()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v1, "Longshot.GlobalScreenshot"

    const-string v2, "delete intent isn\'t ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private edit(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v1, "screenshot"

    const-string v2, "edit"

    sget-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "com.oneplus.gallery"

    const-string v4, "com.oneplus.gallery.PhotoEditorActivity"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/oneplus/screenshot/util/Utils;->launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private endScreenshotAnim()V
    .locals 5

    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Longshot.GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endScreenshotAnim, save:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", notRecycle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotRecycled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    sget-boolean v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideLongshotGuider()V

    sput-boolean v3, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_WITH_ISSUE_REPORT:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-interface {v0, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    invoke-virtual {v0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->unregisterKeyEventCallBack()V

    :cond_4
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotRecycled:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    const-string v0, "Longshot.GlobalScreenshot"

    const-string v4, "recycle when end 1"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_6
    iput-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotRecycled:Z

    iput-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iput v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    return-void
.end method

.method private getDegreesForRotation(I)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    :pswitch_2
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideLongshotGuider()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "hide LongshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    :cond_1
    return-void
.end method

.method private hideScreenshotLayout()V
    .locals 2

    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    :goto_0
    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    :try_start_0
    const-string v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Longshot.GlobalScreenshot"

    const-string v2, "hide ime failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private isBusy()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNeedToShowGuider()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isRinging(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    return v1
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V
    .locals 12

    const-string v0, "Longshot.GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenshotError, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/oneplus/screenshot/GlobalScreenshot;->ALERTS:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f0c0019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f020031

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v4, "err"

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v4, 0x1060157

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    if-eqz v4, :cond_0

    const-string v5, "policy_disable_screen_capture"

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v6, p0

    move-object v8, v5

    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_0
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 5

    new-instance v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;-><init>()V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    iput-object p1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewWidth:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewWidth:I

    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewHeight:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewheight:I

    iget-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    iput-boolean v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->needRecycle:Z

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$2;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$2;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    iput-object p2, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->delayAction:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {v1, v3, v0, v4}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private shareVia(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getViewIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v2, "screenshot"

    const-string v3, "share"

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "Longshot.GlobalScreenshot"

    const-string v2, "share intent isn\'t ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showLongshotGuider()V
    .locals 3

    const-string v0, "Longshot.GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show LongshotGuider, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->writeGuiderPref(Z)V

    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZ)V
    .locals 7

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_WITH_ISSUE_REPORT:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotRecycled:Z

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->requestFocus()Z

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_1
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_WITH_ISSUE_REPORT:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-nez v3, :cond_5

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->noHWButton()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const-string v3, "net.oneplus.launcher"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "net.oneplus.h2launcher"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "com.google.android.setupwizard"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7de

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7f4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_3
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->registerKeyEventCallBack(Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;)V

    :cond_6
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->isNeedToShowGuider()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-nez v3, :cond_7

    iput-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$5;

    invoke-direct {v4, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$5;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    const-wide/16 v5, 0x1ae

    invoke-virtual {v3, v4, v5, v6}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v5

    iput v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    iget v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v2, v5, v6}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    const-wide/16 v5, 0x9c4

    invoke-virtual {v0, v2, v5, v6}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v0

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$6;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot$6;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_4
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$7;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$7;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private takeLongshot()V
    .locals 4

    const-string v0, "Longshot.GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeLongshot, top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideSoftInput()V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v1, "screenshot"

    const-string v2, "long"

    sget-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v1, "longshot"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/LongScreenshotManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mStatusBarVisible:Z

    iget-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNavBarVisible:Z

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/longshot/LongScreenshotManager;->takeLongshot(ZZ)V

    goto :goto_0

    :cond_0
    const-string v1, "Longshot.GlobalScreenshot"

    const-string v2, "can\'t connect LongScreenshotManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private writeGuiderPref(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "longshot_unsupport_guider_showed"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotUnSupportGuiderShowed:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "longshot_support_guider_showed"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public isGuiderShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "Longshot.GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_WITH_ISSUE_REPORT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0012

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_WITH_ISSUE_REPORT:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->delete()V

    goto :goto_1

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    goto :goto_1

    :pswitch_1
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_WITH_ISSUE_REPORT:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->delete()V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    :goto_0
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeLongshot()V

    goto :goto_1

    :pswitch_2
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_WITH_ISSUE_REPORT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$18;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot$18;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/View;)V

    invoke-direct {p0, v0, v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    iput-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotRecycled:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->edit(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_WITH_ISSUE_REPORT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$17;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot$17;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/View;)V

    invoke-direct {p0, v0, v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    iput-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotRecycled:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->shareVia(Landroid/content/Context;)V

    nop

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideScreenshotLayout()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideLongshotGuider()V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$19;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$19;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b000c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideScreenshotLayout()V

    :cond_0
    return-void
.end method

.method stopScreenshot()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->stopSelection()V

    :cond_0
    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZLandroid/graphics/Rect;)V

    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZLandroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->caculateWaterMarkShowTimes(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    move/from16 v8, p3

    iput-boolean v8, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mNavBarVisible:Z

    move/from16 v9, p2

    iput-boolean v9, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mStatusBarVisible:Z

    iget-object v1, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-string v5, "Longshot.GlobalScreenshot"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "takeScreenshot mHeaderOffset:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " width:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " height:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    if-lez v5, :cond_0

    iget-object v5, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v13, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v14, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int/2addr v13, v14

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v13, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v14, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int/2addr v13, v14

    goto :goto_1

    :pswitch_2
    sget v1, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    const/4 v2, 0x0

    iget-object v13, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v14, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int/2addr v13, v14

    nop

    :goto_0
    move v3, v13

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x0

    sget v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    iget-object v13, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v14, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int/2addr v13, v14

    nop

    :goto_1
    move v4, v13

    :goto_2
    invoke-static {v7, v11, v12, v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v13

    iput-object v13, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const-string v13, "Longshot.GlobalScreenshot"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rotation:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", widthPixels:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v15, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", heightPixels:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v15, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_0
    invoke-static {v7, v11, v12, v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    :goto_3
    move v13, v1

    move v14, v2

    move v15, v3

    move v5, v4

    iget-object v1, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x7f0c001c

    invoke-static {v0, v1, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    iget-object v1, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->load(Landroid/content/Context;)V

    iget-object v1, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_4

    iget-object v2, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/oneplus/screenshot/longshot/util/Configs;->isUnsupported(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v6, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->isRinging(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    move v0, v1

    nop

    :cond_3
    :goto_4
    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    goto :goto_5

    :cond_4
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    :goto_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v0

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2}, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Lcom/oneplus/screenshot/GlobalScreenshot$1;)V

    iput-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v15, v0, :cond_5

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v5, v0, :cond_6

    :cond_5
    const-string v0, "Longshot.GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crop x: y:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cropWidth:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cropHeight:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v13, v14, v15, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_6
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_ADD_WATERMARK:Z

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/oneplus/screenshot/util/Utils;->addWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v0, v6

    move/from16 v16, v1

    move-object/from16 v1, p1

    move-object/from16 v17, v3

    move/from16 v3, v16

    move-object/from16 v16, v4

    move v4, v9

    move/from16 v18, v5

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oneplus/screenshot/GlobalScreenshot$3;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$4;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$4;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLayout()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/ScreenshotSelectorView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setFocusable(Z)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f0b000b

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f0b000c

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b000d

    invoke-virtual {v2, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b000e

    invoke-virtual {v2, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f0b000f

    invoke-virtual {v2, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f0b0010

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f0b0012

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b0011

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    return-void
.end method
