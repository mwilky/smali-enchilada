.class public Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;
.super Ljava/lang/Object;
.source "BatterySaverLocationPlugin.java"

# interfaces
.implements Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatterySaverLocationPlugin"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateLocationState(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 5

    nop

    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/BatterySaverPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/BatterySaverPolicy;->getGpsMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_global_kill_switch"

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onBatterySaverChanged(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->updateLocationState(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    return-void
.end method

.method public onSystemReady(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->updateLocationState(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    return-void
.end method
