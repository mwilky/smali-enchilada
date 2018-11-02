.class Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    new-instance v1, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageSummary$SummaryProvider$kRfOu1vb_I8hwLBBDAS0-xe6-pM;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageSummary$SummaryProvider$kRfOu1vb_I8hwLBBDAS0-xe6-pM;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->setBatteryChangedListener(Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/fuelgauge/PowerUsageSummary$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->register()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->unRegister()V

    :goto_0
    return-void
.end method
