.class public Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;
.super Ljava/lang/Object;
.source "OPAboutPhoneSoftWareController.java"


# static fields
.field private static final ACTIVITY_TRIGGER_COUNT:I = 0x3

.field private static final DELAY_TIMER_MILLIS:I = 0x1f4

.field static final REQUEST_CONFIRM_PASSWORD_FOR_DEV_PREF:I = 0x64

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field private mDevHitCountdown:I

.field private mDevHitToast:Landroid/widget/Toast;

.field private mFragment:Landroid/app/Fragment;

.field private mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field private final mHits:[J

.field private mLeftIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftIntent:Ljava/lang/String;

.field private mLeftSummary:Ljava/lang/String;

.field private mLeftTitle:Ljava/lang/String;

.field public mProcessingLastDevHit:Z

.field private mRightIcon:Landroid/graphics/drawable/Drawable;

.field private mRightIntent:Ljava/lang/String;

.field private mRightSummary:Ljava/lang/String;

.field private mRightTitle:Ljava/lang/String;

.field private final mSoftWareInfoView:Landroid/view/View;

.field private final mUm:Landroid/os/UserManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OPAboutPhoneSoftWareController"

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mHits:[J

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0138

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    :goto_0
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mUm:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    const-string v2, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    const-string v2, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDebuggingFeaturesDisallowedBySystem:Z

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    :goto_1
    iput v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitCountdown:I

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    const-string v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    const-string v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mFunDisallowedBySystem:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDebuggingFeaturesDisallowedBySystem:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitCountdown:I

    return v0
.end method

.method static synthetic access$508(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitCountdown:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitCountdown:I

    return v0
.end method

.method static synthetic access$510(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitCountdown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitCountdown:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private bindAction(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;-><init>(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;
    .locals 1

    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method

.method private setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method arrayCopy()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mHits:[J

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mHits:[J

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mHits:[J

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public done()Landroid/view/View;
    .locals 9

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    const v1, 0x7f0a02f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    const v2, 0x7f0a047e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    const v3, 0x7f0a02fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    const v4, 0x7f0a0482

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    const v5, 0x7f0a02fa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    const v6, 0x7f0a0481

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    const v7, 0x7f0a02fd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    const v8, 0x7f0a0484

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mLeftIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v8}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mRightIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v8}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mLeftTitle:Ljava/lang/String;

    invoke-direct {p0, v2, v8}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mRightTitle:Ljava/lang/String;

    invoke-direct {p0, v3, v8}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mLeftSummary:Ljava/lang/String;

    invoke-direct {p0, v4, v8}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mRightSummary:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mLeftIntent:Ljava/lang/String;

    invoke-direct {p0, v6, v8}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->bindAction(Landroid/view/View;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mRightIntent:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->bindAction(Landroid/view/View;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mSoftWareInfoView:Landroid/view/View;

    return-object v8
.end method

.method public enableDevelopmentSettings()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitCountdown:I

    iput-boolean v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mProcessingLastDevHit:Z

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mContext:Landroid/content/Context;

    const v2, 0x7f121022

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setLefImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mLeftIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setLeftIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mLeftIntent:Ljava/lang/String;

    return-object p0
.end method

.method public setLeftSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mLeftSummary:Ljava/lang/String;

    return-object p0
.end method

.method public setLeftTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mLeftTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setRightImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mRightIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setRightIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mRightIntent:Ljava/lang/String;

    return-object p0
.end method

.method public setRightSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mRightSummary:Ljava/lang/String;

    return-object p0
.end method

.method public setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mRightTitle:Ljava/lang/String;

    return-object p0
.end method
