.class Lcom/oneplus/settings/utils/OPUtils$2;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPUtils;->enableAppBgService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 507
    iget-object v0, p0, Lcom/oneplus/settings/utils/OPUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    .line 508
    .local v0, "batteryUtils":Lcom/android/settings/fuelgauge/BatteryUtils;
    iget-object v1, p0, Lcom/oneplus/settings/utils/OPUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v1

    .line 509
    .local v1, "bgOActivityManager":Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;
    sget-object v2, Lcom/oneplus/settings/utils/OPUtils;->bgServicePackages:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 510
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/oneplus/settings/utils/OPUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 511
    iget-object v7, p0, Lcom/oneplus/settings/utils/OPUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result v7

    .line 512
    .local v7, "mode":I
    if-nez v7, :cond_0

    .line 513
    invoke-virtual {v0, v6}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8, v6, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 514
    const/4 v8, 0x1

    invoke-virtual {v1, v6, v4, v8}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlMode(Ljava/lang/String;II)I

    .line 515
    const-string v8, "OPUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enableAppBgService pkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "mode":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 519
    :cond_1
    return-void
.end method
