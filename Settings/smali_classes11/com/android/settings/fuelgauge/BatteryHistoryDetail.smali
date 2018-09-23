.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatteryHistoryDetail.java"


# static fields
.field public static final BATTERY_HISTORY_FILE:Ljava/lang/String; = "tmp_bat_history.bin"

.field public static final EXTRA_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final EXTRA_STATS:Ljava/lang/String; = "stats"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

.field private mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mStats:Landroid/os/BatteryStats;

.field private mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryActiveView;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/BatteryActiveView;->setProvider(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;)V

    return-void
.end method

.method public static synthetic lambda$updateEverything$0(Lcom/android/settings/fuelgauge/BatteryHistoryDetail;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/graph/UsageView;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->bindHistory(Lcom/android/settings/graph/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    const v1, 0x7f0a00e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a01c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f12023c

    const v3, 0x7f0a00e9

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f120243

    const v3, 0x7f0a046b

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f12023f

    const v3, 0x7f0a01fd

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f12023e

    const v3, 0x7f0a01e5

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f12023b

    const v3, 0x7f0a00d2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    const v2, 0x7f120245

    const v3, 0x7f0a05bb

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v2, 0x7f120244

    const v3, 0x7f0a013b

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    const v2, 0x7f120242

    const v3, 0x7f0a00e0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    return-void
.end method

.method private updateEverything()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryDetail$ZIvw_m8MPrnAuz9tJSzFmSFxa_8;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryDetail$ZIvw_m8MPrnAuz9tJSzFmSFxa_8;-><init>(Lcom/android/settings/fuelgauge/BatteryHistoryDetail;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "stats"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "broadcast"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x1010435

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x0

    const/high16 v6, 0x80000

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v6, 0x100000

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v6, 0x20000000

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v6, 0x8000000

    invoke-direct {v4, v2, v3, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v6, 0x200000

    invoke-direct {v4, v2, v3, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryWifiParser;

    invoke-direct {v4, v2}, Lcom/android/settings/fuelgauge/BatteryWifiParser;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v6, -0x80000000

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryCellParser;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/BatteryCellParser;-><init>()V

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->updateEverything()V

    return-void
.end method
