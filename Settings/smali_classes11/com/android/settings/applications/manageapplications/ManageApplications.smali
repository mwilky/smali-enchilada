.class public Lcom/android/settings/applications/manageapplications/ManageApplications;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;
    }
.end annotation


# static fields
.field private static final ADVANCED_SETTINGS:I = 0x2

.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field static final DEBUG:Z

.field public static final EXTRA_CLASSNAME:Ljava/lang/String; = "classname"

.field private static final EXTRA_HAS_BRIDGE:Ljava/lang/String; = "hasBridge"

.field private static final EXTRA_HAS_ENTRIES:Ljava/lang/String; = "hasEntries"

.field private static final EXTRA_SHOW_SYSTEM:Ljava/lang/String; = "showSystem"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final EXTRA_STORAGE_TYPE:Ljava/lang/String; = "storageType"

.field public static final EXTRA_VOLUME_NAME:Ljava/lang/String; = "volumeName"

.field public static final EXTRA_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final EXTRA_WORK_ID:Ljava/lang/String; = "workId"

.field public static final EXTRA_WORK_ONLY:Ljava/lang/String; = "workProfileOnly"

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field public static final LIST_TYPES_WITH_INSTANT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_TYPE_BACKGROUND_OPTIMIZE:I = 0xf

.field public static final LIST_TYPE_DIRECTORY_ACCESS:I = 0xc

.field public static final LIST_TYPE_DISPLAY_SIZE_ADAPION:I = 0xe

.field public static final LIST_TYPE_GAMES:I = 0x9

.field public static final LIST_TYPE_HIGH_POWER:I = 0x5

.field public static final LIST_TYPE_MAIN:I = 0x0

.field public static final LIST_TYPE_MANAGE_SOURCES:I = 0x8

.field public static final LIST_TYPE_MOVIES:I = 0xa

.field public static final LIST_TYPE_NOTIFICATION:I = 0x1

.field public static final LIST_TYPE_OVERLAY:I = 0x6

.field public static final LIST_TYPE_PHOTOGRAPHY:I = 0xb

.field public static final LIST_TYPE_STORAGE:I = 0x3

.field public static final LIST_TYPE_USAGE_ACCESS:I = 0x4

.field public static final LIST_TYPE_WIFI_ACCESS:I = 0xd

.field public static final LIST_TYPE_WRITE_SETTINGS:I = 0x7

.field private static final NO_USER_SPECIFIED:I = -0x1

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final STORAGE_TYPE_DEFAULT:I = 0x0

.field public static final STORAGE_TYPE_LEGACY:I = 0x2

.field public static final STORAGE_TYPE_MUSIC:I = 0x1

.field public static final STORAGE_TYPE_PHOTOS_VIDEOS:I = 0x3

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field static final TAG:Ljava/lang/String; = "ManageApplications"


# instance fields
.field private mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field private mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsWorkOnly:Z

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mLoadingContainer:Landroid/view/View;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSystem:Z

.field mSortOrder:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mSpinnerHeader:Landroid/view/View;

.field private mStorageType:I

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVolumeUuid:Ljava/lang/String;

.field private mWorkUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 161
    const-string v0, "ManageApplications"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    .line 243
    new-instance v0, Landroid/util/ArraySet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    .line 244
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 243
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    .line 1551
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 197
    const v0, 0x7f0a04c8

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/app/usage/IUsageStatsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    return-object v0
.end method

.method static getCompositeFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .locals 3
    .param p0, "listType"    # I
    .param p1, "storageType"    # I
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 487
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;

    invoke-direct {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 489
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 490
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v1

    goto :goto_0

    .line 491
    :cond_0
    if-nez p1, :cond_1

    .line 492
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v1

    .line 494
    :cond_1
    :goto_0
    return-object v0

    .line 496
    :cond_2
    const/16 v1, 0x9

    if-ne p0, v1, :cond_3

    .line 497
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object v1

    .line 498
    :cond_3
    const/16 v1, 0xa

    if-ne p0, v1, :cond_4

    .line 499
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object v1

    .line 500
    :cond_4
    const/16 v1, 0xb

    if-ne p0, v1, :cond_5

    .line 501
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object v1

    .line 504
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 7
    .param p2, "titleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 675
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v6

    .line 675
    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    .line 677
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 3

    .line 611
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 668
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const v1, 0x7f12017e

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 661
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 662
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 663
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->show(Landroid/app/Fragment;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 654
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->show(Landroid/app/Fragment;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 646
    :pswitch_2
    const-class v0, Lcom/android/settings/wifi/ChangeWifiStateDetails;

    const v1, 0x7f1203c1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 648
    goto :goto_0

    .line 643
    :pswitch_3
    const-class v0, Lcom/android/settings/applications/DirectoryAccessDetails;

    const v1, 0x7f120562

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 644
    goto :goto_0

    .line 640
    :pswitch_4
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f1210e9

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 641
    goto :goto_0

    .line 637
    :pswitch_5
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f1210e4

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 638
    goto :goto_0

    .line 634
    :pswitch_6
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f1206b9

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 635
    goto :goto_0

    .line 631
    :pswitch_7
    const-class v0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    const v1, 0x7f12076d

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 632
    goto :goto_0

    .line 628
    :pswitch_8
    const-class v0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;

    const v1, 0x7f121524

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 629
    goto :goto_0

    .line 625
    :pswitch_9
    const-class v0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    const v1, 0x7f120da9

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 626
    goto :goto_0

    .line 622
    :pswitch_a
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-static {p0, v0, v2, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;ILjava/lang/String;I)V

    .line 623
    goto :goto_0

    .line 616
    :pswitch_b
    const-class v0, Lcom/android/settings/applications/UsageAccessDetails;

    const v1, 0x7f121257

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 617
    goto :goto_0

    .line 619
    :pswitch_c
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f1210eb

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 620
    goto :goto_0

    .line 613
    :cond_0
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    const v1, 0x7f120a2b

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 614
    nop

    .line 672
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method createHeader()V
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 419
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f0a03ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 420
    .local v1, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 421
    const/4 v3, 0x0

    const v4, 0x7f0d0036

    invoke-virtual {v2, v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    .line 422
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v4, 0x7f0a01d3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    .line 423
    new-instance v2, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    .line 424
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 425
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 426
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 428
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v2

    .line 429
    .local v2, "appFilterRegistry":Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    iget v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getDefaultFilterType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 430
    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v4, 0x9

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-nez v3, :cond_2

    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, "showWorkApps":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/settings/utils/OPUtils;->hasMultiAppProfiles(Landroid/os/UserManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_1

    .line 440
    const/4 v3, 0x1

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 444
    const/4 v3, 0x1

    .line 447
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 448
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 449
    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v7, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 453
    .end local v3    # "showWorkApps":Z
    :cond_2
    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v3, v5, :cond_3

    .line 454
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 455
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v7, 0x7

    invoke-virtual {v3, v7}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 456
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v3, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    .line 458
    :cond_3
    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_4

    .line 459
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 462
    :cond_4
    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v5, 0xe

    if-ne v3, v5, :cond_5

    .line 463
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v3, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    .line 464
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 465
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 466
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 468
    :cond_5
    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v5, 0xf

    if-ne v3, v5, :cond_6

    .line 469
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v3, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    .line 470
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 471
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 474
    :cond_6
    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iget v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getCompositeFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v3

    .line 475
    .local v3, "compositeFilter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    iget-boolean v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v5, :cond_7

    .line 476
    invoke-virtual {v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v4

    .line 477
    .local v4, "workFilter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    new-instance v5, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    invoke-direct {v5, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v3, v5

    .line 479
    .end local v4    # "workFilter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    :cond_7
    if-eqz v3, :cond_8

    .line 480
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setCompositeFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 482
    :cond_8
    return-void
.end method

.method getHelpResource()I
    .locals 2

    .line 709
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v0, :cond_0

    .line 710
    const v0, 0x7f1206f1

    return v0

    .line 711
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 712
    const v0, 0x7f120730

    return v0

    .line 714
    :cond_1
    const v0, 0x7f1206f7

    return v0
.end method

.method public getMetricsCategory()I
    .locals 3

    .line 509
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0xdd

    const/16 v2, 0x41

    packed-switch v0, :pswitch_data_0

    .line 546
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 544
    :pswitch_1
    return v2

    .line 541
    :pswitch_2
    return v2

    .line 538
    :pswitch_3
    const/16 v0, 0x152

    return v0

    .line 536
    :pswitch_4
    const/16 v0, 0x503

    return v0

    .line 524
    :pswitch_5
    const/16 v0, 0x444

    return v0

    .line 522
    :pswitch_6
    const/16 v0, 0x3a7

    return v0

    .line 520
    :pswitch_7
    const/16 v0, 0x346

    return v0

    .line 534
    :pswitch_8
    const/16 v0, 0x328

    return v0

    .line 532
    :pswitch_9
    return v1

    .line 530
    :pswitch_a
    return v1

    .line 528
    :pswitch_b
    const/16 v0, 0xb8

    return v0

    .line 526
    :pswitch_c
    const/16 v0, 0x5f

    return v0

    .line 515
    :pswitch_d
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 516
    const/16 v0, 0x347

    return v0

    .line 518
    :cond_0
    const/16 v0, 0xb6

    return v0

    .line 513
    :pswitch_e
    const/16 v0, 0x85

    return v0

    .line 511
    :pswitch_f
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 594
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 595
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v1, v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$200(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_1

    .line 598
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_1

    .line 602
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$200(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 607
    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 806
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-nez v0, :cond_0

    .line 807
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 811
    .local v0, "position":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 812
    const-string v1, "ManageApplications"

    const-string v2, "Cannot find position for child, skipping onClick handling"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-void

    .line 815
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getApplicationCount()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 816
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 817
    .local v1, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 818
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    .line 819
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startApplicationDetailsActivity()V

    .line 820
    .end local v1    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    goto :goto_0

    .line 821
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$300(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->onClick(Landroid/app/Fragment;)V

    .line 823
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 263
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 266
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 268
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 269
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 270
    .local v3, "args":Landroid/os/Bundle;
    const-string v4, ":settings:show_fragment_title_resid"

    const v5, 0x7f12017e

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 272
    .local v4, "screenTitle":I
    if-eqz v3, :cond_0

    const-string v5, "classname"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 273
    .local v5, "className":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_1

    .line 274
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 276
    :cond_1
    const-class v6, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    const v8, 0x7f0a04cb

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    .line 277
    if-eqz v3, :cond_2

    const-string v0, "volumeUuid"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    const-string v0, "volumeUuid"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 279
    const-string v0, "storageType"

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    .line 280
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto :goto_1

    .line 283
    :cond_2
    iput v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 285
    :goto_1
    iput v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_2

    .line 286
    :cond_3
    const-class v6, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 287
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 288
    const v4, 0x7f121257

    goto/16 :goto_2

    .line 289
    :cond_4
    const-class v6, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 290
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 292
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    .line 293
    const v4, 0x7f12073a

    goto/16 :goto_2

    .line 294
    :cond_5
    const-class v6, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 295
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 296
    const v4, 0x7f121178

    goto/16 :goto_2

    .line 297
    :cond_6
    const-class v6, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 298
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 299
    const v4, 0x7f12151e

    goto/16 :goto_2

    .line 300
    :cond_7
    const-class v6, Lcom/android/settings/Settings$ManageExternalSourcesActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 301
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 302
    const v4, 0x7f12076d

    goto/16 :goto_2

    .line 303
    :cond_8
    const-class v6, Lcom/android/settings/Settings$GamesStorageActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 304
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 305
    iput v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_2

    .line 306
    :cond_9
    const-class v6, Lcom/android/settings/Settings$MoviesStorageActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 307
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 308
    iput v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_2

    .line 309
    :cond_a
    const-class v6, Lcom/android/settings/Settings$PhotosStorageActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 310
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 311
    iput v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 312
    const-string v0, "storageType"

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    goto/16 :goto_2

    .line 313
    :cond_b
    const-class v6, Lcom/android/settings/Settings$DirectoryAccessSettingsActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 314
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 315
    const v4, 0x7f120562

    goto/16 :goto_2

    .line 316
    :cond_c
    const-class v6, Lcom/android/settings/Settings$ChangeWifiStateActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 317
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 318
    const v4, 0x7f1203c1

    goto :goto_2

    .line 319
    :cond_d
    const-class v6, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 320
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 321
    const-string v0, "usagestats"

    .line 322
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    .line 324
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 325
    const v0, 0x7f0a04ca

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 326
    const v4, 0x7f120166

    goto :goto_2

    .line 327
    :cond_e
    const-class v0, Lcom/android/settings/Settings$DisplaySizeAdaptionAppListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 328
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 329
    const v4, 0x7f120a4c

    goto :goto_2

    .line 333
    :cond_f
    const-class v0, Lcom/android/settings/Settings$BgOptimizeAppListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 334
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 335
    const v4, 0x7f12073a

    goto :goto_2

    .line 338
    :cond_10
    if-ne v4, v7, :cond_11

    .line 339
    const v0, 0x7f12017e

    .line 341
    .end local v4    # "screenTitle":I
    .local v0, "screenTitle":I
    move v4, v0

    .end local v0    # "screenTitle":I
    .restart local v4    # "screenTitle":I
    :cond_11
    iput v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 343
    :goto_2
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    .line 344
    .local v0, "appFilterRegistry":Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
    iget v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {v0, v6}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getDefaultFilterType(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 345
    if-eqz v3, :cond_12

    const-string v6, "workProfileOnly"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    nop

    :cond_12
    iput-boolean v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    .line 346
    if-eqz v3, :cond_13

    const-string v6, "workId"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    nop

    :cond_13
    iput v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    .line 348
    if-eqz p1, :cond_14

    .line 349
    const-string v6, "sortOrder"

    iget v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 350
    const-string v6, "showSystem"

    iget-boolean v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    .line 353
    :cond_14
    const v6, 0x7f12077f

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 355
    new-instance v6, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-direct {v6, v1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    .line 357
    if-lez v4, :cond_15

    .line 358
    invoke-virtual {v1, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 360
    :cond_15
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 682
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 683
    return-void

    .line 686
    :cond_0
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 687
    return-void

    .line 690
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getHelpResource()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 691
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 692
    const v1, 0x7f0e0002

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    .line 695
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 365
    const v0, 0x7f0d00fb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    .line 366
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    const v1, 0x7f0a02eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 367
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    const v1, 0x7f0a02e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 368
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    .line 371
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-direct {v0, v2, p0, v3, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 373
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const-string v3, "hasEntries"

    .line 375
    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 374
    invoke-static {v2, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$002(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 376
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const-string v3, "hasBridge"

    .line 377
    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 376
    invoke-static {v2, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$102(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 379
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 380
    .local v2, "userId":I
    :goto_0
    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    if-ne v3, v1, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 382
    .local v3, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    new-instance v5, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;

    new-instance v6, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v6, v3}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 387
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 382
    invoke-virtual {v4, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setExtraViewController(Lcom/android/settings/applications/manageapplications/FileViewHolderController;)V

    .line 388
    .end local v3    # "context":Landroid/content/Context;
    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 390
    .restart local v3    # "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    new-instance v5, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;

    new-instance v6, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v6, v3}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 395
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 390
    invoke-virtual {v4, v5}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setExtraViewController(Lcom/android/settings/applications/manageapplications/FileViewHolderController;)V

    .line 397
    .end local v3    # "context":Landroid/content/Context;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x7f0a0077

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 398
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 398
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 405
    .end local v2    # "userId":I
    :cond_4
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_5

    .line 406
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 409
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->createHeader()V

    .line 411
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 705
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 584
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroyView()V

    .line 586
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->release()V

    .line 589
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    .line 590
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 827
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 828
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setFilter(Lcom/android/settings/applications/manageapplications/AppFilterItem;)V

    .line 830
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 835
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 751
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 752
    .local v0, "menuId":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 798
    const/4 v1, 0x0

    return v1

    .line 755
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    .line 765
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {v1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->buildResetDialog()V

    .line 766
    return v2

    .line 761
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    .line 762
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 763
    nop

    .line 800
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    .line 801
    return v2

    .line 786
    :sswitch_3
    const/4 v1, 0x0

    .line 788
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.BACKGROUND_OPTIMIZE_SWITCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 789
    const-string v3, "classname"

    const-class v4, Lcom/android/settings/Settings$BgOptimizeSwitchActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    goto :goto_1

    .line 791
    :catch_0
    move-exception v3

    .line 792
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "ManageApplications"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return v2

    .line 768
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1

    .line 769
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v4, Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 770
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v4, 0x7f12041c

    .line 771
    invoke-virtual {v1, v4}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 772
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 773
    invoke-virtual {v1, p0, v3}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 774
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_2

    .line 776
    :cond_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v4, Lcom/android/settings/applications/DefaultAppSettings;

    .line 777
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v4, 0x7f12041a

    .line 778
    invoke-virtual {v1, v4}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 780
    invoke-virtual {v1, p0, v3}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 781
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 783
    :goto_2
    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f0a004d -> :sswitch_4
        0x7f0a0098 -> :sswitch_3
        0x7f0a022f -> :sswitch_2
        0x7f0a0445 -> :sswitch_1
        0x7f0a04b4 -> :sswitch_2
        0x7f0a04c8 -> :sswitch_0
        0x7f0a04cb -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    .line 700
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 562
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 564
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    const-string v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 566
    const-string v0, "hasEntries"

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$000(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 567
    const-string v0, "hasBridge"

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$100(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 568
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 571
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 552
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStart()V

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateView()V

    .line 554
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    .line 558
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 575
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStop()V

    .line 576
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->stop()V

    .line 580
    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 2
    .param p1, "hasDisabledApps"    # Z

    .line 846
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz v0, :cond_0

    .line 847
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 850
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 851
    return-void
.end method

.method public setHasInstant(Z)V
    .locals 2
    .param p1, "haveInstantApps"    # Z

    .line 854
    sget-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 857
    :cond_0
    return-void
.end method

.method updateOptionsMenu()V
    .locals 8

    .line 719
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 720
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a004d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 724
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a04c8

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-eq v3, v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 726
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a04cb

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-eq v3, v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 729
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a04b4

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/4 v4, 0x5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v3, v4, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 731
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f0a022f

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v3, v4, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 734
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f0a0445

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v4, :cond_5

    move v4, v5

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 737
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a04ca

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 738
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a04c9

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 740
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a0098

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v6, 0xf

    if-ne v4, v6, :cond_6

    new-array v4, v5, [I

    const/16 v7, 0x54

    aput v7, v4, v1

    .line 741
    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    .line 740
    :cond_6
    move v5, v1

    :goto_5
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 742
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v0, v6, :cond_7

    .line 743
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 744
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 747
    :cond_7
    return-void
.end method

.method public updateView()V
    .locals 1

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 840
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 843
    :cond_0
    return-void
.end method
