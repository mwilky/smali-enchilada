.class Lcom/oneplus/settings/utils/OPUtils$3;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPUtils;->disableCardPackageEntranceInLauncher(Landroid/content/Context;)V
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

    .line 528
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 531
    iget-object v0, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 532
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "com.oneplus.card"

    .line 533
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "com.oneplus.card.entity.activity.CardlistActivity"

    .line 534
    .local v2, "mainActivityName":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/oneplus/settings/highpowerapp/PackageUtils;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "oneplus_card_disabled"

    const/4 v4, 0x0

    .line 535
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 537
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 538
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 542
    const-string v4, "oneplus_card_disabled"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 543
    :catch_0
    move-exception v3

    .line 546
    :cond_0
    :goto_0
    return-void
.end method
