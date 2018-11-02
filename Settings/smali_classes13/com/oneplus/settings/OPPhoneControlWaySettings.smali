.class public Lcom/oneplus/settings/OPPhoneControlWaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPPhoneControlWaySettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;
    }
.end annotation


# static fields
.field private static final KEY_ALWAYS_SHOW_NAVIGATION_BAR:Ljava/lang/String; = "always_show_navigation_bar"

.field private static final KEY_BUTTONS_ENABLE_ON_SCREEN_NAVKEYS:Ljava/lang/String; = "buttons_enable_on_screen_navkeys"

.field private static final KEY_BUTTONS_SWAP_NAVKEYS:Ljava/lang/String; = "buttons_swap_navkeys"

.field private static final KEY_GESTURE_NAVIGATION_BAR:Ljava/lang/String; = "gesture_navigation_bar"

.field private static final KEY_HIDE_NAVIGATION_BAR:Ljava/lang/String; = "hide_navigation_bar"

.field private static final KEY_OP_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "op_navigation_bar_type"

.field private static final KEY_PHONE_CONTROL_WAY:Ljava/lang/String; = "phone_control_way"

.field private static final REQUEST_CODE_FOR_GESTURE_GUIDE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "OPPhoneControlWaySettings"

.field private static final TYPE_ALWAYS_SHOW_NAVIGATION_BAR:I = 0x1

.field private static final TYPE_GESTURE_NAVIGATION_BAR:I = 0x3

.field private static final TYPE_HIDE_NAVIGATION_BAR:I = 0x2


# instance fields
.field private mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPPhoneControlWaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->updateUI()V

    return-void
.end method

.method private delayHideNavkey()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;-><init>(Lcom/oneplus/settings/OPPhoneControlWaySettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getNavigationType()I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_navigation_bar_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getNonVisibleKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "buttons_enable_on_screen_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "buttons_swap_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private hideNavbar()V
    .locals 0

    return-void
.end method

.method private initPref()V
    .locals 1

    const-string v0, "always_show_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "hide_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "gesture_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    const-string v0, "phone_control_way"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    return-void
.end method

.method private setNavigationType(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_navigation_bar_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    const-string v0, "op_fullscreen_gesture_enabled"

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method private showNavbar()V
    .locals 0

    return-void
.end method

.method private updateUI()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_navigation_bar_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    move v3, v2

    nop

    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f16008a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mWindow:Landroid/view/Window;

    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->initPref()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->showNavbar()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V

    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->setNavigationType(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->showNavbar()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->setNavigationType(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->setNavigationType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->updateUI()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->startAnim()V

    :cond_0
    return-void
.end method
