.class public Lcom/android/systemui/qs/tiles/OtgTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "OtgTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final OTG_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mOTGBReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.OTG_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/OtgTile;->OTG_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mRegistered:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/OtgTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/OtgTile$1;-><init>(Lcom/android/systemui/qs/tiles/OtgTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mOTGBReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method private isOtgEnabled()Z
    .locals 2

    const-string v0, "persist.sys.oem.otg_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setOtgEnabled(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_otg_auto_disable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_0
    const-class v0, Landroid/hardware/usb/UsbManager;

    const-string v1, "setOtgEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OtgTile;->TAG:Ljava/lang/String;

    const-string v2, "Cannot setOtgEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/OtgTile;->OTG_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x19f

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11051f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OtgTile;->isOtgEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/OtgTile;->setOtgEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OtgTile;->refreshState()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mRegistered:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.intent.action.otg_auto_shutdown"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mOTGBReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mRegistered:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mOTGBReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OtgTile;->isOtgEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080380

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_0
    const v0, 0x7f08037f

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11051f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OtgTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/OtgTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OtgTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
