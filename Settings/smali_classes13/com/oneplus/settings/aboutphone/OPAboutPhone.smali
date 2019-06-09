.class public Lcom/oneplus/settings/aboutphone/OPAboutPhone;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPAboutPhone.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/aboutphone/OPAboutPhone$SummaryProvider;
    }
.end annotation


# static fields
.field private static final KEY_HARDWARE_VIEW:Ljava/lang/String; = "hardware_view"

.field private static final KEY_SOFT_VIEW_1:Ljava/lang/String; = "soft_view_1"

.field private static final KEY_SOFT_VIEW_2:Ljava/lang/String; = "soft_view_2"

.field private static final KEY_SOFT_VIEW_3:Ljava/lang/String; = "soft_view_3"

.field private static final KEY_SOFT_VIEW_4:Ljava/lang/String; = "soft_view_4"

.field private static final KEY_SOFT_VIEW_5:Ljava/lang/String; = "soft_view_5"

.field private static final ONEPLUS_A3000:Ljava/lang/String; = "ONEPLUS A3000"

.field private static final ONEPLUS_A3010:Ljava/lang/String; = "ONEPLUS A3010"

.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final ONEPLUS_A5010:Ljava/lang/String; = "ONEPLUS A5010"

.field private static final ONEPLUS_A6000:Ljava/lang/String; = "ONEPLUS A6000"

.field private static final ONEPLUS_A6003:Ljava/lang/String; = "ONEPLUS A6003"

.field static final REQUEST_CONFIRM_PASSWORD_FOR_DEV_PREF:I = 0x64

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "OPAboutPhone"


# instance fields
.field SoftWare5Preference:Lcom/android/settings/applications/LayoutPreference;

.field private mContext:Landroid/content/Context;

.field mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

.field mOPPreferenceDivider:Lcom/oneplus/settings/aboutphone/OPAboutPhoneDivider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OPAboutPhone$RKK-fwpKlUC1qzXgjTLs813iYKo;->INSTANCE:Lcom/oneplus/settings/aboutphone/-$$Lambda$OPAboutPhone$RKK-fwpKlUC1qzXgjTLs813iYKo;

    sput-object v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private displayHardWarePreference()V
    .locals 6

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "hardware_view"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a040c

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "ONEPLUS A6000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x7f0802d5

    if-nez v3, :cond_4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A6003"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A5000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f0802d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setPhoneImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->done()Landroid/view/View;

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS A5010"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f0802d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setPhoneImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->done()Landroid/view/View;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->isOlder6tProducts()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f0802da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setPhoneImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->done()Landroid/view/View;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setPhoneImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->done()Landroid/view/View;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setPhoneImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->done()Landroid/view/View;

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getCameraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setCameraMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getCpuName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setCpuMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getScreenInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setScreenMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-static {}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getTotalMemory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "GB RAM + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->showROMStorage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ROM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->setStorageMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-virtual {v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->done()Landroid/view/View;

    return-void
.end method

.method private displaySoftWare1Preference()V
    .locals 6

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "soft_view_1"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f12096e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v3, "com.oneplus.intent.OPDeviceNameActivity"

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f080312

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLefImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v5, 0x7f0802e4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-direct {p0, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->showVerificationInfo(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)V

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v5, 0x7f120c6c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->done()Landroid/view/View;

    return-void
.end method

.method private displaySoftWare2Preference()V
    .locals 7

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "soft_view_2"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f120685

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v3, "com.android.FirmwareVersionDialogFragment"

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f0802e2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLefImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const v4, 0x7f120549

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v5, 0x7f0803be

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f120c24

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v3, "ro.oxygen.version"

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "O2"

    const-string v5, "O\u2082"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v5, 0x7f080325

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f120b84

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "H2"

    const-string v6, "H\u2082"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v3, "ro.rom.version"

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "H2"

    const-string v5, "H\u2082"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->done()Landroid/view/View;

    return-void
.end method

.method private displaySoftWare3Preference()V
    .locals 7

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "soft_view_3"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f0803f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLefImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f12036b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v3, "build.number"

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f0803b8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f12095e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ONEPLUS\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "ONEPLUS "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->done()Landroid/view/View;

    return-void
.end method

.method private displaySoftWare4Preference()V
    .locals 5

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "soft_view_4"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f12082b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v3, "com.oneplus.intent.LegalSettingsActivity"

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f0803a3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLefImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f120b96

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f0803fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f120550

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v4, 0x7f120d00

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v3, "com.oneplus.intent.MyDeviceInfoFragmentActivity"

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->done()Landroid/view/View;

    return-void
.end method

.method private displaySoftWare5Preference()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->SoftWare5Preference:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    const v3, 0x7f120b42

    const v4, 0x7f0802e9

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v5, 0x7f0803ca

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLefImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v5, 0x7f120c36

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v5, 0x7f120c38

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v2, "com.oneplus.action.PRODUCT_INFO"

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v3, 0x7f120b77

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v2, "com.oneplus.intent.OPForumContributorsActivity"

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLefImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v3, 0x7f120c0b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v2, "com.oneplus.intent.OPForumContributorsActivity"

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    :goto_1
    invoke-virtual {v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->done()Landroid/view/View;

    return-void
.end method

.method private displaynoContributors()V
    .locals 4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->SoftWare5Preference:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v3, 0x7f0803ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLefImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v3, 0x7f120c36

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v3, 0x7f120c38

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const-string v2, "com.oneplus.action.PRODUCT_INFO"

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setLeftIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightSummary(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->done()Landroid/view/View;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->SoftWare5Preference:Lcom/android/settings/applications/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPPreferenceDivider:Lcom/oneplus/settings/aboutphone/OPAboutPhoneDivider;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneDivider;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method private static formatMemoryDisplay(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x400

    mul-long/2addr v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v2, 0x200

    div-long v4, v0, v2

    long-to-int v4, v4

    rem-long v2, v0, v2

    long-to-int v2, v2

    if-nez v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const/16 v3, 0x100

    const/high16 v5, 0x3f000000    # 0.5f

    if-le v2, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v3, v4, 0x2

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v4

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v4

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v4

    mul-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCameraInfo()Ljava/lang/String;
    .locals 3

    const-string v0, "none"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A3010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v2, 0x7f120a3c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A3000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v2, 0x7f120a3b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "16 + 20 MP Dual Camera"

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getScreenInfo()Ljava/lang/String;
    .locals 3

    const-string v0, "none"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A5010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Optic AMOLED 6.01\u201d Display"

    goto :goto_2

    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->isOlder6tProducts()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v2, 0x7f120e06

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_0
    const-string v0, "Optic AMOLED 5.5\u201d Display"

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "Optic AMOLED 6.28\u201d Display"

    :cond_5
    :goto_2
    return-object v0
.end method

.method private static getTotalMemory()Ljava/lang/String;
    .locals 7

    const-string v0, "/proc/meminfo"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v4

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_5

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v3, 0x0

    const/4 v2, 0x0

    throw v4

    :catch_4
    move-exception v4

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_4
    goto :goto_6

    :catch_6
    move-exception v4

    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_6
    const/4 v3, 0x0

    const/4 v2, 0x0

    nop

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->formatMemoryDisplay(J)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private isOlder6tProducts()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

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

.method private isSupportAuthenticationInformation()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v1, 0x7f120bb5

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

.method private isSupportRegulatoryLabels()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v1, 0x7f120bb6

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

.method static synthetic lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1

    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$SummaryProvider;

    invoke-direct {v0, p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone$SummaryProvider;-><init>(Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object v0
.end method

.method public static showROMStorage()Ljava/lang/String;
    .locals 10

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x400

    div-long v6, v2, v6

    mul-long/2addr v6, v4

    const-wide/32 v8, 0x10000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    const-string v8, "512GB"

    return-object v8

    :cond_0
    const-wide/32 v8, 0x8000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    const-string v8, "256GB"

    return-object v8

    :cond_1
    const-wide/32 v8, 0x4000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    const-string v8, "128GB"

    return-object v8

    :cond_2
    const-wide/32 v8, 0x2000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_3

    const-string v8, "64GB"

    return-object v8

    :cond_3
    const-wide/32 v8, 0x1000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_4

    const-string v8, "32GB"

    return-object v8

    :cond_4
    const-string v8, "16GB"

    return-object v8
.end method

.method private showVerificationInfo(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)V
    .locals 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v1, 0x7f120bb5

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f120f17

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A5010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A5000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const v2, 0x7f120bb6

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "android.settings.SHOW_REGULATORY_INFO"

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.settings.SHOW_REGULATORY_INFO"

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    goto :goto_1

    :cond_3
    const-string v0, "com.oneplus.intent.OPAuthenticationInformationSettings"

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightIntentString(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    const v1, 0x7f120a70

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->setRightTitle(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getCpuName()Ljava/lang/String;
    .locals 3

    const-string v0, "none"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Snapdragon\u2122 845"

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Snapdragon\u2122 835"

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A3010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Snapdragon\u2122 821"

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A3000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Snapdragon\u2122 820"

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPAboutPhone"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160070

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->enableDevelopmentSettings()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPAboutPhoneSoftWareController3:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mProcessingLastDevHit:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "soft_view_5"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->SoftWare5Preference:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preference_divider_line_4"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneDivider;

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->mOPPreferenceDivider:Lcom/oneplus/settings/aboutphone/OPAboutPhoneDivider;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->displayHardWarePreference()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->displaySoftWare1Preference()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->displaySoftWare2Preference()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->displaySoftWare3Preference()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->displaySoftWare4Preference()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->isOlder6tProducts()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->displaySoftWare5Preference()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->displaynoContributors()V

    :goto_0
    return-void
.end method
